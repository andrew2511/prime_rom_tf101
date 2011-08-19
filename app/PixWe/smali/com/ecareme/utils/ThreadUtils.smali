.class public Lcom/ecareme/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectNotify(Ljava/lang/Object;)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 15
    monitor-enter p0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 15
    monitor-exit p0

    .line 19
    return-void

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static objectNotifyAll(Ljava/lang/Object;)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 27
    monitor-enter p0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 27
    monitor-exit p0

    .line 31
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static objectWait(Ljava/lang/Object;)V
    .locals 1
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 40
    monitor-enter p0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 40
    monitor-exit p0

    .line 44
    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static objectWait(Ljava/lang/Object;J)V
    .locals 1
    .parameter "lock"
    .parameter "millis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    .line 82
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 80
    monitor-exit p0

    .line 84
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static objectWaitSafe(Ljava/lang/Object;)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 107
    :try_start_0
    invoke-static {p0}, Lcom/ecareme/utils/ThreadUtils;->objectWait(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static objectWaitSafe(Ljava/lang/Object;J)V
    .locals 1
    .parameter "lock"
    .parameter "millis"

    .prologue
    .line 95
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/ecareme/utils/ThreadUtils;->objectWait(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static threadWait(J)V
    .locals 1
    .parameter "millis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ecareme/utils/ThreadUtils;->objectWait(Ljava/lang/Object;J)V

    .line 54
    return-void
.end method

.method public static threadWaitSafe(J)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 65
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/ecareme/utils/ThreadUtils;->objectWait(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 69
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
