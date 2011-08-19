.class public Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;
.super Lcom/amazon/kcp/store/internal/commands/CStoreCommand;
.source "CGetBrowseNodesCommand.java"


# instance fields
.field private model:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

.field private nodeId:J

.field private parentNodeName:Ljava/lang/String;

.field private webserviceClient:Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/store/IStoreController;Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 2
    .parameter "storeController"
    .parameter "webConnector"

    .prologue
    .line 66
    const-string v0, "0"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;-><init>(Lcom/amazon/kcp/store/IStoreController;Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/store/IStoreController;Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;-><init>(Lcom/amazon/kcp/store/IStoreController;)V

    .line 46
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->nodeId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    iput-object p4, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->parentNodeName:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;

    .line 55
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected buildResultsPageModel()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->storeController:Lcom/amazon/kcp/store/IStoreController;

    invoke-interface {v0}, Lcom/amazon/kcp/store/IStoreController;->getModelFactory()Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;

    move-result-object v0

    iget-wide v1, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->nodeId:J

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->getBrowseModel(J)Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->model:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->parentNodeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->model:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->parentNodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->setParentNodeName(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method protected getModel()Lcom/amazon/kcp/store/models/internal/CAsyncModel;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->model:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    return-object v0
.end method

.method protected launchWebRequest()V
    .locals 5

    .prologue
    .line 96
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->model:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->getStatusTracker()Lcom/amazon/foundation/IStatusTracker;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;->createGetBrowseNodesRequest(Lcom/amazon/kcp/store/models/internal/CBrowseModel;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v0

    .line 100
    .local v0, request:Lcom/amazon/foundation/internal/IAsynchronousCallback;
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "GetBrowseNodesCommand"

    const-string v3, "GetBrowseNodesError"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 106
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->setError(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->notifyIdleEvent()V

    .line 108
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->notifyKillEvent()V

    .line 111
    :cond_0
    return-void
.end method

.method protected showPage()Lcom/amazon/kcp/application/IBasePage;
    .locals 5

    .prologue
    .line 76
    iget-wide v1, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->nodeId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->storeController:Lcom/amazon/kcp/store/IStoreController;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->model:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    invoke-interface {v1, p0, v2}, Lcom/amazon/kcp/store/IStoreController;->showBrowseSubcategoryPage(Lcom/amazon/kcp/application/internal/ICommand;Lcom/amazon/kcp/store/models/internal/CBrowseModel;)Lcom/amazon/kcp/store/pages/IBrowsePage;

    move-result-object v0

    .line 86
    .local v0, page:Lcom/amazon/kcp/application/IBasePage;
    :goto_0
    return-object v0

    .line 83
    .end local v0           #page:Lcom/amazon/kcp/application/IBasePage;
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->storeController:Lcom/amazon/kcp/store/IStoreController;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CGetBrowseNodesCommand;->model:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    invoke-interface {v1, p0, v2}, Lcom/amazon/kcp/store/IStoreController;->showBrowsePage(Lcom/amazon/kcp/application/internal/ICommand;Lcom/amazon/kcp/store/models/internal/CBrowseModel;)Lcom/amazon/kcp/store/pages/IBrowsePage;

    move-result-object v0

    .restart local v0       #page:Lcom/amazon/kcp/application/IBasePage;
    goto :goto_0
.end method
