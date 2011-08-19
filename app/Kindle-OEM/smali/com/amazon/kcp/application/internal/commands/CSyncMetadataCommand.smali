.class public Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;
.super Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;
.source "CSyncMetadataCommand.java"


# instance fields
.field private downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

.field private inProgress:Z

.field private statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private syncCompleteCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

.field private throttled:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/foundation/IStatusTracker;Z)V
    .locals 2
    .parameter "appController"
    .parameter "statusTracker"
    .parameter "throttled"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Z)V

    .line 27
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->syncCompleteCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

    .line 46
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 48
    iput-boolean p3, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->throttled:Z

    .line 49
    iput-boolean v1, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->inProgress:Z

    .line 50
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->handleSyncMetadataComplete(Z)V

    return-void
.end method

.method private handleSyncMetadataComplete(Z)V
    .locals 4
    .parameter "hasError"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 64
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "SyncMetadataCommand"

    const-string v2, "SyncMetadataError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->setError(Z)V

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->inProgress:Z

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->kill()V

    .line 70
    return-void
.end method


# virtual methods
.method public authenticatedExecute()V
    .locals 4

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->setError(Z)V

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->syncCompleteCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    iget-boolean v3, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->throttled:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->synchronizeMetadataIfNeeded(Lcom/amazon/foundation/internal/IBooleanCallback;Lcom/amazon/foundation/IStatusTracker;Z)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->inProgress:Z

    .line 58
    return-void
.end method

.method public kill()V
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->inProgress:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->syncCompleteCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->cancelMetadataSynchronization(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    .line 79
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->kill()V

    .line 80
    return-void
.end method
