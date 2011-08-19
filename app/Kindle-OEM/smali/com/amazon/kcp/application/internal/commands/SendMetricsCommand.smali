.class public Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;
.super Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;
.source "SendMetricsCommand.java"


# instance fields
.field private applicationVersionNumber:J

.field private key:Ljava/lang/String;

.field protected requestFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private webserviceClient:Lcom/amazon/kcp/internal/webservices/SendMetricsWebservice;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Ljava/lang/String;JLcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 1
    .parameter "registerUIFactory"
    .parameter "authenticationManager"
    .parameter "key"
    .parameter "applicationVersionNumber"
    .parameter "webConnector"
    .parameter "statusTracker"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Z)V

    .line 37
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 63
    new-instance v0, Lcom/amazon/kcp/internal/webservices/SendMetricsWebservice;

    invoke-direct {v0, p6}, Lcom/amazon/kcp/internal/webservices/SendMetricsWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/SendMetricsWebservice;

    .line 64
    iput-object p3, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->key:Ljava/lang/String;

    .line 65
    iput-wide p4, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->applicationVersionNumber:J

    .line 66
    iput-object p7, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->onRequestFinished()V

    return-void
.end method

.method private onRequestFinished()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "SendMetricsCommand"

    const-string v2, "SendMetricsCommandError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->setError(Z)V

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->kill()V

    .line 115
    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->resetMetrics()V

    goto :goto_0
.end method


# virtual methods
.method protected authenticatedExecute()V
    .locals 10

    .prologue
    .line 74
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v8

    .line 76
    .local v8, manager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;
    invoke-virtual {v8}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->kill()V

    .line 97
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v6, Lcom/amazon/foundation/internal/NullOutputStream;

    invoke-direct {v6}, Lcom/amazon/foundation/internal/NullOutputStream;-><init>()V

    .line 85
    .local v6, uncaringOutputStream:Lcom/amazon/foundation/internal/IDataOutputStream;
    invoke-virtual {v8}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->formatForTransfer()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, metricsData:Ljava/lang/String;
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/SendMetricsWebservice;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->key:Ljava/lang/String;

    iget-wide v4, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->applicationVersionNumber:J

    iget-object v7, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/internal/webservices/SendMetricsWebservice;->createUploadMetricsRequest(Lcom/amazon/kcp/application/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;JLcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v9

    .line 95
    .local v9, request:Lcom/amazon/foundation/internal/IAsynchronousCallback;
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v9, v1}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    goto :goto_0
.end method
