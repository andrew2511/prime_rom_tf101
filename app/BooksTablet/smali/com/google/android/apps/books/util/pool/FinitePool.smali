.class Lcom/google/android/apps/books/util/pool/FinitePool;
.super Ljava/lang/Object;
.source "FinitePool.java"

# interfaces
.implements Lcom/google/android/apps/books/util/pool/Pool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/apps/books/util/pool/Poolable",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/util/pool/Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mInfinite:Z

.field private final mLimit:I

.field private final mManager:Lcom/google/android/apps/books/util/pool/PoolableManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/pool/PoolableManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mPoolCount:I

.field private mRoot:Lcom/google/android/apps/books/util/pool/Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/util/pool/PoolableManager;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/util/pool/PoolableManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/google/android/apps/books/util/pool/FinitePool;,"Lcom/google/android/apps/books/util/pool/FinitePool<TT;>;"
    .local p1, manager:Lcom/google/android/apps/books/util/pool/PoolableManager;,"Lcom/google/android/apps/books/util/pool/PoolableManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mManager:Lcom/google/android/apps/books/util/pool/PoolableManager;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mLimit:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mInfinite:Z

    .line 55
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/books/util/pool/PoolableManager;I)V
    .locals 2
    .parameter
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/util/pool/PoolableManager",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/google/android/apps/books/util/pool/FinitePool;,"Lcom/google/android/apps/books/util/pool/FinitePool<TT;>;"
    .local p1, manager:Lcom/google/android/apps/books/util/pool/PoolableManager;,"Lcom/google/android/apps/books/util/pool/PoolableManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The pool limit must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mManager:Lcom/google/android/apps/books/util/pool/PoolableManager;

    .line 61
    iput p2, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mLimit:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mInfinite:Z

    .line 63
    return-void
.end method


# virtual methods
.method public acquire()Lcom/google/android/apps/books/util/pool/Poolable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lcom/google/android/apps/books/util/pool/FinitePool;,"Lcom/google/android/apps/books/util/pool/FinitePool<TT;>;"
    iget-object v1, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mRoot:Lcom/google/android/apps/books/util/pool/Poolable;

    if-eqz v1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mRoot:Lcom/google/android/apps/books/util/pool/Poolable;

    .line 70
    .local v0, element:Lcom/google/android/apps/books/util/pool/Poolable;,"TT;"
    invoke-interface {v0}, Lcom/google/android/apps/books/util/pool/Poolable;->getNextPoolable()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/util/pool/Poolable;

    iput-object v1, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mRoot:Lcom/google/android/apps/books/util/pool/Poolable;

    .line 71
    iget v1, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mPoolCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mPoolCount:I

    .line 76
    :goto_0
    if-eqz v0, :cond_0

    .line 77
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/util/pool/Poolable;->setNextPoolable(Ljava/lang/Object;)V

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mManager:Lcom/google/android/apps/books/util/pool/PoolableManager;

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/util/pool/PoolableManager;->onAcquired(Lcom/google/android/apps/books/util/pool/Poolable;)V

    .line 81
    :cond_0
    return-object v0

    .line 73
    .end local v0           #element:Lcom/google/android/apps/books/util/pool/Poolable;,"TT;"
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mManager:Lcom/google/android/apps/books/util/pool/PoolableManager;

    invoke-interface {v1}, Lcom/google/android/apps/books/util/pool/PoolableManager;->newInstance()Lcom/google/android/apps/books/util/pool/Poolable;

    move-result-object v0

    .restart local v0       #element:Lcom/google/android/apps/books/util/pool/Poolable;,"TT;"
    goto :goto_0
.end method

.method public release(Lcom/google/android/apps/books/util/pool/Poolable;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/google/android/apps/books/util/pool/FinitePool;,"Lcom/google/android/apps/books/util/pool/FinitePool<TT;>;"
    .local p1, element:Lcom/google/android/apps/books/util/pool/Poolable;,"TT;"
    iget-boolean v0, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mInfinite:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mPoolCount:I

    iget v1, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mLimit:I

    if-ge v0, v1, :cond_1

    .line 86
    :cond_0
    iget v0, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mPoolCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mPoolCount:I

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mRoot:Lcom/google/android/apps/books/util/pool/Poolable;

    invoke-interface {p1, v0}, Lcom/google/android/apps/books/util/pool/Poolable;->setNextPoolable(Ljava/lang/Object;)V

    .line 88
    iput-object p1, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mRoot:Lcom/google/android/apps/books/util/pool/Poolable;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/util/pool/FinitePool;->mManager:Lcom/google/android/apps/books/util/pool/PoolableManager;

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/util/pool/PoolableManager;->onReleased(Lcom/google/android/apps/books/util/pool/Poolable;)V

    .line 91
    return-void
.end method
