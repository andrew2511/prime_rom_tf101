.class public Lcom/google/android/apps/books/util/PriorityExecutor;
.super Ljava/lang/Object;
.source "PriorityExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/PriorityExecutor$PriorityComparator;,
        Lcom/google/android/apps/books/util/PriorityExecutor$Task;
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0xb

.field private static final DEFAULT_POOL_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PriorityExecutor"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v0, 0xb

    new-instance v2, Lcom/google/android/apps/books/util/PriorityExecutor$PriorityComparator;

    invoke-direct {v2}, Lcom/google/android/apps/books/util/PriorityExecutor$PriorityComparator;-><init>()V

    invoke-direct {v6, v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 58
    .local v6, queue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/apps/books/util/PriorityExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 60
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/books/util/PriorityExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public setPoolSize(I)V
    .locals 1
    .parameter "poolSize"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/books/util/PriorityExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/books/util/PriorityExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 71
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/books/util/PriorityExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 75
    return-void
.end method

.method public submit(Ljava/util/concurrent/Callable;I)Ljava/util/concurrent/Future;
    .locals 2
    .parameter
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;I)",
            "Ljava/util/concurrent/Future",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TR;>;"
    new-instance v0, Lcom/google/android/apps/books/util/PriorityExecutor$Task;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/books/util/PriorityExecutor$Task;-><init>(Ljava/util/concurrent/Callable;I)V

    .line 64
    .local v0, task:Lcom/google/android/apps/books/util/PriorityExecutor$Task;,"Lcom/google/android/apps/books/util/PriorityExecutor$Task<TR;>;"
    iget-object v1, p0, Lcom/google/android/apps/books/util/PriorityExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-object v0
.end method
