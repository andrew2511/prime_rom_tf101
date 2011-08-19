// Copyright 2010 Google Inc.  All Rights Reserved.


/**
 * @fileoverview JavaScript implementation of an e-book reader.  Uses CSS multi-column layout,
 * absolute and relative positioning, and black magic.
 *
 * @author attila@google.com (Attila Bodis)
 */


/*
 * Reader state, represented as various structs.  Could be encapsulated in a singleton class,
 * but why bother.
 */


/**
 * Struct containing system configuration settings.  Currently the only system configuration
 * settings are the height and width of the screen.
 *
 * @type {Object}
 */
var system = {
    /**
     * Screen height in pixels.  This is just {@code window.innerHeight}, cached for performance.
     *
     * @type {number}
     */
    screenHeight: window.innerHeight,

    /**
     * Screen width in pixels.  This is just {@code window.innerWidth}, cached for performance.
     *
     * @type {number}
     */
    screenWidth: window.innerWidth,

    showDebug: false,
};


/**
 * Struct containing user preference settings.  Note that changing any of these properties (with
 * the exception of {@code textAlign}) invalidates the column layout, so the volume must be
 * repaginated.
 *
 * @type {Object}
 */
var pref = {
    /**
     * Whether the reader is in night mode (light text on dark background) instead of day mode
     * (dark text on light background).
     *
     * @type {boolean}
     */
    isNightMode: false,

    /**
     * CSS font-family spec.
     *
     * @type {string}
     */
    fontFamily: 'serif',

    /**
     * CSS font-size spec.
     *
     * @type {string}
     */
    fontSize: '12pt',

    /**
     * CSS line-height spec.
     *
     * @type {number}
     */
    lineHeight: 1.2, // Any less causes descenders to bleed across columns sometimes (bug 2859956).

    /**
     * CSS text-align spec.
     *
     * @type {string}
     */
    textAlign: 'left'
};


/**
 * Struct containing cached viewport dimensions.  Recalculated each time the screen configuration
 * changes.
 *
 * @type {Object}
 */
var viewport = {
    /**
     * Viewport height, in pixels.
     *
     * @type {number}
     */
    height: system.screenHeight,

    /**
     * Viewport width, in pixels.
     *
     * @type {number}
     */
    width: system.screenWidth,

    /**
     * Viewport aspect ratio.  Equals (viewport height) / (viewport width).
     *
     * @type {number}
     */
    aspectRatio: -1 // Calculated in applyPreferencesInternal_(), crashes if we do it here.
};


/**
 * Enum of chapter states.
 *
 * @enum {number}
 */
var ChapterState = {
    // The chapter hasn't been loaded (or even scheduled to be loaded) yet.
    NOT_LOADED: 1,

    // A task has been scheduled to load the chapter, but not yet executed.
    SCHEDULED: 2,

    // Chapter segments are being loaded; pagination and indexing haven't started yet.
    LOADING: 3,

    // Contents have fully loaded; pagination and indexing are in progress.
    INDEXING: 4,

    // Loading, pagination, and indexing complete; the chapter is ready.
    READY: 5
};


/**
 * Struct containing metadata about the current volume.  Initialized in {@link initializeReader}.
 *
 * @type {Object}
 */
var volume = {
    /**
     * The volume ID.
     *
     * @type {string}
     */
    id: null,

    /**
     * Array of chapters.  Each element is itself an array, listing the segment IDs of the segments
     * that make up the chapter.  In other words, the element at position 0 is an array containing
     * the segment IDs for the first chapter, the element at position 1 is an array containing the
     * segment IDs for the second chapter, and so on.  Here is a representative example for a book
     * containing 7 chapters:
     * <pre>
     *   [['cvi'], ['tp'], ['toc'], ['ded'], ['c01', 'c02'], ['adc'], ['cop']]
     * </pre>
     *
     * @type {Array.<Array.<string>>}
     */
    chapters: [],

    /**
     * Array of DOM elements containing chapters.  In other words, the element at position 0 is the
     * DOM element holding the contents of the first chapter, the element at position 1 is the DOM
     * element holding the contents of the second chapter, and so on.
     *
     * @type {Array.<Element>}
     */
    chapterElements: [],

    /**
     * Array of device page counts for each chapter.  In other words, the element at position 0 is
     * the number of device pages in the first chapter, the element at position 1 is the number
     * of device pages in the the second chapter, and so on.
     *
     * TODO(tomo): move into Chapter_(), probably.
     *
     * @type {Array.<number>}
     */
    pageCounts: [],

    /**
     * Array of chapter metadata which can be used to find an anchor tag on a device page or the
     * device page of an anchor tag.
     *
     * @type {Array.<Chapter_>}
     */
    chapterMetadata: [],

    /**
     * Array of chapter states.
     *
     * TODO(tomo): move into Chapter_(), probably.
     *
     * @type {Array.<ChapterState>}
     */
    chapterStates: [],

    /**
     * Array of callbacks to be invoked when chapter contents finish loading.
     *
     * TODO(tomo): move into Chapter_(), probably.
     *
     * @type {Array.<Function>}
     */
    chapterCallbacks: [],

    /**
     * Array of RegExp that should be applied to volume text; any occurrences
     * found will be highlighted.
     *
     * @type {Array.<RegExp>}
     */
    highlights: [],
};


/*
 * Public API.  Only these functions are guaranteed to be callable from the enclosing activity.
 */


/**
 * Initializes the reader.  Must be called before any other JS API method.  Notifies the activity
 * by calling {@link bridge.onReaderInitialized} when finished.
 *
 * The first argument is the volume ID.  The second argument is an array of arrays of segment IDs,
 * where each top-level element contains the list of segments comprising a chapter.  For example,
 * <pre>
 *   initializeReader(
 *       'PfmjWho_zOAC',
 *       [['cvi'], ['tp'], ['toc'], ['ded'], ['c01', 'c02'], ['adc'], ['cop']]);
 * </pre>
 * sets the volume ID to PfmjWho_zOAC; the volume has 7 chapters; chapters 1-4, 6, and 7 contain a
 * single segment, while chapter 5 contains two segments.
 *
 * @param {string} volumeId Volume ID.
 * @param {Array.<Array.<string>>} chapters Array of arrays of segment IDs for each chapter.
 */
