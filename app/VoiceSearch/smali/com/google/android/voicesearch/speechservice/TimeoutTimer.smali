.class public Lcom/google/android/voicesearch/speechservice/TimeoutTimer;
.super Ljava/lang/Object;
.source "TimeoutTimer.java"


# instance fields
.field private mUntil:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;-><init>(J)V

    .line 32
    return-void
.end method

.method constructor <init>(J)V
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mUntil:J

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized extend(J)V
    .locals 2
    .parameter

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mUntil:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mUntil:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remaining()J
    .locals 4

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mUntil:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(J)V
    .locals 2
    .parameter

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mUntil:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
