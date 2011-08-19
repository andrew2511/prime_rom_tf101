.class abstract Ljava/util/concurrent/locks/ReentrantLock$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x47e15d6b55bba584L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    .line 168
    return-void
.end method


# virtual methods
.method final getHoldCount()I
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method final getOwner()Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_7
.end method

.method protected final isHeldExclusively()Z
    .registers 3

    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method final isLocked()Z
    .registers 2

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method abstract lock()V
.end method

.method final newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    .registers 2

    .prologue
    .line 143
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;-><init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V

    return-object v0
.end method

.method final nonfairTryAcquire(I)Z
    .registers 8
    .parameter "acquires"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 106
    .local v1, current:Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v0

    .line 107
    .local v0, c:I
    if-nez v0, :cond_17

    .line 108
    invoke-virtual {p0, v4, p1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 109
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    move v3, v5

    .line 120
    :goto_16
    return v3

    .line 113
    :cond_17
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_2e

    .line 114
    add-int v2, v0, p1

    .line 115
    .local v2, nextc:I
    if-gez v2, :cond_29

    .line 116
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Maximum lock count exceeded"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_29
    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    move v3, v5

    .line 118
    goto :goto_16

    .end local v2           #nextc:I
    :cond_2e
    move v3, v4

    .line 120
    goto :goto_16
.end method

.method protected final tryRelease(I)Z
    .registers 6
    .parameter "releases"

    .prologue
    .line 124
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getState()I

    move-result v2

    sub-int v0, v2, p1

    .line 125
    .local v0, c:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_16

    .line 126
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 127
    :cond_16
    const/4 v1, 0x0

    .line 128
    .local v1, free:Z
    if-nez v0, :cond_1e

    .line 129
    const/4 v1, 0x1

    .line 130
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 132
    :cond_1e
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->setState(I)V

    .line 133
    return v1
.end method
