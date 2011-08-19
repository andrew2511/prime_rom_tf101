.class public Lcom/google/android/googlequicksearchbox/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/SearchActivity$OnDestroyListener;,
        Lcom/google/android/googlequicksearchbox/SearchActivity$SourcesObserver;,
        Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;
    }
.end annotation


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

.field private volatile mDestroyListener:Lcom/google/android/googlequicksearchbox/SearchActivity$OnDestroyListener;

.field private mFirstRunDialog:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

.field private mForceSuggestionFetch:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

.field private mOnCreateLatency:I

.field private mOnCreateTracker:Lcom/google/android/googlequicksearchbox/LatencyTracker;

.field private mQueryOnStartStrategy:Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

.field private mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

.field private mSourcesObserver:Lcom/google/android/googlequicksearchbox/SearchActivity$SourcesObserver;

.field private mStartLatencyTracker:Lcom/google/android/googlequicksearchbox/LatencyTracker;

.field private mStarting:Z

.field private final mSuggestionsTimeoutTask:Ljava/lang/Runnable;

.field private mTraceStartUp:Z

.field private final mUpdateSuggestionsTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/google/android/googlequicksearchbox/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$1;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mUpdateSuggestionsTask:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/google/android/googlequicksearchbox/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$2;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSuggestionsTimeoutTask:Ljava/lang/Runnable;

    .line 795
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->updateSuggestionsInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/Suggestions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/googlequicksearchbox/SearchActivity;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->updateSuggestionsInternal(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getAndLogClickedSuggestion(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/SuggestionLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/SuggestionsProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getSuggestionsProvider()Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setForceSuggestionFetch()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->updateSuggestionsBuffered()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/googlequicksearchbox/SearchActivity;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->onSearchClicked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->onVoiceSearchClicked()V

    return-void
.end method

.method private cancelSuggestionsTimeoutTask()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSuggestionsTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 725
    return-void
.end method

.method private createAppSearchData()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, appSearchData:Landroid/os/Bundle;
    const-string v1, "source"

    const-string v2, "search-app"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-object v0
.end method

.method private getAndLogClickedSuggestion(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    .locals 8
    .parameter "adapter"
    .parameter "id"
    .parameter "clickType"

    .prologue
    .line 575
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getCurrentSuggestion(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v7

    .line 576
    .local v7, suggestion:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    if-nez v7, :cond_0

    const/4 v0, 0x0

    .line 582
    :goto_0
    return-object v0

    .line 578
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestionList()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getCurrentIncludedSourceNames(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getCurrentWebSource(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v5

    move-wide v1, p2

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/Logger;->logSuggestionClick(JLcom/google/android/googlequicksearchbox/SuggestionList;Ljava/util/Set;Lcom/google/android/googlequicksearchbox/google/GoogleSource;I)V

    move-object v0, v7

    .line 582
    goto :goto_0
.end method

.method private getClock()Lcom/google/android/googlequicksearchbox/Clock;
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v0

    return-object v0
.end method

.method private getConfig()Lcom/google/android/googlequicksearchbox/Config;
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentIncludedSourceNames(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)Ljava/util/Set;
    .locals 2
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getSuggestions()Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v0

    .line 587
    .local v0, suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->getIncludedSourceNames()Ljava/util/Set;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentSuggestion(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    .locals 8
    .parameter "adapter"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 549
    invoke-interface {p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v1

    .line 550
    .local v1, entry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    if-nez v1, :cond_0

    move-object v4, v7

    .line 563
    :goto_0
    return-object v4

    .line 553
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestionList()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v3

    .line 554
    .local v3, suggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestionPosition()I

    move-result v2

    .line 555
    .local v2, position:I
    if-nez v3, :cond_1

    move-object v4, v7

    .line 556
    goto :goto_0

    .line 558
    :cond_1
    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v0

    .line 559
    .local v0, count:I
    if-ltz v2, :cond_2

    if-lt v2, v0, :cond_3

    .line 560
    :cond_2
    const-string v4, "QSB.SearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid suggestion position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 561
    goto :goto_0

    :cond_3
    move-object v4, v1

    .line 563
    goto :goto_0
.end method

.method private getCurrentWebSource(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    .locals 2
    .parameter "adapter"

    .prologue
    .line 591
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getSuggestions()Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v0

    .line 592
    .local v0, suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    goto :goto_0
.end method

.method private getLogger()Lcom/google/android/googlequicksearchbox/Logger;
    .locals 1

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    return-object v0
.end method

.method private getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 314
    invoke-static {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private getShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    move-result-object v0

    return-object v0
.end method

.method private getSourceRanker()Lcom/google/android/googlequicksearchbox/SourceRanker;
    .locals 1

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSourceRanker()Lcom/google/android/googlequicksearchbox/SourceRanker;

    move-result-object v0

    return-object v0
.end method

.method private getSources()Lcom/google/android/googlequicksearchbox/Sources;
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v0

    return-object v0
.end method

.method private getSourcesToQuery(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;>;"
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getSourceRanker()Lcom/google/android/googlequicksearchbox/SourceRanker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Lcom/google/android/googlequicksearchbox/util/Consumers;->createAsyncConsumer(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SourceRanker;->getSourcesInAll(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 651
    return-void
.end method

.method private getSuggestionsProvider()Lcom/google/android/googlequicksearchbox/SuggestionsProvider;
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSuggestionsProvider()Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    move-result-object v0

    return-object v0
.end method

.method private getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;

    move-result-object v0

    return-object v0
.end method

.method private getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    move-result-object v0

    return-object v0
.end method

.method private getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getGoogleSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v0

    return-object v0
.end method

.method private gotSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 7
    .parameter "suggestions"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 630
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mStarting:Z

    if-eqz v0, :cond_0

    .line 631
    iput-boolean v6, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mStarting:Z

    .line 632
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, source:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mStartLatencyTracker:Lcom/google/android/googlequicksearchbox/LatencyTracker;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/LatencyTracker;->getLatency()I

    move-result v2

    .line 634
    .local v2, latency:I
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mOnCreateLatency:I

    if-nez p1, :cond_1

    move-object v4, v5

    :goto_0
    if-nez p1, :cond_2

    :goto_1
    invoke-interface/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/Logger;->logStart(IILjava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V

    .line 637
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->onStartupComplete()V

    .line 646
    .end local v2           #latency:I
    .end local v3           #source:Ljava/lang/String;
    :cond_0
    iput-boolean v6, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mForceSuggestionFetch:Z

    .line 647
    return-void

    .line 634
    .restart local v2       #latency:I
    .restart local v3       #source:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getExpectedSources()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v5

    goto :goto_1
.end method

.method private isUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 533
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private normalizeQueryForSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "rawQuery"

    .prologue
    .line 699
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Lcom/google/common/base/CharMatcher;->trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private normalizeQueryForSuggest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "rawQuery"

    .prologue
    .line 691
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    sget-object v1, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    const/16 v2, 0x20

    invoke-virtual {v1, p1, v2}, Lcom/google/common/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onSearchClicked(Ljava/lang/String;I)Z
    .locals 2
    .parameter "query"
    .parameter "method"

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->normalizeQueryForSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 500
    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 508
    :goto_0
    return v0

    .line 503
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lcom/google/android/googlequicksearchbox/Logger;->logSearch(II)V

    .line 506
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->startSearch(Ljava/lang/String;)V

    .line 508
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onVoiceSearchClicked()V
    .locals 4

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;

    move-result-object v1

    .line 541
    .local v1, voiceSearch:Lcom/google/android/googlequicksearchbox/VoiceSearch;
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->isVoiceSearchAvailable()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/googlequicksearchbox/Logger;->logVoiceSearch(Z)V

    .line 544
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 545
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->launchIntent(Landroid/content/Intent;)V

    .line 546
    return-void
.end method

.method private recordOnCreateDone()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mOnCreateTracker:Lcom/google/android/googlequicksearchbox/LatencyTracker;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/LatencyTracker;->getLatency()I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mOnCreateLatency:I

    .line 246
    return-void
.end method

.method private recordStartTime()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lcom/google/android/googlequicksearchbox/LatencyTracker;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/LatencyTracker;-><init>(Lcom/google/android/googlequicksearchbox/Clock;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mStartLatencyTracker:Lcom/google/android/googlequicksearchbox/LatencyTracker;

    .line 240
    new-instance v0, Lcom/google/android/googlequicksearchbox/LatencyTracker;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/LatencyTracker;-><init>(Lcom/google/android/googlequicksearchbox/Clock;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mOnCreateTracker:Lcom/google/android/googlequicksearchbox/LatencyTracker;

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mStarting:Z

    .line 242
    return-void
.end method

.method private setForceSuggestionFetch()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mForceSuggestionFetch:Z

    .line 228
    return-void
.end method

.method private setupFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)Lcom/google/android/googlequicksearchbox/Suggestions;
    .locals 7
    .parameter "intent"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, initialSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    if-eqz p2, :cond_0

    const-string v4, "SEARCH_ACTIVITY_RESTORE_SUGGESTIONS"

    invoke-virtual {p2, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mQueryOnStartStrategy:Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;->getSuggestionsBackup()Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v1

    .line 262
    :cond_0
    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->reopen()V

    .line 264
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setQuery(Ljava/lang/String;Z)V

    .line 275
    :goto_0
    const-string v4, "app_data"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 278
    .local v0, appSearchData:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->createAppSearchData()Landroid/os/Bundle;

    move-result-object v0

    .line 281
    :cond_1
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mAppSearchData:Landroid/os/Bundle;

    .line 282
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->setAppSearchData(Landroid/os/Bundle;)V

    .line 284
    return-object v1

    .line 266
    .end local v0           #appSearchData:Landroid/os/Bundle;
    :cond_2
    const-string v4, "query"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, query:Ljava/lang/String;
    const-string v4, "select_query"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 270
    .local v3, selectAll:Z
    new-instance v1, Lcom/google/android/googlequicksearchbox/Suggestions;

    .end local v1           #initialSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    const-string v4, ""

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestions;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V

    .line 271
    .restart local v1       #initialSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setForceSuggestionFetch()V

    .line 272
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setQuery(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private showFirstRunDialog()V
    .locals 2

    .prologue
    .line 476
    const-string v0, "QSB.SearchActivity"

    const-string v1, "Showing first-run dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mFirstRunDialog:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mFirstRunDialog:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    .line 479
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mFirstRunDialog:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    new-instance v1, Lcom/google/android/googlequicksearchbox/SearchActivity$8;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$8;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mFirstRunDialog:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->show()V

    .line 490
    return-void
.end method

.method private showSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 2
    .parameter "suggestions"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->close()V

    .line 739
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->cancelSuggestionsTimeoutTask()V

    .line 741
    :cond_0
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    .line 742
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->startSuggestionsTimeoutTask()V

    .line 743
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 744
    return-void
.end method

.method private startSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "query"

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->isUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    invoke-static {p1}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->openUrlInBrowser(Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->hideInputMethod()V

    .line 530
    .end local v0           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getPsychicSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPsychicSuggestAdapter()Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->showResults(Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldUseLocalWebHistory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 524
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;->insertLocalHistory(Ljava/lang/String;J)V

    .line 527
    :cond_2
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->showResultsInBrowser(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->hideInputMethod()V

    goto :goto_0
.end method

.method private startSuggestionsTimeoutTask()V
    .locals 4

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSuggestionsTimeoutTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getSourceTimeoutMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 721
    return-void
.end method

.method private updateSuggestions(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 609
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mUpdateSuggestionsTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 611
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->normalizeQueryForSuggest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, query:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mForceSuggestionFetch:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->close()V

    .line 618
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    .line 620
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->cancelSuggestionsTimeoutTask()V

    .line 623
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getSuggestionsProvider()Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SuggestionsProvider;->cancelOngoingQuery()V

    .line 625
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mUpdateSuggestionsTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 627
    :cond_2
    return-void
.end method

.method private updateSuggestionsBuffered()V
    .locals 2

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getTypingUpdateSuggestionsDelayMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->updateSuggestions(J)V

    .line 605
    return-void
.end method

.method private updateSuggestionsInternal()V
    .locals 2

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->normalizeQueryForSuggest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, normalizedQuery:Ljava/lang/String;
    new-instance v1, Lcom/google/android/googlequicksearchbox/SearchActivity$10;

    invoke-direct {v1, p0, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity$10;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getSourcesToQuery(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 683
    return-void
.end method

.method private updateSuggestionsInternal(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "normalizedQuery"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 705
    .local p2, sourcesToQuery:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    const/4 v1, 0x0

    .line 706
    .local v1, webSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isWebSourceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getSuggestionsProvider()Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1}, Lcom/google/android/googlequicksearchbox/SuggestionsProvider;->getSuggestions(Ljava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v0

    .line 711
    .local v0, suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 714
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->gotSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 716
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->showSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 717
    return-void
.end method

.method private updateSuggestionsNow()V
    .locals 2

    .prologue
    .line 600
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->updateSuggestions(J)V

    .line 601
    return-void
.end method


# virtual methods
.method public createMenuItems(Landroid/view/Menu;Z)V
    .locals 2
    .parameter "menu"
    .parameter "showDisabled"

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/SearchSettings;->addMenuItems(Landroid/view/Menu;Z)V

    .line 455
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getHelp()Lcom/google/android/googlequicksearchbox/Help;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/googlequicksearchbox/Help;->addHelpMenuItem(Landroid/view/Menu;Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method protected createSuggestionLauncher()Lcom/google/android/googlequicksearchbox/SuggestionLauncher;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public firstRunDialogNeeded()Z
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldShowFirstRunDialog()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationOptIn()Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->isUseLocationSet()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppSearchData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mAppSearchData:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchActivityView()Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    return-object v0
.end method

.method protected getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    return-object v0
.end method

.method protected getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 4
    .parameter "query"
    .parameter
    .parameter "suggestions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/Suggestions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 655
    .local p2, sourcesToQuery:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/googlequicksearchbox/Source;>;"
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    move-result-object v1

    .line 656
    .local v1, shortcutRepo:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;
    if-nez v1, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->showSummonsForZeroQuery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/googlequicksearchbox/Suggestions;->expectShortcuts()V

    .line 661
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/googlequicksearchbox/SearchActivity$9;

    invoke-direct {v3, p0, p3}, Lcom/google/android/googlequicksearchbox/SearchActivity$9;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/Suggestions;)V

    invoke-static {v2, v3}, Lcom/google/android/googlequicksearchbox/util/Consumers;->createAsyncConsumer(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/Consumer;

    move-result-object v0

    .line 668
    .local v0, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/ShortcutList;>;"
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isWebSourceEnabled()Z

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;->getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZLcom/google/android/googlequicksearchbox/util/Consumer;)V

    goto :goto_0
.end method

.method public launchIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->launchIntent(Landroid/content/Intent;)V

    .line 597
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->goBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 463
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "trace_start_up"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mTraceStartUp:Z

    .line 126
    iget-boolean v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mTraceStartUp:Z

    if-eqz v4, :cond_0

    .line 127
    new-instance v4, Ljava/io/File;

    const-string v5, "traces"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    const-string v6, "qsb-start.trace"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, traceFile:Ljava/lang/String;
    const-string v4, "QSB.SearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Writing start-up trace to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {v3}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 131
    .end local v3           #traceFile:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->recordStartTime()V

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 139
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->createSuggestionLauncher()Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    .line 140
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    new-instance v5, Lcom/google/android/googlequicksearchbox/SearchActivity$3;

    invoke-direct {v5, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$3;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    invoke-virtual {v4, v5}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->setListener(Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;)V

    .line 150
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setupContentView()Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    .line 152
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    new-instance v5, Lcom/google/android/googlequicksearchbox/SearchActivity$4;

    invoke-direct {v5, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$4;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    invoke-virtual {v4, v5}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setSearchClickListener(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;)V

    .line 158
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    new-instance v5, Lcom/google/android/googlequicksearchbox/SearchActivity$5;

    invoke-direct {v5, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$5;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    invoke-virtual {v4, v5}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setQueryListener(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;)V

    .line 164
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    new-instance v5, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;

    invoke-direct {v5, p0, v7}, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/SearchActivity$1;)V

    invoke-virtual {v4, v5}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setSuggestionClickListener(Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V

    .line 166
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    new-instance v5, Lcom/google/android/googlequicksearchbox/SearchActivity$6;

    invoke-direct {v5, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$6;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    invoke-virtual {v4, v5}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setVoiceSearchButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v0, Lcom/google/android/googlequicksearchbox/SearchActivity$7;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$7;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    .line 177
    .local v0, finishOnClick:Landroid/view/View$OnClickListener;
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v4, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setExitClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getQueryOnStartStrategy()Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mQueryOnStartStrategy:Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    .line 182
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 183
    .local v2, intent:Landroid/content/Intent;
    invoke-direct {p0, v2, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setupFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v1

    .line 185
    .local v1, initialSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->showSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 187
    new-instance v4, Lcom/google/android/googlequicksearchbox/SearchActivity$SourcesObserver;

    invoke-direct {v4, p0, v7}, Lcom/google/android/googlequicksearchbox/SearchActivity$SourcesObserver;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/SearchActivity$1;)V

    iput-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSourcesObserver:Lcom/google/android/googlequicksearchbox/SearchActivity$SourcesObserver;

    .line 188
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSourcesObserver:Lcom/google/android/googlequicksearchbox/SearchActivity$SourcesObserver;

    invoke-interface {v4, v5}, Lcom/google/android/googlequicksearchbox/Sources;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 190
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->firstRunDialogNeeded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->showFirstRunDialog()V

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->recordOnCreateDone()V

    .line 195
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSourcesObserver:Lcom/google/android/googlequicksearchbox/SearchActivity$SourcesObserver;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/Sources;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 370
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onDestroy()V

    .line 371
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 372
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mDestroyListener:Lcom/google/android/googlequicksearchbox/SearchActivity$OnDestroyListener;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mDestroyListener:Lcom/google/android/googlequicksearchbox/SearchActivity$OnDestroyListener;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity$OnDestroyListener;->onDestroyed()V

    .line 375
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->recordStartTime()V

    .line 234
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setupFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->showSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 236
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onPause()V

    .line 409
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Logger;->flushLogs()V

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchHistoryRefresher()Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->onPause()V

    .line 415
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 416
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    .line 448
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 449
    invoke-virtual {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->createMenuItems(Landroid/view/Menu;Z)V

    .line 450
    return v0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 423
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mQueryOnStartStrategy:Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;->getAndReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setForceSuggestionFetch()V

    .line 426
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->updateSuggestionsNow()V

    .line 428
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 433
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 434
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onResume()V

    .line 435
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->updateSuggestionsNow()V

    .line 439
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->isQueryEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 440
    .local v0, refreshSearchHistoryNow:Z
    :goto_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchHistoryRefresher()Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->onResume(Z)V

    .line 442
    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mTraceStartUp:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 443
    :cond_0
    return-void

    .line 439
    .end local v0           #refreshSearchHistoryNow:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 381
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "SEARCH_ACTIVITY_RESTORE_SUGGESTIONS"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mQueryOnStartStrategy:Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;->backupSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 386
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 291
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldSendLocation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->stopListening()V

    .line 301
    :goto_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->maybeUpdateBaseDomainSetting(Z)V

    .line 302
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->updateSuggestionsNow()V

    .line 306
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onStart()V

    .line 307
    return-void

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->startListening()Landroid/location/Location;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onStop()V

    .line 394
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getShortcutRefresher()Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ShortcutRefresher;->reset()V

    .line 397
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->cancelSuggestionsTimeoutTask()V

    .line 399
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->close()V

    .line 401
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 402
    return-void
.end method

.method public setOnDestroyListener(Lcom/google/android/googlequicksearchbox/SearchActivity$OnDestroyListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mDestroyListener:Lcom/google/android/googlequicksearchbox/SearchActivity$OnDestroyListener;

    .line 364
    return-void
.end method

.method protected setupContentView()Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getPsychicSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setContentView(I)V

    .line 207
    :goto_0
    const v0, 0x7f0f000c

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    return-object p0

    .line 205
    .restart local p0
    :cond_0
    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setContentView(I)V

    goto :goto_0
.end method
