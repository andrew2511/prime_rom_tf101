.class public Lcom/google/android/talk/videochat/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/Ringer$Worker;,
        Lcom/google/android/talk/videochat/Ringer$VibratorThread;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field volatile mContinueVibrating:Z

.field mCustomRingtoneUri:Landroid/net/Uri;

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field private mLowVolume:Z

.field private mRingHandler:Landroid/os/Handler;

.field private mRingThread:Lcom/google/android/talk/videochat/Ringer$Worker;

.field mRingtone:Landroid/media/Ringtone;

.field private mStreamType:I

.field mVibrateWhen:Ljava/lang/String;

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/google/android/talk/videochat/Ringer$VibratorThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-wide/16 v0, -0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v0, p0, Lcom/google/android/talk/videochat/Ringer;->mFirstRingEventTime:J

    .line 59
    iput-wide v0, p0, Lcom/google/android/talk/videochat/Ringer;->mFirstRingStartTime:J

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/videochat/Ringer;->mStreamType:I

    .line 64
    iput-object p1, p0, Lcom/google/android/talk/videochat/Ringer;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/google/android/talk/videochat/Ringer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/talk/videochat/Ringer;->mAudioManager:Landroid/media/AudioManager;

    .line 66
    iget-object v0, p0, Lcom/google/android/talk/videochat/Ringer;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/android/talk/videochat/Ringer;->mVibrator:Landroid/os/Vibrator;

    .line 67
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/android/talk/videochat/Ringer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/videochat/Ringer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/talk/videochat/Ringer;->mStreamType:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/videochat/Ringer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/Ringer;->mLowVolume:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/videochat/Ringer;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/talk/videochat/Ringer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/videochat/Ringer;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/videochat/Ringer;->resetVolume(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/talk/videochat/Ringer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/google/android/talk/videochat/Ringer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/google/android/talk/videochat/Ringer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/google/android/talk/videochat/Ringer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method private isRingtonePlaying()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/videochat/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/talk/videochat/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 379
    const-string v0, "talk:ringer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method

.method private makeLooper()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/talk/videochat/Ringer;->mRingThread:Lcom/google/android/talk/videochat/Ringer$Worker;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/google/android/talk/videochat/Ringer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/videochat/Ringer$Worker;-><init>(Lcom/google/android/talk/videochat/Ringer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/Ringer;->mRingThread:Lcom/google/android/talk/videochat/Ringer$Worker;

    .line 279
    new-instance v0, Lcom/google/android/talk/videochat/Ringer$1;

    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mRingThread:Lcom/google/android/talk/videochat/Ringer$Worker;

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/Ringer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/videochat/Ringer$1;-><init>(Lcom/google/android/talk/videochat/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 352
    :cond_0
    return-void
.end method

.method private resetVolume(III)V
    .locals 5
    .parameter "origVolume"
    .parameter "newVolume"
    .parameter "streamType"

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/google/android/talk/videochat/Ringer;->isRingtonePlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mRingHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/videochat/Ringer$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/talk/videochat/Ringer$2;-><init>(Lcom/google/android/talk/videochat/Ringer;III)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 376
    :goto_0
    return-void

    .line 371
    :cond_0
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p3, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/Ringer;->stopRing()V

    goto :goto_0
.end method


# virtual methods
.method public ring()V
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x3

    .line 106
    const-string v1, "talk"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "ring()..."

    invoke-static {v1}, Lcom/google/android/talk/videochat/Ringer;->log(Ljava/lang/String;)V

    .line 110
    :cond_0
    monitor-enter p0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/Ringer;->shouldVibrate()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mVibratorThread:Lcom/google/android/talk/videochat/Ringer$VibratorThread;

    if-nez v1, :cond_2

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/talk/videochat/Ringer;->mContinueVibrating:Z

    .line 113
    new-instance v1, Lcom/google/android/talk/videochat/Ringer$VibratorThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/talk/videochat/Ringer$VibratorThread;-><init>(Lcom/google/android/talk/videochat/Ringer;Lcom/google/android/talk/videochat/Ringer$1;)V

    iput-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mVibratorThread:Lcom/google/android/talk/videochat/Ringer$VibratorThread;

    .line 114
    const-string v1, "talk"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const-string v1, "- starting vibrator..."

    invoke-static {v1}, Lcom/google/android/talk/videochat/Ringer;->log(Ljava/lang/String;)V

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mVibratorThread:Lcom/google/android/talk/videochat/Ringer$VibratorThread;

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/Ringer$VibratorThread;->start()V

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 122
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_4

    .line 123
    const-string v1, "talk"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    const-string v1, "skipping ring because volume is zero"

    invoke-static {v1}, Lcom/google/android/talk/videochat/Ringer;->log(Ljava/lang/String;)V

    .line 126
    :cond_3
    monitor-exit p0

    .line 153
    :goto_0
    return-void

    .line 129
    :cond_4
    invoke-direct {p0}, Lcom/google/android/talk/videochat/Ringer;->makeLooper()V

    .line 130
    iget-wide v1, p0, Lcom/google/android/talk/videochat/Ringer;->mFirstRingEventTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/talk/videochat/Ringer;->mFirstRingEventTime:J

    .line 132
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    :goto_1
    monitor-exit p0

    goto :goto_0

    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 137
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_5
    :try_start_1
    iget-wide v1, p0, Lcom/google/android/talk/videochat/Ringer;->mFirstRingStartTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    .line 140
    const-string v1, "talk"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delaying ring by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/talk/videochat/Ringer;->mFirstRingStartTime:J

    iget-wide v4, p0, Lcom/google/android/talk/videochat/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/videochat/Ringer;->log(Ljava/lang/String;)V

    .line 143
    :cond_6
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/android/talk/videochat/Ringer;->mFirstRingStartTime:J

    iget-wide v5, p0, Lcom/google/android/talk/videochat/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 149
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/talk/videochat/Ringer;->mFirstRingEventTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setCustomRingtoneUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 272
    iput-object p1, p0, Lcom/google/android/talk/videochat/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 274
    :cond_0
    return-void
.end method

.method public setLowVolume(Z)V
    .locals 0
    .parameter "lowVolume"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/Ringer;->mLowVolume:Z

    .line 161
    return-void
.end method

.method protected setStreamType(I)V
    .locals 0
    .parameter "streamType"

    .prologue
    .line 164
    iput p1, p0, Lcom/google/android/talk/videochat/Ringer;->mStreamType:I

    .line 165
    return-void
.end method

.method public setVibrateWhen(Ljava/lang/String;)V
    .locals 0
    .parameter "vibrateWhen"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/talk/videochat/Ringer;->mVibrateWhen:Ljava/lang/String;

    .line 157
    return-void
.end method

.method shouldVibrate()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 168
    iget-object v4, p0, Lcom/google/android/talk/videochat/Ringer;->mVibrateWhen:Ljava/lang/String;

    if-nez v4, :cond_0

    move v4, v6

    .line 181
    :goto_0
    return v4

    .line 172
    :cond_0
    iget-object v4, p0, Lcom/google/android/talk/videochat/Ringer;->mVibrateWhen:Ljava/lang/String;

    const-string v5, "always"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 173
    .local v2, vibrateAlways:Z
    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/google/android/talk/videochat/Ringer;->mVibrateWhen:Ljava/lang/String;

    const-string v5, "silent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v7

    .line 174
    .local v3, vibrateSilent:Z
    :goto_1
    iget-object v4, p0, Lcom/google/android/talk/videochat/Ringer;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 177
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v7, :cond_3

    move v1, v7

    .line 181
    .local v1, nowSilent:Z
    :goto_2
    if-nez v2, :cond_1

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    :cond_1
    move v4, v7

    goto :goto_0

    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #nowSilent:Z
    .end local v3           #vibrateSilent:Z
    :cond_2
    move v3, v6

    .line 173
    goto :goto_1

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v3       #vibrateSilent:Z
    :cond_3
    move v1, v6

    .line 177
    goto :goto_2

    .restart local v1       #nowSilent:Z
    :cond_4
    move v4, v6

    .line 181
    goto :goto_0
.end method

.method stopRing()V
    .locals 3

    .prologue
    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    const-string v1, "talk"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "stopRing()..."

    invoke-static {v1}, Lcom/google/android/talk/videochat/Ringer;->log(Ljava/lang/String;)V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 195
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 197
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mRingtone:Landroid/media/Ringtone;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mRingThread:Lcom/google/android/talk/videochat/Ringer$Worker;

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 202
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/talk/videochat/Ringer;->mFirstRingEventTime:J

    .line 203
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/talk/videochat/Ringer;->mFirstRingStartTime:J

    .line 208
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mVibratorThread:Lcom/google/android/talk/videochat/Ringer$VibratorThread;

    if-eqz v1, :cond_2

    .line 209
    const-string v1, "talk"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    const-string v1, "- stopRing: cleaning up vibrator thread..."

    invoke-static {v1}, Lcom/google/android/talk/videochat/Ringer;->log(Ljava/lang/String;)V

    .line 212
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/videochat/Ringer;->mContinueVibrating:Z

    .line 213
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mVibratorThread:Lcom/google/android/talk/videochat/Ringer$VibratorThread;

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/google/android/talk/videochat/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 218
    monitor-exit p0

    .line 219
    return-void

    .line 205
    :cond_3
    const-string v1, "- stopRing: null mRingHandler!"

    invoke-static {v1}, Lcom/google/android/talk/videochat/Ringer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
