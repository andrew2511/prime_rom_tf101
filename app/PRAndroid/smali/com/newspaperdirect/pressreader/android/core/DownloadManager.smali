.class public Lcom/newspaperdirect/pressreader/android/core/DownloadManager;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "DownloadManager.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$OnExternalStorageStateChangedListener;


# static fields
.field private static final CHECK_DOWNLOAD_QUEUE_PERIOD:I = 0x1

.field private static final MAX_ACTIVE_DOWNLOAD_TASKS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DownloadManager"

.field private static final WIFI_POLLING_INTERVAL:I = 0x7530


# instance fields
.field private volatile mExternalStorageAvailable:Z

.field private volatile mPaused:Z

.field private mTasks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;

.field private volatile mWifiAvailable:Z

.field private monitor:Ljava/util/concurrent/locks/Condition;

.field private pauseLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v1, 0x4

    const/4 v7, 0x1

    .line 38
    .line 40
    const-wide/16 v3, 0x1

    .line 7
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 29
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mTimer:Ljava/util/Timer;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mPaused:Z

    .line 31
    iput-boolean v7, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mWifiAvailable:Z

    .line 32
    iput-boolean v7, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mExternalStorageAvailable:Z

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 34
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->monitor:Ljava/util/concurrent/locks/Condition;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mTasks:Ljava/util/concurrent/ConcurrentMap;

    .line 44
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->setUpTimer()V

    .line 45
    invoke-static {p0, p0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->addOnExternalStorageStateChangedListener(Ljava/lang/Object;Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$OnExternalStorageStateChangedListener;)V

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/DownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->checkWiFiConnectionState()V

    return-void
.end method

.method private checkWiFiConnectionState()V
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/WifiConnectionHelper;->canConnect()Z

    move-result v2

    .line 137
    .local v2, wifiAvailable:Z
    iget-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mWifiAvailable:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mWifiAvailable:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    iput-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mWifiAvailable:Z

    .line 140
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 141
    .local v1, handler:Landroid/os/Handler;
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 142
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pausing()Z

    .line 143
    iget-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mWifiAvailable:Z

    if-eqz v3, :cond_3

    .line 144
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/DownloadManager$2;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadManager;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 159
    :cond_3
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/DownloadManager$3;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadManager;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private pause()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 109
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 113
    return-void

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 112
    throw v0
.end method

.method private resume()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 118
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mPaused:Z

    .line 119
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->monitor:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 123
    return-void

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 122
    throw v0
.end method

.method private setUpTimer()V
    .locals 6

    .prologue
    .line 127
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DownloadManager$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadManager;)V

    .line 132
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7530

    .line 127
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 133
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "r"
    .parameter "t"

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 89
    move-object v0, p1

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-object v1, v0

    .line 90
    .local v1, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mTasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->isStopped()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    .line 94
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    .line 96
    :cond_0
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "t"
    .parameter "r"

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 70
    move-object v0, p2

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-object v1, v0

    .line 71
    .local v1, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mTasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mPaused:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->isExternalStorageAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->notifyNoSdCard()V

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 77
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    return-void

    .line 78
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->monitor:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v2

    .line 81
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 82
    throw v2
.end method

.method public executeTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mTasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->execute(Ljava/lang/Runnable;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onExternalStorageStateChanged(ZZ)V
    .locals 2
    .parameter "isAvailable"
    .parameter "isWriteable"

    .prologue
    .line 175
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 176
    .local v0, externalStorageAvailable:Z
    :goto_0
    iget-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mExternalStorageAvailable:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mExternalStorageAvailable:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 180
    :cond_1
    :goto_1
    return-void

    .line 175
    .end local v0           #externalStorageAvailable:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 178
    .restart local v0       #externalStorageAvailable:Z
    :cond_3
    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mExternalStorageAvailable:Z

    .line 179
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pausing()Z

    goto :goto_1
.end method

.method public pausing()Z
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/WifiConnectionHelper;->canConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->isExternalStorageAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->isExternalStorageWriteable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v0, v1

    .line 187
    .local v0, pauseRequested:Z
    :goto_0
    iget-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mPaused:Z

    if-eq v0, v1, :cond_0

    .line 188
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pause()V

    .line 191
    :cond_0
    :goto_1
    return v0

    .line 186
    .end local v0           #pauseRequested:Z
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 189
    .restart local v0       #pauseRequested:Z
    :cond_2
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->resume()V

    goto :goto_1
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 5
    .parameter "r"

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, retcode:Z
    move-object v0, p1

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-object v2, v0

    .line 60
    .local v2, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->isPaused()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->isStarted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mTasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v1

    .line 64
    :cond_0
    return v1
.end method

.method protected terminated()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V

    .line 102
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mTasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 103
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 104
    return-void
.end method
