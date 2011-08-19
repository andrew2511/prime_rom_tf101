.class public Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;
.super Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;
.source "GetDeviceCredentialsCommand.java"


# instance fields
.field protected requestFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

.field private statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private todoItem:Lcom/amazon/kcp/application/models/internal/TodoItem;

.field private webserviceClient:Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsWebservice;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/models/internal/TodoItem;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/AuthenticationManager;)V
    .locals 1
    .parameter "loginFactory"
    .parameter "requestingItem"
    .parameter "webConnector"
    .parameter "authenticationManager"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p4, v0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Z)V

    .line 43
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 66
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->todoItem:Lcom/amazon/kcp/application/models/internal/TodoItem;

    .line 69
    new-instance v0, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-direct {v0}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    .line 71
    new-instance v0, Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsWebservice;

    invoke-direct {v0, p3}, Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsWebservice;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->onRequestFinished()V

    return-void
.end method

.method private onRequestFinished()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "RegisterCommand"

    const-string v2, "LoginError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    sget-object v1, Lcom/amazon/kcp/store/models/IAsyncModel$State;->ERROR:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 100
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->setError(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->notifyIdleEvent()V

    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->kill()V

    .line 134
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getPrivateKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/AuthenticationManager;->setPrivateKey(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/AuthenticationManager;->setAdpToken(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/AuthenticationManager;->setCookie(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/AuthenticationManager;->setUserName(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getUserDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/AuthenticationManager;->setDeviceName(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    sget-object v1, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADED:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    sget-object v1, Lcom/amazon/kcp/store/models/IAsyncModel$State;->ERROR:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    const-string v1, "CustomerNotFound"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_2
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->setError(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->notifyIdleEvent()V

    goto :goto_0
.end method


# virtual methods
.method protected authenticatedExecute()V
    .locals 6

    .prologue
    .line 77
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    sget-object v2, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADING:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 79
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsWebservice;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v4, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->todoItem:Lcom/amazon/kcp/application/models/internal/TodoItem;

    iget-object v5, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsWebservice;->createGetCredentialsRequest(Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/models/internal/TodoItem;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v0

    .line 82
    .local v0, request:Lcom/amazon/foundation/internal/IAsynchronousCallback;
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->setError(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;->kill()V

    .line 89
    :cond_0
    return-void
.end method
