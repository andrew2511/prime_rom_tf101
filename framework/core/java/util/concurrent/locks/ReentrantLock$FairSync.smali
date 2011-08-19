.class final Ljava/util/concurrent/locks/ReentrantLock$FairSync;
.super Ljava/util/concurrent/locks/ReentrantLock$Sync;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FairSync"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x29a554bceb4b42ecL


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method final lock()V
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->acquire(I)V

    .line 201
    return-void
.end method

.method protected final tryAcquire(I)Z
    .registers 8
    .parameter "acquires"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 209
    .local v1, current:Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->getState()I

    move-result v0

    .line 210
    .local v0, c:I
    if-nez v0, :cond_1d

    .line 211
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->hasQueuedPredecessors()Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {p0, v4, p1}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 213
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    move v3, v5

    .line 224
    :goto_1c
    return v3

    .line 217
    :cond_1d
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_34

    .line 218
    add-int v2, v0, p1

    .line 219
    .local v2, nextc:I
    if-gez v2, :cond_2f

    .line 220
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Maximum lock count exceeded"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    :cond_2f
    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->setState(I)V

    move v3, v5

    .line 222
    goto :goto_1c

    .end local v2           #nextc:I
    :cond_34
    move v3, v4

    .line 224
    goto :goto_1c
.end method
