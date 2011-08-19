.class public Lcom/nuance/xt9/input/WriteThreadQueue;
.super Ljava/lang/Object;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/WriteThreadQueue$ChangeChineseSettings;,
        Lcom/nuance/xt9/input/WriteThreadQueue$ChangeAlphaSettings;,
        Lcom/nuance/xt9/input/WriteThreadQueue$TextQueueItem;,
        Lcom/nuance/xt9/input/WriteThreadQueue$CharQueueItem;,
        Lcom/nuance/xt9/input/WriteThreadQueue$RecognizeQueueItem;,
        Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;,
        Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;,
        Lcom/nuance/xt9/input/WriteThreadQueue$QueueConsumer;,
        Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;
    }
.end annotation


# instance fields
.field private final mOnWriteThreadQueueConsumer:Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;

.field private mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;)V
    .locals 1
    .parameter "consumer"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 25
    iput-object p1, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mOnWriteThreadQueueConsumer:Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;

    .line 26
    return-void
.end method


# virtual methods
.method addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter
    .parameter
    .parameter "startWord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, arc1:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    .local p2, arc2:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    :try_start_0
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/xt9/input/WriteThreadQueue$ArcQueueItem;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 78
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method addChar(C)V
    .locals 3
    .parameter "ch"

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/xt9/input/WriteThreadQueue$CharQueueItem;

    invoke-direct {v2, p1}, Lcom/nuance/xt9/input/WriteThreadQueue$CharQueueItem;-><init>(C)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 69
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method addRecognize(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "startWord"

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/xt9/input/WriteThreadQueue$RecognizeQueueItem;

    invoke-direct {v2, p1}, Lcom/nuance/xt9/input/WriteThreadQueue$RecognizeQueueItem;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 87
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method addSettings(Lcom/nuance/xt9/input/WriteAlphaSettings;)V
    .locals 3
    .parameter "settings"

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/xt9/input/WriteThreadQueue$ChangeAlphaSettings;

    invoke-direct {v2, p1}, Lcom/nuance/xt9/input/WriteThreadQueue$ChangeAlphaSettings;-><init>(Lcom/nuance/xt9/input/WriteAlphaSettings;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 96
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method addSettings(Lcom/nuance/xt9/input/WriteChineseSettings;)V
    .locals 3
    .parameter "settings"

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/xt9/input/WriteThreadQueue$ChangeChineseSettings;

    invoke-direct {v2, p1}, Lcom/nuance/xt9/input/WriteThreadQueue$ChangeChineseSettings;-><init>(Lcom/nuance/xt9/input/WriteChineseSettings;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 105
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method addText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/xt9/input/WriteThreadQueue$TextQueueItem;

    invoke-direct {v2, p1}, Lcom/nuance/xt9/input/WriteThreadQueue$TextQueueItem;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 60
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method declared-synchronized start()V
    .locals 5

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nuance/xt9/input/WriteThreadQueue$QueueConsumer;

    iget-object v3, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v4, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mOnWriteThreadQueueConsumer:Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/WriteThreadQueue$QueueConsumer;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/nuance/xt9/input/WriteThreadQueue$OnWriteThreadQueueConsumer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Thread has started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 35
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 36
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 29
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized stop()V
    .locals 5

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 45
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Thread has stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/nuance/xt9/input/WriteThreadQueue;->mThread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 48
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 49
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 42
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
