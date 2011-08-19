.class public Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;
.super Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;
.source "StoreCredentialsCommand.java"


# instance fields
.field private appController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private cookieRequestModel:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

.field protected requestFinishedCallback:Lcom/amazon/foundation/ICallback;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 2
    .parameter "applicationController"

    .prologue
    .line 43
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Z)V

    .line 28
    new-instance v0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand$1;-><init>(Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 45
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->onRequestFinished()V

    return-void
.end method

.method private onRequestFinished()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->cookieRequestModel:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->getCookieList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->cookieRequestModel:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    sget-object v1, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADED:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->cookieRequestModel:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IWebStoreController;->populateStoreCredentials(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->kill()V

    .line 78
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "StoreCredentialsCommand"

    const-string v2, "CredentialsRequestError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->cookieRequestModel:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    sget-object v1, Lcom/amazon/kcp/store/models/IAsyncModel$State;->ERROR:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->setError(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->notifyIdleEvent()V

    goto :goto_0
.end method


# virtual methods
.method protected authenticatedExecute()V
    .locals 5

    .prologue
    .line 50
    new-instance v1, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    invoke-direct {v1}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->cookieRequestModel:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    .line 53
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->cookieRequestModel:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    sget-object v2, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADING:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 55
    new-instance v1, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v3, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->cookieRequestModel:Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice;->createStoreCredentialsRequest(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v0

    .line 58
    .local v0, request:Lcom/amazon/foundation/internal/IAsynchronousCallback;
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 59
    return-void
.end method
