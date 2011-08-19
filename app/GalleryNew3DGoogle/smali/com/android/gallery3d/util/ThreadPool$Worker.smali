.class Lcom/android/gallery3d/util/ThreadPool$Worker;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Lcom/android/gallery3d/util/Future;
.implements Lcom/android/gallery3d/util/ThreadPool$JobContext;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/android/gallery3d/util/Future",
        "<TT;>;",
        "Lcom/android/gallery3d/util/ThreadPool$JobContext;"
    }
.end annotation


# instance fields
.field private mCancelListener:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

.field private mJob:Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mWaitOnResource:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

.field final synthetic this$0:Lcom/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/util/ThreadPool;Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/gallery3d/util/FutureListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Lcom/android/gallery3d/util/ThreadPool$Worker;,"Lcom/android/gallery3d/util/ThreadPool$Worker<TT;>;"
    .local p2, job:Lcom/android/gallery3d/util/ThreadPool$Job;,"Lcom/android/gallery3d/util/ThreadPool$Job<TT;>;"
    .local p3, listener:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<TT;>;"
    iput-object p1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->this$0:Lcom/android/gallery3d/util/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mJob:Lcom/android/gallery3d/util/ThreadPool$Job;

    .line 95
    iput-object p3, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mListener:Lcom/android/gallery3d/util/FutureListener;

    .line 96
    return-void
.end method

.method private acquireResource(Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;)Z
    .locals 2
    .parameter "counter"

    .prologue
    .local p0, this:Lcom/android/gallery3d/util/ThreadPool$Worker;,"Lcom/android/gallery3d/util/ThreadPool$Worker<TT;>;"
    const/4 v1, 0x1

    .line 198
    :goto_0
    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    .line 201
    const/4 v0, 0x0

    monitor-exit p0

    .line 224
    :goto_1
    return v0

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    .line 204
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-enter p1

    .line 207
    :try_start_1
    iget v0, p1, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;->value:I

    if-lez v0, :cond_1

    .line 208
    iget v0, p1, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;->value:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;->value:I

    .line 209
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    monitor-enter p0

    .line 221
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    .line 222
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v0, v1

    .line 224
    goto :goto_1

    .line 204
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 212
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 217
    :goto_2
    :try_start_5
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 222
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 213
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private modeToCounter(I)Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;
    .locals 1
    .parameter "mode"

    .prologue
    .line 187
    .local p0, this:Lcom/android/gallery3d/util/ThreadPool$Worker;,"Lcom/android/gallery3d/util/ThreadPool$Worker<TT;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->this$0:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v0, v0, Lcom/android/gallery3d/util/ThreadPool;->mCpuCounter:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    .line 192
    :goto_0
    return-object v0

    .line 189
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->this$0:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v0, v0, Lcom/android/gallery3d/util/ThreadPool;->mNetworkCounter:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    goto :goto_0

    .line 192
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseResource(Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;)V
    .locals 1
    .parameter "counter"

    .prologue
    .line 228
    .local p0, this:Lcom/android/gallery3d/util/ThreadPool$Worker;,"Lcom/android/gallery3d/util/ThreadPool$Worker<TT;>;"
    monitor-enter p1

    .line 229
    :try_start_0
    iget v0, p1, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;->value:I

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 231
    monitor-exit p1

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 123
    .local p0, this:Lcom/android/gallery3d/util/ThreadPool$Worker;,"Lcom/android/gallery3d/util/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 124
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    iget-object v1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mCancelListener:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mCancelListener:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/android/gallery3d/util/ThreadPool$CancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 128
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, this:Lcom/android/gallery3d/util/ThreadPool$Worker;,"Lcom/android/gallery3d/util/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 146
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "Worker"

    const-string v2, "ingore exception"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 144
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 152
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mResult:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 136
    .local p0, this:Lcom/android/gallery3d/util/ThreadPool$Worker;,"Lcom/android/gallery3d/util/ThreadPool$Worker<TT;>;"
    iget-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 140
    .local p0, this:Lcom/android/gallery3d/util/ThreadPool$Worker;,"Lcom/android/gallery3d/util/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsDone:Z
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
    .local p0, this:Lcom/android/gallery3d/util/ThreadPool$Worker;,"Lcom/android/gallery3d/util/ThreadPool$Worker<TT;>;"
    const/4 v2, 0x1

    .line 100
    const/4 v1, 0x0

    .line 104
    .local v1, result:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/util/ThreadPool$Worker;->setMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mJob:Lcom/android/gallery3d/util/ThreadPool$Job;

    invoke-interface {v2, p0}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 112
    .end local v1           #result:Ljava/lang/Object;,"TT;"
    :cond_0
    :goto_0
    monitor-enter p0

    .line 113
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/util/ThreadPool$Worker;->setMode(I)Z

    .line 114
    iput-object v1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mResult:Ljava/lang/Object;

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsDone:Z

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    iget-object v2, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mListener:Lcom/android/gallery3d/util/FutureListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-interface {v2, p0}, Lcom/android/gallery3d/util/FutureListener;->onFutureDone(Lcom/android/gallery3d/util/Future;)V

    .line 119
    :cond_1
    return-void

    .line 107
    .restart local v1       #result:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 108
    .local v0, ex:Ljava/lang/Throwable;
    const-string v2, "Worker"

    const-string v3, "Exception in running a job"

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 117
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

.method public declared-synchronized setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 162
    .local p0, this:Lcom/android/gallery3d/util/ThreadPool$Worker;,"Lcom/android/gallery3d/util/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mCancelListener:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

    .line 163
    iget-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mCancelListener:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mCancelListener:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/android/gallery3d/util/ThreadPool$CancelListener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMode(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    .local p0, this:Lcom/android/gallery3d/util/ThreadPool$Worker;,"Lcom/android/gallery3d/util/ThreadPool$Worker<TT;>;"
    const/4 v2, 0x0

    .line 170
    iget v1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/util/ThreadPool$Worker;->modeToCounter(I)Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    move-result-object v0

    .line 171
    .local v0, rc:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/util/ThreadPool$Worker;->releaseResource(Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;)V

    .line 172
    :cond_0
    iput v2, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mMode:I

    .line 175
    invoke-direct {p0, p1}, Lcom/android/gallery3d/util/ThreadPool$Worker;->modeToCounter(I)Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_2

    .line 177
    invoke-direct {p0, v0}, Lcom/android/gallery3d/util/ThreadPool$Worker;->acquireResource(Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 183
    :goto_0
    return v1

    .line 180
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mMode:I

    .line 183
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public waitDone()V
    .locals 0

    .prologue
    .line 156
    .local p0, this:Lcom/android/gallery3d/util/ThreadPool$Worker;,"Lcom/android/gallery3d/util/ThreadPool$Worker<TT;>;"
    invoke-virtual {p0}, Lcom/android/gallery3d/util/ThreadPool$Worker;->get()Ljava/lang/Object;

    .line 157
    return-void
.end method
