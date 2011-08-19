.class public Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.super Ljava/lang/Object;
.source "ReentrantReadWriteLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/ReadWriteLock;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x610a2aff0f4a97b4L


# instance fields
.field private final readerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field final sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

.field private final writerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 205
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "fair"

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    if-eqz p1, :cond_1b

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;-><init>()V

    :goto_a
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    .line 215
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;-><init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 216
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;-><init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 217
    return-void

    .line 214
    :cond_1b
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;-><init>()V

    goto :goto_a
.end method


# virtual methods
.method protected getOwner()Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 1220
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public final getQueueLength()I
    .registers 2

    .prologue
    .line 1350
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getQueueLength()I

    move-result v0

    return v0
.end method

.method protected getQueuedReaderThreads()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1307
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getSharedQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getQueuedThreads()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1365
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getQueuedWriterThreads()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1292
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getReadHoldCount()I
    .registers 2

    .prologue
    .line 1277
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadHoldCount()I

    move-result v0

    return v0
.end method

.method public getReadLockCount()I
    .registers 2

    .prologue
    .line 1230
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadLockCount()I

    move-result v0

    return v0
.end method

.method public getWaitQueueLength(Ljava/util/concurrent/locks/Condition;)I
    .registers 4
    .parameter "condition"

    .prologue
    .line 1407
    if-nez p1, :cond_8

    .line 1408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1409
    :cond_8
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-nez v0, :cond_14

    .line 1410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1411
    :cond_14
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)I

    move-result v0

    return v0
.end method

.method protected getWaitingThreads(Ljava/util/concurrent/locks/Condition;)Ljava/util/Collection;
    .registers 4
    .parameter "condition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/Condition;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1432
    if-nez p1, :cond_8

    .line 1433
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1434
    :cond_8
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-nez v0, :cond_14

    .line 1435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1436
    :cond_14
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getWriteHoldCount()I
    .registers 2

    .prologue
    .line 1264
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWriteHoldCount()I

    move-result v0

    return v0
.end method

.method public final hasQueuedThread(Ljava/lang/Thread;)Z
    .registers 3
    .parameter "thread"

    .prologue
    .line 1336
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isQueued(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public final hasQueuedThreads()Z
    .registers 2

    .prologue
    .line 1321
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public hasWaiters(Ljava/util/concurrent/locks/Condition;)Z
    .registers 4
    .parameter "condition"

    .prologue
    .line 1384
    if-nez p1, :cond_8

    .line 1385
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1386
    :cond_8
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-nez v0, :cond_14

    .line 1387
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1388
    :cond_14
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    return v0
.end method

.method public final isFair()Z
    .registers 2

    .prologue
    .line 1203
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    instance-of v0, v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;

    return v0
.end method

.method public isWriteLocked()Z
    .registers 2

    .prologue
    .line 1242
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isWriteLocked()Z

    move-result v0

    return v0
.end method

.method public isWriteLockedByCurrentThread()Z
    .registers 2

    .prologue
    .line 1252
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readLock()Ljava/util/concurrent/locks/Lock;
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1449
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getCount()I

    move-result v0

    .line 1450
    .local v0, c:I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v2

    .line 1451
    .local v2, w:I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v1

    .line 1453
    .local v1, r:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[Write locks = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Read locks = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic writeLock()Ljava/util/concurrent/locks/Lock;
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    return-object v0
.end method

.method public writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-object v0
.end method
