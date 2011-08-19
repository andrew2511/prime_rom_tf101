.class public Lcom/google/android/talk/videochat/CallRinger;
.super Ljava/lang/Object;
.source "CallRinger.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRingCount:I

.field private mRingDelayRunnable:Ljava/lang/Runnable;

.field protected mRinger:Lcom/google/android/talk/videochat/Ringer;

.field private mRinging:Z

.field protected mRingtoneUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "c"
    .parameter "h"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/google/android/talk/videochat/CallRinger$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/CallRinger$1;-><init>(Lcom/google/android/talk/videochat/CallRinger;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/CallRinger;->mRingDelayRunnable:Ljava/lang/Runnable;

    .line 30
    new-instance v0, Lcom/google/android/talk/videochat/Ringer;

    invoke-direct {v0, p1}, Lcom/google/android/talk/videochat/Ringer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/CallRinger;->mRinger:Lcom/google/android/talk/videochat/Ringer;

    .line 31
    iput-object p2, p0, Lcom/google/android/talk/videochat/CallRinger;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/CallRinger;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallRinger;->ringAndRepeat()V

    return-void
.end method

.method private ringAndRepeat()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallRinger;->mRinger:Lcom/google/android/talk/videochat/Ringer;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/talk/videochat/CallRinger;->mRinging:Z

    if-nez v1, :cond_0

    .line 70
    monitor-exit v0

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_0
    iget v1, p0, Lcom/google/android/talk/videochat/CallRinger;->mRingCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/talk/videochat/CallRinger;->mRingCount:I

    .line 73
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallRinger;->mRinger:Lcom/google/android/talk/videochat/Ringer;

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/Ringer;->ring()V

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ringAndRepeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/talk/videochat/CallRinger;->mRingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/CallRinger;->log(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallRinger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallRinger;->mRingDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getRingtoneUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallRinger;->mRingtoneUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 88
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CallRinger] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public setRingtoneUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallRinger;->mRingtoneUrl:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallRinger;->mRinger:Lcom/google/android/talk/videochat/Ringer;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallRinger;->mRingtoneUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 37
    return-void
.end method

.method public setStreamType(I)V
    .locals 1
    .parameter "streamType"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallRinger;->mRinger:Lcom/google/android/talk/videochat/Ringer;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/Ringer;->setStreamType(I)V

    .line 59
    return-void
.end method

.method public startRing()V
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/talk/videochat/CallRinger;->mRingCount:I

    .line 41
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallRinger;->mRinger:Lcom/google/android/talk/videochat/Ringer;

    monitor-enter v0

    .line 42
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/CallRinger;->mRinging:Z

    .line 43
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallRinger;->ringAndRepeat()V

    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopRing()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallRinger;->mRinger:Lcom/google/android/talk/videochat/Ringer;

    monitor-enter v0

    .line 49
    :try_start_0
    const-string v1, "stopRing"

    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/CallRinger;->log(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallRinger;->mRinger:Lcom/google/android/talk/videochat/Ringer;

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/Ringer;->stopRing()V

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/videochat/CallRinger;->mRinging:Z

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallRinger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallRinger;->mRingDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    return-void

    .line 52
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
