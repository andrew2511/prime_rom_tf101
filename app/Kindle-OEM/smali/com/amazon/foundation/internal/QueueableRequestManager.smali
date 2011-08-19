.class public Lcom/amazon/foundation/internal/QueueableRequestManager;
.super Ljava/lang/Object;
.source "QueueableRequestManager.java"


# instance fields
.field private lock:Ljava/lang/Object;

.field private final maxParallelRequests:I

.field private pendingQueue:Ljava/util/Vector;

.field private runningQueue:Ljava/util/Vector;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxParallelRequests"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->pendingQueue:Ljava/util/Vector;

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->runningQueue:Ljava/util/Vector;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->lock:Ljava/lang/Object;

    .line 28
    iput p1, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->maxParallelRequests:I

    .line 29
    return-void
.end method

.method private runRequest(Lcom/amazon/foundation/ICallback;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 111
    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    .line 112
    return-void
.end method


# virtual methods
.method public addRequestForExecution(Lcom/amazon/foundation/ICallback;)V
    .locals 4
    .parameter "request"

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, runRequest:Z
    iget-object v1, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->runningQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget v3, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->maxParallelRequests:I

    if-ge v2, v3, :cond_1

    .line 46
    iget-object v2, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->runningQueue:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 47
    const/4 v0, 0x1

    .line 53
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/QueueableRequestManager;->runRequest(Lcom/amazon/foundation/ICallback;)V

    .line 61
    :cond_0
    return-void

    .line 51
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->pendingQueue:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeRequest(Lcom/amazon/foundation/ICallback;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->runningQueue:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->pendingQueue:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->runningQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget v3, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->maxParallelRequests:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->pendingQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 90
    iget-object v0, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->pendingQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/ICallback;

    .line 91
    iget-object v2, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->pendingQueue:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 92
    iget-object v2, p0, Lcom/amazon/foundation/internal/QueueableRequestManager;->runningQueue:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    const/4 v2, 0x1

    .line 95
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-eqz v2, :cond_1

    .line 101
    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/QueueableRequestManager;->runRequest(Lcom/amazon/foundation/ICallback;)V

    .line 103
    :cond_1
    return-void

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v2, v4

    goto :goto_0
.end method