function initializeReader(volumeId, chapters, showDebug) {
    try {
        // In case we're loading (or reloading) a volume while a previous load is still in progress,
        // clear any pending tasks.
        clearPendingTasks();

        // Initialize container element.  This removes any prior content, and creates a new content
        // element.
        $('container').innerHTML = '<div id="content"></div>';

        system.showDebug = showDebug;
        $('debug').style.display = showDebug ? '' : 'none';

        // Initialize volume metadata.
        volume.id = volumeId;
        volume.chapters = chapters;

        resetChapters_();

        // Notify the activity that the reader has been initialized.
        var chapterCount = volume.chapters.length;
        bridge.d('initializeReader(): Volume ' + volume.id + ' initialized, has ' + chapterCount +
                ' chapter(s)');
        bridge.onReaderInitialized();
    } catch (e) {
        bridge.e('Uncaught exception in initializeReader(): ' + e);
    }
}


/**
 * Reset internal state of any chapters that have been loaded into
 * {@link volume}. This will also remove any attached Elements from
 * {@link document}, but will not clear preferences when applied.
 *
 * @private
 */
function resetChapters_() {
    $('content').innerHTML = '';

    // Initialize volume metadata.
    volume.chapterElements = [];
    volume.pageCounts = [];
    volume.chapterMetadata = [];
    volume.chapterCallbacks = [];
    volume.chapterStates = [];

    // Initialize chapter states.
    var chapterCount = volume.chapters.length;
    for (var i = 0; i < chapterCount; i++) {
        volume.chapterStates[i] = ChapterState.NOT_LOADED;
    }
}


/**
 * Applies reader preferences.  As a side effect, also recalculates the dimensions of the screen
 * and the viewport.  Calls {@link bridge.onPreferencesApplied} when done.
 *
 * @param {boolean} isNightMode Whether to display text in night mode (light text on dark
 *     background).
 * @param {string} fontFamily CSS font-family spec, e.g. '"Droid Sans", Arial, sans-serif'.
 * @param {string} fontSize CSS font-size spec, e.g. '12pt'.
 * @param {string} lineHeight CSS line-height spec, e.g. 1.2.
 * @param {string} textAlign CSS text-aling spec, e.g. 'justify'.
 */
function applyPreferences(isNightMode, fontFamily, fontSize, lineHeight, textAlign) {
    try {
        // Measure screen dimensions.
        system.screenHeight = window.innerHeight;
        system.screenWidth = window.innerWidth;

        // Sometimes WebView is buggy and reports nonsensical dimensions; in that case, let it
        // settle down and try again.
        if (system.screenHeight <= 0 || system.screenWidth <= 0) {
            bridge.e('WebView reports invalid screen dimensions (' + system.screenWidth + 'x' +
                    system.screenHeight + '), retrying');
            scheduleTask(function() {
                applyPreferences(isNightMode, fontFamily, fontSize, lineHeight, textAlign);
            }, Delay.SHORT);
            return;
        }

        // Update reader preferences.
        pref.isNightMode = isNightMode;
        pref.fontFamily = fontFamily;
        pref.fontSize = fontSize;
        pref.lineHeight = isString(lineHeight) ? parseFloat(lineHeight) : lineHeight;
        pref.textAlign = textAlign;

        applyPreferencesInternal_();

        bridge.onPreferencesApplied();
    } catch (e) {
        bridge.e('Uncaught exception in applyPreferences(): ' + e);
    }
}


/**
 * Set the current text to be highlighted in the volume. Input can be of form
 * {@code "in the" dark}, which will cause all instances of the
 * {@code "in the"} phrase and {@code dark} to be highlighted separately. After
 * a highlight is requested, any future calls to {@link goToPage} or
 * {@link goToPosition} will correctly display highlights near that location.
 */
