.class public Landroid/media/videoeditor/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# instance fields
.field private final mAudioBitrate:I

.field private final mAudioChannels:I

.field private final mAudioSamplingFrequency:I

.field private final mAudioType:I

.field private mAudioWaveformFilename:Ljava/lang/String;

.field private mBeginBoundaryTimeMs:J

.field private mDuckedTrackVolume:I

.field private mDuckingThreshold:I

.field private final mDurationMs:J

.field private mEndBoundaryTimeMs:J

.field private final mFilename:Ljava/lang/String;

.field private mIsDuckingEnabled:Z

.field private mLoop:Z

.field private final mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private mMuted:Z

.field private mStartTimeMs:J

.field private mTimelineDurationMs:J

.field private final mUniqueId:Ljava/lang/String;

.field private mVolumePercent:I

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


# direct methods
.method private constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0, v0, v0}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .parameter "editor"
    .parameter "audioTrackId"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x64

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v16}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJZIZZIILjava/lang/String;)V

    .line 93
    return-void
.end method

.method constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJZIZZIILjava/lang/String;)V
    .registers 27
    .parameter "editor"
    .parameter "audioTrackId"
    .parameter "filename"
    .parameter "startTimeMs"
    .parameter "beginMs"
    .parameter "endMs"
    .parameter "loop"
    .parameter "volume"
    .parameter "muted"
    .parameter "duckingEnabled"
    .parameter "duckThreshold"
    .parameter "duckedTrackVolume"
    .parameter "audioWaveformFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v5, 0x0

    .line 130
    .local v5, properties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_28

    .line 132
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found ! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 136
    :cond_28
    const-wide v6, 0x80000000L

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3d

    .line 137
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "File size is more than 2GB"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 140
    :cond_3d
    instance-of v6, p1, Landroid/media/videoeditor/VideoEditorImpl;

    if-eqz v6, :cond_62

    .line 141
    check-cast p1, Landroid/media/videoeditor/VideoEditorImpl;

    .end local p1
    invoke-virtual {p1}, Landroid/media/videoeditor/VideoEditorImpl;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v6

    iput-object v6, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 146
    :try_start_49
    iget-object v6, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v6, p3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_6a

    move-result-object v5

    .line 150
    iget-object v6, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v6, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v6

    packed-switch v6, :pswitch_data_10e

    .line 157
    :pswitch_5a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unsupported input file type"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 143
    .restart local p1
    :cond_62
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "editor is not of type VideoEditorImpl"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 147
    .end local p1
    :catch_6a
    move-exception v6

    move-object v3, v6

    .line 148
    .local v3, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 160
    .end local v3           #e:Ljava/lang/Exception;
    :pswitch_8d
    iget-object v6, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    invoke-virtual {v6, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v6

    packed-switch v6, :pswitch_data_11a

    .line 167
    :pswitch_98
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unsupported Audio Codec Format in Input File"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 170
    :pswitch_a0
    const-wide/16 v6, -0x1

    cmp-long v6, p8, v6

    if-nez v6, :cond_ac

    .line 171
    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 p8, v0

    .line 174
    :cond_ac
    iput-object p2, p0, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    .line 175
    iput-object p3, p0, Landroid/media/videoeditor/AudioTrack;->mFilename:Ljava/lang/String;

    .line 176
    iput-wide p4, p0, Landroid/media/videoeditor/AudioTrack;->mStartTimeMs:J

    .line 177
    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    int-to-long v6, v6

    iput-wide v6, p0, Landroid/media/videoeditor/AudioTrack;->mDurationMs:J

    .line 178
    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioChannels:I

    iput v6, p0, Landroid/media/videoeditor/AudioTrack;->mAudioChannels:I

    .line 179
    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioBitrate:I

    iput v6, p0, Landroid/media/videoeditor/AudioTrack;->mAudioBitrate:I

    .line 180
    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioSamplingFrequency:I

    iput v6, p0, Landroid/media/videoeditor/AudioTrack;->mAudioSamplingFrequency:I

    .line 181
    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    iput v6, p0, Landroid/media/videoeditor/AudioTrack;->mAudioType:I

    .line 182
    sub-long v6, p8, p6

    iput-wide v6, p0, Landroid/media/videoeditor/AudioTrack;->mTimelineDurationMs:J

    .line 183
    move/from16 v0, p11

    move-object v1, p0

    iput v0, v1, Landroid/media/videoeditor/AudioTrack;->mVolumePercent:I

    .line 185
    move-wide/from16 v0, p6

    move-object v2, p0

    iput-wide v0, v2, Landroid/media/videoeditor/AudioTrack;->mBeginBoundaryTimeMs:J

    .line 186
    move-wide/from16 v0, p8

    move-object v2, p0

    iput-wide v0, v2, Landroid/media/videoeditor/AudioTrack;->mEndBoundaryTimeMs:J

    .line 188
    move/from16 v0, p10

    move-object v1, p0

    iput-boolean v0, v1, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    .line 189
    move/from16 v0, p12

    move-object v1, p0

    iput-boolean v0, v1, Landroid/media/videoeditor/AudioTrack;->mMuted:Z

    .line 190
    move/from16 v0, p13

    move-object v1, p0

    iput-boolean v0, v1, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    .line 191
    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Landroid/media/videoeditor/AudioTrack;->mDuckingThreshold:I

    .line 192
    move/from16 v0, p15

    move-object v1, p0

    iput v0, v1, Landroid/media/videoeditor/AudioTrack;->mDuckedTrackVolume:I

    .line 194
    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    .line 195
    if-eqz p16, :cond_10a

    .line 196
    new-instance v6, Ljava/lang/ref/SoftReference;

    new-instance v7, Landroid/media/videoeditor/WaveformData;

    move-object v0, v7

    move-object/from16 v1, p16

    invoke-direct {v0, v1}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    .line 201
    :goto_109
    return-void

    .line 199
    :cond_10a
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    goto :goto_109

    .line 150
    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_8d
        :pswitch_5a
        :pswitch_8d
    .end packed-switch

    .line 160
    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_a0
        :pswitch_98
        :pswitch_98
        :pswitch_a0
        :pswitch_98
        :pswitch_98
        :pswitch_a0
    .end packed-switch
.end method


# virtual methods
.method public disableDucking()V
    .registers 3

    .prologue
    .line 444
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    if-eqz v0, :cond_d

    .line 448
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    .line 451
    :cond_d
    return-void
.end method

.method public disableLoop()V
    .registers 3

    .prologue
    .line 422
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    if-eqz v0, :cond_d

    .line 426
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    .line 429
    :cond_d
    return-void
.end method

.method public enableDucking(II)V
    .registers 6
    .parameter "threshold"
    .parameter "duckedTrackVolume"

    .prologue
    const/4 v1, 0x1

    .line 464
    if-ltz p1, :cond_7

    const/16 v0, 0x5a

    if-le p1, v0, :cond_20

    .line 465
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid threshold value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_20
    if-ltz p2, :cond_26

    const/16 v0, 0x64

    if-le p2, v0, :cond_3f

    .line 469
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid duckedTrackVolume value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_3f
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 478
    iput p1, p0, Landroid/media/videoeditor/AudioTrack;->mDuckingThreshold:I

    .line 479
    iput p2, p0, Landroid/media/videoeditor/AudioTrack;->mDuckedTrackVolume:I

    .line 480
    iput-boolean v1, p0, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    .line 481
    return-void
.end method

.method public enableLoop()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 409
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    if-nez v0, :cond_c

    .line 413
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 414
    iput-boolean v1, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    .line 416
    :cond_c
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 643
    instance-of v0, p1, Landroid/media/videoeditor/AudioTrack;

    if-nez v0, :cond_6

    .line 644
    const/4 v0, 0x0

    .line 646
    .end local p1
    :goto_5
    return v0

    .restart local p1
    :cond_6
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    check-cast p1, Landroid/media/videoeditor/AudioTrack;

    .end local p1
    iget-object v1, p1, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public extractAudioWaveform(Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;)V
    .registers 13
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 524
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    if-nez v0, :cond_66

    .line 528
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getProjectPath()Ljava/lang/String;

    move-result-object v10

    .line 529
    .local v10, projectPath:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/audioWaveformFile-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, audioWaveFilename:Ljava/lang/String;
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v1, p0, Landroid/media/videoeditor/AudioTrack;->mAudioType:I

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v9

    .line 539
    .local v9, codecType:I
    packed-switch v9, :pswitch_data_84

    .line 569
    :pswitch_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported codec type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :pswitch_56
    const/4 v4, 0x5

    .line 543
    .local v4, frameDuration:I
    const/16 v6, 0xa0

    .line 574
    .local v6, sampleCount:I
    :goto_59
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v1, p0, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mFilename:Ljava/lang/String;

    const/4 v5, 0x2

    move-object v7, p1

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateAudioGraph(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/media/videoeditor/ExtractAudioWaveformProgressListener;Z)V

    .line 585
    iput-object v3, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    .line 587
    .end local v3           #audioWaveFilename:Ljava/lang/String;
    .end local v4           #frameDuration:I
    .end local v6           #sampleCount:I
    .end local v9           #codecType:I
    .end local v10           #projectPath:Ljava/lang/String;
    :cond_66
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Landroid/media/videoeditor/WaveformData;

    iget-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    .line 588
    return-void

    .line 548
    .restart local v3       #audioWaveFilename:Ljava/lang/String;
    .restart local v9       #codecType:I
    .restart local v10       #projectPath:Ljava/lang/String;
    :pswitch_75
    const/16 v4, 0xa

    .line 550
    .restart local v4       #frameDuration:I
    const/16 v6, 0x140

    .line 551
    .restart local v6       #sampleCount:I
    goto :goto_59

    .line 555
    .end local v4           #frameDuration:I
    .end local v6           #sampleCount:I
    :pswitch_7a
    const/16 v4, 0x20

    .line 557
    .restart local v4       #frameDuration:I
    const/16 v6, 0x400

    .line 558
    .restart local v6       #sampleCount:I
    goto :goto_59

    .line 562
    .end local v4           #frameDuration:I
    .end local v6           #sampleCount:I
    :pswitch_7f
    const/16 v4, 0x24

    .line 564
    .restart local v4       #frameDuration:I
    const/16 v6, 0x480

    .line 565
    .restart local v6       #sampleCount:I
    goto :goto_59

    .line 539
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_56
        :pswitch_7a
        :pswitch_3d
        :pswitch_3d
        :pswitch_7f
        :pswitch_3d
        :pswitch_3d
        :pswitch_75
    .end packed-switch
.end method

.method public getAudioBitrate()I
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioBitrate:I

    return v0
.end method

.method public getAudioChannels()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioChannels:I

    return v0
.end method

.method public getAudioSamplingFrequency()I
    .registers 2

    .prologue
    .line 246
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioSamplingFrequency:I

    return v0
.end method

.method public getAudioType()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioType:I

    return v0
.end method

.method getAudioWaveformFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 596
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getBoundaryBeginTime()J
    .registers 3

    .prologue
    .line 390
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mBeginBoundaryTimeMs:J

    return-wide v0
.end method

.method public getBoundaryEndTime()J
    .registers 3

    .prologue
    .line 399
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mEndBoundaryTimeMs:J

    return-wide v0
.end method

.method public getDuckedTrackVolume()I
    .registers 2

    .prologue
    .line 507
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mDuckedTrackVolume:I

    return v0
.end method

.method public getDuckingThreshhold()I
    .registers 2

    .prologue
    .line 498
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mDuckingThreshold:I

    return v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 339
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mDurationMs:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .registers 3

    .prologue
    .line 328
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mStartTimeMs:J

    return-wide v0
.end method

.method public getTimelineDuration()J
    .registers 3

    .prologue
    .line 348
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mTimelineDurationMs:J

    return-wide v0
.end method

.method public getVolume()I
    .registers 2

    .prologue
    .line 294
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mVolumePercent:I

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

    .line 618
    iget-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_7

    move-object v2, v3

    .line 634
    :goto_6
    return-object v2

    .line 622
    :cond_7
    iget-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/WaveformData;

    .line 623
    .local v1, waveformData:Landroid/media/videoeditor/WaveformData;
    if-eqz v1, :cond_13

    move-object v2, v1

    .line 624
    goto :goto_6

    .line 625
    :cond_13
    iget-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    if-eqz v2, :cond_2a

    .line 627
    :try_start_17
    new-instance v1, Landroid/media/videoeditor/WaveformData;

    .end local v1           #waveformData:Landroid/media/videoeditor/WaveformData;
    iget-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_27

    .line 631
    .restart local v1       #waveformData:Landroid/media/videoeditor/WaveformData;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    move-object v2, v1

    .line 632
    goto :goto_6

    .line 628
    .end local v1           #waveformData:Landroid/media/videoeditor/WaveformData;
    :catch_27
    move-exception v2

    move-object v0, v2

    .line 629
    .local v0, e:Ljava/io/IOException;
    throw v0

    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #waveformData:Landroid/media/videoeditor/WaveformData;
    :cond_2a
    move-object v2, v3

    .line 634
    goto :goto_6
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method invalidate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 603
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 604
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 605
    iput-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    .line 606
    iput-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    .line 608
    :cond_13
    return-void
.end method

.method public isDuckingEnabled()Z
    .registers 2

    .prologue
    .line 489
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    return v0
.end method

.method public isLooping()Z
    .registers 2

    .prologue
    .line 437
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    return v0
.end method

.method public isMuted()Z
    .registers 2

    .prologue
    .line 317
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mMuted:Z

    return v0
.end method

.method public setExtractBoundaries(JJ)V
    .registers 9
    .parameter "beginMs"
    .parameter "endMs"

    .prologue
    const-wide/16 v2, 0x0

    .line 360
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mDurationMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_10

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_10
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mDurationMs:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_1e

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_1e
    cmp-long v0, p1, v2

    if-gez v0, :cond_2a

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start time; is < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_2a
    cmp-long v0, p3, v2

    if-gez v0, :cond_36

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid end time; is < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_36
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 378
    iput-wide p1, p0, Landroid/media/videoeditor/AudioTrack;->mBeginBoundaryTimeMs:J

    .line 379
    iput-wide p3, p0, Landroid/media/videoeditor/AudioTrack;->mEndBoundaryTimeMs:J

    .line 381
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mEndBoundaryTimeMs:J

    iget-wide v2, p0, Landroid/media/videoeditor/AudioTrack;->mBeginBoundaryTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mTimelineDurationMs:J

    .line 382
    return-void
.end method

.method public setMute(Z)V
    .registers 4
    .parameter "muted"

    .prologue
    .line 307
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 308
    iput-boolean p1, p0, Landroid/media/videoeditor/AudioTrack;->mMuted:Z

    .line 309
    return-void
.end method

.method public setVolume(I)V
    .registers 4
    .parameter "volumePercent"

    .prologue
    .line 271
    const/16 v0, 0x64

    if-le p1, v0, :cond_c

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Volume set exceeds maximum allowed value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_c
    if-gez p1, :cond_16

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Volume "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_16
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 284
    iput p1, p0, Landroid/media/videoeditor/AudioTrack;->mVolumePercent:I

    .line 285
    return-void
.end method
