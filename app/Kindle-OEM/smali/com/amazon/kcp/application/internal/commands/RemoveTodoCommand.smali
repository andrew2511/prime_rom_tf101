.class public Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;
.super Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;
.source "RemoveTodoCommand.java"


# static fields
.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "RemoveTodoCommand"


# instance fields
.field protected requestFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private todoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

.field private webserviceClient:Lcom/amazon/kcp/internal/webservices/RemoveTodoWebservice;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 2
    .parameter "authenticationManager"
    .parameter "webConnector"
    .parameter "todoItem"

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Z)V

    .line 34
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 58
    new-instance v0, Lcom/amazon/kcp/internal/webservices/RemoveTodoWebservice;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/internal/webservices/RemoveTodoWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/RemoveTodoWebservice;

    .line 59
    iput-object p3, p0, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->todoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->onRequestFinished()V

    return-void
.end method

.method private onRequestFinished()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "RemoveTodoCommand"

    const-string v2, "RemoveTodoError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->setError(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->notifyIdleEvent()V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->kill()V

    .line 94
    return-void
.end method


# virtual methods
.method protected authenticatedExecute()V
    .locals 5

    .prologue
    .line 67
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/RemoveTodoWebservice;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->todoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/internal/webservices/RemoveTodoWebservice;->createRemoveTodoRequest(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v0

    .line 70
    .local v0, request:Lcom/amazon/foundation/internal/IAsynchronousCallback;
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 72
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "RemoveTodoCommand"

    const-string v3, "RemoveTodoError"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->setError(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;->kill()V

    .line 79
    :cond_0
    return-void
.end method
