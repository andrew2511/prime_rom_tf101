.class public Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;
.super Ljava/lang/Object;
.source "SynchronizationManager.java"


# static fields
.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "SynchronizationManager"


# instance fields
.field private final appController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private autoSyncEnabled:Z

.field private currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

.field private final executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

.field private final pendingSyncs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amazon/kcp/application/sync/internal/SyncParameters;",
            ">;"
        }
    .end annotation
.end field

.field private statusTracker:Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;

.field private final syncCompleteCallback:Lcom/amazon/foundation/ICallback;

.field private final syncFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private final syncStartedEvent:Lcom/amazon/foundation/internal/EventProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 1
    .parameter "appController"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager$1;-><init>(Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->syncCompleteCallback:Lcom/amazon/foundation/ICallback;

    .line 70
    iput-object p1, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 71
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->syncStartedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 72
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->syncFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 73
    new-instance v0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->pendingSyncs:Ljava/util/LinkedList;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->autoSyncEnabled:Z

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->handleSyncFinished()V

    return-void
.end method

.method private handleSyncFinished()V
    .locals 6

    .prologue
    .line 200
    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getMetricTimer()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, metricTimer:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncResult;->CANCELED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-eq v2, v3, :cond_0

    .line 204
    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    iget-object v3, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v3}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncResult;->ERROR:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    :goto_0
    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->setResult(Lcom/amazon/kcp/application/sync/internal/SyncResult;)V

    .line 207
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/sync/internal/SyncResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, resultString:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncResult;->SUCCESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne v2, v3, :cond_4

    .line 211
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "SynchronizationManager"

    invoke-virtual {v2, v3, v1, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/sync/internal/SyncType;->setLastSyncDate(Ljava/util/Date;)V

    .line 221
    :goto_1
    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncResult;->ERROR:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne v2, v3, :cond_1

    .line 224
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "SynchronizationManager"

    const-string v4, "SyncFailed"

    sget-object v5, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 226
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "SynchronizationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->statusTracker:Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;

    invoke-virtual {v5}, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->getLatestState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->statusTracker:Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;

    invoke-virtual {v5}, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->getLatestSubstate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->syncFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v2}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 232
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    .line 234
    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->pendingSyncs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 236
    invoke-direct {p0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->issueOneCommand()V

    .line 238
    :cond_2
    return-void

    .line 204
    .end local v1           #resultString:Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncResult;->SUCCESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    goto/16 :goto_0

    .line 217
    .restart local v1       #resultString:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private issueOneCommand()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->pendingSyncs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->pendingSyncs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    .line 162
    new-instance v0, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getStatusTracker()Lcom/amazon/foundation/IStatusTracker;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;-><init>(Lcom/amazon/foundation/IStatusTracker;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->statusTracker:Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;

    .line 164
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getMetricTimer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "SynchronizationManager"

    const-string v2, "SyncStarted"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->isDeadlineValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 171
    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getDeadline()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    move-wide v7, v0

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->syncStartedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting sync type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getSteps()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->isDeadlineValid()Z

    move-result v0

    if-eqz v0, :cond_0

    cmp-long v0, v7, v4

    if-lez v0, :cond_1

    .line 179
    :cond_0
    iget-object v10, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    new-instance v0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->statusTracker:Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;

    iget-object v3, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getSteps()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAnnotationCache()Lcom/amazon/kcp/application/IAnnotationCache;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v5}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/application/sync/internal/SyncType;->isThrottled()Z

    move-result v5

    iget-object v6, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v6}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v6

    iget-object v9, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v9}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazon/kcp/application/sync/internal/SyncType;->isUserInitiated()Z

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kcp/application/internal/commands/SyncCommand;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/foundation/IStatusTracker;ILcom/amazon/kcp/application/IAnnotationCache;ZLcom/amazon/kcp/library/models/ILocalBookInfo;JZ)V

    invoke-virtual {v10, v0}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->setCommand(Lcom/amazon/kcp/application/internal/commands/SyncCommand;)V

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncResult;->IN_PROGRESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->setResult(Lcom/amazon/kcp/application/sync/internal/SyncResult;)V

    .line 190
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getCommand()Lcom/amazon/kcp/application/internal/commands/SyncCommand;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->syncCompleteCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 196
    :goto_1
    return-void

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->cancelSync()V

    goto :goto_1

    :cond_2
    move-wide v7, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public canUserCancelSync()Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncType;->isUserCancelable()Z

    move-result v0

    goto :goto_0
.end method

.method public cancelSync()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->canUserCancelSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncResult;->CANCELED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->setResult(Lcom/amazon/kcp/application/sync/internal/SyncResult;)V

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->stop()V

    .line 132
    :cond_0
    return-void
.end method

.method public forceCancelAllSyncs()V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->hasPendingSyncs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->pendingSyncs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncResult;->CANCELED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->setResult(Lcom/amazon/kcp/application/sync/internal/SyncResult;)V

    .line 306
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->cancel()V

    .line 317
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->handleSyncFinished()V

    goto :goto_0
.end method

.method public getSyncFinishedEvent()Lcom/amazon/foundation/internal/EventProvider;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->syncFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    return-object v0
.end method

.method public getSyncStartedEvent()Lcom/amazon/foundation/internal/EventProvider;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->syncStartedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public hasPendingSyncs()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->pendingSyncs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestFor(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x1

    .line 274
    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 288
    :goto_0
    return v1

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->pendingSyncs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 280
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/kcp/application/sync/internal/SyncParameters;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 284
    goto :goto_0

    .line 288
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSyncing()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->currentSync:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoSyncEnabled(Z)V
    .locals 0
    .parameter "autoSyncEnabled"

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->autoSyncEnabled:Z

    .line 328
    return-void
.end method

.method public sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iget-boolean v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->autoSyncEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eq v0, v1, :cond_2

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->isSample()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-ne v0, v1, :cond_3

    .line 108
    :cond_2
    :goto_0
    return-void

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->pendingSyncs:Ljava/util/LinkedList;

    new-instance v1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->issueOneCommand()V

    goto :goto_0
.end method
