.class Landroid/media/videoeditor/MediaArtistNativeHelper;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClips;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioEffect;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionBehaviour;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioTransition;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$SlideDirection;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoTransition;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoEffect;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFrameRate;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFrameSize;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoProfile;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFormat;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Result;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$MediaRendering;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$FileType;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Bitrate;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSamplingFrequency;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioFormat;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Version;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$OnProgressUpdateListener;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACK_PCM_FILE:Ljava/lang/String; = "AudioPcm.pcm"

.field private static final MAX_THUMBNAIL_PERMITTED:I = 0x8

.field public static final PROCESSING_AUDIO_PCM:I = 0x1

.field public static final PROCESSING_EXPORT:I = 0x14

.field public static final PROCESSING_INTERMEDIATE1:I = 0xb

.field public static final PROCESSING_INTERMEDIATE2:I = 0xc

.field public static final PROCESSING_INTERMEDIATE3:I = 0xd

.field public static final PROCESSING_KENBURNS:I = 0x3

.field public static final PROCESSING_NONE:I = 0x0

.field public static final PROCESSING_TRANSITION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaArtistNativeHelper"

.field public static final TASK_ENCODING:I = 0x2

.field public static final TASK_LOADING_SETTINGS:I = 0x1

.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

.field private mAudioTrack:Landroid/media/videoeditor/AudioTrack;

.field private mAudioTrackPCMFilePath:Ljava/lang/String;

.field private mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

.field private mErrorFlagSet:Z

.field private mExportFilename:Ljava/lang/String;

.field private mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

.field private mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

.field private mInvalidatePreviewArray:Z

.field private mIsFirstProgress:Z

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mManualEditContext:I

.field private mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

.field private mOutputFilename:Ljava/lang/String;

.field private mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

.field private mPreviewProgress:J

.field private mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

.field private mProcessingObject:Ljava/lang/Object;

.field private mProcessingState:I

.field private mProgressToApp:I

.field private final mProjectPath:Ljava/lang/String;

.field private mRegenerateAudio:Z

.field private mRenderPreviewOverlayFile:Ljava/lang/String;

.field private mRenderPreviewRenderingMode:I

.field private mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

.field private mTotalClips:I