function setHighlight(highlight) {
    // split incoming highlight so we handle quoted strings and standalone words
    // as separate phrases.
    var phrase = /(?:\b([^"\b]+)\b|"(.+?)")/g;

    volume.highlights = [];

    // iterate through all matches using exec() on global RegExp
    // https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/RegExp/exec
    var phraseMatch;
    while (phraseMatch = phrase.exec(highlight)) {
        // at least one of the capture groups was found; pick the defined one as
        // our raw highlight string.
        var phraseRaw = phraseMatch[1] != undefined ? phraseMatch[1] : phraseMatch[2];
        volume.highlights.push(new RegExp('\\b' + phraseRaw + '\\b', 'ig'));
    }

    // TODO(jsharkey): eventually remove this verbose debugging
    bridge.d("setHighlight() generated volume.highlights=" + volume.highlights);

    // In case we're loading (or reloading) a volume while a previous load is
    // still in progress, clear any pending tasks.
    clearPendingTasks();

    // clear any loaded chapters, so future requests reload with highlighting
    resetChapters_();
}


/**
 * Shows the device page identified by the given chapter and page index and
 * notifies the activity of the new reading position. In case the chapter hasn't
 * been loaded yet, loads it first. Note that page indices become stale if a
 * configuration change forces the volume to be repaginated.
 * <p/>
 * The opt_readingPosition parameter allows goToPosition to specify the position
 * to report back via onReadingPositionChanged.  This way we respect the originally
 * requested position, so that just opening the book will not actually change
 * the reading position.  It is ignored if pageOffset != 0.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {number} pageIndex 0-based page index. A negative number means "from
 *            the end," e.g. -1 means the last page of the chapter.
 * @param {number} request ID provided by the caller which should be passed back
 *            in {@link bridge.onReadingPositionChanged}.
 * @param {number=} opt_pageOffset Number of device pages to offset from the
 *            requested position before loading, defaults to 0.
 * @param {String=} opt_readingPosition Reading position, if known.
 */
function goToPage(chapterIndex, pageIndex, requestId, opt_pageOffset, opt_readingPosition) {
    var pageOffset = isDef(opt_pageOffset) ? opt_pageOffset : 0;
    var chapterCount = volume.chapters.length;

    if (chapterCount == 0) {
        // Volume has no chapters, or initializeReader() hasn't been called yet.
        bridge.e('goToPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId + '): Volume ' +
            volume.id + ' has no chapters');
        return;
    }

    // Normalize position for negative pageIndex and with pageOffset when requested.
    if (pageIndex < 0 || pageOffset != 0) {
        // Prepare callback used to wrap around for async operations.
        var callback = bind(goToPage, chapterIndex, pageIndex, requestId, pageOffset, opt_readingPosition);

        if (getChapterState_(chapterIndex) != ChapterState.READY) {
            enqueueChapterRequest_(chapterIndex, callback);
            return;
        }

        // At this point, we know the chapter in question has been loaded and paginated.
        if (pageIndex < 0) {
            // A negative page index means "from the end," i.e. -1 is the last page in the chapter.
            // TODO(attila): Handle when the absolute value of the negative page index is too large.
            pageIndex += volume.pageCounts[chapterIndex];
        }

        // Increment current page index by requested offset; we finish by
        // normalizing it below in two separate steps.
        pageIndex += pageOffset;

        // While page is beyond current chapter bounds, keep walking forward.
        while (pageIndex >= volume.pageCounts[chapterIndex] &&
                chapterIndex < chapterCount) {
            pageIndex -= volume.pageCounts[chapterIndex];
            if (++chapterIndex >= chapterCount) break;

            // Ensure chapter is loaded, otherwise request and finish later.
            if (getChapterState_(chapterIndex) != ChapterState.READY) {
                enqueueChapterRequest_(chapterIndex, callback);
                return;
            }
        }

        // While page is before current chapter bounds, keep walking backwards.
        while (pageIndex < 0 && chapterIndex >= 0) {
            if (--chapterIndex < 0) break;

            // Ensure chapter is loaded, otherwise request and finish later.
            if (getChapterState_(chapterIndex) != ChapterState.READY) {
                enqueueChapterRequest_(chapterIndex, callback);
                return;
            }

            pageIndex += volume.pageCounts[chapterIndex];
        }
    }

    if (0 <= chapterIndex && chapterIndex < chapterCount) {
        // Chapter index in range.
        var state = getChapterState_(chapterIndex);
        if (state != ChapterState.READY) {
            // Only log non-READY states to cut down on log spam.
            var stateDescription = getChapterStateAsString_(state);
            bridge.d('goToPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId +
                '): Chapter ' + chapterIndex + ' is ' + stateDescription);
        }
        switch (state) {
            case ChapterState.NOT_LOADED:
                // The chapter hasn't started loading yet, nor has it been scheduled to be loaded.
                // Schedule a foreground load, and add a callback to navigate to the page when done.
                setChapterState_(chapterIndex, ChapterState.SCHEDULED);
                scheduleTask(bind(loadChapter_, chapterIndex, /* opt_background */ false),
                        Delay.NONE);
                // Fall through to display the spinner and set the callback.

            case ChapterState.SCHEDULED:
            case ChapterState.LOADING:
            case ChapterState.INDEXING:
                // The chapter is already being loaded, but the user wants it NOW, so we have to
                // show the spinner.  Just add a new callback, replacing any existing callback
                // (which could happen if a user uses the scrubber to navigate while a chapter is
                // being loaded in the foreground).
                bridge.onContentLoading();
                volume.chapterCallbacks[chapterIndex] = function() {
                    goToPage(chapterIndex, pageIndex, requestId, pageOffset, opt_readingPosition);
                    scheduleTask(function() {
                        bridge.onContentReady();
                    }, Delay.SHORT);
                };
                break;

            case ChapterState.READY:
                // The chapter has already been loaded, paginated, and indexed.
                var pageCount = volume.pageCounts[chapterIndex];
                if (pageCount == 0) {
                    // Chapter has no pages; likely a data error or a bug.
                    bridge.e('goToPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId +
                        '):  Chapter ' + chapterIndex + ' in ' + volume.id + ' has no pages');
                    // TODO(jsharkey): handle empty chapters as preview gaps by triggering new
                    // callback once we support text volumes with preview gaps; for now
                    // treat as end of volume.
                    bridge.onInvalidPosition(pageIndex);
                    goToPage(0, 0, requestId, 0);
                    return;
                } else if (pageIndex < 0 || pageIndex >= pageCount) {
                    // Page index out of range.  Default to the first page of the chapter.
                    bridge.e('goToPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId +
                        '):  Page index out of range, chapter has ' + pageCount + ' page(s)');

                    // TODO(virgilking): This situation typically occurs due to
                    // getBoundingClientRect bugs. Once those bugs are fixed,
                    // or they're handled somewhere earlier, this branch should
                    // deliver a new bridge callback indicating that the
                    // requested page is invalid.
                    // In the meantime the following workaround usually does the
                    // right thing since the getBoundingClientRect bugs seems to
                    // mainly affect reading positions on the first page of a
                    // chapter.
                    pageIndex = 0;
                }

                // Bring the page into view.
                var left = pageIndex * viewport.width;
                var top = chapterIndex * viewport.height;
                window.scrollTo(left, top);

                // If we are within 5 pages of the end of the current chapter, and the next
                // chapter hasn't been loaded yet, load it in the background.
                var nextChapter = chapterIndex + 1;
                if ((pageCount - pageIndex <= 5) && (nextChapter < chapterCount) &&
                        (getChapterState_(nextChapter) == ChapterState.NOT_LOADED)) {
                    bridge.d('goToPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId +
                        '): Preloading chapter ' + nextChapter + ' in the background');
                    setChapterState_(nextChapter, ChapterState.SCHEDULED);
                    scheduleTask(bind(loadChapter_, nextChapter, /* opt_background */ true),
                            Delay.SHORT);
                }

                // If we are within 5 pages of the start of the current chapter, and the previous
                // chapter hasn't been loaded yet, load it in the background.
                var previousChapter = chapterIndex - 1;
                if ((pageIndex < 5) && (previousChapter >= 0) &&
                        (getChapterState_(previousChapter) == ChapterState.NOT_LOADED)) {
                    bridge.d('goToPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId +
                        '): Preloading chapter ' + previousChapter + ' in the background');
                    setChapterState_(previousChapter, ChapterState.SCHEDULED);
                    scheduleTask(bind(loadChapter_, previousChapter, /* opt_background */ true),
                            Delay.SHORT);
                }

                // Determine the closest reading position, and report it to the app.
                // TODO(tomo): consider using opt_readingPosition once we determine we can
                // rely on it; usually when pageOffset=0 and opt_findNextHighlight wasn't used.
                var readingPosition = getNearestReadingPosition_(chapterIndex, pageIndex);
                if (system.showDebug) {
                    $('debug').innerHTML = readingPosition + ', c=' + chapterIndex + ', p=' + pageIndex;
                }

                // NOTE: to work around http://b/3292726 we bubble this event through
                // the javascript event queue twice, since in rare cases webkit can
                // delay DOM changes until after the first message would run, causing
                // us to snapshot stale textures.
                scheduleTask(function() {
                    scheduleTask(function() {
                        bridge.onReadingPositionChanged(chapterIndex,
                                pageIndex, readingPosition, requestId);
                    }, Delay.NONE);
                }, Delay.NONE);
                break;

            default:
                bridge.e('goToPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId +
                    '): Chapter is in unexpected state ' + stateDescription);
                break;
        }
    } else {
        // Chapter index out of range.  Default to the title page.
        bridge.e('goToPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId +
            ', ' + pageOffset + '): Chapter index out of range,' + ' volume ' + volume.id +
            ' has ' + chapterCount + ' chapter(s)');
        bridge.onInvalidPosition(pageIndex);
        goToPage(0, 0, requestId, 0);
    }
}


/**
 * Shows the device page identified by the given GBS reading position and
 * notifies the activity of the new position. In case the chapter containing the
 * reading position hasn't been loaded yet, loads it first. If no exact match is
 * found, shows the page with the nearest approximate reading position, or (if
 * all else fails) the first page in the volume. The first argument is the
 * 0-based index of the chapter in which to start searching for the reading
 * position.
 *
 * @param {number} chapterIndex Chapter in which to start searching for the
 *     reading position.
 * @param {string} readingPosition Reading position.
 * @param {number} requestId an arbitrary value provided by the caller which
 *     should be passed back in {@link bridge.onReadingPositionChanged}.
 * @param {number=} opt_pageOffset Number of device pages to offset from the
 *     requested position before loading, defaults to 0.
 * @param {number=} opt_fallbackChapterIndex Index of chapter to go to in
 *     case the reading position cannot be found; defaults to
 *     {@code chapterIndex}.
 * @param {boolean=} opt_findNextHighlight After moving to requested position,
 *            search for and move to the next highlighted phrase.
 */
function goToPosition(chapterIndex, readingPosition, requestId, opt_pageOffset,
        opt_fallbackChapterIndex, opt_findNextHighlight) {
    var pageOffset = isDef(opt_pageOffset) ? opt_pageOffset : 0;
    var findNextHighlight = isDef(opt_findNextHighlight) ? opt_findNextHighlight : false;

    if (isReadingPosition_(readingPosition)) {
        // Plausible-looking reading position.
        var chapterCount = volume.chapters.length;

        if (chapterCount == 0) {
            // Volume has no chapters, or initializeReader() hasn't been called yet.
            bridge.e('goToPosition(' + chapterIndex + ', ' + readingPosition + ', ' + requestId +
                '): Volume ' + volume.id + ' has no chapters');
            return;
        }

        if (0 <= chapterIndex && chapterIndex < chapterCount) {
            // If the reading position cannot be found even after trying up to 3 chapters, fall back
            // to this chapter (bug 2952517).
            var fallbackChapterIndex = isDef(opt_fallbackChapterIndex) ?
                    opt_fallbackChapterIndex : chapterIndex;
            // Chapter index in range.  Find the chapter containing the reading position, transform
            // it into a device page (i.e. a chapterIndex/pageIndex pair), and call goToPage.
            // Sometimes reading positions aren't found; in that case, don't waste time and quit
            // searching after at most 3 chapters.
            var maxChapterIndex = Math.min(fallbackChapterIndex + 3, chapterCount);
            for (var i = chapterIndex; i < maxChapterIndex; i++) {
                var state = getChapterState_(i);
                if (state != ChapterState.READY) {
                    // Only log non-READY states to cut down on log spam.
                    var stateDescription = getChapterStateAsString_(state);
                    bridge.d('goToPosition(' + chapterIndex + ', ' + readingPosition + ', ' +
                        requestId + '): Chapter ' + i + ' is ' + stateDescription);
                }
                switch (state) {
                    case ChapterState.NOT_LOADED:
                        // The chapter hasn't started loading yet, nor has it been scheduled to be
                        // loaded.  Schedule a foreground load, and add a callback to navigate to
                        // the reading position when done.
                        setChapterState_(i, ChapterState.SCHEDULED);
                        scheduleTask(bind(loadChapter_, i, /* opt_background */ false), Delay.NONE);
                        // Fall through to display the spinner and set the callback.

                    case ChapterState.SCHEDULED:
                    case ChapterState.LOADING:
                    case ChapterState.INDEXING:
                        // The chapter is already being loaded, but the user wants it NOW, so we
                        // have to show the spinner.  Just add a new callback, replacing any
                        // existing callback (which could happen if a user uses the scrubber to
                        // navigate while a chapter is being loaded in the foreground).
                        bridge.onContentLoading();
                        volume.chapterCallbacks[i] = bind(goToPosition, i, readingPosition,
                                requestId, pageOffset, fallbackChapterIndex, findNextHighlight);
                        // It is important to return here, as we don't want to fall through to the
                        // "position not found" error condition.
                        return;

                    case ChapterState.READY:
                        // Chapter available; check position index.
                        var metadata = volume.chapterMetadata[i];
                        if (readingPosition in metadata.idToIndex) {
                            // TODO(tomo): consider making a non-monotonicity correction
                            var pageIndex = getAnchorDevicePageIndexCached_(metadata, readingPosition);
                            bridge.d('goToPosition(' + chapterIndex + ', ' + readingPosition +
                                    ', ' + requestId + '): Position found in chapter ' + i +
                                    ', on page ' + pageIndex);

                            // look for next highlight when requested
                            if (findNextHighlight) {
                                var highlightIndex = getNextHighlightPageIndex_(i, readingPosition);
                                if (highlightIndex != -1 && highlightIndex != pageIndex) {
                                    bridge.d('goToPosition() found highlightIndex=' + highlightIndex);
                                    pageIndex = highlightIndex;
                                }
                            }

                            goToPage(i, pageIndex, requestId, pageOffset, readingPosition);
                            scheduleTask(function() {
                                bridge.onContentReady();
                            } , Delay.SHORT);
                            return;
                        }
                        break;

                    default:
                        bridge.e('goToPosition(' + chapterIndex + ', ' + readingPosition + ', ' +
                            requestId + '): Chapter ' + i + ' is in unexpected state ' +
                            stateDescription);
                        break;
                }
            }

            // If we get here, that means we've looked in the given chapter and up to 2 subsequent
            // chapters, and still haven't found the reading position.  See if we find the reading
            // position after truncation to the resolution of the physical page.
            if (goToTruncatedPosition_(fallbackChapterIndex, maxChapterIndex, readingPosition,
                    requestId, pageOffset)) {
                return;
            }

            // Couldn't find position even by truncating to the physical page.
            // Log an error and go to the start page of the given chapter (bug 2952517).
            bridge.e('goToPosition(' + fallbackChapterIndex + ', ' + readingPosition + ', '
                    + requestId + '):  Position not found, falling back to chapter '
                    + fallbackChapterIndex);
            goToPage(fallbackChapterIndex, 0, requestId, pageOffset);
            scheduleTask(function() {
                bridge.onContentReady();
            } , Delay.SHORT);
        } else {
            // Chapter index out of range.
            bridge.e('goToPosition(' + chapterIndex + ', ' + readingPosition + ', ' + requestId +
                '):  Chapter index out of range, volume ' + volume.id + ' has ' + chapterCount +
                    ' chapter(s)');
            bridge.onInvalidPosition(0);
            goToPage(0, 0, requestId, 0);
        }
    } else {
        // The reading position is missing or invalid.
        bridge.e('goToPosition(' + chapterIndex + ', ' + readingPosition + ', ' + requestId +
            '): Missing or invalid reading position');
    }
}


/**
 * Returns true if it is able to move to the reading position, rounded down to the nearest
 * physical page.  There should be one "bare" page tag such as "GBS.PA42" per physical page.
 * Assumes all chapters in the range are ready.
 *
 * @param {number} minChapterIndex Inclusive minimimum.
 * @param {number} maxChapterIndex Exclusive maximum.
 * @param {string} readingPosition The full-resolution reading position.
 * @param {number} requestId An arbitrary value provided by the caller which
 *     should be passed back in {@link bridge.onReadingPositionChanged}.
 * @param {number} pageOffset Number of device pages to offset from the
 *     requested position before loading.
 * @return {boolean} Whether it finds a match.
 *
 * @private
 */
function goToTruncatedPosition_(minChapterIndex, maxChapterIndex, readingPosition, requestId,
        pageOffset) {
    bridge.d('goToTruncatedPosition(' + minChapterIndex + ', ' + maxChapterIndex
            + ', ' + readingPosition + ', ' + requestId + ', ' + pageOffset + ')');
    var words = readingPosition.split('.');
    if (words[1]) {
        var barePagePosition = words[0] + '.' + words[1];
        for (var i = minChapterIndex; i < maxChapterIndex; i++) {
            var metadata = volume.chapterMetadata[i];
            if (barePagePosition in metadata.idToIndex) {
                var pageIndex = getAnchorDevicePageIndexCached_(metadata, barePagePosition);
                bridge.d('goToTruncatedPosition_(' + minChapterIndex + ', ' + readingPosition +
                        ', ' + requestId + '): Rounded down to position ' +
                        barePagePosition + ', found in chapter ' + i +
                        ', on page ' + pageIndex);
                goToPage(i, pageIndex, requestId, pageOffset, barePagePosition);
                scheduleTask(function() {
                    bridge.onContentReady();
                }, Delay.SHORT);
                return true;
            }
        }
    }
    return false;
}


/**
 * Loads sample text into the reader.
 *
 * @param {string} sampleText Sample text to load.
 */
function setPreviewContent(sampleText) {
    $('container').innerHTML = '<div id="content">' + sampleText + '</div>';
}


/*
 * Private helper functions.  Don't call these directly; use the public API instead.
 */


/**
 * Applies reader preference settings to the viewport and the content element.
 * Note: does not restore the previous reading position; caller is responsible
 * for issuing a subsequent request to go to that position again.
 *
 * @private
 */
function applyPreferencesInternal_() {
    // Update viewport dimensions.
    viewport.height = system.screenHeight;
    viewport.width = system.screenWidth;
    viewport.aspectRatio = viewport.width / viewport.height;

    // Update HTML body properties.
    document.body.className = pref.isNightMode ? 'night-mode' : '';

    // Update container element properties.
    var containerElement = $('container');
    containerElement.style.height = viewport.height + 'px';
    containerElement.style.width = viewport.width + 'px';

    // Update content element properties.
    var contentElement = $('content');
    if (contentElement) {
        contentElement.style.fontFamily = pref.fontFamily;
        contentElement.style.fontSize = pref.fontSize;
        contentElement.style.lineHeight = pref.lineHeight;
        contentElement.style.textAlign = pref.textAlign;
    } else {
        bridge.d('Not applying text preferences, because there is no content element')
    }
}


/**
 * Finds the closest reading position based on the current device page.  If the current device page
 * contains a reading position, returns it; otherwise returns a nearby position.
 * If all else fails, returns null.
 *
 * TODO(tomo): split onReadingPositionChanged into "content ready" and "store this position"
 * callbacks.  That way we don't have to wait for this method to complete before hiding the
 * spinner.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {number} pageIndex 0-based page index.
 * @return {?string} Reading position (null if none).
 * @private
 */
function getNearestReadingPosition_(chapterIndex, pageIndex) {
    var metadata = volume.chapterMetadata[chapterIndex];
    if (pageIndex == 0) {
        // First page in chapter -> first anchor tag
        return metadata.gbsIds[0];
    }

    // Initialize binary search
    var low = 0;
    var high = metadata.gbsIds.length - 1;
    var page = null;
    var id;

    // TODO(tomo): handle case when page is -1
    while (low <= high && page != pageIndex) {
        var mid = low + Math.round((high - low) / 2);
        id = metadata.gbsIds[mid];
        page = getAnchorDevicePageIndexCached_(metadata, id);
        if (page > pageIndex) {
            high = mid - 1;
        } else {
            low = mid + 1;
        }
    }

    // TODO(tomo): fine-tune to first anchor on page
    // TODO(tomo): if anchor is not on the page, find nearest *previous* anchor
    // TODO(tomo): handle non-monotonicity
    return id;
}


/**
 * Loads and processes the contents of a chapter.  Loads the contents of the chapter one segment
 * at a time, then paginates and indexes the chapter asynchronously after a short delay.  When
 * finished, schedules itself to load the next chapter until it runs out of chapters.
 *
 * When a volume is first loaded, the goal is to load the chapter containing the initial reading
 * position as fast as possible.  In this mode, the UI shows a spinner, and the user can't interact
 * with the application.  As soon as the page containing the initial reading position is ready,
 * the user can start interacting with the app, and the responsiveness of the UI  becomes more
 * important than the rate at which additional content is loaded in the background. Use the
 * {@code opt_background} parameter to control whether to load a chapter in background mode.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {boolean=} opt_background Whether to run in "background mode," meaning longer pauses
 *     between tasks to allow the UI thread to remain more responsive.
 * @private
 */
function loadChapter_(chapterIndex, opt_background) {
    try {
        var segmentIds = volume.chapters[chapterIndex];
        if (segmentIds.length == 0) {
            // when chapter is empty (forbidden), pretend that it's loaded and
            // indexed with zero pages.

            // Delete any old, stale page count & reading position index data, just to be safe.
            delete volume.pageCounts[chapterIndex];
            delete volume.chapterMetadata[chapterIndex];

            var metadata = new Chapter_(undefined, [], {});

            volume.pageCounts[chapterIndex] = 0;
            volume.chapterMetadata[chapterIndex] = metadata;

            setChapterState_(chapterIndex, ChapterState.READY);
            bridge.onChapterReady(chapterIndex, volume.pageCounts[chapterIndex]);

            // If a chapter callback has been registered, execute and clear it.
            var callback = volume.chapterCallbacks[chapterIndex];
            if (callback) {
                callback();
                delete volume.chapterCallbacks[chapterIndex];
            }

            return;
        }

        setChapterState_(chapterIndex, ChapterState.LOADING);

        // Create or reset chapter element.
        var element = volume.chapterElements[chapterIndex];
        if (element) {
            element.innerHTML = '';
        } else {
            element = $dom('div', 'chapter');
            $('content').appendChild(element);
            volume.chapterElements[chapterIndex] = element;
        }

        // Size and position chapter element.  The width of the chapter element is set to accommodate
        // two columns in the multicolumn layout.  This is necessary, since the element's CSS style has
        // -webkit-column-count: 2.  Of course, for all but the shortest chapters, there will be
        // additional columns, which is exactly what we want.  The additional columns will extend out
        // to the right of the element, since it has overflow: visible.
        element.style.top = (viewport.height * chapterIndex) + 'px';
        element.style.height = viewport.height + 'px';
        element.style.width = (2 * viewport.width) + 'px';

        // Load chapter segments one at a time.
        for (var i = 0, numSegments = segmentIds.length; i < numSegments; i++) {
            loadSegment_(chapterIndex, segmentIds[i]);
        }

        // Paginate and index chapter after a delay to allow the DOM to settle and to let the UI thread
        // breathe.  Not having any delay between loading events makes the UI thread unresponsive.
        scheduleTask(function() {
            setChapterState_(chapterIndex, ChapterState.INDEXING);

            // Delete any old, stale page count & reading position index data, just to be safe.
            delete volume.pageCounts[chapterIndex];
            delete volume.chapterMetadata[chapterIndex];

            // Paginate and index chapter.
            paginateChapter_(element, chapterIndex);
            indexChapter_(element, chapterIndex);
            highlightChapter_(element);

            // Notify the activity that the chapter has been fully loaded, paginated, and indexed.
            setChapterState_(chapterIndex, ChapterState.READY);
            bridge.onChapterReady(chapterIndex, volume.pageCounts[chapterIndex]);

            // If a chapter callback has been registered, execute and clear it.
            var callback = volume.chapterCallbacks[chapterIndex];
            if (callback) {
                callback();
                delete volume.chapterCallbacks[chapterIndex];
            }
        }, Delay.SHORT);
    } catch (e) {
        bridge.e('Uncaught exception in loadChapter_(): ' + e);
    }
}


/**
 * Loads and processes the contents of a chapter segment.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {string} segmentId Segment ID.
 * @private
 */
function loadSegment_(chapterIndex, segmentId) {
    var segmentContentUri = buildSegmentContentUri_(volume.id, segmentId);

    var request = new XMLHttpRequest();
    request.open('GET', segmentContentUri, false);
    request.send(null);

    if (request.status == 200) {
        var segmentContent = request.responseText;
        var doc = document.implementation.createHTMLDocument(undefined);
        var temp = doc.createElement('div');
        temp.innerHTML = segmentContent;
        processImageElements_(temp);

        // Import the segment DOM into the chapter element in the main HTML document.
        var element = volume.chapterElements[chapterIndex];
        element.appendChild(document.adoptNode(temp));

    } else {
        bridge.e('problem loading segment content: ' + segmentContentUri);
    }
}


/**
 * Processes images in the parent element.  Replaces raw image source URLs with resource IDs, and
 * ensures that all images fit into the viewport.
 *
 * @param {Node} element Parent element.
 * @private
 */
function processImageElements_(element) {
    var imageElements = element.getElementsByTagName('IMG');
    var MATCH_SRC = /src=["']([^"']+)["']/mi;
    for (var i = 0, imageElement; imageElement = imageElements[i]; i++) {
        // Extract image src and handle poor remote escaping.  We're extracting from outerHTML,
        // since src is undefined without a base href, and the current opaque token generation
        // depends on untouched src strings.
        var targetUrl = MATCH_SRC.exec(imageElement.outerHTML)[1];
        if (targetUrl) {
            // Unescape double-escaped ampersands.
            targetUrl = targetUrl.replace(/&amp;/g, "&");
            // Convert the URL into an opaque resource ID.
            var resId = btoa(targetUrl);
            resId = resId.replace(/\+/g, '-').replace(/\//g, '_');
            imageElement.src = buildResourceContentUri_(volume.id, resId);
            // TODO(attila):  Here's where we could control the order in which images are loaded.
        }

        // Resize image element to ensure it doesn't bleed across pages.
        if (imageElement.height && imageElement.width) {
            // The <img> tag has old-style height & width attributes; scale the image to fit.
            var height = parseFloat(imageElement.height);
            var width = parseFloat(imageElement.width);
            if (height > viewport.height || width > viewport.width) {
                var imageAspectRatio = width / height;
                if (imageAspectRatio < viewport.aspectRatio) {
                    // Fit height.
                    height = viewport.height;
                    width = Math.floor(height * imageAspectRatio);
                } else {
                    // Fit width.
                    width = viewport.width;
                    height = Math.floor(width / imageAspectRatio);
                }
                imageElement.height = height;
                imageElement.width = width;
            }
        } else {
            // The <img> tag has no height or width information; this is the best we can do.
            imageElement.style.maxHeight = viewport.height + 'px';
            imageElement.style.maxWidth = viewport.width + 'px';
        }
    }
}


function buildResourceContentUri_(volumeId, resId) {
    // NOTE: keep these in sync with BooksContract builder methods
    return 'books-content://com.google.android.apps.books/volumes/' + volumeId + '/res/' + resId + '/content';
}


function buildSegmentContentUri_(volumeId, segmentId) {
    // NOTE: keep these in sync with BooksContract builder methods
    return 'books-content://com.google.android.apps.books/volumes/' + volumeId + '/sections/' + segmentId + '/content';
}


/**
 * Determines the number of device pages in the given chapter element.
 *
 * @param {Element} element Chapter element.
 * @param {number} chapterIndex 0-based chapter index.
 * @private
 */
function paginateChapter_(element, chapterIndex) {
    // Append marker element as the last element in the chapter, and get its bounding rectangle.
    // We use a marker element because it forces a layout pass and is therefore more reliable than
    // using {@code getBoundingClientRect} directly, due to general WebKit wonkiness.
    var marker = $dom('div');
    element.appendChild(marker);
    var context = element.getBoundingClientRect();
    var pageCount = getDevicePageIndex_(marker, context, true) + 1;
    element.removeChild(marker);
    volume.pageCounts[chapterIndex] = pageCount;
}


/**
 * Finds reading position anchors in the chapter.
 *
 * @param {Element} element Chapter element.
 * @param {number} index 0-based chapter index.
 * @private
 */
function indexChapter_(element, index) {
    var chapterGbsIds = [];
    var chapterGbsIdToIndex = {};

    var anchors = element.getElementsByTagName('A');

    for (var i = 0, anchor; anchor = anchors[i]; i++) {
        var id = anchor.id;
        if (isReadingPosition_(id)) {
            var idIndex = chapterGbsIds.length;
            chapterGbsIds[idIndex] = id;
            chapterGbsIdToIndex[id] = idIndex;
        }
    }

    var metadata = new Chapter_(element, chapterGbsIds, chapterGbsIdToIndex);
    volume.chapterMetadata[index] = metadata;

    bridge.d('Found ' + chapterGbsIds.length + ' reading positions in chapter ' + index);
}

/**
 * Chapter metadata, especially those related to reading positions.  Note we do not store the
 * bounding box of the chapter element, because that changes when the viewport is moved.
 */
function Chapter_(element, gbsIds, gbsIdToIndex) {
    // The chapter element
    this.element = element;

    // DOM-ordered array of reading position anchor tag ID values
    this.gbsIds = gbsIds;

    // Map of reading position anchor tag ID values to position in this.gbsIds
    this.idToIndex = gbsIdToIndex;

    // Array caching device page indices for the anchors in this.gbsIds (parallel array, d'oh)
    this.gbsDevicePages = [];
}

/**
 * Returns the device page index for a GBS anchor tag, using a cached result if available.
 *
 * @param {Chapter_} chapterMetadata used to find the chapter's coordinates
 * @param {String} id of the anchor tag
 */
function getAnchorDevicePageIndexCached_(chapterMetadata, id) {
    var index = chapterMetadata.idToIndex[id];
    var page = chapterMetadata.gbsDevicePages[index];
    if (page) {
        return page;
    }
    var element = chapterMetadata.element;
    var context = element.getBoundingClientRect();
    var anchor = document.getElementById(id);
    page = getAnchorDevicePageIndex_(element, context, anchor);
    chapterMetadata.gbsDevicePages[index] = page;
    return page;
}

/**
 * Returns the device page index for an anchor tag, after temporarily unhiding any hidden
 * ancestor tags.
 *
 * @param {Element} element Chapter element.
 * @param {Rect} context The chapter bounding client rect
 * @param {Element} anchor Anchor element being measured
 * @private
 */
function getAnchorDevicePageIndex_(element, context, anchor) {

    // Bug 2969596: Some reading position anchors are located within hidden parent
    // elements.  Unfortunately, document.defaultView.getComputedStyle(element, null)
    // returns 'inline' for these anchors, even if their parent element is hidden.
    // This is a real mess.  There is basically no way to handle the case where the
    // parent is hidden via CSS, but at least we can try to handle the case where the
    // parent is hidden via an explicit CSS style, like style="display:none;".  From
    // cursory investigation of actual volume contents, this seems to cover the common
    // case.

    // Find all nodes along the element's ancestor chain that are hidden, up to but not
    // including the positioning context element (which is the chapter element that we
    // created, and which is never hidden).
    var hiddenNodes = [];
    var node = anchor;
    do {
        // This only works for inline CSS, not for named styles.  Unfortunately, that's
        // the best we can do.
        if (node.style && node.style.display == 'none') {
            hiddenNodes.push(node);
        } else if (node.style && node.style.display && node.style.display != '') {
            // See if there is hiding that we are missing
            bridge.e('Unexpected node.style.display ' + node.style.display
                     + ' for node ' + node);
        }
    } while ((node = node.parentNode) != element);

    // Un-hide any hidden nodes along the ancestor chain.
    var j, hiddenNode;
    for (j = 0; hiddenNode = hiddenNodes[j]; j++) {
        hiddenNode.style.display = '';
    }

    // Re-measure the bounding box of the reading position anchor.  Node that this
    // could still give us nonsensical results, but at least we tried.
    var page = getDevicePageIndex_(anchor, context, false);

    // Re-hide any previously hidden nodes along the ancestor chain.
    for (j = 0; hiddenNode = hiddenNodes[j]; j++) {
        hiddenNode.style.display = 'none';
    }

    return page;
}


/**
 * Returns the 0-based index of the device page on which the element is located.  The second
 * argument is the vertical offset of the multicolumn element (typically a chapter DIV) from
 * its offset parent (typically the content DIV).  Sometimes {@code getBoundingClientRect} returns
 * height/width values that correspond to a single-column layout (WebKit bug); taking both the
 * top and left values into account works around this.  Returns a negative page index if the
 * element being measured is hidden (or is the descendant of a hidden element); see bug 2969596.
 *
 * @param {Element} element Element whose position is to be measured.
 * @param {Object} context Positioning context.
 * @param {boolean} bestEffort Whether the caller is unable to provide a meaningful fallback value.
 * @return {number} 0-based device page index.
 * @private
 */
function getDevicePageIndex_(element, context, bestEffort) {

    var rect = element.getBoundingClientRect();
    var left = rect.left - context.left;
    var top = rect.top - context.top;

    // If either left or top are negative, the element's bounding box couldn't be measured.
    if (left < 0 || top < 0) {
        return -1;
    }

    var horizontal = Math.floor(left / viewport.width);
    var vertical = Math.floor(top / viewport.height);

    if (vertical > 0) {
       // TODO(jsharkey): if this message never gets logged, stop computing vertical
       bridge.e('Unexpected non-zero vertical: (' + horizontal + ', ' + vertical + ')');
    }

    // Ideally only horizontal contributes, but given experience in phone app it seems more prudent
    // to include any non-zero vertical contribution.
    return horizontal + vertical;
}


/**
 * Returns whether the argument is a GBS reading position ID.
 *
 * @param {string} s String to test.
 * @return {boolean} Whether the argument is a GBS reading position ID.
 * @private
 */
function isReadingPosition_(s) {
    return s && s.indexOf && s.indexOf('GBS.') == 0;
}


/**
 * Returns the index of the next chapter to load after the current one, or -1 if there are no more
 * chapters to load.  Starts looking at the chapter immediately following {@code chapterIndex}, and
 * keeps going (wrapping around to chapter 0 if necessary) until either it finds a chapter to load,
 * or comes back around to {@code chapterIndex}, indicating that there are no more chapters to load.
 *
 * @param {number} chapterIndex Current chapter index.
 * @return {number} 0-based index of the next chapter to load (-1 if there are no more).
 * @private
 */
function getNextChapterToLoad_(chapterIndex) {
    var chapterCount = volume.chapters.length;

    for (var i = (chapterIndex + 1) % chapterCount; i != chapterIndex; i = (i + 1) % chapterCount) {
        if (getChapterState_(i) == ChapterState.NOT_LOADED) {
            // Found a chapter that hasn't been loaded (or even scheduled to be loaded) yet.
            return i;
        }
    }

    // All chapters must have been loaded or are scheduled to be loaded.
    return -1;
}


/**
 * Updates the state of the chapter to the specified new state.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {ChapterState} newState New chapter state.
 * @private
 */
function setChapterState_(chapterIndex, newState) {
    var currentState = getChapterState_(chapterIndex);
    if (newState != currentState + 1) {
        bridge.e('setChapterState_(' + chapterIndex + ', ' + newState + '): Invalid transition' +
                ' from ' + getChapterStateAsString_(currentState) +
                ' to ' + getChapterStateAsString_(newState));
    } else {
        bridge.d('setChapterState_(' + chapterIndex + ', ' + newState + '):' +
                ' Chapter ' + chapterIndex + ' is now ' + getChapterStateAsString_(newState));
    }
    volume.chapterStates[chapterIndex] = newState;
}


/**
 * Enqueue the requested chapter to be loaded. The given callback method will be
 * triggered when load is finished. If the requested chapter is already
 * enqueued, the new callback will replace any existing callback.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {Function} callback Function to call when requested chapter has
 *            finished loading and indexing.
 * @private
 */
function enqueueChapterRequest_(chapterIndex, callback) {
    var state = getChapterState_(chapterIndex);
    switch (state) {
        case ChapterState.NOT_LOADED:
            // The chapter hasn't started loading yet, nor has it been scheduled to be loaded.
            // Schedule a foreground load, and add a callback to navigate to the page when done.
            setChapterState_(chapterIndex, ChapterState.SCHEDULED);
            scheduleTask(bind(loadChapter_, chapterIndex, /* opt_background */ false), Delay.NONE);
            // Fall through to display the spinner and set the callback.

        case ChapterState.SCHEDULED:
        case ChapterState.LOADING:
        case ChapterState.INDEXING:
            // The chapter is already being loaded, but the user wants it NOW, so we have to
            // show the spinner.  Just add a new callback, replacing any existing callback
            // (which could happen if a user uses the scrubber to navigate while a chapter is
            // being loaded in the foreground).
            bridge.onContentLoading();
            volume.chapterCallbacks[chapterIndex] = callback;
            break;

        case ChapterState.READY:
            // The chapter has already been loaded, paginated, and indexed.
            callback();
            break;

        default:
            bridge.e('enqueueChapterRequest(): Chapter is in unexpected state ' +
                    getChapterStateAsString_(state));
            break;
    }
}


/**
 * Returns the current state of the chapter.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @return {ChapterState} Current chapter state.
 * @private
 */
function getChapterState_(chapterIndex) {
    return volume.chapterStates[chapterIndex];
}


/**
 * Returns a human-readable string description of the current state of the chapter (for logging).
 *
 * @param {ChapterState} state Chapter state constant.
 * @return {string} String representation of the chapter state.
 * @private
 */
function getChapterStateAsString_(state) {
    for (var key in ChapterState) {
        if (ChapterState[key] == state) {
            return key;
        }
    }
    return 'UNKNOWN';
}


/**
 * Traverse text appearing in given element, highlighting current search terms
 * as specified in {@link volume.highlights}.
 *
 * @private
 */
function highlightChapter_(element) {
    try {
        // process each requested highlight RegExp separately
        for (var i = 0; i < volume.highlights.length; i++) {
            var target = volume.highlights[i];
            var matches = [];

            // search all text nodes in-order for matches
            var iter = document.createNodeIterator(element, NodeFilter.SHOW_TEXT, null, false);

            // iterate through all matches using exec() on global RegExp
            // https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/RegExp/exec
            var node;
            while (node = iter.nextNode()) {
                var targetMatch;
                while (targetMatch = target.exec(node.textContent)) {
                    // record node and span of discovered match
                    matches.push({parentNode: node,
                        start: targetMatch.index, end: target.lastIndex});
                }
            }

            // now iterate backwards through document, creating marked spans for
            // each match. we need to walk backwards so we don't break
            // parentNode character indexes as we create new text nodes.
            for (var j = matches.length - 1; j >= 0; j--) {
                var match = matches[j];
                var parentNode = match.parentNode;

                // create new node after match, and exactly at match
                parentNode.splitText(match.end);
                var matchNode = parentNode.splitText(match.start);

                // create element to wrap styling around new match, and inject
                // into place where the standalone match had been.
                var styledNode = document.createElement('SPAN');
                styledNode.className = 'highlight';
                parentNode.parentNode.replaceChild(styledNode, matchNode);
                styledNode.appendChild(matchNode);
            }
        }
    } catch (e) {
        bridge.e('Problem during highlightChapter(): ' + e);
    }
}


/**
 * Search chapter for next highlighted phrase appearing after the requested
 * reading position. Used to work around low-resolution search results.
 *
 * @return {number} 0-based device page index, or -1 when next highlight was
 *         missing.
 * @private
 */
function getNextHighlightPageIndex_(chapterIndex, afterPosition) {
    var chapterElement = volume.chapterElements[chapterIndex];
    var iter = document.createNodeIterator(chapterElement, NodeFilter.SHOW_ELEMENT, null, false);

    // first stage, we're searching for afterPosition in chapter
    var node;
    while (node = iter.nextNode()) {
        if (node.tagName == 'A' && node.id == afterPosition) {
            break;
        }
    }

    // second stage, we're searching for next highlight
    var nextHighlightElement;
    while (node = iter.nextNode()) {
        if (node.tagName == 'SPAN' && node.className == 'highlight') {
            nextHighlightElement = node;
            break;
        }
    }

    // return page index of the next highlight, otherwise -1 when nothing found
    if (isDef(nextHighlightElement)) {
        var context = chapterElement.getBoundingClientRect();
        return getDevicePageIndex_(nextHighlightElement, context, false);
    } else {
        return -1;
    }
}
