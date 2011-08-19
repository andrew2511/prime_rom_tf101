.class public Landroid/media/videoeditor/MediaVideoItem;
.super Landroid/media/videoeditor/MediaItem;
.source "MediaVideoItem.java"


# instance fields
.field private final mAspectRatio:I

.field private final mAudioBitrate:I

.field private final mAudioChannels:I

.field private final mAudioSamplingFrequency:I

.field private final mAudioType:I

.field private mAudioWaveformFilename:Ljava/lang/String;

.field private mBeginBoundaryTimeMs:J

.field private final mDurationMs:J

.field private mEndBoundaryTimeMs:J

.field private final mFileType:I

.field private final mFps:I

.field private final mHeight:I

.field private mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private mMuted:Z

.field private final mVideoBitrate:I

.field private mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

.field private final mVideoProfile:I

.field private final mVideoType:I

.field private mVolumePercentage:I

.field private mWaveformData:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/media/videoeditor/WaveformData;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidth:I


# direct methods
.method private constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v1, v0}, Landroid/media/videoeditor/MediaVideoItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 17
    .parameter "editor"
    .parameter "mediaItemId"
    .parameter "filename"
    .parameter "renderingMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const/16 v9, 0x64

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v11}, Landroid/media/videoeditor/MediaVideoItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;)V

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;)V
    .registers 19
    .parameter "editor"
    .parameter "mediaItemId"
    .parameter "filename"
    .parameter "renderingMode"
    .parameter "beginMs"
    .parameter "endMs"
    .parameter "volumePercent"
    .parameter "muted"
    .parameter "audioWaveformFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/videoeditor/MediaItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    instance-of v4, p1, Landroid/media/videoeditor/VideoEditorImpl;

    if-eqz v4, :cond_15

    .line 110
    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/VideoEditorImpl;

    move-object p2, v0

    .end local p2
    invoke-virtual {p2}, Landroid/media/videoeditor/VideoEditorImpl;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v4

    iput-object v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 111
    check-cast p1, Landroid/media/videoeditor/VideoEditorImpl;

    .end local p1
    iput-object p1, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    .line 116
    :cond_15
    :try_start_15
    iget-object v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v4, p3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_2e

    move-result-object v3

    .line 121
    .local v3, properties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    iget-object v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_f6

    .line 128
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported Input File Type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    .end local v3           #properties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :catch_2e
    move-exception v4

    move-object v2, v4

    .line 118
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #properties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :sswitch_51
    iget-object v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoCodecType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_104

    .line 139
    :pswitch_5c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported Video Codec Format in Input File"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    :pswitch_64
    iget v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->profileAndLevel:I

    const/16 v5, 0xff

    if-ne v4, v5, :cond_72

    .line 144
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported Video Codec Profile in Input File"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    :cond_72
    iget v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    iput v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mWidth:I

    .line 148
    iget v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    iput v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mHeight:I

    .line 149
    iget-object v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    iget v6, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    invoke-virtual {v4, v5, v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v4

    iput v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mAspectRatio:I

    .line 151
    iget-object v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v4

    iput v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mFileType:I

    .line 152
    iget-object v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoFormat:I

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoCodecType(I)I

    move-result v4

    iput v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoType:I

    .line 153
    iget v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->profileAndLevel:I

    iput v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoProfile:I

    .line 154
    iget v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    int-to-long v4, v4

    iput-wide v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    .line 155
    iget v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoBitrate:I

    iput v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoBitrate:I

    .line 156
    iget v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioBitrate:I

    iput v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioBitrate:I

    .line 157
    iget v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->averageFrameRate:F

    float-to-int v4, v4

    iput v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mFps:I

    .line 158
    iget-object v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v4

    iput v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    .line 159
    iget v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioChannels:I

    iput v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioChannels:I

    .line 160
    iget v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioSamplingFrequency:I

    iput v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioSamplingFrequency:I

    .line 161
    iput-wide p5, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    .line 162
    const-wide/16 v4, -0x1

    cmp-long v4, p7, v4

    if-nez v4, :cond_ef

    iget-wide v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    :goto_cc
    iput-wide v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    .line 163
    move/from16 v0, p9

    move-object v1, p0

    iput v0, v1, Landroid/media/videoeditor/MediaVideoItem;->mVolumePercentage:I

    .line 164
    move/from16 v0, p10

    move-object v1, p0

    iput-boolean v0, v1, Landroid/media/videoeditor/MediaVideoItem;->mMuted:Z

    .line 165
    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    .line 166
    if-eqz p11, :cond_f1

    .line 167
    new-instance v4, Ljava/lang/ref/SoftReference;

    new-instance v5, Landroid/media/videoeditor/WaveformData;

    move-object v0, v5

    move-object/from16 v1, p11

    invoke-direct {v0, v1}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    .line 172
    :goto_ee
    return-void

    :cond_ef
    move-wide v4, p7

    .line 162
    goto :goto_cc

    .line 170
    :cond_f1
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    goto :goto_ee

    .line 121
    nop

    :sswitch_data_f6
    .sparse-switch
        0x0 -> :sswitch_51
        0x1 -> :sswitch_51
        0xa -> :sswitch_51
    .end sparse-switch

    .line 131
    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_64
        :pswitch_64
        :pswitch_5c
        :pswitch_64
        :pswitch_64
    .end packed-switch
.end method


# virtual methods
.method public addEffect(Landroid/media/videoeditor/Effect;)V
    .registers 4
    .parameter "effect"

    .prologue
    .line 250
    instance-of v0, p1, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v0, :cond_c

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ken Burns effects cannot be applied to MediaVideoItem"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_c
    invoke-super {p0, p1}, Landroid/media/videoeditor/MediaItem;->addEffect(Landroid/media/videoeditor/Effect;)V

    .line 254
    return-void
.end method

.method public extractAudioWaveform(Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;)V
    .registers 12
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    .line 488
    const/4 v4, 0x0

    .line 489
    .local v4, frameDuration:I
    const/4 v6, 0x0

    .line 490
    .local v6, sampleCount:I
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getProjectPath()Ljava/lang/String;

    move-result-object v9

    .line 494
    .local v9, projectPath:Ljava/lang/String;
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    if-nez v0, :cond_58

    .line 498
    const/4 v3, 0x0

    .line 500
    .local v3, mAudioWaveFileName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "audioWaveformFile-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 506
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v0

    if-ne v0, v8, :cond_67

    .line 508
    const/4 v4, 0x5

    .line 510
    const/16 v6, 0xa0

    .line 523
    :cond_4a
    :goto_4a
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mFilename:Ljava/lang/String;

    move-object v7, p1

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateAudioGraph(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/media/videoeditor/ExtractAudioWaveformProgressListener;Z)V

    .line 534
    iput-object v3, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    .line 536
    .end local v3           #mAudioWaveFileName:Ljava/lang/String;
    :cond_58
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Landroid/media/videoeditor/WaveformData;

    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    .line 538
    return-void

    .line 511
    .restart local v3       #mAudioWaveFileName:Ljava/lang/String;
    :cond_67
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_78

    .line 513
    const/16 v4, 0xa

    .line 515
    const/16 v6, 0x140

    goto :goto_4a

    .line 516
    :cond_78
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v0

    if-ne v0, v5, :cond_4a

    .line 518
    const/16 v4, 0x20

    .line 520
    const/16 v6, 0x400

    goto :goto_4a
.end method

.method public getAspectRatio()I
    .registers 2

    .prologue
    .line 393
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAspectRatio:I

    return v0
.end method

.method public getAudioBitrate()I
    .registers 2

    .prologue
    .line 660
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioBitrate:I

    return v0
.end method

.method public getAudioChannels()I
    .registers 2

    .prologue
    .line 681
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioChannels:I

    return v0
.end method

.method public getAudioSamplingFrequency()I
    .registers 2

    .prologue
    .line 688
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioSamplingFrequency:I

    return v0
.end method

.method public getAudioType()I
    .registers 2

    .prologue
    .line 674
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioType:I

    return v0
.end method

.method getAudioWaveformFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 552
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getBoundaryBeginTime()J
    .registers 3

    .prologue
    .line 235
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    return-wide v0
.end method

.method public getBoundaryEndTime()J
    .registers 3

    .prologue
    .line 242
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 425
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    return-wide v0
.end method

.method public getFileType()I
    .registers 2

    .prologue
    .line 401
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mFileType:I

    return v0
.end method

.method public getFps()I
    .registers 2

    .prologue
    .line 667
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mFps:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 417
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mHeight:I

    return v0
.end method

.method public getThumbnail(IIJ)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "width"
    .parameter "height"
    .parameter "timeMs"

    .prologue
    .line 261
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_e

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time Exceeds duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_e
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1c

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Time duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1c
    if-lez p1, :cond_20

    if-gtz p2, :cond_28

    .line 270
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_28
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-super {p0}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixels(Ljava/lang/String;IIJ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailList(IIJJI)[Landroid/graphics/Bitmap;
    .registers 18
    .parameter "width"
    .parameter "height"
    .parameter "startMs"
    .parameter "endMs"
    .parameter "thumbnailCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    cmp-long v0, p3, p5

    if-lez v0, :cond_c

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start time is greater than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_c
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p5, v0

    if-lez v0, :cond_1a

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "End time is greater than file duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_1a
    if-lez p2, :cond_1e

    if-gtz p1, :cond_26

    .line 291
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid dimension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_26
    cmp-long v0, p3, p5

    if-nez v0, :cond_3f

    .line 295
    const/4 v0, 0x1

    new-array v9, v0, [Landroid/graphics/Bitmap;

    .line 296
    .local v9, bitmap:[Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-super {p0}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixels(Ljava/lang/String;IIJ)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v9, v6

    move-object v0, v9

    .line 300
    .end local v9           #bitmap:[Landroid/graphics/Bitmap;
    :goto_3e
    return-object v0

    :cond_3f
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-super {p0}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixelsList(Ljava/lang/String;IIJJI)[Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3e
.end method

.method public getTimelineDuration()J
    .registers 5

    .prologue
    .line 433
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    iget-wide v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getVideoBitrate()I
    .registers 2

    .prologue
    .line 653
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoBitrate:I

    return v0
.end method

.method getVideoClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .registers 4

    .prologue
    .line 696
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 697
    .local v0, clipSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 698
    iget-object v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getFileType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemFileType(I)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 699
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 700
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 701
    iget-object v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->getRenderingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 703
    return-object v0
.end method

.method public getVideoProfile()I
    .registers 2

    .prologue
    .line 646
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoProfile:I

    return v0
.end method

.method public getVideoType()I
    .registers 2

    .prologue
    .line 639
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoType:I

    return v0
.end method

.method public getVolume()I
    .registers 2

    .prologue
    .line 611
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVolumePercentage:I

    return v0
.end method

.method public getWaveformData()Landroid/media/videoeditor/WaveformData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 569
    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_7

    move-object v2, v3

    .line 585
    :goto_6
    return-object v2

    .line 573
    :cond_7
    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/WaveformData;

    .line 574
    .local v1, waveformData:Landroid/media/videoeditor/WaveformData;
    if-eqz v1, :cond_13

    move-object v2, v1

    .line 575
    goto :goto_6

    .line 576
    :cond_13
    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    if-eqz v2, :cond_2a

    .line 578
    :try_start_17
    new-instance v1, Landroid/media/videoeditor/WaveformData;

    .end local v1           #waveformData:Landroid/media/videoeditor/WaveformData;
    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_27

    .line 582
    .restart local v1       #waveformData:Landroid/media/videoeditor/WaveformData;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mWaveformData:Ljava/lang/ref/SoftReference;

    move-object v2, v1

    .line 583
    goto :goto_6

    .line 579
    .end local v1           #waveformData:Landroid/media/videoeditor/WaveformData;
    :catch_27
    move-exception v2

    move-object v0, v2

    .line 580
    .local v0, e:Ljava/io/IOException;
    throw v0

    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #waveformData:Landroid/media/videoeditor/WaveformData;
    :cond_2a
    move-object v2, v3

    .line 585
    goto :goto_6
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 409
    iget v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mWidth:I

    return v0
.end method

.method invalidate()V
    .registers 3

    .prologue
    .line 559
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 560
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mAudioWaveformFilename:Ljava/lang/String;

    .line 563
    :cond_11
    return-void
.end method

.method invalidateTransitions(JJ)V
    .registers 14
    .parameter "startTimeMs"
    .parameter "durationMs"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_1a

    .line 313
    iget-wide v5, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 315
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 319
    :cond_1a
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_36

    .line 320
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    .line 321
    .local v7, transitionDurationMs:J
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long v5, v0, v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 323
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 326
    .end local v7           #transitionDurationMs:J
    :cond_36
    return-void
.end method

.method invalidateTransitions(JJJJ)V
    .registers 20
    .parameter "oldStartTimeMs"
    .parameter "oldDurationMs"
    .parameter "newStartTimeMs"
    .parameter "newDurationMs"

    .prologue
    .line 337
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_25

    .line 338
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    .line 339
    .local v7, transitionDurationMs:J
    iget-wide v5, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v10

    .line 341
    .local v10, oldOverlap:Z
    iget-wide v5, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    move-object v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v9

    .line 351
    .local v9, newOverlap:Z
    if-eq v9, v10, :cond_4f

    .line 352
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 362
    .end local v7           #transitionDurationMs:J
    .end local v9           #newOverlap:Z
    .end local v10           #oldOverlap:Z
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_4e

    .line 363
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    .line 364
    .restart local v7       #transitionDurationMs:J
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long v5, v0, v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v10

    .line 366
    .restart local v10       #oldOverlap:Z
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long v5, v0, v7

    move-object v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaVideoItem;->isOverlapping(JJJJ)Z

    move-result v9

    .line 376
    .restart local v9       #newOverlap:Z
    if-eq v9, v10, :cond_67

    .line 377
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 386
    .end local v7           #transitionDurationMs:J
    .end local v9           #newOverlap:Z
    .end local v10           #oldOverlap:Z
    :cond_4e
    :goto_4e
    return-void

    .line 353
    .restart local v7       #transitionDurationMs:J
    .restart local v9       #newOverlap:Z
    .restart local v10       #oldOverlap:Z
    :cond_4f
    if-eqz v9, :cond_25

    .line 354
    cmp-long v0, p1, p5

    if-nez v0, :cond_61

    add-long v0, p1, p3

    cmp-long v0, v0, v7

    if-lez v0, :cond_61

    add-long v0, p5, p7

    cmp-long v0, v0, v7

    if-gtz v0, :cond_25

    .line 357
    :cond_61
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_25

    .line 378
    :cond_67
    if-eqz v9, :cond_4e

    .line 379
    add-long v0, p1, p3

    add-long v2, p5, p7

    cmp-long v0, v0, v2

    if-nez v0, :cond_7f

    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long/2addr v0, v7

    cmp-long v0, p1, v0

    if-gtz v0, :cond_7f

    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    sub-long/2addr v0, v7

    cmp-long v0, p5, v0

    if-lez v0, :cond_4e

    .line 382
    :cond_7f
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_4e
.end method

.method public isMuted()Z
    .registers 2

    .prologue
    .line 632
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMuted:Z

    return v0
.end method

.method public renderFrame(Landroid/view/SurfaceHolder;J)J
    .registers 11
    .parameter "surfaceHolder"
    .parameter "timeMs"

    .prologue
    const-wide/16 v4, 0x0

    .line 452
    if-nez p1, :cond_c

    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface Holder is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_c
    iget-wide v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p2, v2

    if-gtz v0, :cond_16

    cmp-long v0, p2, v4

    if-gez v0, :cond_1f

    .line 457
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "requested time not correct"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1f
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 461
    .local v1, surface:Landroid/view/Surface;
    if-nez v1, :cond_2d

    .line 462
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Surface could not be retrieved from Surface holder"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_2d
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 466
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v2, p0, Landroid/media/videoeditor/MediaVideoItem;->mFilename:Ljava/lang/String;

    iget v5, p0, Landroid/media/videoeditor/MediaVideoItem;->mWidth:I

    iget v6, p0, Landroid/media/videoeditor/MediaVideoItem;->mHeight:I

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->renderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;JII)J

    move-result-wide v2

    .line 469
    :goto_3e
    return-wide v2

    :cond_3f
    move-wide v2, v4

    goto :goto_3e
.end method

.method public setExtractBoundaries(JJ)V
    .registers 11
    .parameter "beginMs"
    .parameter "endMs"

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 190
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_13

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setExtractBoundaries: Invalid start time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_13
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mDurationMs:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_22

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setExtractBoundaries: Invalid end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_22
    cmp-long v0, p3, v2

    if-eqz v0, :cond_33

    cmp-long v0, p1, p3

    if-ltz v0, :cond_33

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setExtractBoundaries: Start time is greater than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_33
    cmp-long v0, p1, v4

    if-ltz v0, :cond_3f

    cmp-long v0, p3, v2

    if-eqz v0, :cond_48

    cmp-long v0, p3, v4

    if-gez v0, :cond_48

    .line 203
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setExtractBoundaries: Start time or end time is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_48
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 208
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_5d

    .line 209
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_5d

    .line 210
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 214
    :cond_5d
    iget-wide v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    cmp-long v0, p3, v0

    if-eqz v0, :cond_6c

    .line 215
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_6c

    .line 216
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 220
    :cond_6c
    iput-wide p1, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginBoundaryTimeMs:J

    .line 221
    iput-wide p3, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndBoundaryTimeMs:J

    .line 222
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaVideoItem;->adjustTransitions()V

    .line 223
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mVideoEditor:Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {v0}, Landroid/media/videoeditor/VideoEditorImpl;->updateTimelineDuration()V

    .line 229
    return-void
.end method

.method public setMute(Z)V
    .registers 4
    .parameter "muted"

    .prologue
    .line 618
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 619
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaVideoItem;->mMuted:Z

    .line 620
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_11

    .line 621
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 623
    :cond_11
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v0, :cond_1a

    .line 624
    iget-object v0, p0, Landroid/media/videoeditor/MediaVideoItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 626
    :cond_1a
    return-void
.end method

.method public setVolume(I)V
    .registers 4
    .parameter "volumePercent"

    .prologue
    .line 597
    if-ltz p1, :cond_6

    const/16 v0, 0x64

    if-le p1, v0, :cond_e

    .line 598
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid volume"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_e
    iput p1, p0, Landroid/media/videoeditor/MediaVideoItem;->mVolumePercentage:I

    .line 602
    return-void
.end method
