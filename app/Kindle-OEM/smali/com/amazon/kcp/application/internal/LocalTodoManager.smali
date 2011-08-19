.class public Lcom/amazon/kcp/application/internal/LocalTodoManager;
.super Ljava/lang/Object;
.source "LocalTodoManager.java"

# interfaces
.implements Lcom/amazon/kcp/application/internal/ILocalTodoManager;


# static fields
.field private static final LAST_GET_ITEMS_DATE_STATE:Ljava/lang/String; = "todoManagerLastGetItemsDate"

.field private static final MIN_GET_ITEMS_INTERVAL_STATE:Ljava/lang/String; = "todoManagerMinGetItemsInterval"

.field private static final SYNC_AFTER_WAIT_AND_NO_RETRY:I = 0x4

.field private static final SYNC_AFTER_WAIT_AND_RETRY:I = 0x3

.field private static final SYNC_IMMEDIATELY_NO_RETRIES:I = 0x0

.field private static final SYNC_IMMEDIATELY_RETRY_ONCE:I = 0x1

.field private static final SYNC_IMMEDIATELY_RETRY_TWICE:I = 0x2

.field private static final TODO_MANAGER_DEFAULT_GETITEMS_INTERVAL:I = 0x0

.field private static final TODO_MANAGER_FIRST_REQUEST_AFTER_WAIT:I = 0xbb8

.field private static final TODO_MANAGER_FIRST_RETRY:I = 0x1770

.field private static final TODO_MANAGER_SECOND_RETRY:I = 0xfde8


# instance fields
.field private authManager:Lcom/amazon/kcp/application/AuthenticationManager;

.field private currentAppVersionNumber:J

.field private delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

.field private executeAfterSync:Z

.field private executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

.field private lastGetItemsDate:Ljava/util/Date;

.field private localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

.field private minTodoItemRequestInterval:I

.field private noDelays:Z

.field private retryAfterSync:Z

.field private syncFinishedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private todoItemErrorEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

.field private todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private todoItemsToLookFor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/application/models/internal/TodoItem;",
            ">;"
        }
    .end annotation
.end field

.field private todoModel:Lcom/amazon/kcp/application/models/internal/TodoModel;

.field private updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

