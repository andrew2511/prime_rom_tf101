.class public Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;
.super Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;
.source "UpdateLocationCommand.java"


# instance fields
.field private bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

.field private localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

.field private model:Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;

.field protected requestFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private webserviceClient:Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/ILocalBookInfo;Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/library/models/ILibrary;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 2
    .parameter "bookInfo"
    .parameter "registerUIFactory"
    .parameter "authenticationManager"
    .parameter "library"
    .parameter "webConnector"
    .parameter "statusTracker"

    .prologue
    .line 65
    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;)V

    .line 40
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 66
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    .line 67
    new-instance v0, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->model:Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;

    .line 68
    iput-object p4, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    .line 69
    new-instance v0, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice;

    invoke-direct {v0, p5}, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice;

    .line 70
    iput-object p6, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->onRequestFinished()V

    return-void
.end method

.method private onRequestFinished()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 97
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "UpdateLocationCommand"

    const-string v4, "UpdateLocationError"

    sget-object v5, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 101
    invoke-virtual {p0, v6}, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->setError(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->notifyIdleEvent()V

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->kill()V

    .line 124
    return-void

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-interface {v3}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/amazon/kcp/library/models/ILibrary;->getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v1

    .line 108
    .local v1, item:Lcom/amazon/kcp/library/models/ILocalBookItem;
    const/4 v0, 0x0

    .line 109
    .local v0, error:Z
    if-eqz v1, :cond_1

    .line 111
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->model:Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->model:Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v5, v4, v3}, Lcom/amazon/kcp/library/models/ILocalBookItem;->updateServerLastPageRead(I[BILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v6

    .line 112
    :goto_1
    invoke-interface {v1, v4}, Lcom/amazon/kcp/library/models/ILocalBookItem;->proposeFurthestReadLocation(I)V

    .line 114
    if-eqz v0, :cond_1

    .line 116
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    const-string v3, "UpdateLocalLPRError"

    invoke-interface {v2, v3, v5}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->setError(Z)V

    goto :goto_0

    :cond_2
    move v0, v4

    .line 111
    goto :goto_1
.end method


# virtual methods
.method protected authenticatedExecute()V
    .locals 5

    .prologue
    .line 78
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->model:Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;

    iget-object v4, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice;->createGetAnnotationsRequest(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v0

    .line 81
    .local v0, request:Lcom/amazon/foundation/internal/IAsynchronousCallback;
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 83
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "UpdateLocationCommand"

    const-string v3, "UpdateLocationError"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->setError(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->kill()V

    .line 90
    :cond_0
    return-void
.end method
