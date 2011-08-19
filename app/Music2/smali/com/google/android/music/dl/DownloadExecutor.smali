.class public Lcom/google/android/music/dl/DownloadExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "DownloadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/DownloadExecutor$QueueListener;,
        Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MAX_THREADS:I = 0x1

.field private static final RELEASE_WIFI_LOCK_DELAY_MS:I = 0xbb8

#the value of this static final field might be set in the static constructor
.field private static final RELEASE_WIFI_LOCK_MSG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DownloadExecutor"


# instance fields
.field private final mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

.field private final mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

.field private mDelayReleaseWifiLock:Ljava/lang/Runnable;

.field private final mDoNotDeleteSet:Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;

.field private mFutureDownloads:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

.field private mQueueListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/music/dl/DownloadExecutor$QueueListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningThreads:I

.field private mShuttingDown:Z

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "DownloadExecutor"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/DownloadExecutor;->LOGV:Z

    .line 43
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/dl/DownloadExecutor;->RELEASE_WIFI_LOCK_MSG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;)V
    .locals 8
    .parameter "context"
    .parameter "cacheManager"
    .parameter "bufferProgress"
    .parameter "doNotDeleteSet"

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 80
    const/4 v2, 0x1

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    .line 61
    iput-object v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    .line 64
    iput v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mRunningThreads:I

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    .line 69
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mShuttingDown:Z

    .line 74
    iput-object v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 232
    new-instance v0, Lcom/google/android/music/dl/DownloadExecutor$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadExecutor$1;-><init>(Lcom/google/android/music/dl/DownloadExecutor;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mDelayReleaseWifiLock:Ljava/lang/Runnable;

    .line 81
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    .line 83
    iput-object p3, p0, Lcom/google/android/music/dl/DownloadExecutor;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    .line 84
    iput-object p4, p0, Lcom/google/android/music/dl/DownloadExecutor;->mDoNotDeleteSet:Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;

    .line 86
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 87
    invoke-static {p1}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    .line 88
    return-void
.end method

.method private declared-synchronized aboutToDownload(Lcom/google/android/music/dl/DownloadOrder;)Z
    .locals 2
    .parameter "order"

    .prologue
    const/4 v1, 0x1

    .line 354
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mRunningThreads:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {p1, v0}, Lcom/google/android/music/dl/DownloadOrder;->equals(Lcom/google/android/music/dl/DownloadOrder;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/DownloadExecutor;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/music/dl/DownloadExecutor;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object p1
.end method

.method private addDownload(Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->getOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/DownloadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private checkAndSendQueueComplete()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadExecutor;->isTerminating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadExecutor;->notifyQueueComplete()V

    .line 248
    :cond_0
    return-void
.end method

.method private notifyQueueComplete()V
    .locals 3

    .prologue
    .line 374
    iget-boolean v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mShuttingDown:Z

    if-eqz v2, :cond_1

    .line 380
    :cond_0
    return-void

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadExecutor$QueueListener;

    .line 378
    .local v1, listener:Lcom/google/android/music/dl/DownloadExecutor$QueueListener;
    invoke-interface {v1}, Lcom/google/android/music/dl/DownloadExecutor$QueueListener;->notifyQueueComplete()V

    goto :goto_0
.end method

.method private notifyQueueFailed()V
    .locals 3

    .prologue
    .line 383
    iget-boolean v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mShuttingDown:Z

    if-eqz v2, :cond_1

    .line 389
    :cond_0
    return-void

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadExecutor$QueueListener;

    .line 387
    .local v1, listener:Lcom/google/android/music/dl/DownloadExecutor$QueueListener;
    invoke-interface {v1}, Lcom/google/android/music/dl/DownloadExecutor$QueueListener;->notifyQueueFailed()V

    goto :goto_0
.end method

.method private releaseWifiLockAsync()V
    .locals 4

    .prologue
    .line 223
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    sget v2, Lcom/google/android/music/dl/DownloadExecutor;->RELEASE_WIFI_LOCK_MSG:I

    invoke-virtual {v1, v2}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 224
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mDelayReleaseWifiLock:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 225
    .local v0, msg:Landroid/os/Message;
    sget v1, Lcom/google/android/music/dl/DownloadExecutor;->RELEASE_WIFI_LOCK_MSG:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 226
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/music/Worker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 227
    return-void
.end method

.method private saveOrDeleteLocalLocation(Lcom/google/android/music/dl/DownloadOrder;)V
    .locals 8
    .parameter "order"

    .prologue
    const/4 v7, 0x0

    .line 251
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v0

    .line 252
    .local v0, localLocation:Ljava/io/File;
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->shouldSaveLocation()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 255
    .local v1, saveLocation:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    iget-object v5, p1, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v6, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne v5, v6, :cond_2

    const/16 v5, 0xc8

    :goto_1
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/google/android/music/store/Store;->saveFileLocation(JLjava/lang/String;I)V

    .line 260
    if-nez v1, :cond_0

    .line 262
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mDoNotDeleteSet:Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;

    invoke-interface {v2}, Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;->getDoNotDeletes()Ljava/util/HashSet;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 264
    const/4 v2, 0x1

    invoke-virtual {p1, v7, v2}, Lcom/google/android/music/dl/DownloadOrder;->setLocalLocation(Ljava/io/File;Z)V

    .line 267
    :cond_0
    return-void

    .end local v1           #saveLocation:Ljava/lang/String;
    :cond_1
    move-object v1, v7

    .line 252
    goto :goto_0

    .line 255
    .restart local v1       #saveLocation:Ljava/lang/String;
    :cond_2
    const/16 v5, 0x64

    goto :goto_1
.end method


# virtual methods
.method public addDownload(Lcom/google/android/music/dl/DownloadOrder;)V
    .locals 4
    .parameter "order"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    new-instance v0, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    new-instance v1, Lcom/google/android/music/dl/DownloadTask;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadExecutor;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/music/dl/DownloadTask;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/DownloadOrder;)V

    invoke-direct {v0, v1}, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;-><init>(Lcom/google/android/music/dl/DownloadTask;)V

    invoke-direct {p0, v0}, Lcom/google/android/music/dl/DownloadExecutor;->addDownload(Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0
.end method

.method public addDownload(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, orders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadOrder;

    .line 92
    .local v1, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/DownloadExecutor;->addDownload(Lcom/google/android/music/dl/DownloadOrder;)V

    goto :goto_0

    .line 94
    .end local v1           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_0
    return-void
.end method

.method public addQueueListener(Lcom/google/android/music/dl/DownloadExecutor$QueueListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 367
    return-void
.end method

.method protected declared-synchronized afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 11
    .parameter "r"
    .parameter "t"

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mRunningThreads:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mRunningThreads:I

    .line 162
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    move-object v2, v0

    .line 163
    .local v2, downloadTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    .line 165
    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->getOrder()Lcom/google/android/music/dl/DownloadOrder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 168
    .local v5, order:Lcom/google/android/music/dl/DownloadOrder;
    const-wide/16 v7, 0x1

    :try_start_1
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7, v8, v9}, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 179
    :try_start_2
    sget-object v7, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v5, v7}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 180
    invoke-direct {p0, v5}, Lcom/google/android/music/dl/DownloadExecutor;->saveOrDeleteLocalLocation(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 181
    const-string v7, "DownloadExecutor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error running download thread: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    :goto_1
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-virtual {v7, v5}, Lcom/google/android/music/dl/BufferProgress;->notifyBufferProgress(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 192
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadExecutor;->releaseWifiLockAsync()V

    .line 194
    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v7

    sget-object v8, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v7, v8, :cond_6

    iget-object v7, v5, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v8, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->STREAMING:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-eq v7, v8, :cond_1

    iget-object v7, v5, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v8, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->USER_PLAYLIST:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne v7, v8, :cond_6

    .line 199
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 200
    .local v1, currentDownloads:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 201
    const-string v7, "DownloadExecutor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The list of tasks<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> did not match our internal list of orders<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    .line 205
    .local v6, task:Ljava/lang/Runnable;
    invoke-virtual {p0, v6}, Lcom/google/android/music/dl/DownloadExecutor;->remove(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 161
    .end local v1           #currentDownloads:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    .end local v2           #downloadTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #order:Lcom/google/android/music/dl/DownloadOrder;
    .end local v6           #task:Ljava/lang/Runnable;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 169
    .restart local v2       #downloadTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
    .restart local v5       #order:Lcom/google/android/music/dl/DownloadOrder;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 170
    .local v3, e:Ljava/util/concurrent/ExecutionException;
    :try_start_3
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 171
    if-nez p2, :cond_0

    .line 172
    move-object p2, v3

    goto/16 :goto_0

    .line 183
    .end local v3           #e:Ljava/util/concurrent/ExecutionException;
    :cond_3
    invoke-direct {p0, v5}, Lcom/google/android/music/dl/DownloadExecutor;->saveOrDeleteLocalLocation(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 184
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 188
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadExecutor;->checkAndSendQueueComplete()V

    goto/16 :goto_1

    .line 207
    .restart local v1       #currentDownloads:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_4
    sget-boolean v7, Lcom/google/android/music/dl/DownloadExecutor;->LOGV:Z

    if-eqz v7, :cond_5

    .line 208
    const-string v7, "DownloadExecutor"

    const-string v8, "Streaming/UserPlaylist DL failed, not continuing with rest of download queue"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_5
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadExecutor;->notifyQueueFailed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    .end local v1           #currentDownloads:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_6
    monitor-exit p0

    return-void

    .line 175
    :catch_1
    move-exception v7

    goto/16 :goto_0

    .line 174
    :catch_2
    move-exception v7

    goto/16 :goto_0
.end method

.method protected declared-synchronized beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 9
    .parameter "t"
    .parameter "r"

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    move-object v1, v0

    .line 272
    .local v1, downloadTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
    iput-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    .line 273
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->getOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v4

    .line 275
    .local v4, order:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 277
    :try_start_1
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 278
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :try_start_2
    iget v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mRunningThreads:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mRunningThreads:I

    .line 281
    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v5

    if-nez v5, :cond_1

    .line 282
    sget-object v5, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v4, v5}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 321
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 278
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 271
    .end local v1           #downloadTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
    .end local v4           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 285
    .restart local v1       #downloadTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;
    .restart local v4       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_1
    :try_start_5
    sget-object v5, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v4, v5}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 287
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 289
    iget-object v5, v4, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v6, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne v5, v6, :cond_2

    .line 291
    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Lcom/google/android/music/dl/DownloadOrder;->setRecommendedBitrate(I)V

    .line 296
    :goto_1
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-virtual {v5, v4}, Lcom/google/android/music/dl/cache/CacheManager;->prepareForDownload(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 298
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/android/music/dl/DownloadOrder;->markDownloadFailed(I)V

    goto :goto_0

    .line 293
    :cond_2
    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->getRecommendedBitrate()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/music/dl/DownloadOrder;->setRecommendedBitrate(I)V

    goto :goto_1

    .line 302
    :cond_3
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-virtual {v5}, Lcom/google/android/music/dl/NetworkMonitor;->hasWifiConnection()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 304
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x1

    const-string v7, "DownloadExecutor"

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 305
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 306
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 309
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v3

    .line 310
    .local v3, localLoaction:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v5

    if-nez v5, :cond_0

    .line 312
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_0

    .line 313
    const-string v5, "DownloadExecutor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not create file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 315
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 316
    .local v2, e:Ljava/io/IOException;
    :try_start_7
    const-string v5, "DownloadExecutor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not create file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "DownloadExecutor"

    const-string v1, "The wifi lock was never released... now releasing in finalizer"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 429
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->finalize()V

    .line 430
    return-void
.end method

.method public getDownload(J)Lcom/google/android/music/dl/DownloadOrder;
    .locals 4
    .parameter "xId"

    .prologue
    .line 324
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadOrder;

    .line 325
    .local v1, order:Lcom/google/android/music/dl/DownloadOrder;
    iget-wide v2, v1, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    move-object v2, v1

    .line 335
    .end local v1           #order:Lcom/google/android/music/dl/DownloadOrder;
    :goto_0
    return-object v2

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadOrder;

    .line 330
    .restart local v1       #order:Lcom/google/android/music/dl/DownloadOrder;
    iget-wide v2, v1, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    move-object v2, v1

    .line 331
    goto :goto_0

    .line 335
    .end local v1           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDownloads()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 360
    .local v0, downloads:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/DownloadOrder;>;"
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 361
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 362
    return-object v0
.end method

.method public getNumberOfDownloads()I
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized isDownloading()Z
    .locals 1

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mFutureDownloads:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDownloading(Lcom/google/android/music/dl/DownloadOrder;)Z
    .locals 1
    .parameter "order"

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/music/dl/DownloadExecutor;->aboutToDownload(Lcom/google/android/music/dl/DownloadOrder;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeQueueListener(Lcom/google/android/music/dl/DownloadExecutor$QueueListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method public declared-synchronized restart(Lcom/google/android/music/dl/DownloadOrder;Z)Lcom/google/android/music/dl/DownloadExecutor;
    .locals 9
    .parameter "firstItem"
    .parameter "retainQueue"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->getOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/android/music/dl/DownloadOrder;->equals(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCurrentTask:Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;->getTask()Lcom/google/android/music/dl/DownloadTask;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadTask;->signalGoingToRestart()V

    .line 119
    :cond_0
    const/4 v3, 0x0

    .line 120
    .local v3, passOnWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v5, :cond_2

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadExecutor;->isDownloading()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 126
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v2

    .line 129
    .local v2, oldQueue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    new-instance v1, Lcom/google/android/music/dl/DownloadExecutor;

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadExecutor;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v7, p0, Lcom/google/android/music/dl/DownloadExecutor;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    iget-object v8, p0, Lcom/google/android/music/dl/DownloadExecutor;->mDoNotDeleteSet:Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/google/android/music/dl/DownloadExecutor;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;)V

    .line 131
    .local v1, newExecutor:Lcom/google/android/music/dl/DownloadExecutor;
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    iput-object v5, v1, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    .line 132
    iput-object v3, v1, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 133
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/music/dl/DownloadExecutor;->mQueueListeners:Ljava/util/LinkedList;

    .line 135
    if-eqz p1, :cond_3

    .line 136
    invoke-virtual {v1, p1}, Lcom/google/android/music/dl/DownloadExecutor;->addDownload(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 139
    :cond_3
    if-eqz p2, :cond_4

    .line 140
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 141
    .local v4, r:Ljava/lang/Runnable;
    check-cast v4, Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;

    .end local v4           #r:Ljava/lang/Runnable;
    invoke-direct {v1, v4}, Lcom/google/android/music/dl/DownloadExecutor;->addDownload(Lcom/google/android/music/dl/DownloadExecutor$DownloadFutureTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newExecutor:Lcom/google/android/music/dl/DownloadExecutor;
    .end local v2           #oldQueue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v3           #passOnWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 144
    .restart local v1       #newExecutor:Lcom/google/android/music/dl/DownloadExecutor;
    .restart local v2       #oldQueue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    .restart local v3       #passOnWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    :cond_4
    monitor-exit p0

    return-object v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mShuttingDown:Z

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 155
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
