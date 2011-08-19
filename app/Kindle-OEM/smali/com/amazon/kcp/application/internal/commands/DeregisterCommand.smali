.class public Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;
.super Lcom/amazon/kcp/application/internal/commands/CCommand;
.source "DeregisterCommand.java"


# instance fields
.field private final accountSecretProvider:Lcom/amazon/kcp/reader/models/IAccountSecretProvider;

.field private final authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

.field private final forceDeregister:Z

.field private final licensedContentRemoved:Z

.field private final localStorage:Lcom/amazon/kcp/application/ILocalStorage;

.field private final model:Lcom/amazon/kcp/application/models/internal/DeregisterModel;

.field protected final requestFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private final statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private final updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

.field private final webserviceClient:Lcom/amazon/kcp/internal/webservices/DeregisterWebservice;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/internal/IUpdateManager;ZLcom/amazon/foundation/IStatusTracker;Lcom/amazon/kcp/reader/models/IAccountSecretProvider;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 9
    .parameter "authenticationManager"
    .parameter "webConnector"
    .parameter "updateManager"
    .parameter "licensedContentRemoved"
    .parameter "statusTracker"
    .parameter "accountSecretProvider"
    .parameter "localStorage"

    .prologue
    .line 98
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;-><init>(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/internal/IUpdateManager;ZLcom/amazon/foundation/IStatusTracker;Lcom/amazon/kcp/reader/models/IAccountSecretProvider;Lcom/amazon/kcp/application/ILocalStorage;Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/internal/IUpdateManager;ZLcom/amazon/foundation/IStatusTracker;Lcom/amazon/kcp/reader/models/IAccountSecretProvider;Lcom/amazon/kcp/application/ILocalStorage;Z)V
    .locals 1
    .parameter "authenticationManager"
    .parameter "webConnector"
    .parameter "updateManager"
    .parameter "licensedContentRemoved"
    .parameter "statusTracker"
    .parameter "accountSecretProvider"
    .parameter "localStorage"
    .parameter "forceDeregister"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;-><init>()V

    .line 65
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 116
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    .line 117
    new-instance v0, Lcom/amazon/kcp/internal/webservices/DeregisterWebservice;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/internal/webservices/DeregisterWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/DeregisterWebservice;

    .line 118
    new-instance v0, Lcom/amazon/kcp/application/models/internal/DeregisterModel;

    invoke-direct {v0}, Lcom/amazon/kcp/application/models/internal/DeregisterModel;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->model:Lcom/amazon/kcp/application/models/internal/DeregisterModel;

    .line 119
    iput-object p5, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 120
    iput-object p3, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    .line 121
    iput-boolean p4, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->licensedContentRemoved:Z

    .line 122
    iput-object p6, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->accountSecretProvider:Lcom/amazon/kcp/reader/models/IAccountSecretProvider;

    .line 123
    iput-object p7, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    .line 124
    iput-boolean p8, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->forceDeregister:Z

    .line 125
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    .line 140
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->model:Lcom/amazon/kcp/application/models/internal/DeregisterModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/DeregisterModel;->getState()Lcom/amazon/kcp/store/models/IAsyncModel$State;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADING:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    if-ne v1, v2, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->kill()V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->model:Lcom/amazon/kcp/application/models/internal/DeregisterModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/DeregisterModel;->hasResults()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->model:Lcom/amazon/kcp/application/models/internal/DeregisterModel;

    sget-object v2, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADED:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/models/internal/DeregisterModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 154
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->kill()V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->model:Lcom/amazon/kcp/application/models/internal/DeregisterModel;

    sget-object v2, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADING:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/models/internal/DeregisterModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 161
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/DeregisterWebservice;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->model:Lcom/amazon/kcp/application/models/internal/DeregisterModel;

    iget-boolean v4, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->licensedContentRemoved:Z

    iget-object v5, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazon/kcp/internal/webservices/DeregisterWebservice;->createDeregisterRequest(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/models/internal/DeregisterModel;ZLcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v0

    .line 164
    .local v0, request:Lcom/amazon/foundation/internal/IAsynchronousCallback;
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 166
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->setError(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->kill()V

    goto :goto_0

    .line 175
    .end local v0           #request:Lcom/amazon/foundation/internal/IAsynchronousCallback;
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->kill()V

    goto :goto_0
.end method

.method public getModel()Lcom/amazon/kcp/application/models/internal/DeregisterModel;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->model:Lcom/amazon/kcp/application/models/internal/DeregisterModel;

    return-object v0
.end method

.method public onRequestFinished()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 184
    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DeregisterCommand"

    const-string v2, "DeregisterError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 188
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->model:Lcom/amazon/kcp/application/models/internal/DeregisterModel;

    sget-object v1, Lcom/amazon/kcp/store/models/IAsyncModel$State;->ERROR:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/DeregisterModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 189
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->setError(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->notifyIdleEvent()V

    .line 193
    iget-boolean v0, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->forceDeregister:Z

    .line 200
    :goto_0
    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->model:Lcom/amazon/kcp/application/models/internal/DeregisterModel;

    sget-object v1, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADED:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/DeregisterModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 204
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->removeAuthentication()V

    .line 205
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/IUpdateManager;->clearSecureStorage()V

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->accountSecretProvider:Lcom/amazon/kcp/reader/models/IAccountSecretProvider;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IAccountSecretProvider;->clearSecrets()V

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    invoke-interface {v0}, Lcom/amazon/kcp/application/ILocalStorage;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->kill()V

    .line 222
    return-void

    .line 197
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DeregisterCommand"

    const-string v2, "DeregisterSuccess"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
