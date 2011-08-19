.class public Lcom/google/android/apps/books/service/DrainableExecutor;
.super Ljava/lang/Object;
.source "DrainableExecutor.java"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mFutures:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .parameter "executor"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "missing executor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mFutures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 33
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .parameter "l"
    .parameter "timeUnit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public drain()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/ExecutionException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v3, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mFutures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 64
    .local v3, futures:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/util/concurrent/Future<*>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 65
    .local v1, exceptions:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/ExecutionException;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .local v2, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 67
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    check-cast v2, Ljava/util/concurrent/Future;

    .restart local v2       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :cond_0
    return-object v1
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 40
    return-void
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    iget-object v1, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 54
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    iget-object v1, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mFutures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 55
    return-object v0
.end method
