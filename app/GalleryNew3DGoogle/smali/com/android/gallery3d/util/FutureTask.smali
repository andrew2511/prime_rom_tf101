.class public Lcom/android/gallery3d/util/FutureTask;
.super Ljava/lang/Object;
.source "FutureTask.java"

# interfaces
.implements Lcom/android/gallery3d/util/Future;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/android/gallery3d/util/Future",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

.field private mListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lcom/android/gallery3d/util/FutureTask;,"Lcom/android/gallery3d/util/FutureTask<TT;>;"
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/util/FutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/android/gallery3d/util/FutureListener;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/android/gallery3d/util/FutureListener;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lcom/android/gallery3d/util/FutureListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lcom/android/gallery3d/util/FutureTask;,"Lcom/android/gallery3d/util/FutureTask<TT;>;"
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    .local p2, listener:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/util/FutureTask;->mCallable:Ljava/util/concurrent/Callable;

    .line 32
    iput-object p2, p0, Lcom/android/gallery3d/util/FutureTask;->mListener:Lcom/android/gallery3d/util/FutureListener;

    .line 33
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 40
    .local p0, this:Lcom/android/gallery3d/util/FutureTask;,"Lcom/android/gallery3d/util/FutureTask<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/util/FutureTask;->mIsCancelled:Z

    .line 41
    return-void
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lcom/android/gallery3d/util/FutureTask;,"Lcom/android/gallery3d/util/FutureTask<TT;>;"
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/util/FutureTask;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 46
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0

    .line 51
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/gallery3d/util/FutureTask;->mResult:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 63
    .local p0, this:Lcom/android/gallery3d/util/FutureTask;,"Lcom/android/gallery3d/util/FutureTask<TT;>;"
    iget-boolean v0, p0, Lcom/android/gallery3d/util/FutureTask;->mIsCancelled:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 59
    .local p0, this:Lcom/android/gallery3d/util/FutureTask;,"Lcom/android/gallery3d/util/FutureTask<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/util/FutureTask;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 67
    .local p0, this:Lcom/android/gallery3d/util/FutureTask;,"Lcom/android/gallery3d/util/FutureTask<TT;>;"
    const/4 v1, 0x0

    .line 69
    .local v1, result:Ljava/lang/Object;,"TT;"
    iget-boolean v2, p0, Lcom/android/gallery3d/util/FutureTask;->mIsCancelled:Z

    if-nez v2, :cond_0

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/util/FutureTask;->mCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    .end local v1           #result:Ljava/lang/Object;,"TT;"
    :cond_0
    :goto_0
    monitor-enter p0

    .line 78
    :try_start_1
    iput-object v1, p0, Lcom/android/gallery3d/util/FutureTask;->mResult:Ljava/lang/Object;

    .line 79
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/util/FutureTask;->mIsDone:Z

    .line 80
    iget-object v2, p0, Lcom/android/gallery3d/util/FutureTask;->mListener:Lcom/android/gallery3d/util/FutureListener;

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/android/gallery3d/util/FutureTask;->mListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-interface {v2, p0}, Lcom/android/gallery3d/util/FutureListener;->onFutureDone(Lcom/android/gallery3d/util/Future;)V

    .line 83
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    return-void

    .line 72
    .restart local v1       #result:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 73
    .local v0, ex:Ljava/lang/Throwable;
    const-string v2, "FutureTask"

    const-string v3, "Exception in running a task"

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 84
    .end local v0           #ex:Ljava/lang/Throwable;
    .end local v1           #result:Ljava/lang/Object;,"TT;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public waitDone()V
    .locals 0

    .prologue
    .line 55
    .local p0, this:Lcom/android/gallery3d/util/FutureTask;,"Lcom/android/gallery3d/util/FutureTask<TT;>;"
    invoke-virtual {p0}, Lcom/android/gallery3d/util/FutureTask;->get()Ljava/lang/Object;

    .line 56
    return-void
.end method
