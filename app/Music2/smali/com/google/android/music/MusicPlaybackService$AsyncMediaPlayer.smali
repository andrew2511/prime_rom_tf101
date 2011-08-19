.class Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;
.super Lcom/google/android/music/Worker;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncMediaPlayer"
.end annotation


# static fields
.field private static final PAUSE:I = 0x3

.field private static final RELEASE:I = 0x4

.field private static final SEEK:I = 0x6

.field private static final SETDATASOURCE:I = 0x1

.field private static final SETVOLUME:I = 0x5

.field private static final START:I = 0x2

.field private static final STATUS_ERROR:I = 0x10

.field private static final STATUS_INITIALZED:I = 0x2

.field private static final STATUS_PLAYING:I = 0x4

.field private static final STATUS_PREPARING:I = 0x8

.field private static final STATUS_RELEASED:I = 0x1

.field private static final STATUS_STREAMING:I = 0x20

.field private static final STOP:I = 0x7

.field private static final UPDATE_STREAMING_STATUS:I = 0x8


# instance fields
.field private completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private infoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private final isPreGingerbread:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentSong:J

.field private mDownloadCompletedPercent:F

.field private mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

.field private mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

.field private mDownloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

.field private mDuration:J

.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private mHttpSeek:J

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPosition:J

.field private mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

.field private mStatus:I

.field private mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

