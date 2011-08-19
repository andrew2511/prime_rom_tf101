.class public Lcom/google/android/music/BufferProgressListener;
.super Ljava/lang/Object;
.source "BufferProgressListener.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "BufferProgressListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentSong:J

.field private mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "BufferProgressListener"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/BufferProgressListener;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ProgressBar;)V
    .locals 2
    .parameter "context"
    .parameter "progress"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/BufferProgressListener;->mCurrentSong:J

    .line 73
    new-instance v0, Lcom/google/android/music/BufferProgressListener$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/BufferProgressListener$1;-><init>(Lcom/google/android/music/BufferProgressListener;)V

    iput-object v0, p0, Lcom/google/android/music/BufferProgressListener;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    .line 28
    iput-object p1, p0, Lcom/google/android/music/BufferProgressListener;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/BufferProgressListener;JIFI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/google/android/music/BufferProgressListener;->processBufferBroadcast(JIFI)V

    return-void
.end method

.method private declared-synchronized processBufferBroadcast(JIFI)V
    .locals 3
    .parameter "songId"
    .parameter "state"
    .parameter "progress"
    .parameter "errorType"

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->values()[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v1

    aget-object v0, v1, p3

    .line 35
    .local v0, downloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v1, :cond_2

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/BufferProgressListener;->stopReceiver()V

    .line 39
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 43
    :cond_2
    const v1, 0x3f7d70a4

    cmpl-float v1, p4, v1

    if-ltz v1, :cond_3

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    .end local v0           #downloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 46
    .restart local v0       #downloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized stopReceiver()V
    .locals 4

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/music/BufferProgressListener;->mCurrentSong:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    iget-wide v1, p0, Lcom/google/android/music/BufferProgressListener;->mCurrentSong:J

    iget-object v3, p0, Lcom/google/android/music/BufferProgressListener;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->removeDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)V

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/BufferProgressListener;->mCurrentSong:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized updateCurrentSong(J)V
    .locals 2
    .parameter "songId"

    .prologue
    .line 52
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/music/BufferProgressListener;->stopReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 54
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/music/BufferProgressListener;->mCurrentSong:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/google/android/music/BufferProgressListener;->stopReceiver()V

    .line 57
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->addDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 61
    :cond_2
    iput-wide p1, p0, Lcom/google/android/music/BufferProgressListener;->mCurrentSong:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
