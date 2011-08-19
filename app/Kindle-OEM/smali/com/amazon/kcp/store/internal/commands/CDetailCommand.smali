.class public Lcom/amazon/kcp/store/internal/commands/CDetailCommand;
.super Lcom/amazon/kcp/store/internal/commands/CStoreCommand;
.source "CDetailCommand.java"


# instance fields
.field private bookInfo:Lcom/amazon/kcp/store/models/IBookInfo;

.field private cachedCover:Lcom/amazon/system/drawing/Image;

.field private model:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

.field private webserviceClient:Lcom/amazon/kcp/internal/webservices/DetailsWebservice;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/store/IStoreController;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/store/models/IBookInfo;)V
    .locals 1
    .parameter "storeController"
    .parameter "webConnector"
    .parameter "bookInfo"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;-><init>(Lcom/amazon/kcp/store/IStoreController;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/store/models/IBookInfo;Lcom/amazon/system/drawing/Image;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/store/IStoreController;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/store/models/IBookInfo;Lcom/amazon/system/drawing/Image;)V
    .locals 1
    .parameter "storeController"
    .parameter "webConnector"
    .parameter "bookInfo"
    .parameter "cachedCover"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;-><init>(Lcom/amazon/kcp/store/IStoreController;)V

    .line 51
    new-instance v0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/DetailsWebservice;

    .line 53
    iput-object p3, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->bookInfo:Lcom/amazon/kcp/store/models/IBookInfo;

    .line 54
    iput-object p4, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->cachedCover:Lcom/amazon/system/drawing/Image;

    .line 55
    return-void
.end method


# virtual methods
.method protected buildResultsPageModel()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->bookInfo:Lcom/amazon/kcp/store/models/IBookInfo;

    invoke-interface {v0}, Lcom/amazon/kcp/store/models/IBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->bookInfo:Lcom/amazon/kcp/store/models/IBookInfo;

    invoke-interface {v0}, Lcom/amazon/kcp/store/models/IBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->storeController:Lcom/amazon/kcp/store/IStoreController;

    invoke-interface {v0}, Lcom/amazon/kcp/store/IStoreController;->getModelFactory()Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->bookInfo:Lcom/amazon/kcp/store/models/IBookInfo;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->getDetailsModel(Lcom/amazon/kcp/store/models/IBookInfo;)Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->model:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    .line 63
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DPLoadTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 105
    invoke-super {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->execute()V

    .line 106
    return-void
.end method

.method public getBookInfo()Lcom/amazon/kcp/store/models/IBookInfo;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->bookInfo:Lcom/amazon/kcp/store/models/IBookInfo;

    return-object v0
.end method

.method protected getModel()Lcom/amazon/kcp/store/models/internal/CAsyncModel;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->model:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    return-object v0
.end method

.method protected launchWebRequest()V
    .locals 5

    .prologue
    .line 73
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/DetailsWebservice;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->model:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->getStatusTracker()Lcom/amazon/foundation/IStatusTracker;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice;->createDetailsRequest(Lcom/amazon/kcp/store/models/internal/CDetailsModel;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v0

    .line 77
    .local v0, request:Lcom/amazon/foundation/internal/IAsynchronousCallback;
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 79
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "DetailCommand"

    const-string v3, "DetailErrorWebRequest"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->setError(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->notifyIdleEvent()V

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->notifyKillEvent()V

    .line 87
    :cond_0
    return-void
.end method

.method protected onRequestFinished()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DPLoadTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DetailCommand"

    const-string v2, "DetailErrorOnFinished"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 119
    :goto_0
    invoke-super {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->onRequestFinished()V

    .line 120
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "CDetailCommand"

    const-string v2, "DPLoadTimer"

    const-string v3, "DPLoadTimer"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showPage()Lcom/amazon/kcp/application/IBasePage;
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->storeController:Lcom/amazon/kcp/store/IStoreController;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->model:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CDetailCommand;->cachedCover:Lcom/amazon/system/drawing/Image;

    invoke-interface {v0, p0, v1, v2}, Lcom/amazon/kcp/store/IStoreController;->showDetailPage(Lcom/amazon/kcp/application/internal/ICommand;Lcom/amazon/kcp/store/models/IDetailsModel;Lcom/amazon/system/drawing/Image;)Lcom/amazon/kcp/store/pages/IDetailsPage;

    move-result-object v0

    return-object v0
.end method
