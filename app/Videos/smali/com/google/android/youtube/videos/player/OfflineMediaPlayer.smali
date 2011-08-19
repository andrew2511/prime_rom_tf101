.class public Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;
.super Lcom/google/android/youtube/videos/player/DrmMediaPlayer;
.source "OfflineMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$InternalListener;
    }
.end annotation


# static fields
.field private static final BUFFER_FULL_MILLIS:I = 0x1d4c0

.field private static final BUFFER_LOW_MILLIS:I = 0x7530


# instance fields
.field private bufferingListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final context:Landroid/content/Context;

.field private currentFileSize:J

.field private duration:I

.field private file:Ljava/io/File;

.field private infoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private seekListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private totalFileSize:J

.field private volatile waitingForMoreData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/videos/DrmManager;)V
    .locals 2
    .parameter "context"
    .parameter "drmManager"

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;-><init>(Lcom/google/android/youtube/videos/DrmManager;)V

    .line 56
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->context:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$InternalListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$InternalListener;-><init>(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$1;)V

    .line 58
    .local v0, internalListener:Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$InternalListener;
    invoke-super {p0, v0}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->updateFileSize()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->updateCurrentPosition()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->onPrepared()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private declared-synchronized getApproxDurationDownloaded()I
    .locals 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getBufferedPercent()I

    move-result v0

    .line 176
    .local v0, buffered:I
    iget v1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->duration:I

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 175
    .end local v0           #buffered:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getBufferedPercent()I
    .locals 4

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getCurrentFileSize()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->totalFileSize:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private declared-synchronized getCurrentFileSize()J
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->currentFileSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onPrepared()V
    .locals 7

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->setDuration(I)V

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$1;-><init>(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 160
    return-void
.end method

.method private declared-synchronized setCurrentFileSize(J)V
    .locals 1
    .parameter "currentFileSize"

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->currentFileSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->duration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopScheduler()V
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateCurrentPosition()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 195
    .local v0, position:I
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->waitingForMoreData:Z

    if-nez v1, :cond_2

    .line 196
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getBufferedPercent()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getApproxDurationDownloaded()I

    move-result v1

    const/16 v2, 0x7530

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pausing at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getBufferedPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% to buffer more data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 199
    invoke-super {p0}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->pause()V

    .line 200
    iput-boolean v4, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->waitingForMoreData:Z

    .line 201
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    const/16 v2, -0x3e81

    invoke-interface {v1, p0, v4, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    const/16 v2, 0x2bd

    invoke-interface {v1, p0, v2, v3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto :goto_0

    .line 207
    :cond_2
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getApproxDurationDownloaded()I

    move-result v1

    const v2, 0x1d4c0

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer full, resuming at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getBufferedPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 209
    iput-boolean v3, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->waitingForMoreData:Z

    .line 210
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v1, :cond_3

    .line 211
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    const/16 v2, 0x2be

    invoke-interface {v1, p0, v2, v3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->start()V

    goto :goto_0
.end method

.method private updateFileSize()V
    .locals 4

    .prologue
    .line 184
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 185
    .local v0, size:J
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getCurrentFileSize()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 186
    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->setCurrentFileSize(J)V

    .line 187
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->bufferingListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->bufferingListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getBufferedPercent()I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 191
    :cond_0
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-super {p0}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->pause()V

    .line 143
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->waitingForMoreData:Z

    if-eqz v0, :cond_0

    .line 144
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->waitingForMoreData:Z

    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    const/16 v1, 0x2be

    invoke-interface {v0, p0, v1, v2}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 150
    :cond_0
    return-void
.end method

.method public prepareAsync()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(Z)V

    .line 79
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->updateFileSize()V

    .line 82
    invoke-super {p0}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->prepareAsync()V

    .line 83
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->stopScheduler()V

    .line 102
    invoke-super {p0}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->release()V

    .line 103
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->waitingForMoreData:Z

    .line 95
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->stopScheduler()V

    .line 96
    invoke-super {p0}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->reset()V

    .line 97
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .parameter "msec"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getBufferedPercent()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getApproxDurationDownloaded()I

    move-result v0

    const/16 v1, 0x3a98

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    .line 131
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->seekTo(I)V

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring seek past "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getApproxDurationDownloaded()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->seekListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->seekListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, p0}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p2}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->isOfflineStream(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri is not a file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->file:Ljava/io/File;

    .line 72
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 73
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .parameter "bufferingListener"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->bufferingListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 108
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "infoListener"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 124
    invoke-super {p0, p1}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 125
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "preparedListener"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 119
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "seekListener"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->seekListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 113
    invoke-super {p0, p1}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 114
    return-void
.end method

.method public setTotalFileSize(J)V
    .locals 0
    .parameter "totalFileSize"

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->totalFileSize:J

    .line 63
    return-void
.end method
