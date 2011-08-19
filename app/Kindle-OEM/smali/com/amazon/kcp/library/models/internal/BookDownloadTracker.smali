.class public Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;
.super Ljava/lang/Object;
.source "BookDownloadTracker.java"


# instance fields
.field private asin:Ljava/lang/String;

.field private docType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field private final downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

.field private downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

.field private final downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

.field private downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

.field private final downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

.field private downloadingItemAddedCallback:Lcom/amazon/foundation/IIntCallback;

.field private todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private final todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

.field private tracking:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/kcp/application/internal/ILocalTodoManager;)V
    .locals 1
    .parameter "downloadManager"
    .parameter "todoManager"

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$1;-><init>(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 57
    new-instance v0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$2;-><init>(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 77
    new-instance v0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$3;-><init>(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadingItemAddedCallback:Lcom/amazon/foundation/IIntCallback;

    .line 95
    new-instance v0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$4;-><init>(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    .line 103
    new-instance v0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$5;-><init>(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    .line 130
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 131
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->tracking:Z

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->matchesOurItem(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Lcom/amazon/kcp/library/models/IDownloadBookItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    return-object v0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Lcom/amazon/kcp/library/models/IDownloadBookItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->asin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->docType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Lcom/amazon/kcp/library/models/internal/IDownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->registerProgressCallbacks()V

    return-void
.end method

.method private matchesOurItem(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)Z
    .locals 3
    .parameter "todoWrapper"

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    .line 118
    .local v0, item:Lcom/amazon/kcp/application/models/internal/TodoItem;
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->asin:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->docType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerProgressCallbacks()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->register(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->register(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public isTrackingOn()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->tracking:Z

    return v0
.end method

.method public startTracking(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received request to track: asin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", docType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->tracking:Z

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->asin:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->docType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 177
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->docType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    sget-object v3, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v2, v3, :cond_1

    move v2, v4

    :goto_1
    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookItemFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadingItemAddedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 187
    iput-boolean v4, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->tracking:Z

    .line 190
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->registerProgressCallbacks()V

    goto :goto_0

    .line 180
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public stopTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->tracking:Z

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not tracking download (startTracking() must be called first or stopTracking() has been called)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->isRegistered(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->isRegistered(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->todoItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadingItemAddedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->isRegistered(Lcom/amazon/foundation/IIntCallback;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadingItemAddedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v0, :cond_6

    .line 235
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->isRegistered(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->isRegistered(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 241
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 243
    :cond_5
    iput-object v2, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 246
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->tracking:Z

    .line 247
    iput-object v2, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->asin:Ljava/lang/String;

    .line 248
    iput-object v2, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->docType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 249
    iput-object v2, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->downloadObserver:Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    .line 250
    return-void
.end method
