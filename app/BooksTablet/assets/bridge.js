// Copyright 2010 Google Inc.  All Rights Reserved.


/**
 * @fileoverview JavaScript-to-Java bridge methods.  This file is never loaded at runtime; these
 * declarations are here only for the benefit of IDEs which would otherwise complain, as well as
 * to document the expected type and number of parameters for bridge methods.
 *
 * <strong>Note:</strong> The contents of this file (including JsDoc comments) should be kept in
 * sync with the real implementation and comments in {@code MutliColumnReaderActivity.java}.
 *
 * @author attila@google.com (Attila Bodis)
 */


/**
 * The JavaScript-to-Java bridge.
 *
 * @type {Object}
 */
var bridge = {
};


/**
 * Notifies the activity that the JS API is ready.  Called as soon as the HTML page implementing
 * the reader UI finishes loading, before any content has been loaded.
 */
bridge.onJsApiReady = function() {
};


/**
 * Notifies the activity that the reader has been initialized with a volume ID and chapter
 * information, and is ready to apply preferences and start reading.
 */
bridge.onReaderInitialized = function() {
};


/**
 * Notifies the activity that the most recent preference changes have been applied.
 */
bridge.onPreferencesApplied = function() {
};


/**
 * Notifies the activity that the reader is blocked while the reader is fetching content.  The
 * activity should handle this by showing a progress indicator until {@link bridge.onContentReady}
 * is called.
 */
bridge.onContentLoading = function() {
};


/**
 * Notifies the activity that a chapter has been fully loaded, paginated, and indexed.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {number} pageCount Number of device pages in the chapter.
 */
bridge.onChapterReady = function(chapterIndex, pageCount) {
};


/**
 * Notifies the activity that the reader has finished fetching content and is no longer blocked.
 * The activity should handle this by removing any progress indicator that may have been shown.
 */
bridge.onContentReady = function() {
};


/**
 * Reports a new reading position to the activity.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {number} pageIndex 0-based page index.
 * @param {string} readingPosition Reading position.
 * @param {number} requestId Unique id passed through goToPage or goToPosition.
 */
bridge.onReadingPositionChanged = function(chapterIndex, pageIndex, readingPosition, requestId) {
};


/**
 * Indicates that a requested position was out-of-bounds by the given margin.
 *
 * @param {margin} margin The page index of the requested page in the
 *          imaginary chapter before or after the real chapters. Uses the same
 *          semantics as other page indices: non-negative values are 0-based
 *          positions starting from the beginning of the chapter, negative
 *          values are 1-based positions counting down from the last page in the
 *          chapter.
 */
bridge.onInvalidPosition = function(margin) {
};


/**
 * Logs a debug message via ADB logcat.
 *
 * @param {string} msg Message to log.
 */
bridge.d = function(msg) {
};


/**
 * Logs an error message via ADB logcat.
 *
 * @param {string} msg Message to log.
 */
bridge.e = function(msg) {
};
