.class Lcom/nuance/xt9/input/WriteThreadQueue$QueueConsumer;
.super Ljava/lang/Object;
.source "WriteThreadQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueConsumer"
.end annotation


# instance fields
.field private final mOnWriteThreadQueueConsumer:Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;)V
    .locals 0
    .parameter
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;",
            ">;",
            "Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, queue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/nuance/xt9/input/WriteThreadQueue$QueueConsumer;->mOnWriteThreadQueueConsumer:Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;

    .line 114
    iput-object p1, p0, Lcom/nuance/xt9/input/WriteThreadQueue$QueueConsumer;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 115
    return-void
.end method

.method private consume(Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteThreadQueue$QueueConsumer;->mOnWriteThreadQueueConsumer:Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteThreadQueue$QueueConsumer;->mOnWriteThreadQueueConsumer:Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;

    invoke-interface {v0, p1}, Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;->consume(Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;)V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 121
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/nuance/xt9/input/WriteThreadQueue$QueueConsumer;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;

    .line 124
    .local v1, item:Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;
    iget v2, v1, Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;->mType:I

    if-nez v2, :cond_0

    .line 134
    .end local v1           #item:Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;
    :goto_1
    return-void

    .line 128
    .restart local v1       #item:Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;
    :cond_0
    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/WriteThreadQueue$QueueConsumer;->consume(Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v1           #item:Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 132
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
