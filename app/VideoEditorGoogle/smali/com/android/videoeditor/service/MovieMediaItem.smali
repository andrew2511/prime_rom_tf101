.class public Lcom/android/videoeditor/service/MovieMediaItem;
.super Ljava/lang/Object;
.source "MovieMediaItem.java"


# instance fields
.field private mAppBeginBoundaryTimeMs:J

.field private mAppEndBoundaryTimeMs:J

.field private mAppMuted:Z

.field private mAppRenderingMode:I

.field private mAppVolumePercent:I

.field private final mAspectRatio:I

.field private final mBeginBoundaryTimeMs:J

.field private mBeginTransition:Lcom/android/videoeditor/service/MovieTransition;

.field private final mDurationMs:J

.field private mEffect:Lcom/android/videoeditor/service/MovieEffect;

.field private final mEndBoundaryTimeMs:J

.field private mEndTransition:Lcom/android/videoeditor/service/MovieTransition;

.field private final mFilename:Ljava/lang/String;

.field private final mHeight:I

.field private mMuted:Z

.field private mOverlay:Lcom/android/videoeditor/service/MovieOverlay;

.field private mRenderingMode:I

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mUniqueId:Ljava/lang/String;

.field private mVolumePercent:I

.field private mWaveformData:Landroid/media/videoeditor/WaveformData;

.field private final mWidth:I


# direct methods
.method constructor <init>(Landroid/media/videoeditor/MediaItem;)V
    .locals 2
    .parameter "mediaItem"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/videoeditor/service/MovieTransition;

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Landroid/media/videoeditor/Transition;)V

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/videoeditor/service/MovieMediaItem;-><init>(Landroid/media/videoeditor/MediaItem;Lcom/android/videoeditor/service/MovieTransition;)V

    .line 90
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/media/videoeditor/MediaItem;Lcom/android/videoeditor/service/MovieTransition;)V
    .locals 12
    .parameter "mediaItem"
    .parameter "beginTransition"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    iput-object v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mType:Ljava/lang/Class;

    .line 100
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mUniqueId:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mFilename:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getRenderingMode()I

    move-result v8

    iput v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mRenderingMode:I

    iput v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppRenderingMode:I

    .line 103
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v8

    iput v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAspectRatio:I

    .line 104
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mWidth:I

    .line 105
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mHeight:I

    .line 107
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mDurationMs:J

    .line 108
    instance-of v8, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v8, :cond_0

    .line 109
    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v7, v0

    .line 110
    .local v7, videoMediaItem:Landroid/media/videoeditor/MediaVideoItem;
    invoke-virtual {v7}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mBeginBoundaryTimeMs:J

    iput-wide v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppBeginBoundaryTimeMs:J

    .line 111
    invoke-virtual {v7}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mEndBoundaryTimeMs:J

    iput-wide v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppEndBoundaryTimeMs:J

    .line 113
    :try_start_0
    invoke-virtual {v7}, Landroid/media/videoeditor/MediaVideoItem;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v8

    iput-object v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mWaveformData:Landroid/media/videoeditor/WaveformData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    invoke-virtual {v7}, Landroid/media/videoeditor/MediaVideoItem;->getVolume()I

    move-result v8

    iput v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mVolumePercent:I

    iput v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppVolumePercent:I

    .line 118
    invoke-virtual {v7}, Landroid/media/videoeditor/MediaVideoItem;->isMuted()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mMuted:Z

    iput-boolean v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppMuted:Z

    .line 127
    .end local v7           #videoMediaItem:Landroid/media/videoeditor/MediaVideoItem;
    :goto_1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v6

    .line 128
    .local v6, overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/videoeditor/Overlay;

    .line 129
    .local v5, overlay:Landroid/media/videoeditor/Overlay;
    new-instance v8, Lcom/android/videoeditor/service/MovieOverlay;

    invoke-direct {v8, v5}, Lcom/android/videoeditor/service/MovieOverlay;-><init>(Landroid/media/videoeditor/Overlay;)V

    invoke-virtual {p0, v8}, Lcom/android/videoeditor/service/MovieMediaItem;->addOverlay(Lcom/android/videoeditor/service/MovieOverlay;)V

    goto :goto_2

    .line 114
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v6           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .restart local v7       #videoMediaItem:Landroid/media/videoeditor/MediaVideoItem;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 115
    .local v3, ex:Ljava/lang/Exception;
    iput-object v11, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    goto :goto_0

    .line 120
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v7           #videoMediaItem:Landroid/media/videoeditor/MediaVideoItem;
    :cond_0
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mBeginBoundaryTimeMs:J

    iput-wide v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppBeginBoundaryTimeMs:J

    .line 121
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mEndBoundaryTimeMs:J

    iput-wide v8, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppEndBoundaryTimeMs:J

    .line 122
    iput-object v11, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    .line 123
    iput v10, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mVolumePercent:I

    iput v10, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppVolumePercent:I

    .line 124
    iput-boolean v10, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mMuted:Z

    iput-boolean v10, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppMuted:Z

    goto :goto_1

    .line 132
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v2

    .line 133
    .local v2, effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Effect;

    .line 134
    .local v1, effect:Landroid/media/videoeditor/Effect;
    new-instance v8, Lcom/android/videoeditor/service/MovieEffect;

    invoke-direct {v8, v1}, Lcom/android/videoeditor/service/MovieEffect;-><init>(Landroid/media/videoeditor/Effect;)V

    invoke-virtual {p0, v8}, Lcom/android/videoeditor/service/MovieMediaItem;->addEffect(Lcom/android/videoeditor/service/MovieEffect;)V

    goto :goto_3

    .line 137
    .end local v1           #effect:Landroid/media/videoeditor/Effect;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 139
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 140
    new-instance v8, Lcom/android/videoeditor/service/MovieTransition;

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Landroid/media/videoeditor/Transition;)V

    invoke-virtual {p0, v8}, Lcom/android/videoeditor/service/MovieMediaItem;->setEndTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 142
    :cond_3
    return-void
