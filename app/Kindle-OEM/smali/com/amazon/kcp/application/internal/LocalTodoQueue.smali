.class Lcom/amazon/kcp/application/internal/LocalTodoQueue;
.super Ljava/lang/Object;
.source "LocalTodoQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/internal/LocalTodoQueue$StatefulTodoItemWrapperComparator;
    }
.end annotation


# static fields
.field private static final DEREGISTER_TITLE:Ljava/lang/String; = "Deregister"


# instance fields
.field private appController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

.field private chunker:Lcom/amazon/kcp/application/IDownloadChunker;

.field private currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

.field private executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

.field private fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

.field private itemAddedEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

.field private itemErrorEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

.field private itemProcessedEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

.field private itemProcessingEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

.field private queue:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private removalExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

.field private secretsProvider:Lcom/amazon/kcp/reader/models/IAccountSecretProvider;

.field private webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;


# direct methods
.method public constructor <init>(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/reader/models/IAccountSecretProvider;Lcom/amazon/kcp/application/IDownloadChunker;)V
    .locals 3
    .parameter "fileConnectionFactory"
    .parameter "webConnector"
    .parameter "authenticationManager"
    .parameter "appController"
    .parameter "secretsProvider"
    .parameter "chunker"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    .line 59
    new-instance v0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->removalExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    .line 62
    new-instance v0, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->itemAddedEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    .line 63
    new-instance v0, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->itemProcessingEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    .line 64
    new-instance v0, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->itemProcessedEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    .line 65
    new-instance v0, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->itemErrorEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    .line 106
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/amazon/kcp/application/internal/LocalTodoQueue$StatefulTodoItemWrapperComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/application/internal/LocalTodoQueue$StatefulTodoItemWrapperComparator;-><init>(Lcom/amazon/kcp/application/internal/LocalTodoQueue;Lcom/amazon/kcp/application/internal/LocalTodoQueue$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    .line 122
    iput-object p3, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    .line 123
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 124
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    .line 125
    iput-object p4, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 126
    iput-object p5, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->secretsProvider:Lcom/amazon/kcp/reader/models/IAccountSecretProvider;

    .line 127
    iput-object p6, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->chunker:Lcom/amazon/kcp/application/IDownloadChunker;

    .line 128
    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/internal/LocalTodoQueue;)Lcom/amazon/kcp/application/IKindleApplicationController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/application/internal/LocalTodoQueue;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->removeFromRemoteTodo(Lcom/amazon/foundation/IStatusTracker;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/application/internal/LocalTodoQueue;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->onTodoItemProcessed(Lcom/amazon/foundation/IStatusTracker;)V

    return-void
.end method

.method private launchInitialCommand(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 384
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    .line 385
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 680
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    .line 393
    if-eqz p1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->registerStatusTracker(Lcom/amazon/foundation/IStatusTracker;)V

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v1

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing todoItem: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getActionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getState()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->NO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    if-ne v2, v3, :cond_3

    .line 415
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    sget-object v3, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->QUEUED_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->setState(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;)V

    .line 429
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getError()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->NO_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    if-eq v2, v3, :cond_6

    .line 431
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->onTodoItemProcessed(Lcom/amazon/foundation/IStatusTracker;)V

    goto/16 :goto_0

    .line 417
    :cond_3
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getState()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->FINISHED_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getState()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->REMOVING_FROM_LOCAL_TODO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    if-ne v2, v3, :cond_5

    .line 420
    :cond_4
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->onTodoItemProcessed(Lcom/amazon/foundation/IStatusTracker;)V

    goto/16 :goto_0

    .line 423
    :cond_5
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getState()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->REMOVING_FROM_TODO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    if-ne v2, v3, :cond_2

    .line 425
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->removeFromRemoteTodo(Lcom/amazon/foundation/IStatusTracker;)V

    goto/16 :goto_0

    .line 440
    :cond_6
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->reset()V

    .line 443
    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v0, v2, :cond_8

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->PERSONAL:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v1, v2, :cond_8

    .line 450
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO QUEUE: Downloading a "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 452
    new-instance v0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v4, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    iget-object v5, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v6, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleApplicationController;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    iget-object v8, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->chunker:Lcom/amazon/kcp/application/IDownloadChunker;

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;-><init>(Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/system/io/IPersistentSettingsHelper;Lcom/amazon/kcp/application/IUIMessaging;Lcom/amazon/kcp/application/IDownloadChunker;)V

    .line 642
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->needsRemoteRemoval()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 646
    new-instance v1, Lcom/amazon/kcp/application/internal/LocalTodoQueue$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue$2;-><init>(Lcom/amazon/kcp/application/internal/LocalTodoQueue;Lcom/amazon/foundation/IStatusTracker;)V

    .line 667
    :goto_2
    if-eqz v0, :cond_1b

    .line 669
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    sget-object v3, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->PROCESSING_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->setState(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;)V

    .line 670
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->itemProcessingEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;->notifyListeners(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    .line 671
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v2, v0, v1}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    goto/16 :goto_0

    .line 462
    :cond_8
    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v0, v2, :cond_b

    .line 464
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 465
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v0, v1, :cond_9

    move v0, v7

    .line 468
    :goto_3
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    .line 469
    invoke-interface {v1, v5, v0}, Lcom/amazon/kcp/library/models/ILibrary;->getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_a

    .line 473
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v6, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v6}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTypeString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;-><init>(Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/foundation/IStatusTracker;)V

    goto :goto_1

    :cond_9
    move v0, v6

    .line 465
    goto :goto_3

    .line 489
    :cond_a
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->CANCELLED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_1

    .line 494
    :cond_b
    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v0, v2, :cond_c

    .line 496
    new-instance v0, Lcom/amazon/kcp/library/internal/commands/RevokeCommand;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/internal/commands/RevokeCommand;-><init>(Lcom/amazon/kcp/library/models/ILibrary;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 501
    :cond_c
    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_LAST_PAGE_READ:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v0, v2, :cond_10

    .line 503
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getSequence()I

    move-result v0

    .line 504
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 505
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v2, v3, :cond_e

    move v2, v7

    .line 506
    :goto_4
    iget-object v3, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v3

    .line 507
    invoke-interface {v3, v1, v2}, Lcom/amazon/kcp/library/models/ILibrary;->getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v1

    .line 509
    if-eqz v1, :cond_f

    .line 511
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 513
    invoke-interface {v1, v0, v4, v6, v2}, Lcom/amazon/kcp/library/models/ILocalBookItem;->updateServerLastPageRead(I[BILjava/lang/String;)Z

    move-result v0

    .line 514
    if-nez v0, :cond_d

    .line 516
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    const-string v2, "UpdateLocalLPRError"

    invoke-virtual {v0, v2, v4}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_d
    invoke-interface {v1, v7}, Lcom/amazon/kcp/library/models/ILocalBookItem;->proposeFurthestReadLocation(I)V

    :goto_5
    move-object v0, v4

    .line 529
    goto/16 :goto_1

    :cond_e
    move v2, v6

    .line 505
    goto :goto_4

    .line 526
    :cond_f
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->CANCELLED:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$CompletionStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 531
    :cond_10
    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v0, v2, :cond_11

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NAME_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v1, v2, :cond_11

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Deregister"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 534
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LocalTodoQueue"

    const-string v2, "ForceDeregister"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->removeAuthentication()V

    .line 538
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/IUpdateManager;->clearSecureStorage()V

    .line 539
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAccountSecretProvider()Lcom/amazon/kcp/reader/models/IAccountSecretProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IAccountSecretProvider;->clearSecrets()V

    move-object v0, v4

    goto/16 :goto_1

    .line 542
    :cond_11
    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v0, v2, :cond_12

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->CRED_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v1, v2, :cond_12

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 546
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    iget-object v4, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/application/internal/commands/GetDeviceCredentialsCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/models/internal/TodoItem;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/AuthenticationManager;)V

    goto/16 :goto_1

    .line 556
    :cond_12
    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SEND:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v0, v2, :cond_13

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->REMOTE_COMMAND:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v1, v2, :cond_13

    .line 558
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SYSLOG:UPLOAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 560
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v4

    iget-object v6, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    iget-object v7, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Ljava/lang/String;JLcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/foundation/IStatusTracker;)V

    goto/16 :goto_1

    .line 570
    :cond_13
    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v0, v2, :cond_14

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->SOFTWARE_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v1, v2, :cond_14

    .line 572
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;

    .line 574
    invoke-static {}, Lcom/amazon/system/SynchronizationUtilities;->getUtilities()Lcom/amazon/system/Utilities;

    move-result-object v1

    .line 575
    new-instance v2, Lcom/amazon/kcp/application/internal/LocalTodoQueue$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue$1;-><init>(Lcom/amazon/kcp/application/internal/LocalTodoQueue;Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;)V

    invoke-interface {v1, v2}, Lcom/amazon/system/Utilities;->invokeLater(Ljava/lang/Runnable;)V

    move-object v0, v4

    .line 584
    goto/16 :goto_1

    .line 586
    :cond_14
    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v0, v2, :cond_16

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->ACCOUNT_SECRETS:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v1, v2, :cond_16

    .line 588
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 590
    if-eqz v0, :cond_15

    .line 595
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->secretsProvider:Lcom/amazon/kcp/reader/models/IAccountSecretProvider;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IAccountSecretProvider;->clearSecrets()V

    .line 599
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v1, v6

    .line 601
    :goto_6
    if-eqz v0, :cond_15

    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 603
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->secretsProvider:Lcom/amazon/kcp/reader/models/IAccountSecretProvider;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Lcom/amazon/kcp/reader/models/IAccountSecretProvider;->appendAccountSecret(Ljava/lang/String;)V

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    move-object v0, v4

    .line 606
    goto/16 :goto_1

    .line 608
    :cond_16
    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v0, v2, :cond_17

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->WATERMARKS_SNAPSHOT:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v1, v2, :cond_17

    .line 610
    new-instance v0, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    iget-object v4, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;-><init>(Lcom/amazon/kcp/library/models/CLibrary;Ljava/lang/String;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/AuthenticationManager;)V

    goto/16 :goto_1

    .line 618
    :cond_17
    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v0, v2, :cond_19

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->SCFG:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v1, v0, :cond_19

    .line 620
    invoke-static {}, Lcom/amazon/kcp/application/DynamicConfigManager;->getInstance()Lcom/amazon/kcp/application/DynamicConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/DynamicConfigManager;->loadServerConfigOverrides(Ljava/lang/String;)Z

    move-result v0

    .line 621
    if-nez v0, :cond_18

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set server dynamicconfig, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    move-object v0, v4

    .line 625
    goto/16 :goto_1

    .line 629
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO QUEUE: Unknown todo item, removing from server with UNRECOGNIZED and removing locally. Action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getActionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->UNRECOGNIZED_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->itemProcessingEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;->notifyListeners(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    .line 638
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->removeFromRemoteTodo(Lcom/amazon/foundation/IStatusTracker;)V

    goto/16 :goto_0

    .line 657
    :cond_1a
    new-instance v1, Lcom/amazon/kcp/application/internal/LocalTodoQueue$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue$3;-><init>(Lcom/amazon/kcp/application/internal/LocalTodoQueue;Lcom/amazon/foundation/IStatusTracker;)V

    goto/16 :goto_2

    .line 677
    :cond_1b
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->itemProcessingEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0, v2}, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;->notifyListeners(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    .line 678
    invoke-interface {v1}, Lcom/amazon/foundation/ICallback;->execute()V

    goto/16 :goto_0

    :cond_1c
    move-object v0, v4

    goto/16 :goto_1
.end method

.method private onTodoItemProcessed(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 2
    .parameter

    .prologue
    .line 735
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->itemErrorEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;->notifyListeners(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    .line 760
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->removeCurrentItem()V

    .line 761
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->execute(Lcom/amazon/foundation/IStatusTracker;)V

    .line 762
    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getState()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->REMOVING_FROM_LOCAL_TODO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    if-eq v0, v1, :cond_1

    .line 754
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->FINISHED_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->setState(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;)V

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->itemProcessedEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;->notifyListeners(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    goto :goto_0
.end method

.method private removeCurrentItem()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    .line 379
    :cond_0
    return-void
.end method

.method private removeFromRemoteTodo(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 4
    .parameter

    .prologue
    .line 691
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getError()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->SERVER_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getError()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->CDE_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    if-eq v0, v1, :cond_0

    .line 705
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->onTodoItemProcessed(Lcom/amazon/foundation/IStatusTracker;)V

    .line 731
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getState()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->REMOVING_FROM_LOCAL_TODO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    if-eq v0, v1, :cond_1

    .line 716
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->REMOVING_FROM_TODO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->setState(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;)V

    .line 719
    :cond_1
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/application/internal/commands/RemoveTodoCommand;-><init>(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    .line 723
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->removalExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    new-instance v2, Lcom/amazon/kcp/application/internal/LocalTodoQueue$4;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue$4;-><init>(Lcom/amazon/kcp/application/internal/LocalTodoQueue;Lcom/amazon/foundation/IStatusTracker;)V

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAllActions()V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->clear()V

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->cancel()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->removalExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->removalExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->cancel()V

    .line 185
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 166
    return-void
.end method

.method public execute(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 2
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->removalExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO QUEUE: starting to process the queue, total size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->launchInitialCommand(Lcom/amazon/foundation/IStatusTracker;)V

    .line 222
    :cond_0
    return-void
.end method

.method public getItemAddedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->itemAddedEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    return-object v0
.end method

.method public getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->itemErrorEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    return-object v0
.end method

.method public getItemInQueue(Lcom/amazon/kcp/application/models/internal/TodoItem;)Lcom/amazon/kcp/application/models/internal/TodoItem;
    .locals 3
    .parameter "todoItem"

    .prologue
    .line 242
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 243
    .end local p0
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    .line 246
    .local v1, localTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItem;
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 252
    .end local v1           #localTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItem;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->itemProcessedEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    return-object v0
.end method

.method public getItemProcessingEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->itemProcessingEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    return-object v0
.end method

.method public insert(Lcom/amazon/kcp/application/models/internal/TodoItem;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->isItemInQueue(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;-><init>(Lcom/amazon/kcp/application/models/internal/TodoItem;Z)V

    .line 144
    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->QUEUED_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->setState(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;)V

    .line 146
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->itemAddedEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;->notifyListeners(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    .line 149
    :cond_0
    return-void
.end method

.method public isItemInQueue(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z
    .locals 1
    .parameter "todoItem"

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->getItemInQueue(Lcom/amazon/kcp/application/models/internal/TodoItem;)Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pop()V
    .locals 2

    .prologue
    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeItemFromQueue(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z
    .locals 5
    .parameter

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 258
    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 262
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    .line 265
    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->coreValuesEqual(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->coreValuesEqual(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->REMOVING_FROM_LOCAL_TODO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->setState(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;)V

    .line 284
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->cancel()V

    .line 294
    :goto_1
    const/4 v0, 0x1

    .line 297
    :goto_2
    return v0

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public stopAllActions()V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->clear()V

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->stop()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->removalExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->removalExecutor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->stop()V

    .line 203
    :cond_1
    return-void
.end method

.method public top()Lcom/amazon/kcp/application/models/internal/TodoItem;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->queue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