.field private webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/kcp/reader/models/IAccountSecretProvider;Lcom/amazon/kcp/application/internal/IUpdateManager;JLcom/amazon/kcp/application/IDownloadChunker;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    .line 76
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoModel;

    invoke-direct {v0}, Lcom/amazon/kcp/application/models/internal/TodoModel;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoModel:Lcom/amazon/kcp/application/models/internal/TodoModel;

    .line 80
    new-instance v0, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemErrorEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    .line 81
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->syncFinishedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemsToLookFor:Ljava/util/ArrayList;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->minTodoItemRequestInterval:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->executeAfterSync:Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->retryAfterSync:Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->noDelays:Z

    .line 93
    new-instance v0, Lcom/amazon/kcp/application/internal/LocalTodoManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/LocalTodoManager$1;-><init>(Lcom/amazon/kcp/application/internal/LocalTodoManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 101
    new-instance v0, Lcom/amazon/kcp/application/internal/LocalTodoManager$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/LocalTodoManager$2;-><init>(Lcom/amazon/kcp/application/internal/LocalTodoManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 132
    iput-object p7, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    .line 133
    new-instance v0, Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v3

    move-object v4, p1

    move-object v5, p6

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;-><init>(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/reader/models/IAccountSecretProvider;Lcom/amazon/kcp/application/IDownloadChunker;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    .line 136
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    .line 137
    iput-object p4, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    .line 138
    iput-wide p8, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->currentAppVersionNumber:J

    .line 139
    iput-object p5, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 143
    invoke-static {}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->getInstance()Lcom/amazon/kcp/application/internal/KeyValueStorage;

    move-result-object v0

    .line 144
    const-string v1, "todoManagerMinGetItemsInterval"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "todoManagerMinGetItemsInterval"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->minTodoItemRequestInterval:I

    .line 149
    :cond_0
    const-string v1, "todoManagerLastGetItemsDate"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    const-string v1, "todoManagerLastGetItemsDate"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->lastGetItemsDate:Ljava/util/Date;

    .line 153
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/LocalTodoManager;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->onTodoItemError(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/internal/LocalTodoManager;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->onTodoItemProcessed(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/application/internal/LocalTodoManager;Lcom/amazon/kcp/application/models/internal/TodoItem;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->syncIfNeeded(Lcom/amazon/kcp/application/models/internal/TodoItem;Lcom/amazon/foundation/IStatusTracker;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/application/internal/LocalTodoManager;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->onSyncRequestFinished(Lcom/amazon/foundation/IStatusTracker;)V

    return-void
.end method

.method private addTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem;Z)V
    .locals 4
    .parameter "item"
    .parameter "needsRemoteRemoval"

    .prologue
    .line 434
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemsToLookFor:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 436
    .local v1, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/amazon/kcp/application/models/internal/TodoItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 438
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/models/internal/TodoItem;

    .line 441
    .local v0, itemLookingFor:Lcom/amazon/kcp/application/models/internal/TodoItem;
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->coreValuesEqual(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v2, v3, :cond_0

    .line 456
    .end local v0           #itemLookingFor:Lcom/amazon/kcp/application/models/internal/TodoItem;
    :goto_1
    return-void

    .line 455
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v2, p1, p2}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->insert(Lcom/amazon/kcp/application/models/internal/TodoItem;Z)V

    goto :goto_1
.end method

.method private buildTodoItem(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/application/models/internal/TodoItem;
    .locals 2
    .parameter "asin"
    .parameter "action"
    .parameter "type"

    .prologue
    .line 544
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-direct {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;-><init>()V

    .line 545
    .local v0, item:Lcom/amazon/kcp/application/models/internal/TodoItem;
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setKey(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0, p2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setAction(Lcom/amazon/kcp/application/models/internal/TodoItem$Action;)V

    .line 547
    invoke-virtual {v0, p3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V

    .line 551
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getPreferredDictionaryTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setTitle(Ljava/lang/String;)V

    .line 556
    :cond_0
    return-object v0
.end method

.method private getRetryModeForActionAndType(Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)I
    .locals 2
    .parameter "action"
    .parameter "type"

    .prologue
    const/4 v1, 0x3

    .line 561
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne p1, v0, :cond_2

    .line 563
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p2, v0, :cond_1

    :cond_0
    move v0, v1

    .line 579
    :goto_0
    return v0

    .line 569
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne p2, v0, :cond_3

    .line 571
    const/4 v0, 0x1

    goto :goto_0

    .line 574
    :cond_2
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne p1, v0, :cond_3

    move v0, v1

    .line 576
    goto :goto_0

    .line 579
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initiateSyncRequest(ILcom/amazon/foundation/IStatusTracker;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 476
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    .line 478
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    iget-wide v4, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->currentAppVersionNumber:J

    iget-object v6, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoModel:Lcom/amazon/kcp/application/models/internal/TodoModel;

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;-><init>(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/internal/IUpdateManager;Lcom/amazon/foundation/internal/net/LightWebConnector;JLcom/amazon/kcp/application/models/internal/TodoModel;ILcom/amazon/foundation/IStatusTracker;)V

    .line 484
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    new-instance v2, Lcom/amazon/kcp/application/internal/LocalTodoManager$4;

    invoke-direct {v2, p0, p2}, Lcom/amazon/kcp/application/internal/LocalTodoManager$4;-><init>(Lcom/amazon/kcp/application/internal/LocalTodoManager;Lcom/amazon/foundation/IStatusTracker;)V

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 494
    :cond_0
    return-void
.end method

.method private onSyncRequestFinished(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 503
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->syncFinishedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v0, v3}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 510
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemsToLookFor:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 511
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    new-instance v2, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-direct {v2, v0, v3}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;-><init>(Lcom/amazon/kcp/application/models/internal/TodoItem;Z)V

    .line 516
    invoke-direct {p0, v2}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->onTodoItemError(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    goto :goto_0

    .line 521
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->setLastGetItemsDate(Ljava/util/Date;)V

    move v1, v3

    .line 525
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoModel:Lcom/amazon/kcp/application/models/internal/TodoModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoModel;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoModel:Lcom/amazon/kcp/application/models/internal/TodoModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoModel;->getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;->get(I)Lcom/amazon/kcp/internal/webservices/WebServiceModel;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->addTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem;Z)V

    .line 525
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoModel:Lcom/amazon/kcp/application/models/internal/TodoModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoModel;->empty()V

    .line 532
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->syncFinishedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {v0, v2}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 535
    iget-boolean v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->executeAfterSync:Z

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->execute(Lcom/amazon/foundation/IStatusTracker;)V

    .line 540
    :cond_2
    return-void
.end method

.method private onTodoItemError(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 2
    .parameter "todoItemWrapper"

    .prologue
    .line 584
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemErrorEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;->notifyListeners(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    .line 586
    return-void
.end method

.method private onTodoItemProcessed(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 4
    .parameter "todoItemWrapper"

    .prologue
    .line 590
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LocalTodoManager"

    const-string v2, "LookForContentDownloaded"

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method private setLastGetItemsDate(Ljava/util/Date;)V
    .locals 2
    .parameter "date"

    .prologue
    .line 460
    invoke-static {}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->getInstance()Lcom/amazon/kcp/application/internal/KeyValueStorage;

    move-result-object v0

    .line 461
    .local v0, storage:Lcom/amazon/kcp/application/internal/KeyValueStorage;
    const-string v1, "todoManagerLastGetItemsDate"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->setDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 463
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->lastGetItemsDate:Ljava/util/Date;

    .line 464
    return-void
.end method

.method private syncIfNeeded(Lcom/amazon/kcp/application/models/internal/TodoItem;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 1
    .parameter "item"
    .parameter "statusTracker"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemsToLookFor:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->initiateSyncRequest(ILcom/amazon/foundation/IStatusTracker;)V

    .line 472
    :cond_0
    return-void
.end method


# virtual methods
.method public addItemToDownload(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 179
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NAME_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->REMOTE_COMMAND:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->ACCOUNT_SECRETS:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq p2, v0, :cond_0

    .line 190
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->buildTodoItem(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    .line 192
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->addTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem;Z)V

    .line 194
    :cond_0
    return-void
.end method

.method public cancelAllItems()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->cancelAllActions()V

    .line 607
    return-void
.end method

.method public clearLookingForList()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemsToLookFor:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 599
    return-void
.end method

.method public execute(Lcom/amazon/foundation/IStatusTracker;)V
    .locals 1
    .parameter "statusTracker"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->execute(Lcom/amazon/foundation/IStatusTracker;)V

    .line 246
    return-void
.end method

.method public getItemAddedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->getItemAddedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    return-object v0
.end method

.method public getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemErrorEvent:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    return-object v0
.end method

.method public getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    return-object v0
.end method

.method public getItemProcessingEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->getItemProcessingEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    return-object v0
.end method

.method getLookingForList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/application/models/internal/TodoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemsToLookFor:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMinTodoItemRequestIntervalMinutes()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->minTodoItemRequestInterval:I

    return v0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->size()I

    move-result v0

    return v0
.end method

.method public getSyncFinishedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->syncFinishedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getTodoItem(Lcom/amazon/kcp/application/models/internal/TodoItem;)Lcom/amazon/kcp/application/models/internal/TodoItem;
    .locals 1
    .parameter "todoItem"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->getItemInQueue(Lcom/amazon/kcp/application/models/internal/TodoItem;)Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    return-object v0
.end method

.method public isContentInQueue(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Z
    .locals 3
    .parameter "asin"
    .parameter "action"
    .parameter "type"

    .prologue
    .line 201
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->buildTodoItem(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    .line 202
    .local v0, item:Lcom/amazon/kcp/application/models/internal/TodoItem;
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->isItemInQueue(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v1

    .line 204
    .local v1, result:Z
    return v1
.end method

.method public isItemInQueue(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z
    .locals 1
    .parameter "todoItem"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->isItemInQueue(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v0

    return v0
.end method

.method public removeItemFromTodoIfExists(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Z
    .locals 2
    .parameter "asin"
    .parameter "action"
    .parameter "type"

    .prologue
    .line 212
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->buildTodoItem(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    .line 213
    .local v0, item:Lcom/amazon/kcp/application/models/internal/TodoItem;
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->removeItemFromQueue(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v1

    return v1
.end method

.method setExecuteAfterSync(Z)V
    .locals 0
    .parameter "executeAfterSync"

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->executeAfterSync:Z

    .line 412
    return-void
.end method

.method public setMinTodoItemRequestInterval(I)V
    .locals 2
    .parameter "interval"

    .prologue
    .line 160
    invoke-static {}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->getInstance()Lcom/amazon/kcp/application/internal/KeyValueStorage;

    move-result-object v0

    .line 161
    .local v0, storage:Lcom/amazon/kcp/application/internal/KeyValueStorage;
    const-string v1, "todoManagerMinGetItemsInterval"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->setInt(Ljava/lang/String;I)V

    .line 163
    iput p1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->minTodoItemRequestInterval:I

    .line 164
    return-void
.end method

.method setRetryAfterSync(Z)V
    .locals 0
    .parameter "retryAfterSync"

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->retryAfterSync:Z

    .line 421
    return-void
.end method

.method public stopAllItems()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->stop()V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoModel:Lcom/amazon/kcp/application/models/internal/TodoModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoModel;->empty()V

    .line 620
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->localTodoQueue:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->stopAllActions()V

    .line 621
    return-void
.end method

.method public syncWithRemoteTodo(ZILcom/amazon/foundation/IStatusTracker;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    .line 335
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->lastGetItemsDate:Ljava/util/Date;

    if-eqz v1, :cond_3

    .line 344
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->lastGetItemsDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 347
    :goto_0
    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->getMinTodoItemRequestIntervalMinutes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 351
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->initiateSyncRequest(ILcom/amazon/foundation/IStatusTracker;)V

    .line 357
    :cond_1
    :goto_1
    return-void

    .line 355
    :cond_2
    invoke-direct {p0, p3}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->onSyncRequestFinished(Lcom/amazon/foundation/IStatusTracker;)V

    goto :goto_1

    :cond_3
    move-wide v0, v4

    goto :goto_0
.end method

.method public syncWithRemoteTodoLookingForContent(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting syncWithRemoteTodoLookingForContent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->buildTodoItem(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemsToLookFor:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding to list of todo items to look for, list length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->todoItemsToLookFor:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->getRetryModeForActionAndType(Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)I

    move-result v1

    .line 266
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    iget-boolean v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->noDelays:Z

    if-eqz v2, :cond_1

    .line 273
    invoke-direct {p0, v5, v9}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->initiateSyncRequest(ILcom/amazon/foundation/IStatusTracker;)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-boolean v2, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->retryAfterSync:Z

    if-eqz v2, :cond_8

    .line 280
    new-instance v2, Lcom/amazon/kcp/application/internal/LocalTodoManager$3;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/application/internal/LocalTodoManager$3;-><init>(Lcom/amazon/kcp/application/internal/LocalTodoManager;Lcom/amazon/kcp/application/models/internal/TodoItem;)V

    .line 289
    if-eq v1, v6, :cond_2

    if-ne v1, v8, :cond_3

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    const-wide/16 v3, 0xbb8

    invoke-interface {v0, v3, v4, v2}, Lcom/amazon/kcp/application/IDelayedCallbackFactory;->createDelayedCallack(JLcom/amazon/foundation/ICallback;)Lcom/amazon/foundation/ICallback;

    move-result-object v0

    .line 294
    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    .line 298
    :cond_3
    if-eq v1, v5, :cond_4

    if-ne v1, v7, :cond_5

    .line 301
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    const-wide/16 v3, 0x1770

    invoke-interface {v0, v3, v4, v2}, Lcom/amazon/kcp/application/IDelayedCallbackFactory;->createDelayedCallack(JLcom/amazon/foundation/ICallback;)Lcom/amazon/foundation/ICallback;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    .line 307
    :cond_5
    if-eq v1, v7, :cond_6

    if-ne v1, v6, :cond_7

    .line 310
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager;->delayedCallbackFactory:Lcom/amazon/kcp/application/IDelayedCallbackFactory;

    const-wide/32 v3, 0xfde8

    invoke-interface {v0, v3, v4, v2}, Lcom/amazon/kcp/application/IDelayedCallbackFactory;->createDelayedCallack(JLcom/amazon/foundation/ICallback;)Lcom/amazon/foundation/ICallback;

    move-result-object v0

    .line 312
    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    .line 315
    :cond_7
    if-eq v1, v6, :cond_0

    if-eq v1, v8, :cond_0

    .line 322
    :cond_8
    invoke-direct {p0, v5, v9}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->initiateSyncRequest(ILcom/amazon/foundation/IStatusTracker;)V

    goto :goto_0
.end method
