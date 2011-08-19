.class public Ljava/util/concurrent/Semaphore;
.super Ljava/lang/Object;
.source "Semaphore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Semaphore$FairSync;,
        Ljava/util/concurrent/Semaphore$NonfairSync;,
        Ljava/util/concurrent/Semaphore$Sync;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2cb8e63801765912L


# instance fields
.field private final sync:Ljava/util/concurrent/Semaphore$Sync;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "permits"

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v0, Ljava/util/concurrent/Semaphore$NonfairSync;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore$NonfairSync;-><init>(I)V

    iput-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    .line 242
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .parameter "permits"
    .parameter "fair"

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    if-eqz p2, :cond_d

    new-instance v0, Ljava/util/concurrent/Semaphore$FairSync;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore$FairSync;-><init>(I)V

    :goto_a
    iput-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    .line 257
    return-void

    .line 256
    :cond_d
    new-instance v0, Ljava/util/concurrent/Semaphore$NonfairSync;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore$NonfairSync;-><init>(I)V

    goto :goto_a
.end method


# virtual methods
.method public acquire()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->acquireSharedInterruptibly(I)V

    .line 289
    return-void
.end method

.method public acquire(I)V
    .registers 3
    .parameter "permits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 442
    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 443
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->acquireSharedInterruptibly(I)V

    .line 444
    return-void
.end method

.method public acquireUninterruptibly()V
    .registers 3

    .prologue
    .line 311
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->acquireShared(I)V

    .line 312
    return-void
.end method

.method public acquireUninterruptibly(I)V
    .registers 3
    .parameter "permits"

    .prologue
    .line 470
    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 471
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->acquireShared(I)V

    .line 472
    return-void
.end method

.method public availablePermits()I
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->getPermits()I

    move-result v0

    return v0
.end method

.method public drainPermits()I
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->drainPermits()I

    move-result v0

    return v0
.end method

.method public final getQueueLength()I
    .registers 2

    .prologue
    .line 657
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->getQueueLength()I

    move-result v0

    return v0
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
    .line 671
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->getQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final hasQueuedThreads()Z
    .registers 2

    .prologue
    .line 644
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore$Sync;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public isFair()Z
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    instance-of v0, v0, Ljava/util/concurrent/Semaphore$FairSync;

    return v0
.end method

.method protected reducePermits(I)V
    .registers 3
    .parameter "reduction"

    .prologue
    .line 620
    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 621
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->reducePermits(I)V

    .line 622
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 402
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->releaseShared(I)Z

    .line 403
    return-void
.end method

.method public release(I)V
    .registers 3
    .parameter "permits"

    .prologue
    .line 585
    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 586
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->releaseShared(I)Z

    .line 587
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[Permits = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore$Sync;->getPermits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryAcquire()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 339
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->nonfairTryAcquireShared(I)I

    move-result v0

    if-ltz v0, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public tryAcquire(I)Z
    .registers 3
    .parameter "permits"

    .prologue
    .line 502
    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 503
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore$Sync;->nonfairTryAcquireShared(I)I

    move-result v0

    if-ltz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .parameter "permits"
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 558
    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 559
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/Semaphore$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Ljava/util/concurrent/Semaphore;->sync:Ljava/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    return v0
.end method
