.class public Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;
.super Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;
.source "CGetArchivedItemsCommand.java"


# static fields
.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "GetArchivedItemsCommand"


# instance fields
.field protected archivedItems:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

.field private control:Lcom/amazon/foundation/internal/TaskManager$TaskControl;

.field private downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

.field private libraryController:Lcom/amazon/kcp/library/ILibraryController;

.field private requestCallback:Lcom/amazon/foundation/internal/IBooleanCallback;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;)V
    .locals 1
    .parameter "registrationFactory"
    .parameter "authenticationManager"
    .parameter "libraryController"
    .parameter "downloadManager"
    .parameter "archivedItems"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;)V

    .line 23
    iput-object v0, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->archivedItems:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    .line 24
    iput-object v0, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 25
    iput-object v0, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 28
    new-instance v0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand$1;-><init>(Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->requestCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

    .line 73
    iput-object p3, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 74
    iput-object p4, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 75
    iput-object p5, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->archivedItems:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->onRequestFinished(Z)V

    return-void
.end method

.method private onRequestFinished(Z)V
    .locals 4
    .parameter "hasError"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->requestCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->cancelMetadataSynchronization(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    .line 40
    if-eqz p1, :cond_1

    .line 42
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "AILoadTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "GetArchivedItemsCommand"

    const-string v2, "GetArchivedItemsError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->setError(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->notifyIdleEvent()V

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->kill()V

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->control:Lcom/amazon/foundation/internal/TaskManager$TaskControl;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->control:Lcom/amazon/foundation/internal/TaskManager$TaskControl;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->end()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->control:Lcom/amazon/foundation/internal/TaskManager$TaskControl;

    .line 58
    :cond_0
    return-void

    .line 50
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "CGetArchivedItemsCommand"

    const-string v2, "AILoadTimer"

    const-string v3, "AILoadTimer"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected authenticatedExecute()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->setError(Z)V

    .line 87
    iget-object v1, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->archivedItems:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {p0, v6}, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->setError(Z)V

    .line 90
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "GetArchivedItemsCommand"

    const-string v3, "GetArchivedItemsError"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 92
    invoke-virtual {p0}, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->notifyIdleEvent()V

    .line 119
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "AILoadTimer"

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "AILoadTimer"

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    iget-object v2, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->archivedItems:Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;

    invoke-interface {v1, p0, v2}, Lcom/amazon/kcp/library/ILibraryController;->showArchivedItemsPage(Lcom/amazon/kcp/application/internal/ICommand;Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;)Lcom/amazon/kcp/library/pages/IArchivedItemsPage;

    move-result-object v1

    .line 101
    if-nez v1, :cond_1

    .line 104
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "GetArchivedItemsCommand"

    const-string v4, "GetArchivedItemsError"

    sget-object v5, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 105
    invoke-virtual {p0, v6}, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->setError(Z)V

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->hasError()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "AILoadTimer"

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->notifyIdleEvent()V

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {}, Lcom/amazon/foundation/internal/TaskManager;->getInstance()Lcom/amazon/foundation/internal/TaskManager;

    move-result-object v2

    const-string v3, "CGetArchivedItemsCommand"

    invoke-virtual {v2, v3, v6}, Lcom/amazon/foundation/internal/TaskManager;->createTaskControl(Ljava/lang/String;I)Lcom/amazon/foundation/internal/TaskManager$TaskControl;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->control:Lcom/amazon/foundation/internal/TaskManager$TaskControl;

    .line 116
    iget-object v2, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->control:Lcom/amazon/foundation/internal/TaskManager$TaskControl;

    invoke-virtual {v2}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->start()V

    .line 117
    iget-object v2, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v3, p0, Lcom/amazon/kcp/library/internal/commands/CGetArchivedItemsCommand;->requestCallback:Lcom/amazon/foundation/internal/IBooleanCallback;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2, v3, v1, v6}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->synchronizeMetadataIfNeeded(Lcom/amazon/foundation/internal/IBooleanCallback;Lcom/amazon/foundation/IStatusTracker;Z)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    check-cast v0, Lcom/amazon/kcp/application/internal/CBasePage;

    move-object p0, v0

    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/CBasePage;->getStatusTracker()Lcom/amazon/foundation/IStatusTracker;

    move-result-object v1

    goto :goto_1
.end method