.end method


# virtual methods
.method addEffect(Lcom/android/videoeditor/service/MovieEffect;)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mEffect:Lcom/android/videoeditor/service/MovieEffect;

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect already set for media item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_0
    iput-object p1, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mEffect:Lcom/android/videoeditor/service/MovieEffect;

    .line 445
    return-void
.end method

.method addOverlay(Lcom/android/videoeditor/service/MovieOverlay;)V
    .locals 3
    .parameter "overlay"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overlay already set for media item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    iput-object p1, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    .line 413
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 480
    instance-of v0, p1, Lcom/android/videoeditor/service/MovieMediaItem;

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 483
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mUniqueId:Ljava/lang/String;

    check-cast p1, Lcom/android/videoeditor/service/MovieMediaItem;

    .end local p1
    iget-object v1, p1, Lcom/android/videoeditor/service/MovieMediaItem;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppBoundaryBeginTime()J
    .locals 2

    .prologue
    .line 318
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppBeginBoundaryTimeMs:J

    return-wide v0
.end method

.method public getAppBoundaryEndTime()J
    .locals 2

    .prologue
    .line 325
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppEndBoundaryTimeMs:J

    return-wide v0
.end method

.method public getAppRenderingMode()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppRenderingMode:I

    return v0
.end method

.method public getAppTimelineDuration()J
    .locals 4

    .prologue
    .line 333
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppEndBoundaryTimeMs:J

    iget-wide v2, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppBeginBoundaryTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getAppVolume()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppVolumePercent:I

    return v0
.end method

.method public getAspectRatio()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAspectRatio:I

    return v0
.end method

.method public getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mBeginTransition:Lcom/android/videoeditor/service/MovieTransition;

    return-object v0
.end method

.method getBoundaryBeginTime()J
    .locals 2

    .prologue
    .line 292
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mBeginBoundaryTimeMs:J

    return-wide v0