.field private final mVideoEditor:Landroid/media/videoeditor/VideoEditor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    const-string/jumbo v0, "videoeditor_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Semaphore;Landroid/media/videoeditor/VideoEditor;)V
    .registers 7
    .parameter "projectPath"
    .parameter "lock"
    .parameter "veObj"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    .line 73
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    .line 75
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    .line 77
    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    .line 79
    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    .line 81
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    .line 114
    iput v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 116
    iput-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    .line 1780
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    .line 1781
    if-eqz p3, :cond_33

    .line 1782
    iput-object p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 1787
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    if-nez v0, :cond_27

    .line 1788
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    .line 1791
    :cond_27
    iput-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    .line 1793
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    const-string v1, "null"

    invoke-direct {p0, v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->_init(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .line 1795
    return-void

    .line 1784
    :cond_33
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 1785
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "video editor object is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native _init(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private adjustMediaItemBoundary(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;Landroid/media/videoeditor/MediaItem;)V
    .registers 8
    .parameter "clipSettings"
    .parameter "clipProperties"
    .parameter "m"

    .prologue
    const-wide/16 v2, 0x0

    .line 2587
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_62

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_62

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_62

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_62

    .line 2589
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 2590
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 2599
    :cond_44
    :goto_44
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    .line 2601
    iget v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    if-eqz v0, :cond_56

    .line 2602
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    .line 2605
    :cond_56
    iget v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    if-eqz v0, :cond_61

    .line 2606
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    .line 2608
    :cond_61
    return-void

    .line 2591
    :cond_62
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-nez v0, :cond_8a

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8a

    .line 2593
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    goto :goto_44

    .line 2594
    :cond_8a
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-nez v0, :cond_44

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_44

    .line 2596
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    goto :goto_44
.end method

.method private adjustVolume(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .registers 8
    .parameter "m"
    .parameter "clipProperties"
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 2659
    instance-of v2, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v2, :cond_27

    .line 2660
    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaVideoItem;->isMuted()Z

    move-result v1

    .line 2661
    .local v1, videoMuted:Z
    if-nez v1, :cond_1e

    .line 2662
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    check-cast p1, Landroid/media/videoeditor/MediaVideoItem;

    .end local p1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaVideoItem;->getVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    .line 2670
    .end local v1           #videoMuted:Z
    :cond_1d
    :goto_1d
    return-void

    .line 2665
    .restart local v1       #videoMuted:Z
    .restart local p1
    :cond_1e
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    goto :goto_1d

    .line 2667
    .end local v1           #videoMuted:Z
    :cond_27
    instance-of v2, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v2, :cond_1d

    .line 2668
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    goto :goto_1d
.end method

.method private checkOddSizeImage(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .registers 7
    .parameter "m"
    .parameter "clipProperties"
    .parameter "index"

    .prologue
    .line 2680
    instance-of v2, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v2, :cond_30

    .line 2681
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iget v1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 2682
    .local v1, width:I
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iget v0, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    .line 2684
    .local v0, height:I
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1a

    .line 2685
    add-int/lit8 v1, v1, -0x1

    .line 2687
    :cond_1a
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_20

    .line 2688
    add-int/lit8 v0, v0, -0x1

    .line 2690
    :cond_20
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iput v1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 2691
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iput v0, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    .line 2693
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_30
    return-void
.end method

.method private findVideoResolution(II)I
    .registers 8
    .parameter "aspectRatio"
    .parameter "height"

    .prologue
    const/16 v4, 0x2d0

    const/16 v3, 0x1e0

    .line 3542
    const/4 v2, -0x1

    .line 3543
    .local v2, retValue:I
    packed-switch p1, :pswitch_data_5a

    .line 3573
    :cond_8
    :goto_8
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c

    .line 3574
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-static {v3}, Landroid/media/videoeditor/MediaProperties;->getSupportedResolutions(I)[Landroid/util/Pair;

    move-result-object v1

    .line 3576
    .local v1, resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v0, v1, v3

    .line 3577
    .local v0, maxResolution:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v4

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    .line 3580
    .end local v0           #maxResolution:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1           #resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2c
    return v2

    .line 3545
    :pswitch_2d
    if-ne p2, v3, :cond_31

    .line 3546
    const/4 v2, 0x7

    goto :goto_8

    .line 3547
    :cond_31
    if-ne p2, v4, :cond_8

    .line 3548
    const/16 v2, 0xb

    goto :goto_8

    .line 3551
    :pswitch_36
    if-ne p2, v3, :cond_3b

    .line 3552
    const/16 v2, 0x9

    goto :goto_8

    .line 3553
    :cond_3b
    if-ne p2, v4, :cond_8

    .line 3554
    const/16 v2, 0xa

    goto :goto_8

    .line 3557
    :pswitch_40
    if-ne p2, v3, :cond_44

    .line 3558
    const/4 v2, 0x5

    goto :goto_8

    .line 3559
    :cond_44
    if-ne p2, v4, :cond_8

    .line 3560
    const/16 v2, 0xc

    goto :goto_8

    .line 3563
    :pswitch_49
    if-ne p2, v3, :cond_8

    .line 3564
    const/4 v2, 0x6

    goto :goto_8

    .line 3567
    :pswitch_4d
    const/16 v3, 0x90

    if-ne p2, v3, :cond_53

    .line 3568
    const/4 v2, 0x2

    goto :goto_8

    .line 3569
    :cond_53
    const/16 v3, 0x120

    if-ne p2, v3, :cond_8

    .line 3570
    const/4 v2, 0x4

    goto :goto_8

    .line 3543
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_36
        :pswitch_40
        :pswitch_49
        :pswitch_4d
    .end packed-switch
.end method

.method private generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .registers 9
    .parameter "transition"
    .parameter "editSettings"
    .parameter "clipPropertiesArray"
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 2621
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2622
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->generate()V

    .line 2624
    :cond_a
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    aput-object v2, v1, p4

    .line 2625
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 2626
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    iput v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 2627
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    iput v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 2628
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 2629
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    const/4 v2, 0x2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 2632
    :try_start_3b
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v2

    aput-object v2, v1, p4
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_47} :catch_88

    .line 2638
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->Id:Ljava/lang/String;

    .line 2639
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    const/16 v2, 0x64

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    .line 2640
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    .line 2641
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    if-eqz v1, :cond_74

    .line 2642
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    .line 2645
    :cond_74
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    if-eqz v1, :cond_87

    .line 2646
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    .line 2648
    :cond_87
    return-void

    .line 2634
    :catch_88
    move-exception v1

    move-object v0, v1

    .line 2635
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported file or file not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEffectColorType(Landroid/media/videoeditor/EffectColor;)I
    .registers 5
    .parameter "effect"

    .prologue
    .line 3498
    const/4 v0, -0x1

    .line 3499
    .local v0, retValue:I
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 3525
    const/4 v0, -0x1

    .line 3527
    :goto_9
    return v0

    .line 3501
    :pswitch_a
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    const v2, 0xff00

    if-ne v1, v2, :cond_16

    .line 3502
    const/16 v0, 0x103

    goto :goto_9

    .line 3503
    :cond_16
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    const v2, 0xff66cc

    if-ne v1, v2, :cond_22

    .line 3504
    const/16 v0, 0x102

    goto :goto_9

    .line 3505
    :cond_22
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    const v2, 0x7f7f7f

    if-ne v1, v2, :cond_2e

    .line 3506
    const/16 v0, 0x101

    goto :goto_9

    .line 3508
    :cond_2e
    const/16 v0, 0x10b

    .line 3510
    goto :goto_9

    .line 3512
    :pswitch_31
    const/16 v0, 0x10c

    .line 3513
    goto :goto_9

    .line 3515
    :pswitch_34
    const/16 v0, 0x104

    .line 3516
    goto :goto_9

    .line 3518
    :pswitch_37
    const/16 v0, 0x105

    .line 3519
    goto :goto_9

    .line 3521
    :pswitch_3a
    const/16 v0, 0x10a

    .line 3522
    goto :goto_9

    .line 3499
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
    .end packed-switch
.end method

.method private getTotalEffects(Ljava/util/List;)I
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2814
    .local p1, mediaItemsList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    const/4 v4, 0x0

    .line 2815
    .local v4, totalEffects:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2816
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/videoeditor/MediaItem;>;"
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2817
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    .line 2818
    .local v3, t:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    .line 2819
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    .line 2820
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2821
    .local v1, ef:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/videoeditor/Effect;>;"
    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2822
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .line 2823
    .local v0, e:Landroid/media/videoeditor/Effect;
    instance-of v5, v0, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v5, :cond_2b

    .line 2824
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    .line 2828
    .end local v0           #e:Landroid/media/videoeditor/Effect;
    .end local v1           #ef:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/videoeditor/Effect;>;"
    .end local v3           #t:Landroid/media/videoeditor/MediaItem;
    :cond_3e
    return v4
.end method

.method private getTransitionResolution(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)I
    .registers 7
    .parameter "m1"
    .parameter "m2"

    .prologue
    .line 2446
    const/4 v0, 0x0

    .line 2447
    .local v0, clip1Height:I
    const/4 v1, 0x0

    .line 2448
    .local v1, clip2Height:I
    const/4 v2, 0x0

    .line 2450
    .local v2, videoSize:I
    if-eqz p1, :cond_45

    if-eqz p2, :cond_45

    .line 2451
    instance-of v3, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_24

    .line 2452
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v0

    .line 2456
    .end local p1
    :cond_f
    :goto_f
    instance-of v3, p2, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_2f

    .line 2457
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v1

    .line 2461
    .end local p2
    :cond_17
    :goto_17
    if-le v0, v1, :cond_3a

    .line 2462
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    .line 2481
    :cond_23
    :goto_23
    return v2

    .line 2453
    .restart local p1
    .restart local p2
    :cond_24
    instance-of v3, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_f

    .line 2454
    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    .end local p1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    goto :goto_f

    .line 2458
    :cond_2f
    instance-of v3, p2, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_17

    .line 2459
    check-cast p2, Landroid/media/videoeditor/MediaImageItem;

    .end local p2
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v1

    goto :goto_17

    .line 2464
    :cond_3a
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    goto :goto_23

    .line 2466
    .restart local p1
    .restart local p2
    :cond_45
    if-nez p1, :cond_67

    if-eqz p2, :cond_67

    .line 2467
    instance-of v3, p2, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_5c

    .line 2468
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v1

    .line 2472
    .end local p2
    :cond_51
    :goto_51
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    goto :goto_23

    .line 2469
    .restart local p2
    :cond_5c
    instance-of v3, p2, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_51

    .line 2470
    check-cast p2, Landroid/media/videoeditor/MediaImageItem;

    .end local p2
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v1

    goto :goto_51

    .line 2473
    .restart local p2
    :cond_67
    if-eqz p1, :cond_23

    if-nez p2, :cond_23

    .line 2474
    instance-of v3, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_7e

    .line 2475
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v0

    .line 2479
    .end local p1
    :cond_73
    :goto_73
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    goto :goto_23

    .line 2476
    .restart local p1
    :cond_7e
    instance-of v3, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_73

    .line 2477
    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    .end local p1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    goto :goto_73
.end method

.method private static native getVersion()Landroid/media/videoeditor/MediaArtistNativeHelper$Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private lock()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 3907
    const-string v0, "MediaArtistNativeHelper"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3908
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "lock: grabbing semaphore"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3910
    :cond_15
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 3911
    const-string v0, "MediaArtistNativeHelper"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3912
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "lock: grabbed semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3914
    :cond_29
    return-void
.end method

.method private native nativeClearSurface(Landroid/view/Surface;)V
.end method

.method private native nativeGenerateAudioGraph(Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method private native nativeGenerateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeGenerateRawAudio(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetPixels(Ljava/lang/String;[IIIJ)I
.end method

.method private native nativeGetPixelsList(Ljava/lang/String;[IIIIIJJ)I
.end method

.method private native nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeRenderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;IIIIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeRenderPreviewFrame(Landroid/view/Surface;JII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeStartPreview(Landroid/view/Surface;JJIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeStopPreview()I
.end method

.method private onAudioGraphExtractProgressUpdate(IZ)V
    .registers 4
    .parameter "progress"
    .parameter "isVideo"

    .prologue
    .line 1946
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

    if-eqz v0, :cond_b

    if-lez p1, :cond_b

    .line 1947
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

    invoke-interface {v0, p1}, Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;->onProgress(I)V

    .line 1949
    :cond_b
    return-void
.end method

.method private onPreviewProgressUpdate(IZZLjava/lang/String;I)V
    .registers 11
    .parameter "progress"
    .parameter "isFinished"
    .parameter "updateOverlay"
    .parameter "filename"
    .parameter "renderingMode"

    .prologue
    .line 1904
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    if-eqz v1, :cond_30

    .line 1905
    iget-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    if-eqz v1, :cond_12

    .line 1906
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1, v2}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onStart(Landroid/media/videoeditor/VideoEditor;)V

    .line 1907
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    .line 1911
    :cond_12
    if-eqz p3, :cond_35

    .line 1912
    new-instance v0, Landroid/media/videoeditor/VideoEditor$OverlayData;

    invoke-direct {v0}, Landroid/media/videoeditor/VideoEditor$OverlayData;-><init>()V

    .line 1913
    .local v0, overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;
    if-eqz p4, :cond_31

    .line 1914
    invoke-static {p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Landroid/media/videoeditor/VideoEditor$OverlayData;->set(Landroid/graphics/Bitmap;I)V

    .line 1922
    :goto_22
    if-eqz p1, :cond_27

    .line 1923
    int-to-long v1, p1

    iput-wide v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgress:J

    .line 1926
    :cond_27
    if-eqz p2, :cond_37

    .line 1927
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1, v2}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onStop(Landroid/media/videoeditor/VideoEditor;)V

    .line 1932
    .end local v0           #overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;
    :cond_30
    :goto_30
    return-void

    .line 1916
    .restart local v0       #overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;
    :cond_31
    invoke-virtual {v0}, Landroid/media/videoeditor/VideoEditor$OverlayData;->setClear()V

    goto :goto_22

    .line 1919
    .end local v0           #overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;
    :cond_35
    const/4 v0, 0x0

    .restart local v0       #overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;
    goto :goto_22

    .line 1929
    :cond_37
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onProgress(Landroid/media/videoeditor/VideoEditor;JLandroid/media/videoeditor/VideoEditor$OverlayData;)V

    goto :goto_30
.end method

.method private onProgressUpdate(II)V
    .registers 8
    .parameter "taskId"
    .parameter "progress"

    .prologue
    const/4 v4, 0x1

    .line 1823
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1b

    .line 1824
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    if-eqz v2, :cond_1a

    .line 1825
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-ge v2, p2, :cond_1a

    .line 1826
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p2}, Landroid/media/videoeditor/VideoEditor$ExportProgressListener;->onProgress(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;I)V

    .line 1828
    iput p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 1899
    :cond_1a
    :goto_1a
    return-void

    .line 1834
    :cond_1b
    const/4 v1, 0x0

    .line 1835
    .local v1, actualProgress:I
    const/4 v0, 0x0

    .line 1837
    .local v0, action:I
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    if-ne v2, v4, :cond_42

    .line 1838
    const/4 v0, 0x2

    .line 1843
    :goto_22
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    packed-switch v2, :pswitch_data_96

    .line 1874
    :pswitch_27
    const-string v2, "MediaArtistNativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR unexpected State="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 1840
    :cond_42
    const/4 v0, 0x1

    goto :goto_22

    .line 1845
    :pswitch_44
    move v1, p2

    .line 1877
    :cond_45
    :goto_45
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eq v2, v1, :cond_58

    if-eqz v1, :cond_58

    .line 1879
    iput v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 1881
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    if-eqz v2, :cond_58

    .line 1883
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v1}, Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;->onProgress(Ljava/lang/Object;II)V

    .line 1888
    :cond_58
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-nez v2, :cond_1a

    .line 1889
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    if-eqz v2, :cond_67

    .line 1893
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v1}, Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;->onProgress(Ljava/lang/Object;II)V

    .line 1896
    :cond_67
    iput v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    goto :goto_1a

    .line 1848
    :pswitch_6a
    move v1, p2

    .line 1849
    goto :goto_45

    .line 1851
    :pswitch_6c
    move v1, p2

    .line 1852
    goto :goto_45

    .line 1854
    :pswitch_6e
    if-nez p2, :cond_77

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_77

    .line 1855
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 1857
    :cond_77
    if-nez p2, :cond_7d

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_45

    .line 1858
    :cond_7d
    div-int/lit8 v1, p2, 0x4

    goto :goto_45

    .line 1862
    :pswitch_80
    if-nez p2, :cond_86

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_45

    .line 1863
    :cond_86
    div-int/lit8 v2, p2, 0x4

    add-int/lit8 v1, v2, 0x19

    goto :goto_45

    .line 1867
    :pswitch_8b
    if-nez p2, :cond_91

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_45

    .line 1868
    :cond_91
    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v1, v2, 0x32

    goto :goto_45

    .line 1843
    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_44
        :pswitch_6a
        :pswitch_6c
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_6e
        :pswitch_80
        :pswitch_8b
    .end packed-switch
.end method

.method private populateBackgroundMusicProperties(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mediaBGMList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2740
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_15e

    .line 2741
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/AudioTrack;

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    .line 2746
    :goto_11
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    if-eqz v2, :cond_178

    .line 2747
    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;-><init>()V

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    .line 2748
    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;-><init>()V

    .line 2749
    .local v1, mAudioProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pFile:Ljava/lang/String;

    .line 2750
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->Id:Ljava/lang/String;

    .line 2752
    :try_start_2f
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v2}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_38} :catch_162

    move-result-object v1

    .line 2756
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput-boolean v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->bRemoveOriginal:Z

    .line 2757
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioChannels:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->channels:I

    .line 2758
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioSamplingFrequency:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->Fs:I

    .line 2759
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->loop:Z

    .line 2760
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ExtendedFs:I

    .line 2761
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pFile:Ljava/lang/String;

    .line 2762
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->startMs:J

    .line 2763
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->beginCutTime:J

    .line 2764
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->endCutTime:J

    .line 2765
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v2}, Landroid/media/videoeditor/AudioTrack;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_16c

    .line 2766
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->volume:I

    .line 2770
    :goto_8b
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->fileType:I

    .line 2771
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckedTrackVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ducking_lowVolume:I

    .line 2772
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckingThreshhold()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ducking_threshold:I

    .line 2773
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->bInDucking_enable:Z

    .line 2774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AudioPcm.pcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .line 2775
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pcmFilePath:Ljava/lang/String;

    .line 2777
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    invoke-direct {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;-><init>()V

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 2778
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->file:Ljava/lang/String;

    .line 2779
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->fileType:I

    .line 2780
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->insertionTime:J

    .line 2782
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->volumePercent:I

    .line 2783
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->beginLoop:J

    .line 2785
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->endLoop:J

    .line 2787
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->enableDucking:Z

    .line 2789
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckingThreshhold()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->duckingThreshold:I

    .line 2791
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckedTrackVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->lowVolume:I

    .line 2793
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->isLooping:Z

    .line 2794
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v3, 0x64

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->primaryTrackVolume:I

    .line 2795
    iput v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2796
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 2802
    .end local v1           #mAudioProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :goto_15d
    return-void

    .line 2743
    :cond_15e
    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    goto/16 :goto_11

    .line 2753
    .restart local v1       #mAudioProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :catch_162
    move-exception v2

    move-object v0, v2

    .line 2754
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported file or file not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2768
    .end local v0           #e:Ljava/lang/Exception;
    :cond_16c
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->volume:I

    goto/16 :goto_8b

    .line 2798
    .end local v1           #mAudioProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :cond_178
    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    .line 2799
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 2800
    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    goto :goto_15d
.end method

.method private populateEffects(Landroid/media/videoeditor/MediaItem;[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;IIII)I
    .registers 16
    .parameter "m"
    .parameter "effectSettings"
    .parameter "i"
    .parameter "beginCutTime"
    .parameter "endCutTime"
    .parameter "storyBoardTime"

    .prologue
    const-wide/16 v7, 0x0

    .line 2544
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_6b

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_6b

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_6b

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_6b

    .line 2546
    int-to-long v5, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int p4, v5

    .line 2547
    int-to-long v5, p5

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int p5, v5

    .line 2556
    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v1

    .line 2557
    .local v1, effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v4

    .line 2559
    .local v4, overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/Overlay;

    .line 2560
    .local v3, overlay:Landroid/media/videoeditor/Overlay;
    check-cast v3, Landroid/media/videoeditor/OverlayFrame;

    .end local v3           #overlay:Landroid/media/videoeditor/Overlay;
    invoke-virtual {p0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getOverlaySettings(Landroid/media/videoeditor/OverlayFrame;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-result-object v5

    aput-object v5, p2, p3

    .line 2561
    aget-object v5, p2, p3

    invoke-virtual {p0, v5, p4, p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V

    .line 2562
    aget-object v5, p2, p3

    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/2addr v6, p6

    iput v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2563
    add-int/lit8 p3, p3, 0x1

    goto :goto_48

    .line 2548
    .end local v1           #effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_6b
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-nez v5, :cond_8f

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_8f

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_8f

    .line 2550
    int-to-long v5, p5

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int p5, v5

    goto :goto_3c

    .line 2551
    :cond_8f
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-nez v5, :cond_3c

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_3c

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_3c

    .line 2553
    int-to-long v5, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int p4, v5

    goto :goto_3c

    .line 2566
    .restart local v1       #effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_b3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b7
    :goto_b7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_de

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .line 2567
    .local v0, effect:Landroid/media/videoeditor/Effect;
    instance-of v5, v0, Landroid/media/videoeditor/EffectColor;

    if-eqz v5, :cond_b7

    .line 2568
    check-cast v0, Landroid/media/videoeditor/EffectColor;

    .end local v0           #effect:Landroid/media/videoeditor/Effect;
    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getEffectSettings(Landroid/media/videoeditor/EffectColor;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-result-object v5

    aput-object v5, p2, p3

    .line 2569
    aget-object v5, p2, p3

    invoke-virtual {p0, v5, p4, p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V

    .line 2570
    aget-object v5, p2, p3

    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/2addr v6, p6

    iput v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2571
    add-int/lit8 p3, p3, 0x1

    goto :goto_b7

    .line 2575
    :cond_de
    return p3
.end method

.method private populateMediaItemProperties(Landroid/media/videoeditor/MediaItem;II)I
    .registers 7
    .parameter "m"
    .parameter "index"
    .parameter "maxHeight"

    .prologue
    .line 2707
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    aput-object v2, v1, p2

    .line 2708
    instance-of v1, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v1, :cond_59

    .line 2709
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaVideoItem;->getVideoClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v1

    aput-object v1, v2, p2

    .line 2711
    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v1

    if-le v1, p3, :cond_2f

    .line 2712
    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result p3

    .line 2722
    :cond_2f
    :goto_2f
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p2

    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_58

    .line 2723
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p2

    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    .end local p1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getDecodedImageFileName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    .line 2726
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p2

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v2, v2, p2

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    .line 2729
    :cond_58
    return p3

    .line 2714
    .restart local p1
    :cond_59
    instance-of v1, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v1, :cond_2f

    .line 2715
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaImageItem;->getImageClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v1

    aput-object v1, v2, p2

    .line 2717
    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v1

    if-le v1, p3, :cond_2f

    .line 2718
    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result p3

    goto :goto_2f
.end method

.method private previewFrameEditInfo(Ljava/lang/String;I)V
    .registers 3
    .parameter "filename"
    .parameter "renderingMode"

    .prologue
    .line 3132
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    .line 3133
    iput p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    .line 3134
    return-void
.end method

.method private native release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native stopEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private unlock()V
    .registers 3

    .prologue
    .line 3920
    const-string v0, "MediaArtistNativeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3921
    const-string v0, "MediaArtistNativeHelper"

    const-string/jumbo v1, "unlock: releasing semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3923
    :cond_11
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3924
    return-void
.end method


# virtual methods
.method GetClosestVideoFrameRate(I)I
    .registers 5
    .parameter "averageFrameRate"

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x5

    .line 2147
    const/16 v0, 0x19

    if-lt p1, v0, :cond_8

    move v0, v2

    .line 2162
    :goto_7
    return v0

    .line 2149
    :cond_8
    const/16 v0, 0x14

    if-lt p1, v0, :cond_e

    .line 2150
    const/4 v0, 0x6

    goto :goto_7

    .line 2151
    :cond_e
    const/16 v0, 0xf

    if-lt p1, v0, :cond_14

    move v0, v1

    .line 2152
    goto :goto_7

    .line 2153
    :cond_14
    const/16 v0, 0xc

    if-lt p1, v0, :cond_1a

    .line 2154
    const/4 v0, 0x4

    goto :goto_7

    .line 2155
    :cond_1a
    const/16 v0, 0xa

    if-lt p1, v0, :cond_20

    .line 2156
    const/4 v0, 0x3

    goto :goto_7

    .line 2157
    :cond_20
    if-lt p1, v2, :cond_24

    .line 2158
    const/4 v0, 0x2

    goto :goto_7

    .line 2159
    :cond_24
    if-lt p1, v1, :cond_28

    .line 2160
    const/4 v0, 0x1

    goto :goto_7

    .line 2162
    :cond_28
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V
    .registers 8
    .parameter "lEffect"
    .parameter "beginCutTime"
    .parameter "endCutTime"

    .prologue
    .line 2173
    const/4 v1, 0x0

    .line 2174
    .local v1, effectStartTime:I
    const/4 v0, 0x0

    .line 2199
    .local v0, effectDuration:I
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-gt v2, p3, :cond_d

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-gt v2, p2, :cond_14

    .line 2202
    :cond_d
    const/4 v1, 0x0

    .line 2203
    const/4 v0, 0x0

    .line 2205
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2206
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    .line 2252
    :cond_13
    :goto_13
    return-void

    .line 2211
    :cond_14
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-ge v2, p2, :cond_33

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-le v2, p2, :cond_33

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-gt v2, p3, :cond_33

    .line 2214
    const/4 v1, 0x0

    .line 2215
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    .line 2217
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v2, p2, v2

    sub-int/2addr v0, v2

    .line 2218
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2219
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_13

    .line 2224
    :cond_33
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-lt v2, p2, :cond_49

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-gt v2, p3, :cond_49

    .line 2226
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v1, v2, p2

    .line 2227
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2228
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_13

    .line 2233
    :cond_49
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-lt v2, p2, :cond_61

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-le v2, p3, :cond_61

    .line 2235
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v1, v2, p2

    .line 2236
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v0, p3, v2

    .line 2237
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2238
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_13

    .line 2243
    :cond_61
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-ge v2, p2, :cond_13

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-le v2, p3, :cond_13

    .line 2245
    const/4 v1, 0x0

    .line 2246
    sub-int v0, p3, p2

    .line 2247
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2248
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_13
.end method

.method clearPreviewSurface(Landroid/view/Surface;)V
    .registers 2
    .parameter "surface"

    .prologue
    .line 3898
    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeClearSurface(Landroid/view/Surface;)V

    .line 3899
    return-void
.end method

.method doPreview(Landroid/view/Surface;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
    .registers 21
    .parameter "surface"
    .parameter "fromMs"
    .parameter "toMs"
    .parameter "loop"
    .parameter "callbackAfterFrameCount"
    .parameter "listener"

    .prologue
    .line 3033
    iput-wide p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgress:J

    .line 3034
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    .line 3035
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    .line 3037
    iget-boolean v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    if-nez v2, :cond_68

    .line 3040
    const/4 v10, 0x0

    .local v10, clipCnt:I
    :goto_f
    :try_start_f
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length v2, v2

    if-ge v10, v2, :cond_34

    .line 3042
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v2, v2, v10

    iget v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_31

    .line 3043
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v2, v2, v10

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v3, v3, v10

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 3041
    :cond_31
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 3047
    :cond_34
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {p0, v2, v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p7

    move/from16 v9, p6

    .line 3048
    invoke-direct/range {v2 .. v9}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeStartPreview(Landroid/view/Surface;JJIZ)V
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_49} :catch_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_49} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_49} :catch_5e

    .line 3062
    return-void

    .line 3049
    :catch_4a
    move-exception v2

    move-object v11, v2

    .line 3050
    .local v11, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Illegal argument exception in nativeStartPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    throw v11

    .line 3052
    .end local v11           #ex:Ljava/lang/IllegalArgumentException;
    :catch_54
    move-exception v2

    move-object v11, v2

    .line 3053
    .local v11, ex:Ljava/lang/IllegalStateException;
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Illegal state exception in nativeStartPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    throw v11

    .line 3055
    .end local v11           #ex:Ljava/lang/IllegalStateException;
    :catch_5e
    move-exception v2

    move-object v11, v2

    .line 3056
    .local v11, ex:Ljava/lang/RuntimeException;
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Runtime exception in nativeStartPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    throw v11

    .line 3060
    .end local v10           #clipCnt:I
    .end local v11           #ex:Ljava/lang/RuntimeException;
    :cond_68
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "generatePreview is in progress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method export(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .registers 23
    .parameter "filePath"
    .parameter "projectDir"
    .parameter "height"
    .parameter "bitrate"
    .parameter
    .parameter
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;",
            "Landroid/media/videoeditor/VideoEditor$ExportProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3600
    .local p5, mediaItemsList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p6, mediaTransitionList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Transition;>;"
    .local p7, mediaBGMList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    const/4 v10, 0x0

    .line 3601
    .local v10, outBitrate:I
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    .line 3602
    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V

    .line 3603
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    .line 3605
    const/4 v11, 0x0

    iput v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 3607
    sparse-switch p4, :sswitch_data_154

    .line 3650
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Argument Bitrate incorrect"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3609
    :sswitch_22
    const/16 v10, 0x7d00

    .line 3652
    :goto_24
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v12, 0x7

    iput v12, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 3653
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    iput-object p1, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    .line 3655
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v11}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v5

    .line 3656
    .local v5, aspectRatio:I
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object v0, p0

    move v1, v5

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v12

    iput v12, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 3657
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v12, 0x4

    iput v12, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 3658
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v12, 0x2

    iput v12, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 3659
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v12, 0x7d00

    iput v12, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 3660
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v12, 0x0

    iput v12, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->maxFileSize:I

    .line 3661
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v12, 0x2

    iput v12, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 3662
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v10, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 3663
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const v12, 0x17700

    iput v12, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 3665
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v12, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    new-array v12, v12, [Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    iput-object v12, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 3666
    const/4 v9, 0x0

    .local v9, index:I
    :goto_71
    iget v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ge v9, v11, :cond_d0

    .line 3667
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v11, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    new-instance v12, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    invoke-direct {v12}, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;-><init>()V

    aput-object v12, v11, v9

    .line 3668
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v11, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    aget-object v11, v11, v9

    const/4 v12, 0x0

    iput v12, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->videoTransitionType:I

    .line 3670
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v11, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    aget-object v11, v11, v9

    const/4 v12, 0x0

    iput v12, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->audioTransitionType:I

    .line 3666
    add-int/lit8 v9, v9, 0x1

    goto :goto_71

    .line 3612
    .end local v5           #aspectRatio:I
    .end local v9           #index:I
    :sswitch_97
    const v10, 0xbb80

    .line 3613
    goto :goto_24

    .line 3615
    :sswitch_9b
    const v10, 0xfa00

    .line 3616
    goto :goto_24

    .line 3618
    :sswitch_9f
    const v10, 0x17700

    .line 3619
    goto :goto_24

    .line 3621
    :sswitch_a3
    const v10, 0x1f400

    .line 3622
    goto/16 :goto_24

    .line 3624
    :sswitch_a8
    const v10, 0x2ee00

    .line 3625
    goto/16 :goto_24

    .line 3627
    :sswitch_ad
    const v10, 0x3e800

    .line 3628
    goto/16 :goto_24

    .line 3630
    :sswitch_b2
    const v10, 0x5dc00

    .line 3631
    goto/16 :goto_24

    .line 3633
    :sswitch_b7
    const v10, 0x7d000

    .line 3634
    goto/16 :goto_24

    .line 3636
    :sswitch_bc
    const v10, 0xc3500

    .line 3637
    goto/16 :goto_24

    .line 3639
    :sswitch_c1
    const v10, 0x1e8480

    .line 3640
    goto/16 :goto_24

    .line 3643
    :sswitch_c6
    const v10, 0x4c4b40

    .line 3644
    goto/16 :goto_24

    .line 3646
    :sswitch_cb
    const v10, 0x7a1200

    .line 3647
    goto/16 :goto_24

    .line 3674
    .restart local v5       #aspectRatio:I
    .restart local v9       #index:I
    :cond_d0
    const/4 v6, 0x0

    .local v6, clipCnt:I
    :goto_d1
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v11, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length v11, v11

    if-ge v6, v11, :cond_f6

    .line 3675
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v11, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v11, v11, v6

    iget v11, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_f3

    .line 3676
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v11, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v11, v11, v6

    iget-object v12, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v12, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v12, v12, v6

    iget-object v12, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    iput-object v12, v11, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 3674
    :cond_f3
    add-int/lit8 v6, v6, 0x1

    goto :goto_d1

    .line 3680
    :cond_f6
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v12, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v13, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {p0, v11, v12, v13}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    .line 3682
    const/4 v7, 0x0

    .line 3684
    .local v7, err:I
    const/16 v11, 0x14

    :try_start_102
    iput v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 3685
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 3686
    iget-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-virtual {p0, v11}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v7

    .line 3687
    const/4 v11, 0x0

    iput v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I
    :try_end_110
    .catch Ljava/lang/IllegalArgumentException; {:try_start_102 .. :try_end_110} :catch_132
    .catch Ljava/lang/IllegalStateException; {:try_start_102 .. :try_end_110} :catch_13c
    .catch Ljava/lang/RuntimeException; {:try_start_102 .. :try_end_110} :catch_146

    .line 3699
    if-eqz v7, :cond_150

    .line 3700
    const-string v11, "MediaArtistNativeHelper"

    const-string v12, "RuntimeException for generateClip"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generateClip failed with error="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3688
    :catch_132
    move-exception v11

    move-object v8, v11

    .line 3689
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    const-string v11, "MediaArtistNativeHelper"

    const-string v12, "IllegalArgument for generateClip"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    throw v8

    .line 3691
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    :catch_13c
    move-exception v11

    move-object v8, v11

    .line 3692
    .local v8, ex:Ljava/lang/IllegalStateException;
    const-string v11, "MediaArtistNativeHelper"

    const-string v12, "IllegalStateExceptiont for generateClip"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    throw v8

    .line 3694
    .end local v8           #ex:Ljava/lang/IllegalStateException;
    :catch_146
    move-exception v11

    move-object v8, v11

    .line 3695
    .local v8, ex:Ljava/lang/RuntimeException;
    const-string v11, "MediaArtistNativeHelper"

    const-string v12, "RuntimeException for generateClip"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    throw v8

    .line 3704
    .end local v8           #ex:Ljava/lang/RuntimeException;
    :cond_150
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    .line 3705
    return-void

    .line 3607
    :sswitch_data_154
    .sparse-switch
        0x6d60 -> :sswitch_22
        0x9c40 -> :sswitch_97
        0xfa00 -> :sswitch_9b
        0x17700 -> :sswitch_9f
        0x1f400 -> :sswitch_a3
        0x2ee00 -> :sswitch_a8
        0x3e800 -> :sswitch_ad
        0x5dc00 -> :sswitch_b2
        0x7d000 -> :sswitch_b7
        0xc3500 -> :sswitch_bc
        0x1e8480 -> :sswitch_c1
        0x4c4b40 -> :sswitch_c6
        0x7a1200 -> :sswitch_cb
    .end sparse-switch
.end method

.method generateAudioGraph(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/media/videoeditor/ExtractAudioWaveformProgressListener;Z)V
    .registers 15
    .parameter "uniqueId"
    .parameter "inFileName"
    .parameter "OutAudiGraphFileName"
    .parameter "frameDuration"
    .parameter "audioChannels"
    .parameter "samplesCount"
    .parameter "listener"
    .parameter "isVideo"

    .prologue
    .line 3867
    iput-object p7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

    .line 3873
    if-eqz p8, :cond_42

    .line 3874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".pcm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3882
    .local v1, tempPCMFileName:Ljava/lang/String;
    :goto_2a
    if-eqz p8, :cond_2f

    .line 3883
    invoke-direct {p0, p2, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateRawAudio(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 3886
    invoke-direct/range {v0 .. v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateAudioGraph(Ljava/lang/String;Ljava/lang/String;III)I

    .line 3892
    if-eqz p8, :cond_41

    .line 3893
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3895
    :cond_41
    return-void

    .line 3876
    .end local v1           #tempPCMFileName:Ljava/lang/String;
    :cond_42
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .restart local v1       #tempPCMFileName:Ljava/lang/String;
    goto :goto_2a
.end method

.method public generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    .registers 7
    .parameter "editSettings"

    .prologue
    const/4 v4, -0x1

    .line 2263
    const/4 v0, 0x0

    .line 2266
    .local v0, err:I
    :try_start_2
    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_5} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_1c

    move-result v0

    move v2, v0

    .line 2277
    :goto_7
    return v2

    .line 2267
    :catch_8
    move-exception v1

    .line 2268
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Illegal Argument exception in load settings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 2269
    goto :goto_7

    .line 2270
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_12
    move-exception v1

    .line 2271
    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Illegal state exception in load settings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 2272
    goto :goto_7

    .line 2273
    .end local v1           #ex:Ljava/lang/IllegalStateException;
    :catch_1c
    move-exception v1

    .line 2274
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Runtime exception in load settings"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 2275
    goto :goto_7
.end method

.method generateEffectClip(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Ljava/lang/String;I)Ljava/lang/String;
    .registers 14
    .parameter "lMediaItem"
    .parameter "lclipSettings"
    .parameter "e"
    .parameter "uniqueId"
    .parameter "clipNo"

    .prologue
    .line 2321
    const/4 v3, 0x0

    .line 2322
    .local v3, err:I
    const/4 v2, 0x0

    .line 2323
    .local v2, editSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    const/4 v1, 0x0

    .line 2325
    .local v1, EffectClipPath:Ljava/lang/String;
    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    .end local v2           #editSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    .line 2327
    .restart local v2       #editSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iput-object v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 2328
    iget-object v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    .line 2330
    const/4 v6, 0x0

    iput-object v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 2331
    const/4 v6, 0x0

    iput-object v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 2332
    iget-object v6, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 2334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ClipEffectIntermediate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".3gp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2337
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2338
    .local v5, tmpFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 2339
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2342
    :cond_64
    instance-of v6, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v6, :cond_b0

    .line 2343
    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v4, v0

    .line 2345
    .local v4, m:Landroid/media/videoeditor/MediaVideoItem;
    const/4 v6, 0x2

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2346
    const/4 v6, 0x2

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 2347
    const v6, 0xfa00

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2348
    const/16 v6, 0x7d00

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2350
    const v6, 0x4c4b40

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 2352
    const/4 v6, 0x4

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 2353
    const/4 v6, 0x7

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 2354
    iget-object v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v6

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v7

    invoke-direct {p0, v6, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v6

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2370
    .end local v4           #m:Landroid/media/videoeditor/MediaVideoItem;
    :goto_96
    iput-object v1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    .line 2372
    const/4 v6, 0x1

    if-ne p5, v6, :cond_df

    .line 2373
    const/16 v6, 0xb

    iput v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2377
    :cond_9f
    :goto_9f
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 2378
    invoke-virtual {p0, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v3

    .line 2379
    const/4 v6, 0x0

    iput v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2381
    if-nez v3, :cond_e7

    .line 2382
    iput-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 2383
    const/4 v6, 0x0

    iput v6, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 2384
    return-object v1

    .line 2357
    :cond_b0
    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v4, v0

    .line 2358
    .local v4, m:Landroid/media/videoeditor/MediaImageItem;
    const v6, 0xfa00

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2359
    const/4 v6, 0x2

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 2360
    const/4 v6, 0x2

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2361
    const/16 v6, 0x7d00

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2363
    const v6, 0x4c4b40

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 2364
    const/4 v6, 0x4

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 2365
    const/4 v6, 0x7

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 2366
    iget-object v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v6

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v7

    invoke-direct {p0, v6, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v6

    iput v6, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    goto :goto_96

    .line 2374
    .end local v4           #m:Landroid/media/videoeditor/MediaImageItem;
    :cond_df
    const/4 v6, 0x2

    if-ne p5, v6, :cond_9f

    .line 2375
    const/16 v6, 0xc

    iput v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    goto :goto_9f

    .line 2386
    :cond_e7
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "preview generation cannot be completed"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method generateKenBurnsClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaImageItem;)Ljava/lang/String;
    .registers 10
    .parameter "e"
    .parameter "m"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2401
    const/4 v1, 0x0

    .line 2402
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2404
    .local v0, err:I
    iput-object v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 2405
    iput-object v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 2406
    iput-object v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 2407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ImageClip-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2409
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2410
    .local v2, tmpFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 2411
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2414
    :cond_48
    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    .line 2415
    const v3, 0xfa00

    iput v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2416
    iput v6, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 2417
    iput v6, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2418
    const/16 v3, 0x7d00

    iput v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2420
    const v3, 0x4c4b40

    iput v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 2421
    const/4 v3, 0x4

    iput v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 2422
    const/4 v3, 0x7

    iput v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 2423
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v3

    iput v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2425
    const/4 v3, 0x3

    iput v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2426
    iput-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 2427
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v0

    .line 2429
    iput v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2430
    if-eqz v0, :cond_88

    .line 2431
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "preview generation cannot be completed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2433
    :cond_88
    return-object v1
.end method

.method generateTransitionClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/Transition;)Ljava/lang/String;
    .registers 12
    .parameter "e"
    .parameter "uniqueId"
    .parameter "m1"
    .parameter "m2"
    .parameter "t"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2498
    const/4 v1, 0x0

    .line 2499
    .local v1, outputFilename:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2501
    .local v0, err:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".3gp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2502
    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    .line 2503
    const v2, 0xfa00

    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2504
    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 2505
    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2506
    const/16 v2, 0x7d00

    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2508
    const v2, 0x4c4b40

    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 2509
    const/4 v2, 0x4

    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 2510
    const/4 v2, 0x7

    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 2511
    invoke-direct {p0, p3, p4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getTransitionResolution(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)I

    move-result v2

    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2513
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 2514
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2516
    :cond_5c
    const/16 v2, 0xd

    iput v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2517
    iput-object p5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 2518
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v0

    .line 2520
    iput v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2521
    if-eqz v0, :cond_73

    .line 2522
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "preview generation cannot be completed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2524
    :cond_73
    return-object v1
.end method

.method getAspectRatio(II)I
    .registers 11
    .parameter "w"
    .parameter "h"

    .prologue
    .line 3206
    int-to-double v4, p1

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 3207
    .local v0, apRatio:D
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 3208
    .local v2, bd:Ljava/math/BigDecimal;
    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3209
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 3210
    const/4 v3, 0x2

    .line 3211
    .local v3, var:I
    const-wide v4, 0x3ffb333333333333L

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1f

    .line 3212
    const/4 v3, 0x2

    .line 3222
    :cond_1e
    :goto_1e
    return v3

    .line 3213
    :cond_1f
    const-wide v4, 0x3ff999999999999aL

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_2a

    .line 3214
    const/4 v3, 0x4

    goto :goto_1e

    .line 3215
    :cond_2a
    const-wide/high16 v4, 0x3ff8

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_32

    .line 3216
    const/4 v3, 0x1

    goto :goto_1e

    .line 3217
    :cond_32
    const-wide v4, 0x3ff4cccccccccccdL

    cmpl-double v4, v0, v4

    if-lez v4, :cond_3d

    .line 3218
    const/4 v3, 0x3

    goto :goto_1e

    .line 3219
    :cond_3d
    const-wide v4, 0x3ff3333333333333L

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1e

    .line 3220
    const/4 v3, 0x5

    goto :goto_1e
.end method

.method getAudioCodecType(I)I
    .registers 3
    .parameter "codecType"

    .prologue
    .line 3301
    const/4 v0, -0x1

    .line 3302
    .local v0, retValue:I
    packed-switch p1, :pswitch_data_c

    .line 3314
    :pswitch_4
    const/4 v0, -0x1

    .line 3316
    :goto_5
    return v0

    .line 3304
    :pswitch_6
    const/4 v0, 0x1

    .line 3305
    goto :goto_5

    .line 3307
    :pswitch_8
    const/4 v0, 0x2

    .line 3308
    goto :goto_5

    .line 3310
    :pswitch_a
    const/4 v0, 0x5

    .line 3311
    goto :goto_5

    .line 3302
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method

.method getAudioflag()Z
    .registers 2

    .prologue
    .line 2136
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    return v0
.end method

.method getEffectSettings(Landroid/media/videoeditor/EffectColor;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    .registers 7
    .parameter "effects"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1959
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;-><init>()V

    .line 1960
    .local v0, effectSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getStartTime()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 1961
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    .line 1962
    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getEffectColorType(Landroid/media/videoeditor/EffectColor;)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    .line 1963
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->audioEffectType:I

    .line 1964
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startPercent:I

    .line 1965
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->durationPercent:I

    .line 1966
    iput-object v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    .line 1967
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftX:I

    .line 1968
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftY:I

    .line 1969
    iput-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingResize:Z

    .line 1970
    iput-object v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->text:Ljava/lang/String;

    .line 1971
    iput-object v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textRenderingData:Ljava/lang/String;

    .line 1972
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferWidth:I

    .line 1973
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferHeight:I

    .line 1974
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_59

    .line 1975
    const/16 v1, 0xf

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    .line 1980
    :goto_3c
    iget v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    const/16 v2, 0x10b

    if-eq v1, v2, :cond_48

    iget v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    const/16 v2, 0x10c

    if-ne v1, v2, :cond_4e

    .line 1982
    :cond_48
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->rgb16InputColor:I

    .line 1985
    :cond_4e
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingStartPercent:I

    .line 1986
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingMiddlePercent:I

    .line 1987
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingEndPercent:I

    .line 1988
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeInTimePercent:I

    .line 1989
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeOutTimePercent:I

    .line 1990
    return-object v0

    .line 1977
    :cond_59
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    goto :goto_3c
.end method

.method getFileType(I)I
    .registers 3
    .parameter "fileType"

    .prologue
    .line 3234
    const/4 v0, -0x1

    .line 3235
    .local v0, retValue:I
    sparse-switch p1, :sswitch_data_18

    .line 3259
    const/4 v0, -0x1

    .line 3261
    :goto_5
    return v0

    .line 3237
    :sswitch_6
    const/16 v0, 0xff

    .line 3238
    goto :goto_5

    .line 3240
    :sswitch_9
    const/4 v0, 0x0

    .line 3241
    goto :goto_5

    .line 3243
    :sswitch_b
    const/4 v0, 0x1

    .line 3244
    goto :goto_5

    .line 3246
    :sswitch_d
    const/4 v0, 0x5

    .line 3247
    goto :goto_5

    .line 3249
    :sswitch_f
    const/16 v0, 0x8

    .line 3250
    goto :goto_5

    .line 3252
    :sswitch_12
    const/4 v0, 0x3

    .line 3253
    goto :goto_5

    .line 3255
    :sswitch_14
    const/16 v0, 0xa

    .line 3256
    goto :goto_5

    .line 3235
    nop

    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_b
        0x3 -> :sswitch_12
        0x5 -> :sswitch_d
        0x8 -> :sswitch_f
        0xa -> :sswitch_14
        0xff -> :sswitch_6
    .end sparse-switch
.end method

.method getFrameRate(I)I
    .registers 3
    .parameter "fps"

    .prologue
    .line 3327
    const/4 v0, -0x1

    .line 3328
    .local v0, retValue:I
    packed-switch p1, :pswitch_data_1e

    .line 3355
    const/4 v0, -0x1

    .line 3357
    :goto_5
    return v0

    .line 3330
    :pswitch_6
    const/4 v0, 0x5

    .line 3331
    goto :goto_5

    .line 3333
    :pswitch_8
    const/16 v0, 0x8

    .line 3334
    goto :goto_5

    .line 3336
    :pswitch_b
    const/16 v0, 0xa

    .line 3337
    goto :goto_5

    .line 3339
    :pswitch_e
    const/16 v0, 0xd

    .line 3340
    goto :goto_5

    .line 3342
    :pswitch_11
    const/16 v0, 0xf

    .line 3343
    goto :goto_5

    .line 3345
    :pswitch_14
    const/16 v0, 0x14

    .line 3346
    goto :goto_5

    .line 3348
    :pswitch_17
    const/16 v0, 0x19

    .line 3349
    goto :goto_5

    .line 3351
    :pswitch_1a
    const/16 v0, 0x1e

    .line 3352
    goto :goto_5

    .line 3328
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method getGeneratePreview()Z
    .registers 2

    .prologue
    .line 3194
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    return v0
.end method

.method getMediaItemFileType(I)I
    .registers 3
    .parameter "fileType"

    .prologue
    .line 3369
    const/4 v0, -0x1

    .line 3371
    .local v0, retValue:I
    sparse-switch p1, :sswitch_data_16

    .line 3392
    const/4 v0, -0x1

    .line 3394
    :goto_5
    return v0

    .line 3373
    :sswitch_6
    const/16 v0, 0xff

    .line 3374
    goto :goto_5

    .line 3376
    :sswitch_9
    const/4 v0, 0x0

    .line 3377
    goto :goto_5

    .line 3379
    :sswitch_b
    const/4 v0, 0x1

    .line 3380
    goto :goto_5

    .line 3382
    :sswitch_d
    const/4 v0, 0x5

    .line 3383
    goto :goto_5

    .line 3385
    :sswitch_f
    const/16 v0, 0x8

    .line 3386
    goto :goto_5

    .line 3388
    :sswitch_12
    const/16 v0, 0xa

    .line 3389
    goto :goto_5

    .line 3371
    nop

    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_b
        0x5 -> :sswitch_d
        0x8 -> :sswitch_f
        0xa -> :sswitch_12
        0xff -> :sswitch_6
    .end sparse-switch
.end method

.method getMediaItemRenderingMode(I)I
    .registers 3
    .parameter "renderingMode"

    .prologue
    .line 3407
    const/4 v0, -0x1

    .line 3408
    .local v0, retValue:I
    packed-switch p1, :pswitch_data_c

    .line 3420
    const/4 v0, -0x1

    .line 3422
    :goto_5
    return v0

    .line 3410
    :pswitch_6
    const/4 v0, 0x2

    .line 3411
    goto :goto_5

    .line 3413
    :pswitch_8
    const/4 v0, 0x0

    .line 3414
    goto :goto_5

    .line 3416
    :pswitch_a
    const/4 v0, 0x1

    .line 3417
    goto :goto_5

    .line 3408
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method native getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method getOverlaySettings(Landroid/media/videoeditor/OverlayFrame;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    .registers 21
    .parameter "overlay"

    .prologue
    .line 2001
    new-instance v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-direct {v14}, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;-><init>()V

    .line 2002
    .local v14, effectSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    const/4 v3, 0x0

    .line 2004
    .local v3, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getStartTime()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2005
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getDuration()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    .line 2006
    const/16 v4, 0x106

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    .line 2007
    const/4 v4, 0x0

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->audioEffectType:I

    .line 2008
    const/4 v4, 0x0

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startPercent:I

    .line 2009
    const/4 v4, 0x0

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->durationPercent:I

    .line 2010
    const/4 v4, 0x0

    iput-object v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    .line 2012
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_107

    .line 2013
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    .line 2015
    iget-object v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    if-nez v4, :cond_45

    .line 2017
    :try_start_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/OverlayFrame;->save(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3f} :catch_97

    .line 2021
    :goto_3f
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    .line 2023
    :cond_45
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_a1

    .line 2024
    const/4 v4, 0x6

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    .line 2032
    :cond_50
    :goto_50
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    .line 2033
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    .line 2034
    iget v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    new-array v4, v4, [I

    iput-object v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    .line 2035
    const/4 v8, 0x0

    .line 2036
    .local v8, tmp:I
    const/16 v16, 0x0

    .line 2037
    .local v16, maxAlpha:S
    const/16 v18, 0xff

    .line 2038
    .local v18, minAlpha:S
    const/4 v11, 0x0

    .line 2039
    .local v11, alpha:S
    :goto_68
    iget v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    if-ge v8, v4, :cond_cc

    .line 2040
    iget-object v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    const/4 v5, 0x0

    iget v6, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    const/4 v7, 0x0

    iget v9, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 2043
    const/4 v15, 0x0

    .local v15, i:I
    :goto_79
    iget v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    if-ge v15, v4, :cond_c9

    .line 2044
    iget-object v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    aget v4, v4, v15

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-short v11, v4

    .line 2045
    move v0, v11

    move/from16 v1, v16

    if-le v0, v1, :cond_8d

    .line 2046
    move/from16 v16, v11

    .line 2048
    :cond_8d
    move v0, v11

    move/from16 v1, v18

    if-ge v0, v1, :cond_94

    .line 2049
    move/from16 v18, v11

    .line 2043
    :cond_94
    add-int/lit8 v15, v15, 0x1

    goto :goto_79

    .line 2018
    .end local v8           #tmp:I
    .end local v11           #alpha:S
    .end local v15           #i:I
    .end local v16           #maxAlpha:S
    .end local v18           #minAlpha:S
    :catch_97
    move-exception v4

    move-object v13, v4

    .line 2019
    .local v13, e:Ljava/io/IOException;
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "getOverlaySettings : File not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 2025
    .end local v13           #e:Ljava/io/IOException;
    :cond_a1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_ad

    .line 2026
    const/4 v4, 0x5

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    goto :goto_50

    .line 2027
    :cond_ad
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_b9

    .line 2028
    const/4 v4, 0x4

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    goto :goto_50

    .line 2029
    :cond_b9
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_50

    .line 2030
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Bitmap config not supported"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2052
    .restart local v8       #tmp:I
    .restart local v11       #alpha:S
    .restart local v15       #i:I
    .restart local v16       #maxAlpha:S
    .restart local v18       #minAlpha:S
    :cond_c9
    add-int/lit8 v8, v8, 0x1

    goto :goto_68

    .line 2054
    .end local v15           #i:I
    :cond_cc
    add-int v4, v16, v18

    div-int/lit8 v4, v4, 0x2

    int-to-short v11, v4

    .line 2055
    mul-int/lit8 v4, v11, 0x64

    div-int/lit16 v4, v4, 0x100

    int-to-short v11, v4

    .line 2056
    iput v11, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingEndPercent:I

    .line 2057
    iput v11, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingMiddlePercent:I

    .line 2058
    iput v11, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingStartPercent:I

    .line 2059
    const/16 v4, 0x64

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeInTimePercent:I

    .line 2060
    const/16 v4, 0x64

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeOutTimePercent:I

    .line 2061
    const/4 v4, 0x0

    iput-object v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    .line 2066
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeWidth()I

    move-result v4

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    .line 2067
    iget v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    if-nez v4, :cond_f7

    .line 2068
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    .line 2071
    :cond_f7
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeHeight()I

    move-result v4

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    .line 2072
    iget v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    if-nez v4, :cond_107

    .line 2073
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    .line 2078
    .end local v8           #tmp:I
    .end local v11           #alpha:S
    .end local v16           #maxAlpha:S
    .end local v18           #minAlpha:S
    :cond_107
    const/4 v4, 0x0

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftX:I

    .line 2079
    const/4 v4, 0x0

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftY:I

    .line 2081
    const/4 v4, 0x1

    iput-boolean v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingResize:Z

    .line 2082
    const/4 v4, 0x0

    iput-object v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->text:Ljava/lang/String;

    .line 2083
    const/4 v4, 0x0

    iput-object v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textRenderingData:Ljava/lang/String;

    .line 2084
    const/4 v4, 0x0

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferWidth:I

    .line 2085
    const/4 v4, 0x0

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferHeight:I

    .line 2086
    const/4 v4, 0x0

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    .line 2087
    const/4 v4, 0x0

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->rgb16InputColor:I

    .line 2090
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v4

    instance-of v4, v4, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v4, :cond_172

    .line 2091
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15f

    .line 2093
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedClipHeight()I

    move-result v17

    .line 2094
    .local v17, mediaItemHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedClipWidth()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v12

    .line 2106
    .local v12, aspectRatio:I
    :goto_153
    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v4

    iput v4, v14, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingScaledSize:I

    .line 2107
    return-object v14

    .line 2099
    .end local v12           #aspectRatio:I
    .end local v17           #mediaItemHeight:I
    .restart local p1
    :cond_15f
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v17

    .line 2100
    .restart local v17       #mediaItemHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v12

    .restart local v12       #aspectRatio:I
    goto :goto_153

    .line 2103
    .end local v12           #aspectRatio:I
    .end local v17           #mediaItemHeight:I
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    :cond_172
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v12

    .line 2104
    .restart local v12       #aspectRatio:I
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v17

    .restart local v17       #mediaItemHeight:I
    goto :goto_153
.end method

.method getPixels(Ljava/lang/String;IIJ)Landroid/graphics/Bitmap;
    .registers 17
    .parameter "inputFile"
    .parameter "width"
    .parameter "height"
    .parameter "timeMS"

    .prologue
    .line 3735
    if-nez p1, :cond_a

    .line 3736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid input file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3740
    :cond_a
    add-int/lit8 v0, p2, 0x1

    and-int/lit8 v3, v0, -0x2

    .line 3741
    .local v3, newWidth:I
    add-int/lit8 v0, p3, 0x1

    and-int/lit8 v4, v0, -0x2

    .line 3744
    .local v4, newHeight:I
    const/4 v10, 0x0

    .line 3745
    .local v10, tempBitmap:Landroid/graphics/Bitmap;
    if-ne v3, p2, :cond_17

    if-eq v4, p3, :cond_1d

    .line 3746
    :cond_17
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 3749
    :cond_1d
    mul-int v0, v3, v4

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v9

    .line 3750
    .local v9, rgb888:Ljava/nio/IntBuffer;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3751
    .local v7, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGetPixels(Ljava/lang/String;[IIIJ)I

    .line 3753
    if-ne v3, p2, :cond_42

    if-ne v4, p3, :cond_42

    .line 3754
    invoke-virtual {v7, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3765
    .end local v3           #newWidth:I
    :goto_3c
    if-eqz v10, :cond_41

    .line 3766
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 3769
    :cond_41
    return-object v7

    .line 3757
    .restart local v3       #newWidth:I
    :cond_42
    invoke-virtual {v10, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3760
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3761
    .local v8, canvas:Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v3           #newWidth:I
    sget-object v2, Landroid/media/videoeditor/MediaArtistNativeHelper;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3c
.end method

.method getPixelsList(Ljava/lang/String;IIJJI)[Landroid/graphics/Bitmap;
    .registers 33
    .parameter "filename"
    .parameter "width"
    .parameter "height"
    .parameter "startMs"
    .parameter "endMs"
    .parameter "thumbnailCount"

    .prologue
    .line 3788
    const/4 v7, 0x0

    .line 3789
    .local v7, rgb888:[I
    const/16 v22, 0x0

    .line 3790
    .local v22, thumbnailSize:I
    const/16 v21, 0x0

    .line 3793
    .local v21, tempBitmap:Landroid/graphics/Bitmap;
    add-int/lit8 v5, p2, 0x1

    and-int/lit8 v8, v5, -0x2

    .line 3794
    .local v8, newWidth:I
    add-int/lit8 v5, p3, 0x1

    and-int/lit8 v9, v5, -0x2

    .line 3795
    .local v9, newHeight:I
    mul-int v5, v8, v9

    mul-int/lit8 v22, v5, 0x4

    .line 3798
    move v0, v8

    move/from16 v1, p2

    if-ne v0, v1, :cond_1b

    move v0, v9

    move/from16 v1, p3

    if-eq v0, v1, :cond_21

    .line 3799
    :cond_1b
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 3801
    :cond_21
    const/16 v20, 0x0

    .line 3802
    .local v20, i:I
    sub-long v5, p6, p4

    long-to-int v5, v5

    div-int v10, v5, p8

    .line 3803
    .local v10, deltaTime:I
    const/16 v16, 0x0

    .line 3807
    .local v16, bitmaps:[Landroid/graphics/Bitmap;
    mul-int v5, v22, p8

    :try_start_2c
    new-array v7, v5, [I

    .line 3808
    move/from16 v0, p8

    new-array v0, v0, [Landroid/graphics/Bitmap;

    move-object/from16 v16, v0
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_34} :catch_7b

    .line 3820
    :goto_34
    invoke-static/range {v22 .. v22}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v23

    .local v23, tmpBuffer:Ljava/nio/IntBuffer;
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v11, p8

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    .line 3821
    invoke-direct/range {v5 .. v15}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGetPixelsList(Ljava/lang/String;[IIIIIJJ)I

    .line 3824
    .end local v10           #deltaTime:I
    :goto_45
    move/from16 v0, v20

    move/from16 v1, p8

    if-ge v0, v1, :cond_de

    .line 3825
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v16, v20

    .line 3826
    mul-int v5, v20, v22

    move-object/from16 v0, v23

    move-object v1, v7

    move v2, v5

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 3827
    invoke-virtual/range {v23 .. v23}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 3829
    move v0, v8

    move/from16 v1, p2

    if-ne v0, v1, :cond_ab

    move v0, v9

    move/from16 v1, p3

    if-ne v0, v1, :cond_ab

    .line 3830
    aget-object v5, v16, v20

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3824
    :goto_78
    add-int/lit8 v20, v20, 0x1

    goto :goto_45

    .line 3809
    .end local v23           #tmpBuffer:Ljava/nio/IntBuffer;
    .restart local v10       #deltaTime:I
    :catch_7b
    move-exception v5

    move-object/from16 v18, v5

    .line 3812
    .local v18, e:Ljava/lang/Throwable;
    mul-int/lit8 v5, v22, 0x8

    :try_start_80
    new-array v7, v5, [I

    .line 3813
    const/16 v5, 0x8

    move v0, v5

    new-array v0, v0, [Landroid/graphics/Bitmap;

    move-object/from16 v16, v0
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_89} :catch_8c

    .line 3814
    const/16 p8, 0x8

    goto :goto_34

    .line 3815
    :catch_8c
    move-exception v5

    move-object/from16 v19, v5

    .line 3816
    .local v19, ex:Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Memory allocation fails, thumbnail count too large: "

    .end local v7           #rgb888:[I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3833
    .end local v10           #deltaTime:I
    .end local v18           #e:Ljava/lang/Throwable;
    .end local v19           #ex:Ljava/lang/Throwable;
    .restart local v7       #rgb888:[I
    .restart local v23       #tmpBuffer:Ljava/nio/IntBuffer;
    :cond_ab
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3836
    new-instance v17, Landroid/graphics/Canvas;

    aget-object v5, v16, v20

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3837
    .local v17, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-direct {v5, v6, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v6

    move v1, v10

    move v2, v11

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v10, Landroid/media/videoeditor/MediaArtistNativeHelper;->sResizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object v2, v5

    move-object v3, v6

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_78

    .line 3842
    .end local v17           #canvas:Landroid/graphics/Canvas;
    :cond_de
    if-eqz v21, :cond_e3

    .line 3843
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 3846
    :cond_e3
    return-object v16
.end method

.method getProjectAudioTrackPCMFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1808
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    return-object v0
.end method

.method getProjectPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1801
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method getSlideSettingsDirection(I)I
    .registers 3
    .parameter "slideDirection"

    .prologue
    .line 3468
    const/4 v0, -0x1

    .line 3469
    .local v0, retValue:I
    packed-switch p1, :pswitch_data_e

    .line 3484
    const/4 v0, -0x1

    .line 3486
    :goto_5
    return v0

    .line 3471
    :pswitch_6
    const/4 v0, 0x0

    .line 3472
    goto :goto_5

    .line 3474
    :pswitch_8
    const/4 v0, 0x1

    .line 3475
    goto :goto_5

    .line 3477
    :pswitch_a
    const/4 v0, 0x2

    .line 3478
    goto :goto_5

    .line 3480
    :pswitch_c
    const/4 v0, 0x3

    .line 3481
    goto :goto_5

    .line 3469
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method getVideoCodecType(I)I
    .registers 3
    .parameter "codecType"

    .prologue
    .line 3273
    const/4 v0, -0x1

    .line 3274
    .local v0, retValue:I
    packed-switch p1, :pswitch_data_c

    .line 3287
    :pswitch_4
    const/4 v0, -0x1

    .line 3289
    :goto_5
    return v0

    .line 3276
    :pswitch_6
    const/4 v0, 0x1

    .line 3277
    goto :goto_5

    .line 3279
    :pswitch_8
    const/4 v0, 0x4

    .line 3280
    goto :goto_5

    .line 3282
    :pswitch_a
    const/4 v0, 0x2

    .line 3283
    goto :goto_5

    .line 3274
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method getVideoTransitionBehaviour(I)I
    .registers 3
    .parameter "transitionType"

    .prologue
    .line 3434
    const/4 v0, -0x1

    .line 3435
    .local v0, retValue:I
    packed-switch p1, :pswitch_data_10

    .line 3453
    const/4 v0, -0x1

    .line 3455
    :goto_5
    return v0

    .line 3437
    :pswitch_6
    const/4 v0, 0x0

    .line 3438
    goto :goto_5

    .line 3440
    :pswitch_8
    const/4 v0, 0x2

    .line 3441
    goto :goto_5

    .line 3443
    :pswitch_a
    const/4 v0, 0x1

    .line 3444
    goto :goto_5

    .line 3446
    :pswitch_c
    const/4 v0, 0x3

    .line 3447
    goto :goto_5

    .line 3449
    :pswitch_e
    const/4 v0, 0x4

    .line 3450
    goto :goto_5

    .line 3435
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V
    .registers 4
    .parameter "lclipSettings"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2287
    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 2288
    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    .line 2289
    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    .line 2290
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 2291
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 2292
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 2293
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutPercent:I

    .line 2294
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutPercent:I

    .line 2295
    iput-boolean v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomEnabled:Z

    .line 2296
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentStart:I

    .line 2297
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXStart:I

    .line 2298
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYStart:I

    .line 2299
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentEnd:I

    .line 2300
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXEnd:I

    .line 2301
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYEnd:I

    .line 2302
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 2303
    return-void
.end method

.method invalidatePcmFile()V
    .registers 3

    .prologue
    .line 1815
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 1816
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1817
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .line 1819
    :cond_11
    return-void
.end method

.method nativeHelperGetAspectRatio()I
    .registers 2

    .prologue
    .line 2112
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v0

    return v0
.end method

.method previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V
    .registers 33
    .parameter
    .parameter
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;",
            "Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2846
    .local p1, mediaItemsList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p2, mediaTransitionList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Transition;>;"
    .local p3, mediaBGMList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    move v5, v0

    if-eqz v5, :cond_32c

    .line 2847
    const/16 v20, 0x0

    .line 2848
    .local v20, previewIndex:I
    const/16 v22, 0x0

    .line 2849
    .local v22, totalEffects:I
    const/4 v11, 0x0

    .line 2850
    .local v11, storyBoardTime:I
    const/16 v19, 0x0

    .line 2851
    .local v19, maxHeight:I
    const/4 v9, 0x0

    .line 2852
    .local v9, beginCutTime:I
    const/4 v10, 0x0

    .line 2853
    .local v10, endCutTime:I
    const/4 v8, 0x0

    .line 2854
    .local v8, effectIndex:I
    const/16 v18, 0x0

    .line 2855
    .local v18, lTransition:Landroid/media/videoeditor/Transition;
    const/4 v6, 0x0

    .line 2856
    .local v6, lMediaItem:Landroid/media/videoeditor/MediaItem;
    new-instance v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v5}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    .line 2857
    new-instance v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    invoke-direct {v5}, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    .line 2858
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 2860
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 2861
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_3b
    :goto_3b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/media/videoeditor/Transition;

    .line 2862
    .local v23, transition:Landroid/media/videoeditor/Transition;
    invoke-virtual/range {v23 .. v23}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v5, v24, v26

    if-lez v5, :cond_3b

    .line 2863
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    goto :goto_3b

    .line 2867
    .end local v23           #transition:Landroid/media/videoeditor/Transition;
    :cond_5e
    invoke-direct/range {p0 .. p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getTotalEffects(Ljava/util/List;)I

    move-result v22

    .line 2869
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    move v7, v0

    new-array v7, v7, [Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iput-object v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 2870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object v5, v0

    move/from16 v0, v22

    new-array v0, v0, [Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-object v7, v0

    iput-object v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 2871
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    move v7, v0

    new-array v7, v7, [Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    iput-object v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    .line 2874
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    .line 2875
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 2877
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_229

    .line 2878
    const/16 v16, 0x0

    .local v16, i:I
    :goto_9e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_1df

    .line 2880
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #lMediaItem:Landroid/media/videoeditor/MediaItem;
    check-cast v6, Landroid/media/videoeditor/MediaItem;

    .line 2881
    .restart local v6       #lMediaItem:Landroid/media/videoeditor/MediaItem;
    instance-of v5, v6, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v5, :cond_23f

    .line 2882
    move-object v0, v6

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move v9, v0

    .line 2883
    move-object v0, v6

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move v10, v0

    .line 2889
    :cond_cd
    :goto_cd
    invoke-virtual {v6}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v18

    .line 2890
    if-eqz v18, :cond_100

    invoke-virtual/range {v18 .. v18}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v5, v24, v26

    if-lez v5, :cond_100

    .line 2892
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v5

    move-object v3, v7

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 2894
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v20

    iget v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    add-int/2addr v11, v5

    .line 2895
    add-int/lit8 v20, v20, 0x1

    .line 2898
    :cond_100
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateMediaItemProperties(Landroid/media/videoeditor/MediaItem;II)I

    move-result v19

    .line 2900
    instance-of v5, v6, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v5, :cond_2ea

    .line 2901
    const/16 v21, 0x0

    .line 2902
    .local v21, tmpCnt:I
    const/4 v12, 0x0

    .line 2903
    .local v12, bEffectKbPresent:Z
    invoke-virtual {v6}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v14

    .line 2907
    .local v14, effectList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    :goto_116
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v21

    move v1, v5

    if-ge v0, v1, :cond_12b

    .line 2908
    move-object v0, v14

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v5, :cond_252

    .line 2909
    const/4 v12, 0x1

    .line 2915
    :cond_12b
    if-eqz v12, :cond_2a0

    .line 2917
    :try_start_12d
    move-object v0, v6

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_256

    .line 2918
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v0, v6

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v7

    aput-object v7, v5, v20
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_14f} :catch_296

    .line 2955
    .end local v12           #bEffectKbPresent:Z
    .end local v14           #effectList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v21           #tmpCnt:I
    :goto_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v20

    invoke-virtual {v6}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->Id:Ljava/lang/String;

    .line 2956
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->checkOddSizeImage(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 2957
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustVolume(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v5, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v7, v0

    iget-object v7, v7, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v7, v7, v20

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustMediaItemBoundary(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;Landroid/media/videoeditor/MediaItem;)V

    .line 2972
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object v5, v0

    iget-object v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateEffects(Landroid/media/videoeditor/MediaItem;[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;IIII)I

    move-result v8

    .line 2975
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v20

    iget v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    add-int/2addr v11, v5

    .line 2976
    add-int/lit8 v20, v20, 0x1

    .line 2980
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_30a

    .line 2981
    invoke-virtual {v6}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v18

    .line 2982
    if-eqz v18, :cond_30a

    invoke-virtual/range {v18 .. v18}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v5, v24, v26

    if-lez v5, :cond_30a

    .line 2983
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v5

    move-object v3, v7

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 2990
    :cond_1df
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    move v5, v0

    if-nez v5, :cond_229

    .line 2991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    move-object v7, v0

    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v7

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v7

    iput v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2993
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateBackgroundMusicProperties(Ljava/util/List;)V

    .line 2997
    :try_start_206
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    move-object v12, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V
    :try_end_21d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_206 .. :try_end_21d} :catch_30e
    .catch Ljava/lang/IllegalStateException; {:try_start_206 .. :try_end_21d} :catch_318
    .catch Ljava/lang/RuntimeException; {:try_start_206 .. :try_end_21d} :catch_322

    .line 3008
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    .line 3009
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 3012
    .end local v16           #i:I
    :cond_229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    move v5, v0

    if-eqz v5, :cond_32c

    .line 3013
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    .line 3014
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "preview generation cannot be completed"

    .end local v6           #lMediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2884
    .restart local v6       #lMediaItem:Landroid/media/videoeditor/MediaItem;
    .restart local v16       #i:I
    :cond_23f
    instance-of v5, v6, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v5, :cond_cd

    .line 2885
    const/4 v9, 0x0

    .line 2886
    move-object v0, v6

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaImageItem;->getTimelineDuration()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move v10, v0

    goto/16 :goto_cd

    .line 2912
    .restart local v12       #bEffectKbPresent:Z
    .restart local v14       #effectList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .restart local v21       #tmpCnt:I
    :cond_252
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_116

    .line 2923
    :cond_256
    :try_start_256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v0, v6

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaImageItem;->getScaledImageFileName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v7

    aput-object v7, v5, v20

    .line 2926
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v20

    move-object v0, v6

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v7

    iput v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 2928
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v20

    move-object v0, v6

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v7

    iput v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_294} :catch_296

    goto/16 :goto_14f

    .line 2931
    :catch_296
    move-exception v5

    move-object v13, v5

    .line 2932
    .local v13, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported file or file not found"

    .end local v6           #lMediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2936
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v6       #lMediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_2a0
    :try_start_2a0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v0, v6

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaImageItem;->getScaledImageFileName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v7

    aput-object v7, v5, v20
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_2a0 .. :try_end_2b8} :catch_2e0

    .line 2942
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v20

    move-object v0, v6

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v7

    iput v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 2944
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v20

    move-object v0, v6

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v7

    iput v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    goto/16 :goto_14f

    .line 2939
    :catch_2e0
    move-exception v5

    move-object v13, v5

    .line 2940
    .restart local v13       #e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported file or file not found"

    .end local v6           #lMediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2949
    .end local v12           #bEffectKbPresent:Z
    .end local v13           #e:Ljava/lang/Exception;
    .end local v14           #effectList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v21           #tmpCnt:I
    .restart local v6       #lMediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_2ea
    :try_start_2ea
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-virtual {v6}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v7

    aput-object v7, v5, v20
    :try_end_2fe
    .catch Ljava/lang/Exception; {:try_start_2ea .. :try_end_2fe} :catch_300

    goto/16 :goto_14f

    .line 2951
    :catch_300
    move-exception v5

    move-object v13, v5

    .line 2952
    .restart local v13       #e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported file or file not found"

    .end local v6           #lMediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2878
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v6       #lMediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_30a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9e

    .line 2998
    :catch_30e
    move-exception v5

    move-object v15, v5

    .line 2999
    .local v15, ex:Ljava/lang/IllegalArgumentException;
    const-string v5, "MediaArtistNativeHelper"

    const-string v6, "Illegal argument exception in nativePopulateSettings"

    .end local v6           #lMediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    throw v15

    .line 3001
    .end local v15           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v6       #lMediaItem:Landroid/media/videoeditor/MediaItem;
    :catch_318
    move-exception v5

    move-object v15, v5

    .line 3002
    .local v15, ex:Ljava/lang/IllegalStateException;
    const-string v5, "MediaArtistNativeHelper"

    const-string v6, "Illegal state exception in nativePopulateSettings"

    .end local v6           #lMediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    throw v15

    .line 3004
    .end local v15           #ex:Ljava/lang/IllegalStateException;
    .restart local v6       #lMediaItem:Landroid/media/videoeditor/MediaItem;
    :catch_322
    move-exception v5

    move-object v15, v5

    .line 3005
    .local v15, ex:Ljava/lang/RuntimeException;
    const-string v5, "MediaArtistNativeHelper"

    const-string v6, "Runtime exception in nativePopulateSettings"

    .end local v6           #lMediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    throw v15

    .line 3017
    .end local v8           #effectIndex:I
    .end local v9           #beginCutTime:I
    .end local v10           #endCutTime:I
    .end local v11           #storyBoardTime:I
    .end local v15           #ex:Ljava/lang/RuntimeException;
    .end local v16           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #lTransition:Landroid/media/videoeditor/Transition;
    .end local v19           #maxHeight:I
    .end local v20           #previewIndex:I
    .end local v22           #totalEffects:I
    :cond_32c
    return-void
.end method

.method releaseNativeHelper()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1938
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->release()V

    .line 1939
    return-void
.end method

.method renderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;JII)J
    .registers 19
    .parameter "surface"
    .parameter "filepath"
    .parameter "time"
    .parameter "framewidth"
    .parameter "frameheight"

    .prologue
    .line 3152
    const-wide/16 v10, 0x0

    .line 3154
    .local v10, timeMs:J
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-wide v7, p3

    :try_start_c
    invoke-direct/range {v0 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeRenderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;IIIIJ)I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_f} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_f} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_f} :catch_24

    move-result v0

    int-to-long v10, v0

    .line 3167
    return-wide v10

    .line 3156
    :catch_12
    move-exception v9

    .line 3157
    .local v9, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "Illegal Argument exception in renderMediaItemPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    throw v9

    .line 3159
    .end local v9           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1b
    move-exception v9

    .line 3160
    .local v9, ex:Ljava/lang/IllegalStateException;
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "Illegal state exception in renderMediaItemPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    throw v9

    .line 3162
    .end local v9           #ex:Ljava/lang/IllegalStateException;
    :catch_24
    move-exception v9

    .line 3163
    .local v9, ex:Ljava/lang/RuntimeException;
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "Runtime exception in renderMediaItemPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    throw v9
.end method

.method renderPreviewFrame(Landroid/view/Surface;JIILandroid/media/videoeditor/VideoEditor$OverlayData;)J
    .registers 14
    .parameter "surface"
    .parameter "time"
    .parameter "surfaceWidth"
    .parameter "surfaceHeight"
    .parameter "overlayData"

    .prologue
    .line 3086
    iget-boolean v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    if-eqz v4, :cond_1c

    .line 3087
    const-string v4, "MediaArtistNativeHelper"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 3088
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Call generate preview first"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    :cond_14
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Call generate preview first"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3093
    :cond_1c
    const-wide/16 v2, 0x0

    .line 3095
    .local v2, timeMs:J
    const/4 v0, 0x0

    .local v0, clipCnt:I
    :goto_1f
    :try_start_1f
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length v4, v4

    if-ge v0, v4, :cond_44

    .line 3097
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_41

    .line 3098
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v4, v4, v0

    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v5, v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    iput-object v5, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 3096
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 3104
    :cond_44
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    .line 3105
    const/4 v4, 0x0

    iput v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    .line 3107
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {p0, v4, v5, v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    .line 3109
    invoke-direct/range {p0 .. p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeRenderPreviewFrame(Landroid/view/Surface;JII)I

    move-result v4

    int-to-long v2, v4

    .line 3111
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    if-eqz v4, :cond_68

    .line 3112
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    invoke-virtual {p6, v4, v5}, Landroid/media/videoeditor/VideoEditor$OverlayData;->set(Landroid/graphics/Bitmap;I)V

    .line 3128
    :goto_67
    return-wide v2

    .line 3115
    :cond_68
    invoke-virtual {p6}, Landroid/media/videoeditor/VideoEditor$OverlayData;->setClear()V
    :try_end_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_6b} :catch_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_6b} :catch_76
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_6b} :catch_80

    goto :goto_67

    .line 3117
    :catch_6c
    move-exception v4

    move-object v1, v4

    .line 3118
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Illegal Argument exception in nativeRenderPreviewFrame"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    throw v1

    .line 3120
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_76
    move-exception v4

    move-object v1, v4

    .line 3121
    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Illegal state exception in nativeRenderPreviewFrame"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    throw v1

    .line 3123
    .end local v1           #ex:Ljava/lang/IllegalStateException;
    :catch_80
    move-exception v4

    move-object v1, v4

    .line 3124
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Runtime exception in nativeRenderPreviewFrame"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    throw v1
.end method

.method setAudioflag(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 2123
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AudioPcm.pcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2124
    const/4 p1, 0x1

    .line 2126
    :cond_2e
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    .line 2127
    return-void
.end method

.method setGeneratePreview(Z)V
    .registers 6
    .parameter "isRequired"

    .prologue
    .line 3175
    const/4 v1, 0x0

    .line 3177
    .local v1, semAcquiredDone:Z
    :try_start_1
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->lock()V

    .line 3178
    const/4 v1, 0x1

    .line 3179
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_7} :catch_d

    .line 3183
    if-eqz v1, :cond_c

    .line 3184
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->unlock()V

    .line 3187
    :cond_c
    :goto_c
    return-void

    .line 3180
    :catch_d
    move-exception v2

    move-object v0, v2

    .line 3181
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_f
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Runtime exception in renderMediaItemPreviewFrame"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1c

    .line 3183
    if-eqz v1, :cond_c

    .line 3184
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->unlock()V

    goto :goto_c

    .line 3183
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_1c
    move-exception v2

    if-eqz v1, :cond_22

    .line 3184
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->unlock()V

    :cond_22
    throw v2
.end method

.method stop(Ljava/lang/String;)V
    .registers 5
    .parameter "filename"

    .prologue
    .line 3714
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->stopEncoding()V

    .line 3715
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_18

    .line 3723
    return-void

    .line 3716
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 3717
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal state exception in unload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    throw v0

    .line 3719
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 3720
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Runtime exception in unload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    throw v0
.end method

.method stopPreview()J
    .registers 3

    .prologue
    .line 3068
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeStopPreview()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
