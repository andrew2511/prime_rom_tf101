.class public abstract Lcom/amazon/kcp/search/ReaderSearchActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "ReaderSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;,
        Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;
    }
.end annotation


# static fields
.field private static final MAX_NUM_RESULTS:I = 0x1f4

.field private static final READER_SEARCH_TIMER:Ljava/lang/String; = "ReaderSearchTimer"

.field private static final RESULT_CONTEXT_LINES:I = 0x2


# instance fields
.field protected book:Lcom/amazon/kcp/reader/models/IBookDocument;

.field private progressBar:Landroid/widget/ProgressBar;

.field private query:Ljava/lang/String;

.field private resultList:Landroid/widget/ListView;

.field protected resultsAdapter:Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;

.field private searchStopper:Ljava/lang/Runnable;

.field private final statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->searchStopper:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lcom/amazon/kcp/search/ReaderSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/ReaderSearchActivity$1;-><init>(Lcom/amazon/kcp/search/ReaderSearchActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 469
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/ReaderSearchActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/ReaderSearchActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->isSearching()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/search/ReaderSearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->stopSearch()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/search/ReaderSearchActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/ReaderSearchActivity;->onSearchTerminated(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/search/ReaderSearchActivity;Ljava/lang/String;IZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/search/ReaderSearchActivity;->findNearestWordBreak(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method private applyBackgroundColorMode(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 428
    return-void
.end method

.method private findNearestWordBreak(Ljava/lang/String;IZ)I
    .locals 5
    .parameter "text"
    .parameter "maxLength"
    .parameter "forward"

    .prologue
    .line 841
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, p2, :cond_0

    .line 843
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 857
    :goto_0
    return v3

    .line 848
    :cond_0
    const/4 v2, 0x0

    .line 849
    .local v2, lastSpace:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, p2, :cond_3

    .line 851
    if-eqz p3, :cond_2

    move v1, v0

    .line 852
    .local v1, idx:I
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 854
    move v2, v0

    .line 849
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 851
    .end local v1           #idx:I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v1, v3

    goto :goto_2

    :cond_3
    move v3, v2

    .line 857
    goto :goto_0
.end method

.method private isSearching()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->searchStopper:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 439
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 463
    :goto_0
    return-object v0

    .line 444
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, v5

    move v2, v5

    .line 446
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 448
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 449
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 451
    const/4 v2, 0x1

    .line 446
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 455
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 457
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 459
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v5

    .line 460
    goto :goto_2

    .line 463
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onSearchTerminated(Z)V
    .locals 10
    .parameter "cacheResults"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 370
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->searchStopper:Ljava/lang/Runnable;

    .line 372
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "ReaderSearchActivity"

    const-string v5, "ReaderSearchTimer"

    const-string v6, "ReaderSearchTimer"

    invoke-virtual {v3, v4, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;

    invoke-virtual {v3}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->getResultCount()I

    move-result v1

    .line 375
    .local v1, numResults:I
    if-ne v1, v7, :cond_1

    .line 377
    const v3, 0x7f0b013c

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->query:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, statusMessage:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    if-eqz p1, :cond_0

    .line 392
    iget-object v3, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    iget-object v4, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;

    invoke-static {v4}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->access$400(Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->query:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/amazon/kcp/reader/models/IBookDocument;->setCachedSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 397
    :cond_0
    const v3, 0x10a0001

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 398
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 399
    iget-object v3, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 400
    return-void

    .line 379
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v2           #statusMessage:Ljava/lang/String;
    :cond_1
    const/16 v3, 0x1f4

    if-lt v1, v3, :cond_2

    .line 381
    const v3, 0x7f0b013e

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->query:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #statusMessage:Ljava/lang/String;
    goto :goto_0

    .line 385
    .end local v2           #statusMessage:Ljava/lang/String;
    :cond_2
    const v3, 0x7f0b013d

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->query:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #statusMessage:Ljava/lang/String;
    goto :goto_0
.end method

.method private populateResultsFromCache(Ljava/lang/String;)Z
    .locals 3
    .parameter "query"

    .prologue
    .line 245
    iget-object v2, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v2, p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getCachedSearchResults(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    .local v0, cachedResults:Ljava/util/ArrayList;
    if-eqz v0, :cond_1

    .line 249
    iget-object v2, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->clear()V

    .line 250
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 252
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/BookSearchResult;

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/search/ReaderSearchActivity;->addSearchResult(Lcom/amazon/kcp/reader/models/BookSearchResult;)V

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_0
    const/4 v2, 0x1

    .line 257
    .end local v1           #i:I
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startSearch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->normalizeSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->query:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->query:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->query:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->populateResultsFromCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    invoke-direct {p0, v4}, Lcom/amazon/kcp/search/ReaderSearchActivity;->onSearchTerminated(Z)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->clearCachedSearchResults()V

    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->query:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amazon/kcp/search/ReaderSearchProvider;->saveToSearchHistory(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0b013b

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->query:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    const/high16 v0, 0x10a

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 295
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 296
    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 298
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->clear()V

    .line 301
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderSearchTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->query:Ljava/lang/String;

    new-instance v2, Lcom/amazon/kcp/search/ReaderSearchActivity$2;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/search/ReaderSearchActivity$2;-><init>(Lcom/amazon/kcp/search/ReaderSearchActivity;)V

    new-instance v3, Lcom/amazon/kcp/search/ReaderSearchActivity$3;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/search/ReaderSearchActivity$3;-><init>(Lcom/amazon/kcp/search/ReaderSearchActivity;)V

    iget-object v4, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/reader/models/IBookDocument;->search(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStatusTracker;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->searchStopper:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private stopSearch()V
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->searchStopper:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->onSearchTerminated(Z)V

    .line 418
    :cond_0
    return-void
.end method


# virtual methods
.method protected addSearchResult(Lcom/amazon/kcp/reader/models/BookSearchResult;)V
    .locals 1
    .parameter "searchResult"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->addResult(Lcom/amazon/kcp/reader/models/BookSearchResult;)V

    .line 362
    return-void
.end method

.method protected abstract newResultsAdapter()Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0c00b0

    const v4, 0x7f0c0021

    const v3, 0x7f03003c

    const/4 v2, 0x7

    const/4 v6, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_ACTION_BAR:Z

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->convertConfigurationToScreenOrientation(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->setRequestedOrientation(I)V

    .line 138
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->applyScreenBrightness(Landroid/view/Window;)Z

    .line 139
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/search/ReaderSearchActivity;->setContentView(I)V

    .line 140
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/search/ReaderSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->titleView:Landroid/widget/TextView;

    .line 141
    invoke-virtual {p0, v7}, Lcom/amazon/kcp/search/ReaderSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 165
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->newResultsAdapter()Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;

    .line 169
    const v0, 0x7f0c0094

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->resultList:Landroid/widget/ListView;

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->resultList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->resultList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->resultList:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->applyBackgroundColorMode(Landroid/view/View;)V

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->startSearch()V

    .line 176
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/search/ReaderSearchActivity;->requestWindowFeature(I)Z

    .line 151
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->convertConfigurationToScreenOrientation(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->setRequestedOrientation(I)V

    .line 152
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->applyScreenBrightness(Landroid/view/Window;)Z

    .line 153
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/search/ReaderSearchActivity;->setContentView(I)V

    .line 154
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f03003d

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 158
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 159
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/search/ReaderSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->titleView:Landroid/widget/TextView;

    .line 160
    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 161
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 162
    invoke-virtual {p0, v7}, Lcom/amazon/kcp/search/ReaderSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->progressBar:Landroid/widget/ProgressBar;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->stopSearch()V

    .line 184
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getChangingConfigurations()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 185
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 186
    return-void

    .line 184
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/BookSearchResult;

    .line 222
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/BookSearchResult;->gotoLocation()V

    .line 225
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->finish()V

    .line 228
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderController;->getReaderActivitySubclass(Lcom/amazon/kcp/reader/models/IBookDocument;)Ljava/lang/Class;

    move-result-object v0

    .line 229
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    const/high16 v0, 0x2000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/search/ReaderSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 195
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->stopSearch()V

    .line 198
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/ReaderSearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 200
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->startSearch()V

    .line 201
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 206
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->stopSearch()V

    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->titleView:Landroid/widget/TextView;

    const v1, 0x7f0b013f

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity;->query:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/amazon/kcp/search/ReaderSearchActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 213
    return v3
.end method
