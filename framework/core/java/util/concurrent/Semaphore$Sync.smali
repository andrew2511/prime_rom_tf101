.class abstract Ljava/util/concurrent/Semaphore$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "Semaphore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Semaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x108c7583c161b715L


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "permits"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 146
    invoke-virtual {p0, p1}, Ljava/util/concurrent/Semaphore$Sync;->setState(I)V

    .line 147
    return-void
.end method


# virtual methods
.method final drainPermits()I
    .registers 3

    .prologue
    .line 187
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 188
    .local v0, current:I
    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    :cond_d
    return v0
.end method

.method final getPermits()I
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    return v0
.end method

.method final nonfairTryAcquireShared(I)I
    .registers 5
    .parameter "acquires"

    .prologue
    .line 155
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 156
    .local v0, available:I
    sub-int v1, v0, p1

    .line 157
    .local v1, remaining:I
    if-ltz v1, :cond_e

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    :cond_e
    return v1
.end method

.method final reducePermits(I)V
    .registers 6
    .parameter "reductions"

    .prologue
    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 177
    .local v0, current:I
    sub-int v1, v0, p1

    .line 178
    .local v1, next:I
    if-le v1, v0, :cond_10

    .line 179
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Permit count underflow"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_10
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    return-void
.end method

.method protected final tryReleaseShared(I)Z
    .registers 6
    .parameter "releases"

    .prologue
    .line 165
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 166
    .local v0, current:I
    add-int v1, v0, p1

    .line 167
    .local v1, next:I
    if-ge v1, v0, :cond_10

    .line 168
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Maximum permit count exceeded"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_10
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const/4 v2, 0x1

    return v2
.end method
