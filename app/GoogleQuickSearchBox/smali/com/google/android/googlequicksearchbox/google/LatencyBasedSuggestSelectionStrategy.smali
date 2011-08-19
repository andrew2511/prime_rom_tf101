.class public Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;
.super Ljava/lang/Object;
.source "LatencyBasedSuggestSelectionStrategy.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelectionStrategy;


# instance fields
.field private final mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mPsychicLatency:Lcom/google/android/googlequicksearchbox/util/RollingAverage;

.field private mPsychicReady:Z

.field private mUseCompleteServer:Z

.field private mUsePsychic:Z

.field private final mWebSuggestLatency:Lcom/google/android/googlequicksearchbox/util/RollingAverage;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbApplication;Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 2
    .parameter "app"
    .parameter "config"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    .line 44
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 45
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getSuggestLatencyHistorySize()I

    move-result v0

    .line 46
    .local v0, latencyHistory:I
    new-instance v1, Lcom/google/android/googlequicksearchbox/util/RollingAverage;

    invoke-direct {v1, v0}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mWebSuggestLatency:Lcom/google/android/googlequicksearchbox/util/RollingAverage;

    .line 47
    new-instance v1, Lcom/google/android/googlequicksearchbox/util/RollingAverage;

    invoke-direct {v1, v0}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mPsychicLatency:Lcom/google/android/googlequicksearchbox/util/RollingAverage;

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mUseCompleteServer:Z

    .line 49
    return-void
.end method

.method private loadPsychicNow()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mUsePsychic:Z

    .line 133
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPsychicSuggestAdapter()Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->considerLoadingPsychicPage()V

    .line 134
    return-void
.end method

.method private newLatencyFigure(Lcom/google/android/googlequicksearchbox/google/GoogleSource;I)V
    .locals 2
    .parameter "source"
    .parameter "latency"

    .prologue
    .line 52
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->isPsychicSource()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mPsychicLatency:Lcom/google/android/googlequicksearchbox/util/RollingAverage;

    move-object v0, v1

    .line 53
    .local v0, average:Lcom/google/android/googlequicksearchbox/util/RollingAverage;
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->add(I)V

    .line 58
    return-void

    .line 52
    .end local v0           #average:Lcom/google/android/googlequicksearchbox/util/RollingAverage;
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mWebSuggestLatency:Lcom/google/android/googlequicksearchbox/util/RollingAverage;

    move-object v0, v1

    goto :goto_0
.end method

.method private declared-synchronized shouldUsePsychic()Z
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->shouldUsePsychic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mPsychicReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mUsePsychic:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized handleSuggestLatency(Lcom/google/android/googlequicksearchbox/google/GoogleSource;I)V
    .locals 5
    .parameter "source"
    .parameter "latency"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->newLatencyFigure(Lcom/google/android/googlequicksearchbox/google/GoogleSource;I)V

    .line 63
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->isPsychicSource()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 64
    iget-boolean v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mUseCompleteServer:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mWebSuggestLatency:Lcom/google/android/googlequicksearchbox/util/RollingAverage;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->getNumSamples()I

    move-result v3

    if-lez v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/Config;->getTargetPsychicLatency()I

    move-result v1

    .line 66
    .local v1, targetPsychicLatency:I
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mWebSuggestLatency:Lcom/google/android/googlequicksearchbox/util/RollingAverage;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->get()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mPsychicLatency:Lcom/google/android/googlequicksearchbox/util/RollingAverage;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->get()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 72
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mUseCompleteServer:Z

    .line 82
    .end local v1           #targetPsychicLatency:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/Config;->getMaxPsychicLatency()I

    move-result v0

    .line 83
    .local v0, maxPsychicLatency:I
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mPsychicLatency:Lcom/google/android/googlequicksearchbox/util/RollingAverage;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->get()F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 88
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mUseCompleteServer:Z

    .line 89
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mUsePsychic:Z

    .line 90
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPsychicSuggestAdapter()Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->refreshWebViewVisibity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v0           #maxPsychicLatency:I
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 73
    .restart local v1       #targetPsychicLatency:I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mPsychicLatency:Lcom/google/android/googlequicksearchbox/util/RollingAverage;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->get()F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 79
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mUseCompleteServer:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    .end local v1           #targetPsychicLatency:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 93
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/Config;->getTargetSuggestLatencyToLoadPsychic()I

    move-result v2

    .line 94
    .local v2, targetSuggestLatency:I
    iget-boolean v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mUsePsychic:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mWebSuggestLatency:Lcom/google/android/googlequicksearchbox/util/RollingAverage;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/util/RollingAverage;->get()F

    move-result v3

    int-to-float v4, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->loadPsychicNow()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized onPsychicStateChange(Z)Z
    .locals 1
    .parameter "isReady"

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mPsychicReady:Z

    if-eq v0, p1, :cond_0

    .line 109
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mPsychicReady:Z

    .line 111
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->shouldUsePsychic()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 113
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldLoadPsychicPage()Z
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mUsePsychic:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldQuery(Lcom/google/android/googlequicksearchbox/google/GoogleSource;)Z
    .locals 1
    .parameter "source"

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->isPsychicSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->shouldUsePsychic()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 152
    :goto_0
    monitor-exit p0

    return v0

    .line 151
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->shouldUsePsychic()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mUseCompleteServer:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldShowPsychicWebView()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/LatencyBasedSuggestSelectionStrategy;->mUsePsychic:Z

    return v0
.end method
