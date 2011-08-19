.class public Lcom/android/videoeditor/service/MovieAudioTrack;
.super Ljava/lang/Object;
.source "MovieAudioTrack.java"


# instance fields
.field private mAppIsDuckingEnabled:Z

.field private mAppLoop:Z

.field private mAppMuted:Z

.field private mAppStartTimeMs:J

.field private mAppVolumePercent:I

.field private final mAudioBitrate:I

.field private final mAudioChannels:I

.field private final mAudioSamplingFrequency:I

.field private final mAudioType:I

.field private mBeginBoundaryTimeMs:J

.field private final mDurationMs:J

.field private mEndBoundaryTimeMs:J

.field private final mFilename:Ljava/lang/String;

.field private mIsDuckingEnabled:Z

.field private mLoop:Z

.field private mMuted:Z

.field private final mRawResourceId:I

.field private mStartTimeMs:J

.field private mTimelineDurationMs:J

.field private final mUniqueId:Ljava/lang/String;

.field private mVolumePercent:I

.field private mWaveformData:Landroid/media/videoeditor/WaveformData;


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    check-cast v0, Landroid/media/videoeditor/AudioTrack;

    invoke-direct {p0, v0}, Lcom/android/videoeditor/service/MovieAudioTrack;-><init>(Landroid/media/videoeditor/AudioTrack;)V

    .line 67
    return-void
.end method

.method constructor <init>(I)V
    .locals 5
    .parameter "resId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v3, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mUniqueId:Ljava/lang/String;

    .line 110
    iput-object v3, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mFilename:Ljava/lang/String;

    .line 111
    iput p1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mRawResourceId:I

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mStartTimeMs:J

    iput-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppStartTimeMs:J

    .line 113
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mDurationMs:J

    .line 114
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mStartTimeMs:J

    iput-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mBeginBoundaryTimeMs:J

    .line 115
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mDurationMs:J

    iput-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mEndBoundaryTimeMs:J

    .line 117
    iput v2, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAudioChannels:I

    .line 118
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAudioType:I

    .line 119
    iput v2, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAudioBitrate:I

    .line 120
    iput v2, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAudioSamplingFrequency:I

    .line 122
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mVolumePercent:I

    iput v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppVolumePercent:I

    .line 123
    iput-boolean v2, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mMuted:Z

    iput-boolean v2, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppMuted:Z

    .line 124
    iput-boolean v4, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mLoop:Z

    iput-boolean v4, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppLoop:Z

    .line 126
    iput-boolean v4, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mIsDuckingEnabled:Z

    iput-boolean v4, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppIsDuckingEnabled:Z

    .line 128
    iput-object v3, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    .line 130
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mEndBoundaryTimeMs:J

    iget-wide v2, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mBeginBoundaryTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mTimelineDurationMs:J

    .line 131
    return-void
.end method

.method constructor <init>(Landroid/media/videoeditor/AudioTrack;)V
    .locals 5
    .parameter "audioTrack"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mUniqueId:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mFilename:Ljava/lang/String;

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mRawResourceId:I

    .line 78
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mStartTimeMs:J

    iput-wide v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppStartTimeMs:J

    .line 79
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getDuration()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mDurationMs:J

    .line 80
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mBeginBoundaryTimeMs:J

    .line 81
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mEndBoundaryTimeMs:J

    .line 83
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getAudioChannels()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAudioChannels:I

    .line 84
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getAudioType()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAudioType:I

    .line 85
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getAudioBitrate()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAudioBitrate:I

    .line 86
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getAudioSamplingFrequency()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAudioSamplingFrequency:I

    .line 88
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mVolumePercent:I

    iput v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppVolumePercent:I

    .line 89
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->isMuted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mMuted:Z

    iput-boolean v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppMuted:Z

    .line 90
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mLoop:Z

    iput-boolean v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppLoop:Z

    .line 92
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mIsDuckingEnabled:Z

    iput-boolean v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppIsDuckingEnabled:Z

    .line 95
    :try_start_0
    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mWaveformData:Landroid/media/videoeditor/WaveformData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    iget-wide v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mEndBoundaryTimeMs:J

    iget-wide v3, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mBeginBoundaryTimeMs:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mTimelineDurationMs:J

    .line 101
    return-void

    .line 96
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    goto :goto_0
.end method


