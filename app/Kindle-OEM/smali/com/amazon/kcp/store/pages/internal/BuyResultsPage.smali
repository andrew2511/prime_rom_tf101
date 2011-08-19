.class public Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;
.super Lcom/amazon/kcp/application/internal/CBasePage;
.source "BuyResultsPage.java"

# interfaces
.implements Lcom/amazon/kcp/store/pages/IBuyResultsPage;


# instance fields
.field private cancelFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private downloadCompleteEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private downloadErrorEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private imageFactory:Lcom/amazon/system/drawing/ImageFactory;

.field private model:Lcom/amazon/kcp/store/models/IBuyResultsModel;

.field private purchaseType:I

.field private statusTracker:Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

.field private todoItemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private todoItemType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field private todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;


# direct methods
.method public constructor <init>(ILcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/store/models/IBuyResultsModel;Lcom/amazon/system/drawing/ImageFactory;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p2}, Lcom/amazon/kcp/application/internal/CBasePage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    .line 49
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->downloadCompleteEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 50
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->downloadErrorEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 51
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->cancelFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 53
    new-instance v0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage$1;-><init>(Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 61
    new-instance v0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage$2;-><init>(Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 69
    new-instance v0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage$3;-><init>(Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 90
    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemAddedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 96
    iput p1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->purchaseType:I

    .line 97
    iput-object p3, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->model:Lcom/amazon/kcp/store/models/IBuyResultsModel;

    .line 98
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->purchaseTypeToTodoItemType(I)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 99
    iput-object p4, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 100
    new-instance v0, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->statusTracker:Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->statusTracker:Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

    invoke-super {p0}, Lcom/amazon/kcp/application/internal/CBasePage;->getStatusTracker()Lcom/amazon/foundation/IStatusTracker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->registerDelegate(Lcom/amazon/foundation/IStatusTracker;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->onTodoItemAdded(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->onTodoItemProcessed(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->onTodoItemError(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    return-void
.end method

.method private onTodoItemAdded(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 1
    .parameter "todoItemWrapper"

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->shouldHandleTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->getStatusTracker()Lcom/amazon/foundation/IStatusTracker;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->registerStatusTracker(Lcom/amazon/foundation/IStatusTracker;)V

    .line 298
    :cond_0
    return-void
.end method

.method private onTodoItemError(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 3
    .parameter "todoItemWrapper"

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->shouldHandleTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->downloadErrorEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 315
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->statusTracker:Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

    const-string v1, "DownloadContentError"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    return-void
.end method

.method private onTodoItemProcessed(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 1
    .parameter "todoItemWrapper"

    .prologue
    .line 302
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->shouldHandleTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->downloadCompleteEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 306
    :cond_0
    return-void
.end method

.method private purchaseTypeToTodoItemType(I)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;
    .locals 1
    .parameter

    .prologue
    .line 333
    packed-switch p1, :pswitch_data_0

    .line 342
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    :goto_0
    return-object v0

    .line 336
    :pswitch_0
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 339
    :pswitch_1
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shouldHandleTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->model:Lcom/amazon/kcp/store/models/IBuyResultsModel;

    invoke-interface {v1}, Lcom/amazon/kcp/store/models/IBuyResultsModel;->getBookDetails()Lcom/amazon/kcp/store/models/IBookDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/store/models/IBookDetails;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disconnectPage()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemAddedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->isRegistered(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemAddedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->isRegistered(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->isRegistered(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 146
    :cond_2
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/CBasePage;->getStatusTracker()Lcom/amazon/foundation/IStatusTracker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->unregisterStatusTracker(Lcom/amazon/foundation/IStatusTracker;)V

    .line 147
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/CBasePage;->disconnectPage()V

    .line 148
    return-void
.end method

.method public downloadCovers(Lcom/amazon/system/drawing/Dimension;)V
    .locals 5
    .parameter "maxDimension"

    .prologue
    .line 109
    iget-object v2, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->model:Lcom/amazon/kcp/store/models/IBuyResultsModel;

    invoke-interface {v2}, Lcom/amazon/kcp/store/models/IBuyResultsModel;->getBookDetails()Lcom/amazon/kcp/store/models/IBookDetails;

    move-result-object v0

    .line 112
    .local v0, bookDetails:Lcom/amazon/kcp/store/models/IBookDetails;
    new-instance v1, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;

    iget-object v2, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v2

    new-instance v3, Lcom/amazon/kcp/application/internal/CImageBuilder;

    iget-object v4, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    invoke-direct {v3, v4}, Lcom/amazon/kcp/application/internal/CImageBuilder;-><init>(Lcom/amazon/system/drawing/ImageFactory;)V

    iget-object v4, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleApplicationController;->getDelayedCallbackFactory()Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/system/drawing/Dimension;)V

    .line 118
    .local v1, coverCommand:Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->addBookDetailsCoversToDownload(Lcom/amazon/kcp/store/models/IBookDetails;)V

    .line 119
    invoke-virtual {v1}, Lcom/amazon/kcp/application/internal/commands/CDownloadCoversCommand;->execute()V

    .line 120
    return-void
.end method

.method public getCancelFinishedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->cancelFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getDownloadCompleteEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->downloadCompleteEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getDownloadErrorEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->downloadErrorEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getModel()Lcom/amazon/kcp/store/models/IBuyResultsModel;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->model:Lcom/amazon/kcp/store/models/IBuyResultsModel;

    return-object v0
.end method

.method public getStatusTracker()Lcom/amazon/foundation/IStatusTracker;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->statusTracker:Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

    return-object v0
.end method

.method public goToArchivedItems()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryPage()Lcom/amazon/kcp/library/pages/ILibraryPage;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/pages/ILibraryPage;->gotoArchivedItems()V

    .line 252
    return-void
.end method

.method public goToLibrary()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->showDefaultPage()Lcom/amazon/kcp/application/IBasePage;

    .line 247
    return-void
.end method

.method public goToStore()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->kindleStore()Lcom/amazon/kcp/store/IStoreController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/IStoreController;->showDefaultPage()Lcom/amazon/kcp/application/IBasePage;

    .line 257
    return-void
.end method

.method public onCommandIdle()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->cancelFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 270
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/CBasePage;->onCommandIdle()V

    .line 271
    return-void
.end method

.method public onCommandKilled()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->cancelFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 262
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/CBasePage;->onCommandKilled()V

    .line 263
    return-void
.end method

.method public registerStatusTracker(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 1
    .parameter "statusTracker"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->statusTracker:Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->registerDelegate(Lcom/amazon/foundation/IStatusTracker;)V

    .line 285
    return-void
.end method

.method public retryDownload()V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->model:Lcom/amazon/kcp/store/models/IBuyResultsModel;

    invoke-interface {v0}, Lcom/amazon/kcp/store/models/IBuyResultsModel;->wasAlreadyOwned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->model:Lcom/amazon/kcp/store/models/IBuyResultsModel;

    invoke-interface {v1}, Lcom/amazon/kcp/store/models/IBuyResultsModel;->getBookDetails()Lcom/amazon/kcp/store/models/IBookDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/store/models/IBookDetails;->getAsin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->addItemToDownload(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->execute(Lcom/amazon/foundation/IStatusTracker;)V

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->model:Lcom/amazon/kcp/store/models/IBuyResultsModel;

    invoke-interface {v1}, Lcom/amazon/kcp/store/models/IBuyResultsModel;->getBookDetails()Lcom/amazon/kcp/store/models/IBookDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/store/models/IBookDetails;->getAsin()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    iget-object v3, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->todoItemType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->syncWithRemoteTodoLookingForContent(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V

    goto :goto_0
.end method

.method public startReading()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->model:Lcom/amazon/kcp/store/models/IBuyResultsModel;

    invoke-interface {v1}, Lcom/amazon/kcp/store/models/IBuyResultsModel;->getBookDetails()Lcom/amazon/kcp/store/models/IBookDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/store/models/IBookDetails;->getAsin()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->purchaseType:I

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/library/models/ILibrary;->getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 225
    new-instance v1, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;

    iget-object v2, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;-><init>(Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kcp/library/models/ILocalBookItem;Z)V

    .line 226
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->execute()V

    .line 227
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    const-string v1, "OpenBookError"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/IKindleApplicationController;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void

    .line 215
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unBuy()V
    .locals 3

    .prologue
    .line 240
    new-instance v0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;

    iget-object v1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    iget-object v2, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->model:Lcom/amazon/kcp/store/models/IBuyResultsModel;

    invoke-direct {v0, v1, v2, p0}, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/store/models/IBuyResultsModel;Lcom/amazon/kcp/application/internal/CBasePage;)V

    .line 241
    .local v0, command:Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;
    invoke-virtual {v0}, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->execute()V

    .line 242
    return-void
.end method

.method public unregisterStatusTracker(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 1
    .parameter "statusTracker"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->statusTracker:Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/MultipleDelegateStatusTracker;->unregisterDelegate(Lcom/amazon/foundation/IStatusTracker;)V

    .line 290
    return-void
.end method
