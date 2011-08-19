.class final Ljava/util/concurrent/CountDownLatch$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "CountDownLatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CountDownLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x45248f9a985464a6L


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 141
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CountDownLatch$Sync;->setState(I)V

    .line 142
    return-void
.end method


# virtual methods
.method getCount()I
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    move-result v0

    return v0
.end method

.method protected tryAcquireShared(I)I
    .registers 3
    .parameter "acquires"

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method protected tryReleaseShared(I)Z
    .registers 7
    .parameter "releases"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    move-result v0

    .line 156
    .local v0, c:I
    if-nez v0, :cond_a

    move v2, v3

    .line 160
    :goto_9
    return v2

    .line 158
    :cond_a
    sub-int v1, v0, v4

    .line 159
    .local v1, nextc:I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/CountDownLatch$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    if-nez v1, :cond_16

    move v2, v4

    goto :goto_9

    :cond_16
    move v2, v3

    goto :goto_9
.end method
