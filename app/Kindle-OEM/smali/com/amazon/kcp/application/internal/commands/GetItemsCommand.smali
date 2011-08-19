.class public Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;
.super Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;
.source "GetItemsCommand.java"


# instance fields
.field private reason:I

.field protected requestFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private todoModel:Lcom/amazon/kcp/application/models/internal/TodoModel;

.field private updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

.field private version:J

.field private webserviceClient:Lcom/amazon/kcp/internal/webservices/GetItemsWebservice;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/internal/IUpdateManager;Lcom/amazon/foundation/internal/net/LightWebConnector;JLcom/amazon/kcp/application/models/internal/TodoModel;ILcom/amazon/foundation/IStatusTracker;)V
    .locals 2
    .parameter "authenticationManager"
    .parameter "updateManager"
    .parameter "webConnector"
    .parameter "version"
    .parameter "todoModel"
    .parameter "reason"
    .parameter "statusTracker"

    .prologue
    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Z)V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->reason:I

    .line 47
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 77
    new-instance v0, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice;

    invoke-direct {v0, p3}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/GetItemsWebservice;

    .line 78
    iput-object p6, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->todoModel:Lcom/amazon/kcp/application/models/internal/TodoModel;

    .line 79
    iput-wide p4, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->version:J

    .line 80
    iput p7, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->reason:I

    .line 81
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    .line 82
    iput-object p8, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->onRequestFinished()V

    return-void
.end method

.method private onRequestFinished()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "GetItemsCommand"

    const-string v2, "GetItemsError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->setError(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->notifyIdleEvent()V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->kill()V

    .line 115
    return-void
.end method


# virtual methods
.method protected authenticatedExecute()V
    .locals 9

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/GetItemsWebservice;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->todoModel:Lcom/amazon/kcp/application/models/internal/TodoModel;

    iget-wide v4, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->version:J

    iget-object v6, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    iget v7, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->reason:I

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/internal/webservices/GetItemsWebservice;->createGetItemsRequest(Lcom/amazon/kcp/application/internal/IUpdateManager;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/models/internal/TodoModel;JLcom/amazon/foundation/IStatusTracker;I)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v8

    .line 93
    .local v8, request:Lcom/amazon/foundation/internal/IAsynchronousCallback;
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v8, v1}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->setError(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->kill()V

    .line 100
    :cond_0
    return-void
.end method