# virtual methods
.method public enableAppDucking(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppIsDuckingEnabled:Z

    .line 406
    return-void
.end method

.method public enableAppLoop(Z)V
    .locals 0
    .parameter "loop"

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppLoop:Z

    .line 374
    return-void
.end method

.method enableDucking(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mIsDuckingEnabled:Z

    .line 390
    return-void
.end method

.method enableLoop(Z)V
    .locals 0
    .parameter "loop"

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mLoop:Z

    .line 355
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 434
    instance-of v0, p1, Lcom/android/videoeditor/service/MovieAudioTrack;

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 437
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mUniqueId:Ljava/lang/String;

    check-cast p1, Lcom/android/videoeditor/service/MovieAudioTrack;

    .end local p1
    iget-object v1, p1, Lcom/android/videoeditor/service/MovieAudioTrack;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppStartTime()J
    .locals 2

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppStartTimeMs:J

    return-wide v0
.end method

.method public getAppVolume()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppVolumePercent:I

    return v0
.end method

.method public getAudioBitrate()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAudioBitrate:I

    return v0
.end method

.method public getAudioChannels()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAudioChannels:I

    return v0
.end method

.method public getAudioSamplingFrequency()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAudioSamplingFrequency:I

    return v0
.end method

.method public getAudioType()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAudioType:I

    return v0
.end method

.method public getBoundaryBeginTime()J
    .locals 2

    .prologue
    .line 335
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mBeginBoundaryTimeMs:J

    return-wide v0
.end method

.method public getBoundaryEndTime()J
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mEndBoundaryTimeMs:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mDurationMs:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getRawResourceId()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mRawResourceId:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mStartTimeMs:J

    return-wide v0
.end method

.method public getTimelineDuration()J
    .locals 2

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mTimelineDurationMs:J

    return-wide v0
.end method

.method getVolume()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mVolumePercent:I

    return v0
.end method

.method public getWaveformData()Landroid/media/videoeditor/WaveformData;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAppDuckingEnabled()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppIsDuckingEnabled:Z

    return v0
.end method

.method public isAppLooping()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppLoop:Z

    return v0
.end method

.method public isAppMuted()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppMuted:Z

    return v0
.end method

.method isDuckingEnabled()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mIsDuckingEnabled:Z

    return v0
.end method

.method isLooping()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mLoop:Z

    return v0
.end method

.method isMuted()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mMuted:Z

    return v0
.end method

.method public setAppMute(Z)V
    .locals 0
    .parameter "muted"

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppMuted:Z

    .line 253
    return-void
.end method

.method public setAppStartTime(J)V
    .locals 0
    .parameter "startTimeMs"

    .prologue
    .line 289
    iput-wide p1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppStartTimeMs:J

    .line 290
    return-void
.end method

.method public setAppVolume(I)V
    .locals 0
    .parameter "volumePercent"

    .prologue
    .line 221
    iput p1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mAppVolumePercent:I

    .line 222
    return-void
.end method

.method setExtractBoundaries(JJ)V
    .locals 4
    .parameter "beginMs"
    .parameter "endMs"

    .prologue
    .line 326
    iput-wide p1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mBeginBoundaryTimeMs:J

    .line 327
    iput-wide p3, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mEndBoundaryTimeMs:J

    .line 328
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mEndBoundaryTimeMs:J

    iget-wide v2, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mBeginBoundaryTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mTimelineDurationMs:J

    .line 329
    return-void
.end method

.method setMute(Z)V
    .locals 0
    .parameter "muted"

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mMuted:Z

    .line 239
    return-void
.end method

.method setStartTime(J)V
    .locals 0
    .parameter "startTimeMs"

    .prologue
    .line 269
    iput-wide p1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mStartTimeMs:J

    .line 270
    return-void
.end method

.method setVolume(I)V
    .locals 0
    .parameter "volumePercent"

    .prologue
    .line 196
    iput p1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mVolumePercent:I

    .line 197
    return-void
.end method

.method setWaveformData(Landroid/media/videoeditor/WaveformData;)V
    .locals 0
    .parameter "waveformData"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/videoeditor/service/MovieAudioTrack;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    .line 427
    return-void
.end method