.end method

.method getBoundaryEndTime()J
    .locals 2

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mEndBoundaryTimeMs:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mDurationMs:J

    return-wide v0
.end method

.method public getEffect()Lcom/android/videoeditor/service/MovieEffect;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mEffect:Lcom/android/videoeditor/service/MovieEffect;

    return-object v0
.end method

.method public getEndTransition()Lcom/android/videoeditor/service/MovieTransition;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mEndTransition:Lcom/android/videoeditor/service/MovieTransition;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mHeight:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlay()Lcom/android/videoeditor/service/MovieOverlay;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    return-object v0
.end method

.method getRenderingMode()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mRenderingMode:I

    return v0
.end method

.method getVolume()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mVolumePercent:I

    return v0
.end method

.method public getWaveformData()Landroid/media/videoeditor/WaveformData;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAppMuted()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppMuted:Z

    return v0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 148
    const-class v0, Landroid/media/videoeditor/MediaImageItem;

    iget-object v1, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isMuted()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mMuted:Z

    return v0
.end method

.method public isVideoClip()Z
    .locals 2

    .prologue
    .line 155
    const-class v0, Landroid/media/videoeditor/MediaVideoItem;

    iget-object v1, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method removeEffect(Ljava/lang/String;)V
    .locals 3
    .parameter "effectId"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mEffect:Lcom/android/videoeditor/service/MovieEffect;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mEffect:Lcom/android/videoeditor/service/MovieEffect;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieEffect;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect does not match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mEffect:Lcom/android/videoeditor/service/MovieEffect;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieEffect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mEffect:Lcom/android/videoeditor/service/MovieEffect;

    .line 459
    :cond_1
    return-void
.end method

.method removeOverlay(Ljava/lang/String;)V
    .locals 3
    .parameter "overlayId"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overlay does not match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieOverlay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    .line 426
    :cond_1
    return-void
.end method

.method public setAppExtractBoundaries(JJ)V
    .locals 0
    .parameter "beginMs"
    .parameter "endMs"

    .prologue
    .line 310
    iput-wide p1, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppBeginBoundaryTimeMs:J

    .line 311
    iput-wide p3, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppEndBoundaryTimeMs:J

    .line 312
    return-void
.end method

.method public setAppMute(Z)V
    .locals 0
    .parameter "muted"

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppMuted:Z

    .line 279
    return-void
.end method

.method public setAppRenderingMode(I)V
    .locals 0
    .parameter "renderingMode"

    .prologue
    .line 198
    iput p1, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppRenderingMode:I

    .line 199
    return-void
.end method

.method public setAppVolume(I)V
    .locals 0
    .parameter "volumePercent"

    .prologue
    .line 247
    iput p1, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mAppVolumePercent:I

    .line 248
    return-void
.end method

.method setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V
    .locals 0
    .parameter "beginTransition"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mBeginTransition:Lcom/android/videoeditor/service/MovieTransition;

    .line 373
    return-void
.end method

.method setEndTransition(Lcom/android/videoeditor/service/MovieTransition;)V
    .locals 0
    .parameter "endTransition"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mEndTransition:Lcom/android/videoeditor/service/MovieTransition;

    .line 387
    return-void
.end method

.method setMute(Z)V
    .locals 0
    .parameter "muted"

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mMuted:Z

    .line 265
    return-void
.end method

.method setRenderingMode(I)V
    .locals 0
    .parameter "renderingMode"

    .prologue
    .line 181
    iput p1, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mRenderingMode:I

    .line 182
    return-void
.end method

.method setVolume(I)V
    .locals 0
    .parameter "volumePercent"

    .prologue
    .line 221
    iput p1, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mVolumePercent:I

    .line 222
    return-void
.end method

.method setWaveformData(Landroid/media/videoeditor/WaveformData;)V
    .locals 0
    .parameter "waveformData"

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/videoeditor/service/MovieMediaItem;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    .line 473
    return-void
.end method
