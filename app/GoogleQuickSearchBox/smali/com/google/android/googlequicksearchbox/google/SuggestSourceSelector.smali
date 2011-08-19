.class public Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;
.super Ljava/lang/Object;
.source "SuggestSourceSelector.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;,
        Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;
    }
.end annotation


# instance fields
.field private final mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

.field private mCurrentSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

.field private mLastRequest:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;

.field private mPsychicHandler:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private final mSourceStrategy:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;

.field private mWebSuggestHandler:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbApplication;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;)V
    .locals 1
    .parameter "app"
    .parameter "settings"
    .parameter "sourceStrategy"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    .line 51
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 52
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mSourceStrategy:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;

    .line 53
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0, p0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->shouldQuery(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;)Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mWebSuggestHandler:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;)Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mPsychicHandler:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;)Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mSourceStrategy:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->setCurrentSource(Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V

    return-void
.end method

.method private declared-synchronized current()Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mCurrentSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mSourceStrategy:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPsychicSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;->shouldQuery(Lcom/google/android/googlequicksearchbox/google/GoogleSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPsychicSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 112
    :goto_0
    monitor-exit p0

    return-object v0

    .line 109
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mCurrentSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getLastRequest()Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mLastRequest:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initSources()V
    .locals 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mPsychicHandler:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mWebSuggestHandler:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    if-nez v0, :cond_1

    .line 58
    :cond_0
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPsychicSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;-><init>(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mPsychicHandler:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    .line 59
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;-><init>(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mWebSuggestHandler:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setCurrentSource(Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mCurrentSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setRequest(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;)V
    .locals 1
    .parameter "req"

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mLastRequest:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;

    if-eq v0, p1, :cond_0

    .line 118
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mLastRequest:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldQuery(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;)Z
    .locals 2
    .parameter "source"

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;->getSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->canQueryNow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mSourceStrategy:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;->getSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;->shouldQuery(Lcom/google/android/googlequicksearchbox/google/GoogleSource;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public canQueryNow()Z
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->initSources()V

    .line 128
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mPsychicHandler:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->shouldQuery(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mWebSuggestHandler:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->shouldQuery(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "query"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->current()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->current()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 1
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->initSources()V

    .line 138
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;-><init>(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 139
    .local v0, request:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->setRequest(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;)V

    .line 140
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;->start()V

    .line 141
    return-void
.end method

.method public isLikelyToReturnZeroQueryResults()Z
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->initSources()V

    .line 133
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->current()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->isLikelyToReturnZeroQueryResults()Z

    move-result v0

    return v0
.end method

.method public isPsychicSource()Z
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->current()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->isPsychicSource()Z

    move-result v0

    return v0
.end method

.method public logClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "extraData"
    .parameter "query"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->current()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v0

    .line 149
    .local v0, source:Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    instance-of v1, v0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    if-eqz v1, :cond_0

    .line 150
    check-cast v0, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    .end local v0           #source:Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    invoke-interface {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->logClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method public declared-synchronized onPsychicStateChange(Z)V
    .locals 2
    .parameter "ready"

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mSourceStrategy:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;

    invoke-interface {v1, p1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;->onPsychicStateChange(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->getLastRequest()Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;

    move-result-object v0

    .line 72
    .local v0, lastRequest:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mPsychicHandler:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mPsychicHandler:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionConsumer;->getSuggestions(Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v0           #lastRequest:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector$SuggestionRequest;
    :cond_0
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    const-string v0, "use_psychic"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->shouldUsePsychic()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mCurrentSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mCurrentSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->isPsychicSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mCurrentSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public queryExternal(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "query"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->queryExternal(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method public removeFromHistory(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->removeFromHistory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SourceSelector{current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->current()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
