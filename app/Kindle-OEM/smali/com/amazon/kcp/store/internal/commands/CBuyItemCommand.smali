.class public Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;
.super Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;
.source "CBuyItemCommand.java"


# static fields
.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "BuyItemCommand"


# instance fields
.field private bookDetails:Lcom/amazon/kcp/store/models/internal/BookDetails;

.field private buyFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private buyResultsModel:Lcom/amazon/kcp/application/models/internal/BuyResultsModel;

.field private buyWebserviceClient:Lcom/amazon/kcp/internal/webservices/BuyWebservice;

.field private detailFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private detailsModel:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

.field private detailsWebserviceClient:Lcom/amazon/kcp/internal/webservices/DetailsWebservice;

.field private downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

.field private statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private storeController:Lcom/amazon/kcp/store/IStoreController;

.field private todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/store/models/IBookDetails;Lcom/amazon/kcp/application/internal/CBasePage;)V
    .locals 2
    .parameter "applicationController"
    .parameter "bookDetail"
    .parameter "previousPage"

    .prologue
    .line 66
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;)V

    .line 42
    new-instance v0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand$1;-><init>(Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->buyFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 50
    new-instance v0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand$2;-><init>(Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->detailFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 68
    new-instance v0, Lcom/amazon/kcp/internal/webservices/BuyWebservice;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/internal/webservices/BuyWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->buyWebserviceClient:Lcom/amazon/kcp/internal/webservices/BuyWebservice;

    .line 69
    new-instance v0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->detailsWebserviceClient:Lcom/amazon/kcp/internal/webservices/DetailsWebservice;

    .line 70
    check-cast p2, Lcom/amazon/kcp/store/models/internal/BookDetails;

    .end local p2
    iput-object p2, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->bookDetails:Lcom/amazon/kcp/store/models/internal/BookDetails;

    .line 71
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 72
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    .line 73
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->kindleStore()Lcom/amazon/kcp/store/IStoreController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->storeController:Lcom/amazon/kcp/store/IStoreController;

    .line 75
    if-eqz p3, :cond_0

    .line 77
    invoke-virtual {p3}, Lcom/amazon/kcp/application/internal/CBasePage;->getStatusTracker()Lcom/amazon/foundation/IStatusTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 78
    invoke-virtual {p3, p0}, Lcom/amazon/kcp/application/internal/CBasePage;->connectToCommand(Lcom/amazon/kcp/application/internal/ICommand;)V

    .line 80
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->onBuyRequestFinished()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->onDetailRequestFinished()V

    return-void
.end method

.method private createBuyRequest()V
    .locals 5

    .prologue
    .line 104
    new-instance v1, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;

    invoke-direct {v1}, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->buyResultsModel:Lcom/amazon/kcp/application/models/internal/BuyResultsModel;

    .line 105
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->buyResultsModel:Lcom/amazon/kcp/application/models/internal/BuyResultsModel;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->bookDetails:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->setBookDetails(Lcom/amazon/kcp/store/models/IBookDetails;)V

    .line 106
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->buyResultsModel:Lcom/amazon/kcp/application/models/internal/BuyResultsModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->setType(I)V

    .line 108
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->bookDetails:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->reuseBookDetailForDownload(Lcom/amazon/kcp/store/models/IBookDetails;)V

    .line 110
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->buyWebserviceClient:Lcom/amazon/kcp/internal/webservices/BuyWebservice;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v3, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->buyResultsModel:Lcom/amazon/kcp/application/models/internal/BuyResultsModel;

    iget-object v4, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/internal/webservices/BuyWebservice;->createBuyRequest(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/models/internal/BuyResultsModel;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v0

    .line 115
    .local v0, request:Lcom/amazon/foundation/internal/IAsynchronousCallback;
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->buyFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 116
    return-void
.end method

.method private createDetailRequest()V
    .locals 4

    .prologue
    .line 151
    new-instance v1, Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    invoke-direct {v1}, Lcom/amazon/kcp/store/models/internal/CDetailsModel;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->detailsModel:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    .line 152
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->detailsModel:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->bookDetails:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-virtual {v2}, Lcom/amazon/kcp/store/models/internal/BookDetails;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->setAsin(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->detailsWebserviceClient:Lcom/amazon/kcp/internal/webservices/DetailsWebservice;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->detailsModel:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    iget-object v3, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/internal/webservices/DetailsWebservice;->createDetailsRequest(Lcom/amazon/kcp/store/models/internal/CDetailsModel;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v0

    .line 157
    .local v0, request:Lcom/amazon/foundation/internal/IAsynchronousCallback;
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->detailFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 158
    return-void
.end method

.method private onBuyRequestFinished()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "BuyItemCommand"

    const-string v2, "BuyItemError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->setError(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->notifyIdleEvent()V

    .line 126
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->notifyKillEvent()V

    .line 147
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->buyResultsModel:Lcom/amazon/kcp/application/models/internal/BuyResultsModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->wasAlreadyOwned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->kill()V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->bookDetails:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/models/internal/BookDetails;->getAsin()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    sget-object v3, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->syncWithRemoteTodoLookingForContent(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V

    goto :goto_1
.end method

.method private onDetailRequestFinished()V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "BuyItemCommand"

    const-string v2, "DetailRequestError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 165
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BuyAndDownloadBook"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->bookDetails:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-virtual {v2}, Lcom/amazon/kcp/store/models/internal/BookDetails;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->setError(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->notifyIdleEvent()V

    .line 168
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->notifyKillEvent()V

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->detailsModel:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->getBookDetail()Lcom/amazon/kcp/store/models/IBookDetails;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/models/internal/BookDetails;

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->bookDetails:Lcom/amazon/kcp/store/models/internal/BookDetails;

    .line 174
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->createBuyRequest()V

    goto :goto_0
.end method


# virtual methods
.method protected authenticatedExecute()V
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->bookDetails:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/models/internal/BookDetails;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->bookDetails:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/models/internal/BookDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->bookDetails:Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/models/internal/BookDetails;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 91
    .local v0, modelHasRequiredInformation:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->createBuyRequest()V

    .line 100
    :goto_1
    return-void

    .line 86
    .end local v0           #modelHasRequiredInformation:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 97
    .restart local v0       #modelHasRequiredInformation:Z
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->createDetailRequest()V

    goto :goto_1
.end method
