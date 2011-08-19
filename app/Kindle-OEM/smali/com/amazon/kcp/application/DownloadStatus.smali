.class public Lcom/amazon/kcp/application/DownloadStatus;
.super Ljava/lang/Object;
.source "DownloadStatus.java"

# interfaces
.implements Lcom/amazon/kcp/application/IDownloadStatus;


# instance fields
.field private asin:Ljava/lang/String;

.field private itemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private itemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private itemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private itemProcessingCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private itemStartedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private progress:F

.field private progressTracker:Lcom/amazon/foundation/IStatusTracker;

.field private status:Lcom/amazon/kcp/application/IDownloadStatus$Status;

.field private todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/internal/ILocalTodoManager;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->progress:F

    .line 26
    new-instance v0, Lcom/amazon/kcp/application/DownloadStatus$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/DownloadStatus$1;-><init>(Lcom/amazon/kcp/application/DownloadStatus;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->progressTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 58
    new-instance v0, Lcom/amazon/kcp/application/DownloadStatus$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/DownloadStatus$2;-><init>(Lcom/amazon/kcp/application/DownloadStatus;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 70
    new-instance v0, Lcom/amazon/kcp/application/DownloadStatus$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/DownloadStatus$3;-><init>(Lcom/amazon/kcp/application/DownloadStatus;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 97
    new-instance v0, Lcom/amazon/kcp/application/DownloadStatus$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/DownloadStatus$4;-><init>(Lcom/amazon/kcp/application/DownloadStatus;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemProcessingCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 118
    new-instance v0, Lcom/amazon/kcp/application/DownloadStatus$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/DownloadStatus$5;-><init>(Lcom/amazon/kcp/application/DownloadStatus;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 132
    new-instance v0, Lcom/amazon/kcp/application/DownloadStatus$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/DownloadStatus$6;-><init>(Lcom/amazon/kcp/application/DownloadStatus;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemStartedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 153
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "asin cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    if-nez p3, :cond_1

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "todoManager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    iput-object p1, p0, Lcom/amazon/kcp/application/DownloadStatus;->asin:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/amazon/kcp/application/DownloadStatus;->type:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lcom/amazon/kcp/application/DownloadStatus;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    .line 166
    sget-object v0, Lcom/amazon/kcp/application/IDownloadStatus$Status;->NoStatus:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    iput-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->status:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemAddedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessingEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemProcessingCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemAddedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemStartedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 173
    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/application/DownloadStatus;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/amazon/kcp/application/DownloadStatus;->progress:F

    return p1
.end method

.method static synthetic access$102(Lcom/amazon/kcp/application/DownloadStatus;Lcom/amazon/kcp/application/IDownloadStatus$Status;)Lcom/amazon/kcp/application/IDownloadStatus$Status;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/amazon/kcp/application/DownloadStatus;->status:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amazon/kcp/application/DownloadStatus;)Lcom/amazon/foundation/IStatusTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->progressTracker:Lcom/amazon/foundation/IStatusTracker;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemAddedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessingEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemProcessingCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 181
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemAddedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/DownloadStatus;->itemStartedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    .line 184
    return-void
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->progress:F

    return v0
.end method

.method public getStatus()Lcom/amazon/kcp/application/IDownloadStatus$Status;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->status:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    return-object v0
.end method

.method isOurItem(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus;->asin:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
