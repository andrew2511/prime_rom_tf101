.class public final Lcom/ecareme/pixwe/media/ConcurrentPool;
.super Ljava/lang/Object;
.source "ConcurrentPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mFreeList:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mFreeListIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .parameter "objects"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lcom/ecareme/pixwe/media/ConcurrentPool;,"Lcom/ecareme/pixwe/media/ConcurrentPool<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ConcurrentPool;->mFreeList:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ConcurrentPool;->mFreeListIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lcom/ecareme/pixwe/media/ConcurrentPool;,"Lcom/ecareme/pixwe/media/ConcurrentPool<TE;>;"
    iget-object v2, p0, Lcom/ecareme/pixwe/media/ConcurrentPool;->mFreeListIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 33
    .local v0, index:I
    iget-object v2, p0, Lcom/ecareme/pixwe/media/ConcurrentPool;->mFreeList:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 34
    .local v1, object:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lcom/ecareme/pixwe/media/ConcurrentPool;->mFreeList:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 35
    return-object v1
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/ecareme/pixwe/media/ConcurrentPool;,"Lcom/ecareme/pixwe/media/ConcurrentPool<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/ecareme/pixwe/media/ConcurrentPool;->mFreeListIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 40
    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/ConcurrentPool;->mFreeList:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    return-void

    .line 41
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method
