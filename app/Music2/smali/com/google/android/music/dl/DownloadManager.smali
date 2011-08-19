.class public Lcom/google/android/music/dl/DownloadManager;
.super Lcom/google/android/music/dl/IDownloadManager$Stub;
.source "DownloadManager.java"

# interfaces
.implements Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;
.implements Lcom/google/android/music/dl/DownloadExecutor$QueueListener;
.implements Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;
    }
.end annotation


# static fields
.field private static final CACHE_HIT_EVENTCODE:I = 0x1

.field private static final CACHE_MISS_EVENTCODE:I = 0x0

.field private static final DEFAULT_MUSIC_PLAYLIST_PRFETCH_COUNT:I = 0x5

.field private static final RANGE_BUFFER_TIME_SEC:J = 0x5L

.field private static final TAG:Ljava/lang/String; = "MusicDL"


# instance fields
.field protected final LOGV:Z

.field private final mAwaitingStreaming:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

.field private mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

.field private final mContext:Landroid/app/Service;

.field private mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;

.field protected mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;
    .annotation build Lcom/google/android/music/VisibleForTesting;
    .end annotation
.end field

.field private mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

.field private mDownloadOrderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGetNextDownloadRunnable:Ljava/lang/Runnable;

.field private mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

.field private mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

.field private final mStore:Lcom/google/android/music/store/Store;

.field private mStreamingEnabled:Z

