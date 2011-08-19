.class public Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;
.super Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;
.source "UnBuyCommand.java"


# instance fields
.field private appController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private buyModel:Lcom/amazon/kcp/store/models/IBuyResultsModel;

.field private requestCallback:Lcom/amazon/foundation/ICallback;

.field private statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private unbuyResults:Lcom/amazon/kcp/application/models/internal/BuyResultsModel;

.field private webserviceClient:Lcom/amazon/kcp/internal/webservices/UnBuyWebservice;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/store/models/IBuyResultsModel;Lcom/amazon/kcp/application/internal/CBasePage;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Z)V

    .line 31
    new-instance v0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand$1;-><init>(Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->requestCallback:Lcom/amazon/foundation/ICallback;

    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 53
    new-instance v0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;

    invoke-direct {v0}, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->unbuyResults:Lcom/amazon/kcp/application/models/internal/BuyResultsModel;

    .line 54
    iput-object p2, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->buyModel:Lcom/amazon/kcp/store/models/IBuyResultsModel;

    .line 55
    new-instance v0, Lcom/amazon/kcp/internal/webservices/UnBuyWebservice;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/internal/webservices/UnBuyWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/UnBuyWebservice;

    .line 57
    if-eqz p3, :cond_0

    .line 60
    invoke-virtual {p3}, Lcom/amazon/kcp/application/internal/CBasePage;->getStatusTracker()Lcom/amazon/foundation/IStatusTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 61
    invoke-virtual {p3, p0}, Lcom/amazon/kcp/application/internal/CBasePage;->connectToCommand(Lcom/amazon/kcp/application/internal/ICommand;)V

    .line 63
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->onRequestFinished()V

    return-void
.end method

.method private onRequestFinished()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "UnBuyCommand"

    const-string v2, "UnBuyError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->setError(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->notifyIdleEvent()V

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->notifyKillEvent()V

    .line 110
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->buyModel:Lcom/amazon/kcp/store/models/IBuyResultsModel;

    invoke-interface {v0}, Lcom/amazon/kcp/store/models/IBuyResultsModel;->getBookDetails()Lcom/amazon/kcp/store/models/IBookDetails;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/models/IBookDetails;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->clearLookingForList()V

    .line 103
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->stopAllItems()V

    .line 105
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    sget-object v3, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-interface {v1, v0, v2, v3}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->syncWithRemoteTodoLookingForContent(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V

    .line 108
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->kill()V

    goto :goto_0
.end method


# virtual methods
.method protected authenticatedExecute()V
    .locals 5

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->buyModel:Lcom/amazon/kcp/store/models/IBuyResultsModel;

    invoke-interface {v0}, Lcom/amazon/kcp/store/models/IBuyResultsModel;->getBookDetails()Lcom/amazon/kcp/store/models/IBookDetails;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/models/IBookDetails;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->setError(Z)V

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/UnBuyWebservice;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->buyModel:Lcom/amazon/kcp/store/models/IBuyResultsModel;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->unbuyResults:Lcom/amazon/kcp/application/models/internal/BuyResultsModel;

    iget-object v3, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v4, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/internal/webservices/UnBuyWebservice;->createUnBuyRequest(Lcom/amazon/kcp/store/models/IBuyResultsModel;Lcom/amazon/kcp/application/models/internal/BuyResultsModel;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->requestCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 82
    return-void
.end method
