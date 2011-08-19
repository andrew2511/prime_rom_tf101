.class Lcom/google/android/music/MusicPlaybackService$StopWatch;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StopWatch"
.end annotation


# instance fields
.field private mCumulativeTime:J

.field private mIsRunning:Z

.field private mStart:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 2095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2096
    iput-wide v0, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mCumulativeTime:J

    .line 2097
    iput-wide v0, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mStart:J

    .line 2098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mIsRunning:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized getTime()J
    .locals 6

    .prologue
    .line 2116
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mIsRunning:Z

    if-nez v2, :cond_0

    .line 2117
    iget-wide v2, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mCumulativeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2120
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 2119
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2120
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mCumulativeTime:J

    iget-wide v4, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mStart:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 2116
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized pause()V
    .locals 6

    .prologue
    .line 2108
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mIsRunning:Z

    if-eqz v2, :cond_0

    .line 2109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2110
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mCumulativeTime:J

    iget-wide v4, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mStart:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mCumulativeTime:J

    .line 2111
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2113
    .end local v0           #now:J
    :cond_0
    monitor-exit p0

    return-void

    .line 2108
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 2125
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mCumulativeTime:J

    .line 2126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mStart:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2127
    monitor-exit p0

    return-void

    .line 2125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 2101
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mIsRunning:Z

    if-nez v0, :cond_0

    .line 2102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mStart:J

    .line 2103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService$StopWatch;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2105
    :cond_0
    monitor-exit p0

    return-void

    .line 2101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
