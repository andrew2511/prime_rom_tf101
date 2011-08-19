.class public Ljava/lang/ref/ReferenceQueue;
.super Ljava/lang/Object;
.source "ReferenceQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private head:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    .local p0, this:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method declared-synchronized enqueue(Ljava/lang/ref/Reference;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<TT;>;"
    .local p1, reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    if-nez v0, :cond_e

    .line 131
    iput-object p1, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    .line 135
    :goto_7
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    .line 137
    monitor-exit p0

    return-void

    .line 133
    :cond_e
    :try_start_e
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iput-object v0, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    goto :goto_7

    .line 130
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll()Ljava/lang/ref/Reference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<TT;>;"
    const/4 v2, 0x0

    .line 51
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_22

    if-nez v1, :cond_9

    move-object v1, v2

    .line 67
    :goto_7
    monitor-exit p0

    return-object v1

    .line 57
    :cond_9
    :try_start_9
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 59
    .local v0, ret:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+TT;>;"
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v2, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v2, v2, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-ne v1, v2, :cond_1b

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    .line 65
    :goto_16
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    move-object v1, v0

    .line 67
    goto :goto_7

    .line 62
    :cond_1b
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v1, v1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_22

    goto :goto_16

    .line 51
    .end local v0           #ret:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+TT;>;"
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public remove()Ljava/lang/ref/Reference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized remove(J)Ljava/lang/ref/Reference;
    .registers 11
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<TT;>;"
    const-wide/16 v5, 0x0

    .line 101
    monitor-enter p0

    cmp-long v4, p1, v5

    if-gez v4, :cond_10

    .line 102
    :try_start_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_d

    .line 101
    :catchall_d
    move-exception v4

    monitor-exit p0

    throw v4

    .line 105
    :cond_10
    cmp-long v4, p1, v5

    if-nez v4, :cond_1e

    .line 106
    :goto_14
    :try_start_14
    iget-object v4, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    if-nez v4, :cond_3a

    .line 107
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_14

    .line 110
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    .local v0, now:J
    add-long v4, v0, p1

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    .line 112
    .local v2, wakeupTime:J
    :goto_28
    iget-object v4, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    if-nez v4, :cond_3a

    cmp-long v4, v0, v2

    if-gez v4, :cond_3a

    .line 113
    sub-long v4, v2, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_28

    .line 118
    .end local v0           #now:J
    .end local v2           #wakeupTime:J
    :cond_3a
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;
    :try_end_3d
    .catchall {:try_start_14 .. :try_end_3d} :catchall_d

    move-result-object v4

    monitor-exit p0

    return-object v4
.end method
