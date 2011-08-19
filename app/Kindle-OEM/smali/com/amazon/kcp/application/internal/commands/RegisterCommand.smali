.class public Lcom/amazon/kcp/application/internal/commands/RegisterCommand;
.super Lcom/amazon/kcp/application/internal/commands/CCommand;
.source "RegisterCommand.java"


# instance fields
.field private authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

.field private final downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

.field protected requestFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private requestModel:Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;

.field private resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

.field private statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private successEventProvider:Lcom/amazon/foundation/internal/EventProvider;

.field private syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

.field private webserviceClient:Lcom/amazon/kcp/internal/webservices/RegisterWebservice;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/library/models/internal/IDownloadManager;JLcom/amazon/foundation/IStatusTracker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "authenticationManager"
    .parameter "syncManager"
    .parameter "webConnector"
    .parameter "downloadManager"
    .parameter "internalVersionNumber"
    .parameter "statusTracker"
    .parameter "email"
    .parameter "password"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;-><init>()V

    .line 70
    new-instance v1, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->successEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    .line 75
    new-instance v1, Lcom/amazon/kcp/application/internal/commands/RegisterCommand$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/RegisterCommand;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 101
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    .line 102
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    .line 103
    iput-object p4, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 104
    iput-object p7, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 105
    new-instance v1, Lcom/amazon/kcp/internal/webservices/RegisterWebservice;

    invoke-direct {v1, p3}, Lcom/amazon/kcp/internal/webservices/RegisterWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/RegisterWebservice;

    .line 108
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    .line 110
    .local v0, deviceInfoProvider:Lcom/amazon/kcp/application/IDeviceInformationProvider;
    new-instance v1, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;

    invoke-direct {v1}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->requestModel:Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;

    .line 111
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->requestModel:Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->setDeviceSerial(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->requestModel:Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->setPid(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->requestModel:Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->setDeviceType(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->requestModel:Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->setDeviceName(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->requestModel:Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;

    invoke-virtual {v1, p8}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->setEmail(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->requestModel:Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;

    invoke-virtual {v1, p9}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->setPassword(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->requestModel:Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;

    invoke-virtual {v1, p5, p6}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->setInternalVersionNumber(J)V

    .line 120
    new-instance v1, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-direct {v1}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/RegisterCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->onRequestFinished()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/internal/commands/RegisterCommand;)Lcom/amazon/kcp/library/models/internal/IDownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    return-object v0
.end method

.method private onRequestFinished()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 181
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "RegisterCommand"

    const-string v3, "LoginError"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 184
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    sget-object v2, Lcom/amazon/kcp/store/models/IAsyncModel$State;->ERROR:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 185
    invoke-virtual {p0, v5}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->setError(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->notifyIdleEvent()V

    .line 222
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->kill()V

    .line 223
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getPrivateKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/AuthenticationManager;->setPrivateKey(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/AuthenticationManager;->setAdpToken(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/AuthenticationManager;->setCookie(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/AuthenticationManager;->setUserName(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getUserDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/AuthenticationManager;->setDeviceName(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    sget-object v2, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADED:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 200
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->successEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 202
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->LOGIN:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kcp/library/models/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/foundation/IStatusTracker;)V

    .line 203
    .local v0, launchSyncParams:Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V

    goto :goto_0

    .line 208
    .end local v0           #launchSyncParams:Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    sget-object v2, Lcom/amazon/kcp/store/models/IAsyncModel$State;->ERROR:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 210
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    const-string v2, "CustomerNotFound"

    invoke-interface {v1, v2, v3}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_2
    invoke-virtual {p0, v5}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->setError(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->notifyIdleEvent()V

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    .line 128
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->getState()Lcom/amazon/kcp/store/models/IAsyncModel$State;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADING:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    if-ne v2, v3, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->kill()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->hasResults()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    sget-object v3, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADED:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 141
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->kill()V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    sget-object v3, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADING:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 148
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/RegisterWebservice;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->requestModel:Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;

    iget-object v4, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    iget-object v5, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/kcp/internal/webservices/RegisterWebservice;->createRegisterRequest(Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v1

    .line 151
    .local v1, request:Lcom/amazon/foundation/internal/IAsynchronousCallback;
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/amazon/kcp/application/internal/commands/RegisterCommand$2;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand$2;-><init>(Lcom/amazon/kcp/application/internal/commands/RegisterCommand;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 165
    .local v0, primerThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 167
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v2, v1, v3}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 169
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->hasError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->setError(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->kill()V

    goto :goto_0
.end method

.method public getResultsModel()Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->resultsModel:Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;

    return-object v0
.end method

.method public getSuccessEventProvider()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->successEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method