.field private mStreamFromFileDescriptor:Ljava/io/FileInputStream;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/music/MusicPlaybackService$ServiceHooks;)V
    .locals 8
    .parameter "context"
    .parameter "hooks"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 2190
    const-string v1, "AsyncMediaPlayer"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;I)V

    .line 2162
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    .line 2164
    iput-wide v4, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDuration:J

    .line 2165
    iput-wide v4, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mPosition:J

    .line 2166
    iput-wide v4, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mHttpSeek:J

    .line 2170
    iput-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 2171
    iput-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 2177
    iput v6, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStatus:I

    .line 2179
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadCompletedPercent:F

    .line 2180
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 2185
    iput-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 2680
    new-instance v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$2;-><init>(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)V

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2688
    new-instance v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$3;-><init>(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)V

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2713
    new-instance v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$4;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$4;-><init>(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)V

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 2806
    new-instance v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$5;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$5;-><init>(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)V

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    .line 2191
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mContext:Landroid/content/Context;

    .line 2192
    iput-object p2, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    .line 2193
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2194
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v7}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2195
    new-instance v1, Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-direct {v1}, Lcom/google/android/music/MusicPlaybackService$StopWatch;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    .line 2197
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isPreGingerbread()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isPreGingerbread:Z

    .line 2199
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2200
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2201
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2205
    new-instance v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$1;-><init>(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->post(Ljava/lang/Runnable;)Z

    .line 2215
    return-void
.end method

.method static synthetic access$4000(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Lcom/google/android/music/MusicPlaybackService$StopWatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Lcom/google/android/music/MusicPlaybackService$ServiceHooks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 2143
    iget-wide v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    return-wide v0
.end method

.method static synthetic access$4400(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2143
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2143
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2143
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2143
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->onWaitForBuffer()V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2143
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->onResumeFromBuffer()V

    return-void
.end method

.method static synthetic access$5000(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2143
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isPreGingerbread:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2143
    iput p1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadCompletedPercent:F

    return p1
.end method

.method static synthetic access$5202(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2143
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2143
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->updateDownloadStatus(J)V

    return-void
.end method

.method static synthetic access$5600(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Lcom/google/android/music/dl/DownloadOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    return-object v0
.end method

.method private declared-synchronized addStatus(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 2536
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2537
    monitor-exit p0

    return-void

    .line 2536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private eventLogBufferingEvent(I)V
    .locals 8
    .parameter "eventCode"

    .prologue
    const/4 v7, 0x0

    .line 2758
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/music/dl/DownloadOrder;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2759
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    const/16 v2, 0x2710

    .line 2760
    .local v2, type:I
    const/4 v1, 0x0

    .line 2762
    .local v1, subtype:I
    if-eqz v0, :cond_0

    .line 2763
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 2764
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 2769
    :goto_0
    const v3, 0x12113

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v5, v5, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2772
    const-string v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event logging MUSIC_DOWNLOAD_STATUS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v5, v5, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": buffering event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subtype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    return-void

    .line 2766
    :cond_0
    const-string v3, "MediaPlaybackService"

    const-string v4, "No active network"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isReleased()Z
    .locals 1

    .prologue
    .line 2612
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized isStatusOn(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 2544
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

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

.method private notifyChange(Ljava/lang/String;)V
    .locals 1
    .parameter "what"

    .prologue
    .line 2645
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    invoke-interface {v0, p1}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->notifyChange(Ljava/lang/String;)V

    .line 2646
    return-void
.end method

.method private notifyIfSongPlayed()V
    .locals 9

    .prologue
    .line 2303
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->duration()J

    move-result-wide v0

    .line 2304
    .local v0, duration:J
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->position()J

    move-result-wide v2

    .line 2305
    .local v2, position:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    long-to-float v5, v2

    long-to-float v6, v0

    const v7, 0x3f266666

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 2307
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v4

    .line 2308
    .local v4, store:Lcom/google/android/music/store/Store;
    iget-wide v5, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/music/store/Store;->markSongPlayed(J)V

    .line 2310
    .end local v4           #store:Lcom/google/android/music/store/Store;
    :cond_0
    return-void
.end method

.method private onResumeFromBuffer()V
    .locals 1

    .prologue
    .line 2795
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2798
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->eventLogBufferingEvent(I)V

    .line 2800
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    .line 2801
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->start()V

    .line 2802
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    .line 2804
    :cond_0
    return-void
.end method

.method private onWaitForBuffer()V
    .locals 2

    .prologue
    .line 2777
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v1, :cond_1

    .line 2778
    const-string v0, "com.android.music.playbackfailed"

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    .line 2779
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->stop()V

    .line 2792
    :cond_0
    :goto_0
    return-void

    .line 2780
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isPreparing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2784
    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->eventLogBufferingEvent(I)V

    .line 2786
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->addStatus(I)V

    .line 2787
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mPosition:J

    .line 2788
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->pause()V

    .line 2789
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->reset()V

    .line 2790
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized removeStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 2540
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStatus:I

    const v1, 0x7fffffff

    xor-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2541
    monitor-exit p0

    return-void

    .line 2540
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private seekImpl(I)V
    .locals 5
    .parameter "ms"

    .prologue
    const-wide/16 v2, 0x0

    const/16 v4, 0x8

    .line 2494
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2495
    invoke-direct {p0, v4}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->addStatus(I)V

    .line 2496
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 2497
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 2499
    :try_start_0
    const-string v1, "com.android.music.asyncopenstart"

    invoke-direct {p0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    .line 2500
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2501
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v3, v3, Lcom/google/android/music/dl/DownloadOrder;->streamUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&seek="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 2502
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 2503
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    .line 2504
    int-to-long v1, p1

    iput-wide v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mHttpSeek:J

    .line 2505
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mPosition:J

    .line 2506
    const-string v1, "com.android.music.asyncopencomplete"

    invoke-direct {p0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    .line 2507
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2508
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2530
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2531
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->start()V

    .line 2533
    :cond_1
    :goto_1
    return-void

    .line 2510
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2511
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2512
    invoke-direct {p0, v4}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    .line 2513
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isReleased()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2514
    const-string v1, "com.android.music.playbackfailed"

    invoke-direct {p0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    goto :goto_1

    .line 2517
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 2518
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2519
    invoke-direct {p0, v4}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    .line 2520
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isReleased()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2521
    const-string v1, "com.android.music.playbackfailed"

    invoke-direct {p0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    goto :goto_1

    .line 2526
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2527
    iput-wide v2, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mHttpSeek:J

    .line 2528
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mPosition:J

    goto :goto_0
.end method

.method private setDataSourceImpl(ZLcom/google/android/music/MusicPlaybackService$AsyncCommandCallback;)V
    .locals 18
    .parameter "fromUserAction"
    .parameter "cb"

    .prologue
    .line 2329
    const/16 v13, 0x8

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->addStatus(I)V

    .line 2331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    move-object v13, v0

    if-eqz v13, :cond_0

    .line 2333
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2338
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 2339
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 2343
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 2345
    .local v4, durationSet:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-static {v13}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v11

    .line 2347
    .local v11, store:Lcom/google/android/music/store/Store;
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    move-wide v13, v0

    invoke-virtual {v11, v13, v14}, Lcom/google/android/music/store/Store;->getPreferredMusicId(J)J

    move-result-wide v13

    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2354
    const/4 v13, 0x1

    new-array v13, v13, [J

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    move-wide v15, v0

    aput-wide v15, v13, v14

    invoke-virtual {v11, v13}, Lcom/google/android/music/store/Store;->requiresDownloadManager([J)[J

    move-result-object v13

    if-eqz v13, :cond_c

    .line 2364
    if-nez p1, :cond_2

    .line 2365
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    move-wide v14, v0

    invoke-interface {v13, v14, v15}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->getStreamingDownload(J)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 2366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object v13, v0

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v13

    sget-object v14, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object v13, v0

    iget v13, v13, Lcom/google/android/music/dl/DownloadOrder;->errorType:I

    invoke-static {v13}, Lcom/google/android/music/dl/DownloadOrder;->isServerError(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2370
    const-string v13, "MediaPlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Song already in error state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object v15, v0

    iget v15, v15, Lcom/google/android/music/dl/DownloadOrder;->errorType:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".  Not retrying"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    const/16 v13, 0x8

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    .line 2373
    const/16 v13, 0x30

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->addStatus(I)V

    .line 2374
    const/4 v13, 0x0

    move-object/from16 v0, p2

    move v1, v13

    invoke-interface {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncCommandCallback;->onFailure(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2491
    :cond_1
    :goto_1
    return-void

    .line 2334
    .end local v4           #durationSet:Z
    .end local v11           #store:Lcom/google/android/music/store/Store;
    :catch_0
    move-exception v13

    move-object v5, v13

    .line 2335
    .local v5, e:Ljava/io/IOException;
    :try_start_3
    const-string v13, "MediaPlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error trying to close file descriptor stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2338
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 2339
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    goto/16 :goto_0

    .line 2338
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 2339
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    throw v13

    .line 2348
    .restart local v4       #durationSet:Z
    .restart local v11       #store:Lcom/google/android/music/store/Store;
    :catch_1
    move-exception v13

    move-object v5, v13

    .line 2349
    .local v5, e:Ljava/io/FileNotFoundException;
    const-string v13, "MediaPlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not find song id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    move-wide v15, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    const/16 v13, 0x8

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    .line 2351
    const/4 v13, 0x1

    move-object/from16 v0, p2

    move v1, v13

    invoke-interface {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncCommandCallback;->onFailure(Z)V

    goto :goto_1

    .line 2378
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    move-wide v14, v0

    invoke-interface {v13, v14, v15}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->streamSong(J)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 2379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v3

    .line 2380
    .local v3, downloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object v13, v0

    if-nez v13, :cond_3

    .line 2381
    const-string v13, "MediaPlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not create download for song id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    move-wide v15, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    const/16 v13, 0x8

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    .line 2383
    const/4 v13, 0x0

    move-object/from16 v0, p2

    move v1, v13

    invoke-interface {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncCommandCallback;->onFailure(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 2407
    .end local v3           #downloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :catch_2
    move-exception v13

    move-object v5, v13

    .line 2408
    .local v5, e:Landroid/os/RemoteException;
    const-string v13, "MediaPlaybackService"

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2386
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v3       #downloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :cond_3
    :try_start_5
    sget-object v13, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v3, v13, :cond_5

    .line 2387
    const/16 v13, 0x8

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    .line 2388
    const/16 v13, 0x30

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->addStatus(I)V

    .line 2389
    const-string v13, "MediaPlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failing playback because download failed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object v13, v0

    iget v13, v13, Lcom/google/android/music/dl/DownloadOrder;->errorType:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p2

    move v1, v13

    invoke-interface {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncCommandCallback;->onFailure(Z)V

    goto/16 :goto_1

    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 2394
    :cond_5
    sget-object v13, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v3, v13, :cond_6

    sget-object v13, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v3, v13, :cond_b

    .line 2396
    :cond_6
    const/16 v13, 0x20

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->addStatus(I)V

    .line 2402
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object v13, v0

    iget-object v9, v13, Lcom/google/android/music/dl/DownloadOrder;->streamUrl:Ljava/lang/String;

    .line 2403
    .local v9, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object v13, v0

    iget-wide v13, v13, Lcom/google/android/music/dl/DownloadOrder;->duration:J

    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDuration:J

    .line 2404
    const/4 v4, 0x1

    .line 2405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    move-wide v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    move-object/from16 v16, v0

    invoke-interface/range {v13 .. v16}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->addDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2420
    .end local v3           #downloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isStreaming()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2421
    const-string v13, "com.android.music.asyncopenstart"

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    .line 2423
    :cond_8
    const-string v13, "content://"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 2424
    .local v8, isContentUri:Z
    const/4 v12, 0x0

    .line 2426
    .local v12, uriForPath:Landroid/net/Uri;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/media/MediaPlayer;->reset()V

    .line 2427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2428
    if-eqz v8, :cond_d

    .line 2429
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 2430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v13, v14, v12}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2431
    const/16 v13, 0x20

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    .line 2444
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v13, v0

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/media/MediaPlayer;->prepare()V

    .line 2448
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isReleased()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 2451
    const/16 v13, 0x8

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 2472
    :catch_3
    move-exception v13

    move-object v6, v13

    .line 2473
    .local v6, ex:Ljava/io/IOException;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isReleased()Z

    move-result v13

    if-nez v13, :cond_9

    .line 2474
    const-string v13, "MediaPlaybackService"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2482
    .end local v6           #ex:Ljava/io/IOException;
    :cond_9
    :goto_6
    const/16 v13, 0x8

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    .line 2483
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isReleased()Z

    move-result v13

    if-nez v13, :cond_1

    .line 2484
    const/16 v13, 0x10

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->addStatus(I)V

    .line 2485
    const/4 v10, 0x1

    .line 2486
    .local v10, shouldRetry:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object v13, v0

    if-eqz v13, :cond_a

    .line 2487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object v13, v0

    iget v13, v13, Lcom/google/android/music/dl/DownloadOrder;->errorType:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    const/4 v13, 0x1

    move v10, v13

    .line 2489
    :cond_a
    :goto_7
    move-object/from16 v0, p2

    move v1, v10

    invoke-interface {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncCommandCallback;->onFailure(Z)V

    goto/16 :goto_1

    .line 2397
    .end local v8           #isContentUri:Z
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #shouldRetry:Z
    .end local v12           #uriForPath:Landroid/net/Uri;
    .restart local v3       #downloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :cond_b
    :try_start_7
    invoke-static {}, Lcom/google/android/music/MusicPlaybackService;->access$600()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/music/dl/DownloadOrder;->streamUrl:Ljava/lang/String;

    const-string v14, "http"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2398
    const-string v13, "MediaPlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Song is not downloading, but given http streamUrl: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 2412
    .end local v3           #downloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :cond_c
    const v13, 0x12110

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2414
    const-string v13, "MediaPlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Event logging MUSIC_START_PLAYBACK_REQUESTED: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    move-wide v15, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": local playback"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 2417
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    move-wide v14, v0

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #path:Ljava/lang/String;
    goto/16 :goto_4

    .line 2433
    .restart local v8       #isContentUri:Z
    .restart local v12       #uriForPath:Landroid/net/Uri;
    :cond_d
    :try_start_8
    const-string v13, "http"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v13, v0

    invoke-virtual {v13, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_5

    .line 2476
    :catch_4
    move-exception v13

    move-object v6, v13

    .line 2477
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isReleased()Z

    move-result v13

    if-nez v13, :cond_9

    .line 2478
    const-string v13, "MediaPlaybackService"

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 2439
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :cond_e
    :try_start_9
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 2440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 2441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto/16 :goto_5

    .line 2454
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2456
    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2457
    .local v7, i:Landroid/content/Intent;
    const-string v13, "android.media.extra.AUDIO_SESSION"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->getAudioSessionId()I

    move-result v14

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2458
    const-string v13, "android.media.extra.PACKAGE_NAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2460
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isPreGingerbread:Z

    move v13, v0

    if-nez v13, :cond_10

    .line 2461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 2463
    :cond_10
    const/4 v13, 0x2

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->addStatus(I)V

    .line 2464
    if-nez v4, :cond_11

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v13

    int-to-long v13, v13

    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDuration:J

    .line 2467
    :cond_11
    const/16 v13, 0x8

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    .line 2468
    invoke-interface/range {p2 .. p2}, Lcom/google/android/music/MusicPlaybackService$AsyncCommandCallback;->onSuccess()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    .line 2487
    .end local v7           #i:Landroid/content/Intent;
    .restart local v10       #shouldRetry:Z
    :cond_12
    const/4 v13, 0x0

    move v10, v13

    goto/16 :goto_7
.end method

.method private updateDownloadStatus(J)V
    .locals 3
    .parameter "millisTillNextPossibleOutage"

    .prologue
    const/16 v2, 0x8

    .line 2729
    invoke-virtual {p0, v2}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeMessages(I)V

    .line 2730
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v0, v1, :cond_0

    .line 2731
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->sendEmptyMessageDelayed(IJ)Z

    .line 2733
    :cond_0
    return-void
.end method

.method private updateDownloadStatusImpl()V
    .locals 11

    .prologue
    .line 2736
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->duration()J

    move-result-wide v5

    .line 2737
    .local v5, totalDuration:J
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->position()J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    add-long v0, v7, v9

    .line 2738
    .local v0, currentPosition:J
    long-to-float v7, v0

    long-to-float v8, v5

    div-float v4, v7, v8

    .line 2740
    .local v4, playbackCompletePercent:F
    iget v7, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadCompletedPercent:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_0

    .line 2743
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->onResumeFromBuffer()V

    .line 2747
    iget v7, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadCompletedPercent:F

    long-to-float v8, v5

    mul-float/2addr v7, v8

    float-to-long v7, v7

    sub-long v2, v7, v0

    .line 2749
    .local v2, nextSchedule:J
    invoke-direct {p0, v2, v3}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->updateDownloadStatus(J)V

    .line 2755
    .end local v2           #nextSchedule:J
    :goto_0
    return-void

    .line 2753
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->onWaitForBuffer()V

    goto :goto_0
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 2653
    iget-wide v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDuration:J

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 4

    .prologue
    .line 2635
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAudioSessionId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2636
    .local v0, m:Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2641
    .end local v0           #m:Ljava/lang/reflect/Method;
    :goto_0
    return v1

    .line 2637
    :catch_0
    move-exception v1

    .line 2641
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    if-nez v0, :cond_0

    .line 2628
    const/4 v0, 0x1

    .line 2630
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget v0, v0, Lcom/google/android/music/dl/DownloadOrder;->errorType:I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 2219
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/music/MusicPlaybackService$AsyncCommandCallback;

    .line 2221
    .local v0, cb:Lcom/google/android/music/MusicPlaybackService$AsyncCommandCallback;
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isReleased()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 2222
    const-string v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command after release: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    :goto_0
    return-void

    .line 2226
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2230
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_1

    move v3, v5

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->setDataSourceImpl(ZLcom/google/android/music/MusicPlaybackService$AsyncCommandCallback;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 2234
    :pswitch_1
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 2235
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mPosition:J

    .line 2236
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->reset()V

    .line 2237
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->start()V

    goto :goto_0

    .line 2241
    :pswitch_2
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    .line 2242
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mPosition:J

    .line 2243
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->pause()V

    .line 2244
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->reset()V

    goto :goto_0

    .line 2248
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncMediaPlayer.RELEASE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2249
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->notifyIfSongPlayed()V

    .line 2250
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 2252
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->pause()V

    .line 2253
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->reset()V

    .line 2255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncMediaPlayer.RELEASE done "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2256
    iput-object v7, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2259
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    iget-wide v4, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    invoke-interface {v3, v4, v5, v6}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->removeDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2264
    :goto_2
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    if-eqz v3, :cond_2

    .line 2266
    :try_start_1
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2271
    iput-object v7, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 2272
    iput-object v7, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 2275
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->quit()V

    .line 2278
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 2261
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2262
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "MediaPlaybackService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2267
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 2268
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    const-string v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error trying to close file descriptor stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2271
    iput-object v7, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 2272
    iput-object v7, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_3

    .line 2271
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iput-object v7, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 2272
    iput-object v7, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    throw v3

    .line 2282
    :pswitch_4
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->pause()V

    .line 2283
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->seekImpl(I)V

    .line 2284
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->reset()V

    goto/16 :goto_0

    .line 2288
    :pswitch_5
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    goto/16 :goto_0

    .line 2292
    :pswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    const/high16 v4, 0x447a

    div-float v2, v3, v4

    .line 2293
    .local v2, vol:F
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto/16 :goto_0

    .line 2297
    .end local v2           #vol:F
    :pswitch_7
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->updateDownloadStatusImpl()V

    goto/16 :goto_0

    .line 2226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public isInErrorState()Z
    .locals 1

    .prologue
    .line 2624
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2548
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 2615
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public isPreparing()Z
    .locals 1

    .prologue
    .line 2618
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 2621
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 2564
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2576
    :goto_0
    return-void

    .line 2567
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").pause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2568
    invoke-virtual {p0, v3}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeMessages(I)V

    .line 2569
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeMessages(I)V

    .line 2570
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeMessages(I)V

    .line 2572
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    .line 2574
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2575
    invoke-virtual {p0, v3}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public position()J
    .locals 4

    .prologue
    .line 2649
    iget-wide v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mPosition:J

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->getTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mHttpSeek:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2594
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2609
    :goto_0
    return-void

    .line 2597
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2600
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2601
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2602
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2603
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 2604
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->addStatus(I)V

    .line 2605
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    .line 2606
    invoke-virtual {p0, v3}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2607
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2608
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public seek(J)J
    .locals 6
    .parameter "position"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x6

    .line 2657
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide v1, v4

    .line 2667
    :goto_0
    return-wide v1

    .line 2660
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeMessages(I)V

    .line 2661
    iput-wide p1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mPosition:J

    .line 2662
    iput-wide v4, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mHttpSeek:J

    .line 2663
    long-to-int v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2664
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/MusicPlaybackService$StopWatch;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->reset()V

    .line 2665
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2666
    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->sendMessage(Landroid/os/Message;)Z

    move-wide v1, p1

    .line 2667
    goto :goto_0
.end method

.method public setDataSource(JZLcom/google/android/music/MusicPlaybackService$AsyncCommandCallback;)V
    .locals 6
    .parameter "musicId"
    .parameter "fromUserAction"
    .parameter "cb"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    .line 2313
    cmp-long v1, p1, v4

    if-nez v1, :cond_0

    .line 2314
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid MusicId: -1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2316
    :cond_0
    iget-wide v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    .line 2317
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t reuse. Previously used for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", now for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2320
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncMediaPlayer setDataSource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2321
    iput-wide p1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    .line 2322
    invoke-virtual {p0, v3, p4}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2323
    .local v0, msg:Landroid/os/Message;
    if-eqz p3, :cond_2

    move v1, v3

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2324
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2325
    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->sendMessage(Landroid/os/Message;)Z

    .line 2326
    return-void

    .line 2323
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 4
    .parameter "vol"

    .prologue
    const/4 v3, 0x5

    .line 2671
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2678
    :goto_0
    return-void

    .line 2674
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeMessages(I)V

    .line 2675
    const/high16 v1, 0x447a

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2676
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2677
    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2552
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2561
    :goto_0
    return-void

    .line 2555
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2556
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeMessages(I)V

    .line 2557
    invoke-virtual {p0, v3}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeMessages(I)V

    .line 2558
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2559
    invoke-virtual {p0, v3}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->sendEmptyMessage(I)Z

    .line 2560
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->addStatus(I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 2579
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2591
    :goto_0
    return-void

    .line 2582
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mCurrentSong:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2583
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    invoke-interface {v0}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->cancelTryNext()V

    .line 2584
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeMessages(I)V

    .line 2585
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeMessages(I)V

    .line 2586
    invoke-virtual {p0, v3}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeMessages(I)V

    .line 2587
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->removeStatus(I)V

    .line 2588
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mPosition:J

    .line 2589
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2590
    invoke-virtual {p0, v3}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
