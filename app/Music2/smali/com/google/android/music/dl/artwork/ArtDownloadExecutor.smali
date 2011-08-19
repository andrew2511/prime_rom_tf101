.class public Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ArtDownloadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;,
        Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    }
.end annotation


# static fields
.field public static final CACHE_DIRECTORY:Ljava/lang/String; = "artwork"

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MAX_THREADS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ArtDownloadExecutor"

.field private static final sRejectionHandler:Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field private mCacheDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadQueueCompleteListener:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;

.field private mFutureDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningThreads:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "ArtDownloadExecutor"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->LOGV:Z

    .line 248
    new-instance v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$1;

    invoke-direct {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$1;-><init>()V

    sput-object v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->sRejectionHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;)V
    .locals 10
    .parameter "context"
    .parameter "downloadQueueCompleteListener"

    .prologue
    const/4 v1, 0x0

    .line 59
    const/4 v2, 0x5

    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v7, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->sRejectionHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    .line 51
    iput v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I

    .line 61
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mDownloadQueueCompleteListener:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;

    .line 64
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v8

    .line 65
    .local v8, cacheRootDir:Ljava/io/File;
    if-nez v8, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    .line 68
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "artwork"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    .line 69
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 72
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 74
    .local v9, e:Ljava/io/IOException;
    const-string v0, "ArtDownloadExecutor"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;

    return-object v0
.end method

.method private declared-synchronized afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;Z)V
    .locals 6
    .parameter "r"
    .parameter "t"
    .parameter "isImmediateDownload"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I

    .line 127
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;

    move-object v1, v0

    .line 129
    .local v1, downloadTask:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    if-eqz p2, :cond_4

    .line 130
    sget-boolean v2, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "ArtDownloadExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error running download thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :cond_0
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$100(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 136
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$300(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 137
    if-nez p3, :cond_2

    .line 138
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$300(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/music/utils/AlbumArtUtils;->notifyAlbumArtChanged(J)V

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p2, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->notifyQueueComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_3
    monitor-exit p0

    return-void

    .line 132
    :cond_4
    :try_start_1
    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->wasDownloadSuccessful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$300(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$100(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/music/store/Store;->saveArtwork(JLjava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v1           #downloadTask:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public addDownload(Ljava/lang/Long;)V
    .locals 1
    .parameter "albumId"

    .prologue
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    monitor-exit p0

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    new-instance v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addDownload(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, albumIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 81
    .local v1, order:Ljava/lang/Long;
    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->addDownload(Ljava/lang/Long;)V

    goto :goto_0

    .line 83
    .end local v1           #order:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method protected declared-synchronized afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "r"
    .parameter "t"

    .prologue
    .line 122
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "t"
    .parameter "r"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;

    move-object v1, v0

    .line 150
    .local v1, downloadTask:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$300(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$300(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    iget v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mRunningThreads:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 148
    .end local v1           #downloadTask:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public downloadNow(Ljava/lang/Long;)Ljava/io/File;
    .locals 5
    .parameter "albumId"

    .prologue
    const/4 v4, 0x0

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mFutureDownloads:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    new-instance v2, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;

    invoke-direct {v2, p0, p1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;Ljava/lang/Long;)V

    .line 105
    .local v2, task:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    invoke-virtual {p0, v4, v2}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 106
    const/4 v1, 0x0

    .line 108
    .local v1, exception:Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;Z)V

    .line 113
    invoke-static {v2}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$000(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-static {v2}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->access$100(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/io/File;

    move-result-object v3

    .line 116
    :goto_1
    return-object v3

    .line 103
    .end local v1           #exception:Ljava/lang/Throwable;
    .end local v2           #task:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 109
    .restart local v1       #exception:Ljava/lang/Throwable;
    .restart local v2       #task:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :cond_0
    move-object v3, v4

    .line 116
    goto :goto_1
.end method

.method public declared-synchronized getCurrentNumberOfDownloads()I
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCurrentDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyQueueComplete()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mDownloadQueueCompleteListener:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;

    invoke-interface {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;->onDownloadQueueCompleted()V

    .line 160
    return-void
.end method