.field private mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/dl/stream/StreamingHttpServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;-><init>()V

    .line 62
    const-string v0, "MusicDL"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    .line 70
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    .line 72
    iput-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    .line 176
    new-instance v0, Lcom/google/android/music/dl/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadManager$1;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadOrderCache:Ljava/util/HashMap;

    .line 807
    new-instance v0, Lcom/google/android/music/dl/DownloadManager$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadManager$3;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mGetNextDownloadRunnable:Ljava/lang/Runnable;

    .line 103
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    .line 104
    invoke-static {p1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStore:Lcom/google/android/music/store/Store;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/google/android/music/dl/DownloadManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/google/android/music/dl/DownloadManager;->updateDownloadQueue(Landroid/content/Context;Lcom/google/android/music/dl/DownloadManager;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/cache/CacheManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/dl/DownloadManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->notifyQueueCompleteListenersIfNoDownloads()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/KeepOnDeviceScheduler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    return-object v0
.end method

.method private cleanUpAwaitingStreaming(Lcom/google/android/music/dl/DownloadOrder;)V
    .locals 7
    .parameter "currentStream"

    .prologue
    const/4 v6, -0x1

    .line 364
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    monitor-enter v4

    .line 365
    if-nez p1, :cond_3

    move v1, v6

    .line 366
    .local v1, index:I
    :goto_0
    if-ne v1, v6, :cond_1

    .line 367
    :try_start_0
    iget-boolean v5, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v5, :cond_0

    .line 368
    const-string v5, "MusicDL"

    const-string v6, "Completely new playlist, removing all from mAwaitingStreaming"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 373
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 374
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/dl/DownloadOrder;

    .line 375
    .local v3, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v2

    .line 376
    .local v2, localLocation:Ljava/io/File;
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->shouldSaveLocation()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v2, :cond_2

    .line 377
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 378
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/google/android/music/dl/DownloadOrder;->setLocalLocation(Ljava/io/File;Z)V

    .line 373
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 365
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v2           #localLocation:Ljava/io/File;
    .end local v3           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_3
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move v1, v5

    goto :goto_0

    .line 381
    .restart local v0       #i:I
    .restart local v1       #index:I
    :cond_4
    monitor-exit v4

    .line 382
    return-void

    .line 381
    .end local v0           #i:I
    .end local v1           #index:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private createOrders([JLcom/google/android/music/dl/DownloadOrder$ScheduledBy;)Ljava/util/List;
    .locals 10
    .parameter "localIds"
    .parameter "scheduledBy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, p1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 495
    .local v6, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/dl/DownloadOrder;>;"
    move-object v0, p1

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-wide v3, v0, v1

    .line 496
    .local v3, localId:J
    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-eqz v7, :cond_0

    .line 497
    invoke-direct {p0, v3, v4, p2}, Lcom/google/android/music/dl/DownloadManager;->makeOrder(JLcom/google/android/music/dl/DownloadOrder$ScheduledBy;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v5

    .line 498
    .local v5, order:Lcom/google/android/music/dl/DownloadOrder;
    if-eqz v5, :cond_1

    .line 499
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .end local v5           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    .restart local v5       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_1
    iget-boolean v7, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v7, :cond_0

    .line 501
    const-string v7, "MusicDL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 505
    .end local v3           #localId:J
    .end local v5           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_2
    return-object v6
.end method

.method private makeOrder(JLcom/google/android/music/dl/DownloadOrder$ScheduledBy;)Lcom/google/android/music/dl/DownloadOrder;
    .locals 1
    .parameter "xId"
    .parameter "scheduledBy"

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/music/dl/DownloadManager;->makeOrder(JLcom/google/android/music/dl/DownloadOrder$ScheduledBy;Z)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    return-object v0
.end method

.method private makeOrder(JLcom/google/android/music/dl/DownloadOrder$ScheduledBy;Z)Lcom/google/android/music/dl/DownloadOrder;
    .locals 8
    .parameter "xId"
    .parameter "scheduledBy"
    .parameter "allowCached"

    .prologue
    const/4 v7, 0x0

    .line 212
    if-eqz p4, :cond_5

    .line 213
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadOrderCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 214
    .local v0, cachedOrder:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/DownloadOrder;>;"
    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/dl/DownloadOrder;

    .line 216
    .local v3, order:Lcom/google/android/music/dl/DownloadOrder;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v4, v5, :cond_2

    .line 218
    sget-object v4, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne p3, v4, :cond_0

    iget-object v4, v3, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne v4, p3, :cond_3

    .line 220
    :cond_0
    sget-object v4, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->STREAMING:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne p3, v4, :cond_1

    iget-object v4, v3, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v5, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->USER_PLAYLIST:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne v4, v5, :cond_1

    .line 226
    sget-object v4, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->STREAMING:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    iput-object v4, v3, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    .line 227
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-virtual {v3, v4}, Lcom/google/android/music/dl/DownloadOrder;->cacheHumanReadableString(Landroid/content/Context;)V

    :cond_1
    move-object v4, v3

    .line 266
    .end local v0           #cachedOrder:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/DownloadOrder;>;"
    .end local v3           #order:Lcom/google/android/music/dl/DownloadOrder;
    :goto_0
    return-object v4

    .line 235
    .restart local v0       #cachedOrder:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/DownloadOrder;>;"
    .restart local v3       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_2
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadOrderCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .end local v0           #cachedOrder:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/DownloadOrder;>;"
    .end local v3           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_3
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mStore:Lcom/google/android/music/store/Store;

    const/4 v5, 0x0

    invoke-static {v4, v5, p1, p2}, Lcom/google/android/music/store/MusicFile;->getSummaryMusicFile(Lcom/google/android/music/store/Store;Lcom/google/android/music/store/MusicFile;J)Lcom/google/android/music/store/MusicFile;

    move-result-object v2

    .line 245
    .local v2, musicFile:Lcom/google/android/music/store/MusicFile;
    new-instance v3, Lcom/google/android/music/dl/DownloadOrder;

    invoke-direct {v3}, Lcom/google/android/music/dl/DownloadOrder;-><init>()V

    .line 246
    .restart local v3       #order:Lcom/google/android/music/dl/DownloadOrder;
    iput-wide p1, v3, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    .line 247
    iput-object p3, v3, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    .line 248
    sget-object v4, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne p3, v4, :cond_4

    .line 249
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/music/dl/DownloadOrder;->setResumable(Z)V

    .line 252
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/music/store/MusicFile;->getAlbumArtist()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/music/dl/DownloadOrder;->albumArtistName:Ljava/lang/String;

    .line 253
    invoke-virtual {v2}, Lcom/google/android/music/store/MusicFile;->getTrackArtist()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/music/dl/DownloadOrder;->artistName:Ljava/lang/String;

    .line 254
    invoke-virtual {v2}, Lcom/google/android/music/store/MusicFile;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/music/dl/DownloadOrder;->albumName:Ljava/lang/String;

    .line 255
    invoke-virtual {v2}, Lcom/google/android/music/store/MusicFile;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/music/dl/DownloadOrder;->trackName:Ljava/lang/String;

    .line 257
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

    invoke-virtual {v4, v3}, Lcom/google/android/music/dl/OrderHandlerCreator;->createHandler(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 258
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/google/android/music/dl/DownloadHandler;->populateOrder(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/MusicFile;)V

    .line 260
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-virtual {v3, v4}, Lcom/google/android/music/dl/DownloadOrder;->cacheHumanReadableString(Landroid/content/Context;)V

    .line 262
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadOrderCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 264
    goto :goto_0

    .line 239
    .end local v2           #musicFile:Lcom/google/android/music/store/MusicFile;
    .end local v3           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_5
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadOrderCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 265
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Lcom/google/android/music/store/DataNotFoundException;
    move-object v4, v7

    .line 266
    goto :goto_0
.end method

.method private notifyQueueCompleteListenersIfNoDownloads()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadExecutor;->getNumberOfDownloads()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadManager;->notifyQueueComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 166
    return-void

    .line 164
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static updateDownloadQueue(Landroid/content/Context;Lcom/google/android/music/dl/DownloadManager;)V
    .locals 3
    .parameter "context"
    .parameter "downloadManager"

    .prologue
    .line 746
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 748
    .local v1, serviceToken:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/android/music/MusicUtils$ServiceToken;>;"
    new-instance v0, Lcom/google/android/music/dl/DownloadManager$2;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/music/dl/DownloadManager$2;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/DownloadManager;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 804
    .local v0, playbackConnection:Landroid/content/ServiceConnection;
    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 805
    return-void
.end method

.method private updateDownloaderQueue(Ljava/util/List;)V
    .locals 9
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
    .line 391
    .local p1, orders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-boolean v6, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    if-eqz v6, :cond_0

    .line 401
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/DownloadOrder;

    .line 403
    .local v0, firstDownload:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    monitor-enter v6

    .line 404
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 405
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 406
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/dl/DownloadOrder;

    .line 407
    .local v4, order:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 408
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 411
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    .end local v4           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 417
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 419
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadManager;->startDownloader(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 422
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 423
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/dl/DownloadOrder;

    .line 424
    .restart local v4       #order:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v7, v4, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v8, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->STREAMING:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-eq v7, v8, :cond_5

    iget-object v7, v4, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v8, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->USER_PLAYLIST:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne v7, v8, :cond_6

    .line 426
    :cond_5
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 432
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v7, v4}, Lcom/google/android/music/dl/DownloadExecutor;->addDownload(Lcom/google/android/music/dl/DownloadOrder;)V

    goto :goto_2

    .line 436
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_1
    move-exception v7

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 446
    :catchall_2
    move-exception v6

    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .line 435
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_7
    :try_start_5
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    .line 436
    .local v2, isAwaitingStreamingEmpty:Z
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 438
    :try_start_6
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 439
    :try_start_7
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/dl/stream/StreamingHttpServer;

    .line 440
    .local v5, streamingServer:Lcom/google/android/music/dl/stream/StreamingHttpServer;
    if-eqz v2, :cond_8

    if-eqz v5, :cond_8

    .line 441
    invoke-virtual {v5}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->shutdown()V

    .line 442
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 444
    :cond_8
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 446
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 444
    .end local v5           #streamingServer:Lcom/google/android/music/dl/stream/StreamingHttpServer;
    :catchall_3
    move-exception v7

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
.end method


# virtual methods
.method public addDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)Z
    .locals 1
    .parameter "songid"
    .parameter "listener"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/dl/BufferProgress;->addDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)Z

    move-result v0

    return v0
.end method

.method public getAvailableFreeSpace()J
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/cache/CacheManager;->getFreeSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentDownloads()Ljava/util/List;
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
    .line 587
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadExecutor;->getDownloads()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 594
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    .line 592
    :cond_0
    const/4 v0, 0x0

    .line 594
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getDownload(J)Lcom/google/android/music/dl/DownloadOrder;
    .locals 3
    .parameter "songId"

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, order:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/music/dl/DownloadExecutor;->getDownload(J)Lcom/google/android/music/dl/DownloadOrder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 571
    if-nez v0, :cond_1

    .line 572
    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/dl/DownloadManager;->getStreamingDownload(J)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    .line 574
    :cond_1
    return-object v0

    .line 569
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public getPartialDownload(JJ)Lcom/google/android/music/dl/DownloadOrder;
    .locals 18
    .parameter "mediaId"
    .parameter "startMs"

    .prologue
    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    move-object v12, v0

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 605
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/music/dl/DownloadManager;->getStreamingDownload(J)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v11

    .line 606
    .local v11, order:Lcom/google/android/music/dl/DownloadOrder;
    if-nez v11, :cond_0

    .line 607
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Should not be requesting a range for a file which never started downloading: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    .end local v11           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_0
    move-exception v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v12

    .line 610
    .restart local v11       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v12

    sget-object v13, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    move v10, v12

    .line 618
    .local v10, isDownloading:Z
    :goto_0
    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->getRecommendedBitrate()I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v12, v12

    const-wide/16 v14, 0x5

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x8

    div-long v5, v12, v14

    .line 620
    .local v5, bytesWillDownload:J
    if-eqz v10, :cond_3

    invoke-virtual {v11}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v12

    add-long/2addr v12, v5

    move-wide v8, v12

    .line 623
    .local v8, completedRange:J
    :goto_1
    iget-wide v12, v11, Lcom/google/android/music/dl/DownloadOrder;->seekPoint:J

    long-to-float v12, v12

    long-to-float v13, v8

    iget-wide v14, v11, Lcom/google/android/music/dl/DownloadOrder;->duration:J

    move-object v0, v11

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadOrder;->seekPoint:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v14, v14

    mul-float/2addr v13, v14

    invoke-virtual {v11}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v14

    long-to-float v14, v14

    div-float/2addr v13, v14

    add-float v7, v12, v13

    .line 626
    .local v7, completedDuration:F
    iget-wide v12, v11, Lcom/google/android/music/dl/DownloadOrder;->seekPoint:J

    cmp-long v12, p3, v12

    if-ltz v12, :cond_4

    move-wide/from16 v0, p3

    long-to-float v0, v0

    move v12, v0

    cmpg-float v12, v12, v7

    if-gez v12, :cond_4

    .line 627
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    move v12, v0

    if-eqz v12, :cond_1

    .line 628
    const-string v12, "MusicDL"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Downloaded past requested seek point ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "), not restarting download"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    move-object v12, v0

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v12, v11

    :goto_2
    return-object v12

    .line 610
    .end local v5           #bytesWillDownload:J
    .end local v7           #completedDuration:F
    .end local v8           #completedRange:J
    .end local v10           #isDownloading:Z
    :cond_2
    const/4 v12, 0x0

    move v10, v12

    goto :goto_0

    .line 620
    .restart local v5       #bytesWillDownload:J
    .restart local v10       #isDownloading:Z
    :cond_3
    :try_start_2
    invoke-virtual {v11}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v12

    move-wide v8, v12

    goto :goto_1

    .line 634
    .restart local v7       #completedDuration:F
    .restart local v8       #completedRange:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    move-object v12, v0

    monitor-enter v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 635
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eq v13, v11, :cond_6

    .line 636
    :cond_5
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "requesting range download for: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " but the awaitingStreaming list is: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 647
    :catchall_1
    move-exception v13

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 639
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 641
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    move v13, v0

    if-eqz v13, :cond_7

    const-string v13, "MusicDL"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Need to restart download for requested seek: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_7
    sget-object v13, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->STREAMING:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v3, v13

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/dl/DownloadManager;->makeOrder(JLcom/google/android/music/dl/DownloadOrder$ScheduledBy;Z)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v11

    .line 643
    if-nez v11, :cond_8

    .line 644
    const/4 v13, 0x0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    move-object v12, v0

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v12, v13

    goto/16 :goto_2

    .line 646
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    move-object v13, v0

    invoke-virtual {v13, v11}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 647
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 648
    :try_start_7
    invoke-virtual {v11}, Lcom/google/android/music/dl/DownloadOrder;->clearCompleted()V

    .line 649
    move-wide/from16 v0, p3

    move-object v2, v11

    iput-wide v0, v2, Lcom/google/android/music/dl/DownloadOrder;->seekPoint:J

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v11, v13}, Lcom/google/android/music/dl/DownloadExecutor;->restart(Lcom/google/android/music/dl/DownloadOrder;Z)Lcom/google/android/music/dl/DownloadExecutor;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    move-object v12, v0

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v12, v11

    goto/16 :goto_2
.end method

.method public getStreamingDownload(J)Lcom/google/android/music/dl/DownloadOrder;
    .locals 7
    .parameter "songId"

    .prologue
    .line 543
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    monitor-enter v3

    .line 544
    :try_start_0
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 545
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 546
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/DownloadOrder;

    .line 547
    .local v2, order:Lcom/google/android/music/dl/DownloadOrder;
    iget-wide v4, v2, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 548
    if-eqz v0, :cond_0

    .line 549
    const-string v4, "MusicDL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadManager.getDownload("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") did not return the first item from mAwaitingStreaming"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_0
    monitor-exit v3

    move-object v3, v2

    .line 558
    .end local v2           #order:Lcom/google/android/music/dl/DownloadOrder;
    :goto_1
    return-object v3

    .line 545
    .restart local v2       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    .end local v2           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    const-string v3, "MusicDL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadManager.getDownload("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") could not find item in mAwaitingStreaming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v3, 0x0

    goto :goto_1

    .line 555
    .end local v0           #i:I
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getTotalSpace()J
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/cache/CacheManager;->getTotalSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDownloading()Z
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadExecutor;->isDownloading()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 582
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 580
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isKeepOnDownloaderOn()Z
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-virtual {v0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyEnabledStateChanged(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->notifyQueueCompleteListenersIfNoDownloads()V

    .line 147
    :cond_0
    return-void
.end method

.method public notifyNewKeepOnReady()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->notifyQueueCompleteListenersIfNoDownloads()V

    .line 151
    return-void
.end method

.method public notifyQueueComplete()V
    .locals 2

    .prologue
    .line 818
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mGetNextDownloadRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 819
    return-void
.end method

.method public notifyQueueFailed()V
    .locals 0

    .prologue
    .line 825
    return-void
.end method

.method protected onCreate()V
    .locals 4

    .prologue
    .line 108
    new-instance v1, Lcom/google/android/music/dl/BufferProgress;

    invoke-direct {v1, p0}, Lcom/google/android/music/dl/BufferProgress;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    iput-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    .line 109
    new-instance v1, Lcom/google/android/music/dl/OrderHandlerCreator;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-direct {v1, v2}, Lcom/google/android/music/dl/OrderHandlerCreator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

    .line 110
    new-instance v1, Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;

    invoke-direct {v1, v2, v3}, Lcom/google/android/music/dl/cache/CacheManager;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;)V

    iput-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    .line 111
    new-instance v1, Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-direct {v1, v2, v3}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;-><init>(Landroid/app/Service;Lcom/google/android/music/dl/BufferProgress;)V

    iput-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    .line 112
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-virtual {v1, p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->addStateChangedListener(Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-static {v1}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v0

    .line 114
    .local v0, networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/NetworkMonitor;->registerStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    .line 115
    invoke-virtual {v0}, Lcom/google/android/music/dl/NetworkMonitor;->isStreamingAvailable()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/DownloadManager;->onStreamabilityChanged(Z)V

    .line 116
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-static {v1}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/dl/NetworkMonitor;->unregisterStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    .line 121
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/stream/StreamingHttpServer;

    .line 123
    .local v0, streamingServer:Lcom/google/android/music/dl/stream/StreamingHttpServer;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->shutdown()V

    .line 125
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 127
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

    invoke-virtual {v1}, Lcom/google/android/music/dl/OrderHandlerCreator;->onDestroy()V

    .line 129
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-virtual {v1}, Lcom/google/android/music/dl/cache/CacheManager;->onDestroy()V

    .line 131
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-virtual {v1}, Lcom/google/android/music/dl/BufferProgress;->onDestroy()V

    .line 132
    iput-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    .line 134
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-virtual {v1}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->onDestroy()V

    .line 136
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadExecutor;->shutdownNow()Ljava/util/List;

    .line 138
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v1, p0}, Lcom/google/android/music/dl/DownloadExecutor;->removeQueueListener(Lcom/google/android/music/dl/DownloadExecutor$QueueListener;)V

    .line 139
    iput-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    .line 141
    :cond_1
    return-void

    .line 127
    .end local v0           #streamingServer:Lcom/google/android/music/dl/stream/StreamingHttpServer;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onStreamabilityChanged(Z)V
    .locals 1
    .parameter "isStreamable"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    .line 170
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadManager;->start()V

    .line 174
    :cond_0
    return-void
.end method

.method public removeDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)V
    .locals 1
    .parameter "songid"
    .parameter "listener"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/dl/BufferProgress;->removeDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)V

    .line 676
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadManager;->startDownloader(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 338
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadManager;->notifyQueueComplete()V

    .line 340
    :cond_0
    return-void
.end method

.method protected startDownloader(Lcom/google/android/music/dl/DownloadOrder;)V
    .locals 5
    .parameter "order"
    .annotation build Lcom/google/android/music/VisibleForTesting;
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-eqz v0, :cond_2

    .line 462
    if-eqz p1, :cond_1

    .line 463
    iget-object v0, p1, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->STREAMING:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadExecutor;->getNumberOfDownloads()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0, p1}, Lcom/google/android/music/dl/DownloadExecutor;->isDownloading(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutting down DownloadExecutor since "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not being downloaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/music/dl/DownloadExecutor;->restart(Lcom/google/android/music/dl/DownloadOrder;Z)Lcom/google/android/music/dl/DownloadExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    .line 475
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 476
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 477
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 478
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 490
    return-void

    .line 478
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 488
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 482
    :cond_2
    :try_start_4
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v0, :cond_3

    const-string v0, "MusicDL"

    const-string v1, "Creating a new DownloadExecutor (was originally null)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_3
    new-instance v0, Lcom/google/android/music/dl/DownloadExecutor;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/dl/DownloadExecutor;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    .line 485
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/DownloadExecutor;->addQueueListener(Lcom/google/android/music/dl/DownloadExecutor$QueueListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method protected startStreamer()V
    .locals 4
    .annotation build Lcom/google/android/music/VisibleForTesting;
    .end annotation

    .prologue
    .line 659
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 661
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 662
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-direct {v3, p0}, Lcom/google/android/music/dl/stream/StreamingHttpServer;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 668
    return-void

    .line 664
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 665
    .local v0, e:Ljava/io/IOException;
    const-string v2, "MusicDL"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 667
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 343
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/dl/DownloadExecutor;->restart(Lcom/google/android/music/dl/DownloadOrder;Z)Lcom/google/android/music/dl/DownloadExecutor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 349
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 352
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v1

    sget-object v3, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v1, v3, :cond_1

    .line 354
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 357
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 359
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 357
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 361
    return-void
.end method

.method public streamSong(J)Lcom/google/android/music/dl/DownloadOrder;
    .locals 8
    .parameter "xId"

    .prologue
    const v7, 0x12110

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 276
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 279
    .local v1, origIdentity:J
    sget-object v3, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->STREAMING:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/music/dl/DownloadManager;->makeOrder(JLcom/google/android/music/dl/DownloadOrder$ScheduledBy;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    .line 280
    .local v0, order:Lcom/google/android/music/dl/DownloadOrder;
    if-nez v0, :cond_0

    .line 281
    const/4 v3, 0x0

    .line 332
    :goto_0
    return-object v3

    .line 285
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 286
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v7, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 288
    iget-boolean v3, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v3, :cond_1

    .line 289
    const-string v3, "MusicDL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Song ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") requires to be downloaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    if-nez v3, :cond_2

    .line 292
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/android/music/dl/DownloadOrder;->markDownloadFailed(I)V

    move-object v3, v0

    .line 293
    goto :goto_0

    .line 297
    :cond_2
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/google/android/music/dl/DownloadOrder;->seekPoint:J

    .line 299
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 301
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadManager;->startDownloader(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 302
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutor:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v3, v0}, Lcom/google/android/music/dl/DownloadExecutor;->addDownload(Lcom/google/android/music/dl/DownloadOrder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 307
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v4

    .line 308
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadManager;->startStreamer()V

    .line 309
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-virtual {v3, v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->getUri(Lcom/google/android/music/dl/DownloadOrder;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/music/dl/DownloadOrder;->streamUrl:Ljava/lang/String;

    .line 310
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    :goto_1
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    monitor-enter v3

    .line 324
    :try_start_2
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 325
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mAwaitingStreaming:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 329
    invoke-direct {p0, v0}, Lcom/google/android/music/dl/DownloadManager;->cleanUpAwaitingStreaming(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 331
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v3, v0

    .line 332
    goto/16 :goto_0

    .line 304
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloadExecutorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 310
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 313
    :cond_4
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v7, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 315
    const-string v3, "MusicDL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event logging MUSIC_START_PLAYBACK_REQUESTED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": cache hit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-boolean v3, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v3, :cond_5

    const-string v3, "MusicDL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Song already downloaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/music/dl/DownloadOrder;->streamUrl:Ljava/lang/String;

    goto :goto_1

    .line 327
    :catchall_2
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4
.end method

.method protected updateQueue([JLcom/google/android/music/dl/DownloadOrder$ScheduledBy;)V
    .locals 11
    .parameter "xIds"
    .parameter "scheduledBy"

    .prologue
    .line 513
    iget-boolean v9, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    if-nez v9, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    if-eqz p1, :cond_0

    array-length v9, p1

    if-eqz v9, :cond_0

    .line 521
    new-instance v7, Ljava/util/HashMap;

    array-length v9, p1

    invoke-direct {v7, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 522
    .local v7, playlistOrder:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v9, p1

    if-ge v1, v9, :cond_2

    .line 523
    aget-wide v9, p1, v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 526
    :cond_2
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-static {v9}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/google/android/music/store/Store;->requiresDownloadManager([J)[J

    move-result-object v8

    .line 527
    .local v8, useDLMan:[J
    if-eqz v8, :cond_0

    .line 531
    array-length v9, p1

    new-array v6, v9, [J

    .line 532
    .local v6, localIdPlaylist:[J
    const/4 v1, 0x0

    :goto_2
    array-length v9, v6

    if-ge v1, v9, :cond_3

    .line 533
    const-wide/16 v9, -0x1

    aput-wide v9, v6, v1

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 535
    :cond_3
    move-object v0, v8

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-wide v3, v0, v2

    .line 536
    .local v3, id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput-wide v3, v6, v9

    .line 535
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 539
    .end local v3           #id:J
    :cond_4
    invoke-direct {p0, v6, p2}, Lcom/google/android/music/dl/DownloadManager;->createOrders([JLcom/google/android/music/dl/DownloadOrder$ScheduledBy;)Ljava/util/List;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/music/dl/DownloadManager;->updateDownloaderQueue(Ljava/util/List;)V

    goto :goto_0
.end method
