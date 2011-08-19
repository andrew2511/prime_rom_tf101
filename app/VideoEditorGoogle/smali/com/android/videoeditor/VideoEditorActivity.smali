.class public Lcom/android/videoeditor/VideoEditorActivity;
.super Lcom/android/videoeditor/VideoEditorBaseActivity;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;
    }
.end annotation


# static fields
.field public static final DIALOG_CHANGE_RENDERING_MODE_ID:I = 0xc

.field private static final DIALOG_CHOOSE_ASPECT_RATIO_ID:I = 0x3

.field private static final DIALOG_DELETE_PROJECT_ID:I = 0x1

.field private static final DIALOG_EDIT_PROJECT_NAME_ID:I = 0x2

.field private static final DIALOG_EXPORT_OPTIONS_ID:I = 0x4

.field public static final DIALOG_REMOVE_AUDIO_TRACK_ID:I = 0xf

.field public static final DIALOG_REMOVE_EFFECT_ID:I = 0xe

.field public static final DIALOG_REMOVE_MEDIA_ITEM_ID:I = 0xa

.field public static final DIALOG_REMOVE_OVERLAY_ID:I = 0xd

.field public static final DIALOG_REMOVE_TRANSITION_ID:I = 0xb

.field private static final MAX_ZOOM_LEVEL:I = 0x78

.field private static final MENU_CAPTURE_IMAGE_ID:I = 0xc

.field private static final MENU_CAPTURE_VIDEO_ID:I = 0xb

.field private static final MENU_CHANGE_ASPECT_RATIO_ID:I = 0x5

.field private static final MENU_DELETE_PROJECT_ID:I = 0x7

.field private static final MENU_EDIT_PROJECT_NAME_ID:I = 0x6

.field private static final MENU_EXPORT_MOVIE_ID:I = 0x8

.field private static final MENU_IMPORT_AUDIO_ID:I = 0x4

.field private static final MENU_IMPORT_IMAGE_ID:I = 0x2

.field private static final MENU_IMPORT_VIDEO_ID:I = 0x3

.field private static final MENU_PLAY_EXPORTED_MOVIE:I = 0x9

.field private static final MENU_SHARE_VIDEO:I = 0xa

.field private static final PARAM_ASPECT_RATIOS_LIST:Ljava/lang/String; = "aspect_ratios"

.field private static final PARAM_CURRENT_ASPECT_RATIO_INDEX:Ljava/lang/String; = "current_aspect_ratio"

.field private static final REQUEST_CODE_CAPTURE_IMAGE:I = 0x5

.field private static final REQUEST_CODE_CAPTURE_VIDEO:I = 0x4

.field public static final REQUEST_CODE_EDIT_EFFECT:I = 0xf

.field public static final REQUEST_CODE_EDIT_OVERLAY:I = 0xd

.field public static final REQUEST_CODE_EDIT_TRANSITION:I = 0xa

.field private static final REQUEST_CODE_IMPORT_IMAGE:I = 0x2

.field private static final REQUEST_CODE_IMPORT_MUSIC:I = 0x3

.field private static final REQUEST_CODE_IMPORT_VIDEO:I = 0x1

.field public static final REQUEST_CODE_PICK_EFFECT:I = 0xe

.field public static final REQUEST_CODE_PICK_OVERLAY:I = 0xc

.field public static final REQUEST_CODE_PICK_TRANSITION:I = 0xb

.field private static final STATE_CAPTURE_URI:Ljava/lang/String; = "capture_uri"

.field private static final STATE_INSERT_AFTER_MEDIA_ITEM_ID:Ljava/lang/String; = "insert_after_media_item_id"

.field private static final STATE_PLAYING:Ljava/lang/String; = "playing"

.field private static final TAG:Ljava/lang/String; = "VideoEditorActivity"

.field private static final ZOOM_STEP:I = 0x2


# instance fields
.field private mActivityWidth:I

.field private mAddAudioTrackUri:Landroid/net/Uri;

.field private mAddEffectMediaItemId:Ljava/lang/String;

.field private mAddEffectType:I

.field private mAddKenBurnsEndRect:Landroid/graphics/Rect;

.field private mAddKenBurnsStartRect:Landroid/graphics/Rect;

.field private mAddMediaItemImageUri:Landroid/net/Uri;

.field private mAddMediaItemVideoUri:Landroid/net/Uri;

.field private mAddOverlayMediaItemId:Ljava/lang/String;

.field private mAddOverlayUserAttributes:Landroid/os/Bundle;

.field private mAddTransitionAfterMediaId:Ljava/lang/String;

.field private mAddTransitionDurationMs:J

.field private mAddTransitionType:I

.field private mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

.field private mCaptureMediaUri:Landroid/net/Uri;

.field private mCurrentPlayheadPosMs:J

.field private mEditEffectMediaItemId:Ljava/lang/String;

.field private mEditEffectType:I

.field private mEditKenBurnsEndRect:Landroid/graphics/Rect;

.field private mEditKenBurnsStartRect:Landroid/graphics/Rect;

.field private mEditOverlayId:Ljava/lang/String;

.field private mEditOverlayMediaItemId:Ljava/lang/String;

.field private mEditOverlayUserAttributes:Landroid/os/Bundle;

.field private mEditTransitionAfterMediaId:Ljava/lang/String;

.field private mEditTransitionDurationMs:J

.field private mEditTransitionId:Ljava/lang/String;

.field private mEditTransitionType:I

.field private mEditorEmptyView:Landroid/view/View;

.field private mEditorProjectView:Landroid/view/View;

.field private mExportProgressDialog:Landroid/app/ProgressDialog;

.field private mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

.field private final mLayoutCallback:Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;

.field private mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

.field private mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

.field private mOverlayView:Landroid/widget/ImageView;

.field private mPlayheadView:Lcom/android/videoeditor/widgets/PlayheadView;

.field private mPreviewNextButton:Landroid/widget/ImageButton;

.field private mPreviewPlayButton:Landroid/widget/ImageButton;

.field private mPreviewPrevButton:Landroid/widget/ImageButton;

.field private mPreviewRewindButton:Landroid/widget/ImageButton;

.field private mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

.field private mRestartPreview:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Lcom/android/videoeditor/widgets/PreviewSurfaceView;

.field private mTimeView:Landroid/widget/TextView;

.field private mTimelineLayout:Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

.field private mTimelineScroller:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

.field private mZoomControl:Lcom/android/videoeditor/widgets/ZoomControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorBaseActivity;-><init>()V

    .line 138
    new-instance v0, Lcom/android/videoeditor/VideoEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/videoeditor/VideoEditorActivity$1;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mLayoutCallback:Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;

    .line 1853
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/VideoEditorActivity;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/VideoEditorActivity;->timeToDimension(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineScroller:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/videoeditor/VideoEditorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->showExportProgress()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/videoeditor/VideoEditorActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/videoeditor/VideoEditorActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewPlayButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/OverlayLinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineLayout:Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/videoeditor/VideoEditorActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mActivityWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/videoeditor/VideoEditorActivity;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/VideoEditorActivity;->setPlayhead(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/videoeditor/VideoEditorActivity;IZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/VideoEditorActivity;->zoomTimeline(IZ)I

    move-result v0

    return v0
.end method

.method private restartPreview()V
    .locals 4

    .prologue
    .line 1796
    iget-boolean v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mRestartPreview:Z

    if-nez v0, :cond_1

    .line 1808
    :cond_0
    :goto_0
    return-void

    .line 1800
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v0, :cond_0

    .line 1805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mRestartPreview:Z

    .line 1806
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/VideoEditorProject;J)V

    goto :goto_0
.end method

.method private setPlayhead(J)Z
    .locals 3
    .parameter "timeMs"

    .prologue
    const/4 v2, 0x0

    .line 1519
    iget-wide v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCurrentPlayheadPosMs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    move v0, v2

    .line 1535
    :goto_0
    return v0

    .line 1525
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    move v0, v2

    .line 1526
    goto :goto_0

    .line 1527
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    move v0, v2

    .line 1528
    goto :goto_0

    .line 1531
    :cond_2
    iput-wide p1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCurrentPlayheadPosMs:J

    .line 1533
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimeView:Landroid/widget/TextView;

    invoke-static {p0, p1, p2}, Lcom/android/videoeditor/util/StringUtils;->getTimestampAsString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1534
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, p1, p2}, Lcom/android/videoeditor/service/VideoEditorProject;->setPlayheadPos(J)V

    .line 1535
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showExportProgress()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1814
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    .line 1815
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f09004d

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1816
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1817
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1818
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1819
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1820
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1821
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1822
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/videoeditor/VideoEditorActivity$23;

    invoke-direct {v2, p0}, Lcom/android/videoeditor/VideoEditorActivity$23;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1834
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1835
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/videoeditor/VideoEditorActivity$24;

    invoke-direct {v1, p0}, Lcom/android/videoeditor/VideoEditorActivity$24;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1846
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1847
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1848
    return-void
.end method

.method private timeToDimension(J)I
    .locals 4
    .parameter "durationMs"

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getZoomLevel()I

    move-result v0

    iget v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mActivityWidth:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0x124f80

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private zoomTimeline(IZ)I
    .locals 4
    .parameter "level"
    .parameter "updateControl"

    .prologue
    .line 1477
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x78

    if-le p1, v0, :cond_1

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getZoomLevel()I

    move-result v0

    .line 1491
    :goto_0
    return v0

    .line 1481
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->setZoomLevel(I)V

    .line 1482
    const-string v0, "VideoEditorActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1483
    const-string v0, "VideoEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomTimeline level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/android/videoeditor/VideoEditorActivity;->timeToDimension(J)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pix/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_2
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->updateTimelineDuration()V

    .line 1488
    if-eqz p2, :cond_3

    .line 1489
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mZoomControl:Lcom/android/videoeditor/widgets/ZoomControl;

    invoke-virtual {v0, p1}, Lcom/android/videoeditor/widgets/ZoomControl;->setProgress(I)V

    :cond_3
    move v0, p1

    .line 1491
    goto :goto_0
.end method


# virtual methods
.method protected enterDisabledState(I)V
    .locals 3
    .parameter "statusStringId"

    .prologue
    const/16 v2, 0x8

    .line 1383
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorProjectView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1384
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1388
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1389
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1390
    return-void
.end method

.method protected enterReadyState()V
    .locals 2

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorProjectView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1398
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1399
    return-void
.end method

.method protected enterTransitionalState(I)V
    .locals 3
    .parameter "statusStringId"

    .prologue
    const/4 v2, 0x0

    .line 1371
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorProjectView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1372
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1374
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1375
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1376
    return-void
.end method

.method protected getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    return-object v0
.end method

.method protected getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .locals 1

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    return-object v0
.end method

.method protected getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;
    .locals 1

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    return-object v0
.end method

.method protected initializeFromProject(Z)V
    .locals 12
    .parameter "updateUI"

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1653
    const-string v0, "VideoEditorActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1654
    const-string v0, "VideoEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Project was clean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->isClean()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->isClean()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1658
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1662
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V

    .line 1663
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V

    .line 1664
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V

    .line 1665
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPlayheadView:Lcom/android/videoeditor/widgets/PlayheadView;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/PlayheadView;->setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V

    .line 1668
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addMediaItems(Ljava/util/List;)V

    .line 1671
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addMediaItems(Ljava/util/List;)V

    .line 1674
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTracks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addAudioTracks(Ljava/util/List;)V

    .line 1676
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getAspectRatio()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/VideoEditorActivity;->setAspectRatio(I)V

    .line 1679
    :cond_2
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->updateTimelineDuration()V

    .line 1680
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getZoomLevel()I

    move-result v0

    invoke-direct {p0, v0, v11}, Lcom/android/videoeditor/VideoEditorActivity;->zoomTimeline(IZ)I

    .line 1684
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 1685
    .local v9, handler:Landroid/os/Handler;
    new-instance v0, Lcom/android/videoeditor/VideoEditorActivity$22;

    invoke-direct {v0, p0, v9}, Lcom/android/videoeditor/VideoEditorActivity$22;-><init>(Lcom/android/videoeditor/VideoEditorActivity;Landroid/os/Handler;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1709
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 1710
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemVideoUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getTheme()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/service/ApiService;->addMediaItemVideoUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;)V

    .line 1714
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemVideoUri:Landroid/net/Uri;

    .line 1715
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 1718
    :cond_3
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 1719
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemImageUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/videoeditor/util/MediaItemUtils;->getDefaultImageDuration()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getTheme()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/android/videoeditor/service/ApiService;->addMediaItemImageUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IJLjava/lang/String;)V

    .line 1723
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemImageUri:Landroid/net/Uri;

    .line 1724
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 1727
    :cond_4
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddAudioTrackUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 1728
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddAudioTrackUri:Landroid/net/Uri;

    invoke-static {p0, v0, v1, v2, v11}, Lcom/android/videoeditor/service/ApiService;->addAudioTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 1730
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddAudioTrackUri:Landroid/net/Uri;

    .line 1733
    :cond_5
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionAfterMediaId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1734
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionAfterMediaId:Ljava/lang/String;

    iget v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionType:I

    iget-wide v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionDurationMs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Ljava/lang/String;IJ)V

    .line 1736
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionAfterMediaId:Ljava/lang/String;

    .line 1739
    :cond_6
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1740
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionAfterMediaId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionId:Ljava/lang/String;

    iget v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionType:I

    iget-wide v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionDurationMs:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->editTransition(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 1742
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionId:Ljava/lang/String;

    .line 1743
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionAfterMediaId:Ljava/lang/String;

    .line 1746
    :cond_7
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddOverlayMediaItemId:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1747
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddOverlayMediaItemId:Ljava/lang/String;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddOverlayUserAttributes:Landroid/os/Bundle;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xbb8

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/android/videoeditor/service/ApiService;->addOverlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1750
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddOverlayMediaItemId:Ljava/lang/String;

    .line 1751
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddOverlayUserAttributes:Landroid/os/Bundle;

    .line 1754
    :cond_8
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayMediaItemId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1755
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayMediaItemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayUserAttributes:Landroid/os/Bundle;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService;->setOverlayUserAttributes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1757
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayMediaItemId:Ljava/lang/String;

    .line 1758
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayId:Ljava/lang/String;

    .line 1759
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayUserAttributes:Landroid/os/Bundle;

    .line 1762
    :cond_9
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddEffectMediaItemId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1763
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddEffectType:I

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddEffectMediaItemId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddKenBurnsStartRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddKenBurnsEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addEffect(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1765
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddEffectMediaItemId:Ljava/lang/String;

    .line 1768
    :cond_a
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditEffectMediaItemId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1769
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditEffectType:I

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditEffectMediaItemId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditKenBurnsStartRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditKenBurnsEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->editEffect(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1771
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditEffectMediaItemId:Ljava/lang/String;

    .line 1774
    :cond_b
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->enterReadyState()V

    .line 1776
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPendingExportFilename:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1777
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPendingExportFilename:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/ApiService;->isVideoEditorExportPending(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1780
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->showExportProgress()V

    .line 1787
    :cond_c
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->invalidateOptionsMenu()V

    .line 1789
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->restartPreview()V

    .line 1790
    return-void

    .line 1783
    :cond_d
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPendingExportFilename:Ljava/lang/String;

    goto :goto_0
.end method

.method protected movePlayhead(J)V
    .locals 3
    .parameter "timeMs"

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v0, :cond_1

    .line 1508
    :cond_0
    :goto_0
    return-void

    .line 1503
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/VideoEditorActivity;->setPlayhead(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineScroller:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/VideoEditorActivity;->timeToDimension(J)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->appScrollTo(IZ)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 30
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "extras"

    .prologue
    .line 1092
    invoke-super/range {p0 .. p3}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1093
    if-nez p2, :cond_1

    .line 1094
    packed-switch p1, :pswitch_data_0

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1097
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 1098
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/VideoEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1099
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    goto :goto_0

    .line 1111
    :cond_1
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 1144
    :pswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 1145
    .local v9, mediaUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-eqz v5, :cond_5

    .line 1146
    const-string v5, "media"

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    move-object v6, v0

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    move-object v8, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getTheme()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v11}, Lcom/android/videoeditor/service/ApiService;->addMediaItemVideoUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;)V

    .line 1158
    :goto_1
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    goto :goto_0

    .line 1113
    .end local v9           #mediaUri:Landroid/net/Uri;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-eqz v5, :cond_2

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    move-object v6, v0

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getTheme()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v11}, Lcom/android/videoeditor/service/ApiService;->addMediaItemVideoUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;)V

    .line 1118
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 1123
    :goto_2
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1121
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemVideoUri:Landroid/net/Uri;

    goto :goto_2

    .line 1128
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    move-object v6, v0

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/videoeditor/util/MediaItemUtils;->getDefaultImageDuration()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getTheme()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v13}, Lcom/android/videoeditor/service/ApiService;->addMediaItemImageUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IJLjava/lang/String;)V

    .line 1134
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 1139
    :goto_3
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1137
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemImageUri:Landroid/net/Uri;

    goto :goto_3

    .line 1153
    .restart local v9       #mediaUri:Landroid/net/Uri;
    :cond_4
    const v5, 0x7f090020

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "video/*"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v9

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService;->loadMediaItem(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1161
    :cond_5
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemVideoUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1167
    .end local v9           #mediaUri:Landroid/net/Uri;
    :pswitch_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 1168
    .restart local v9       #mediaUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-eqz v5, :cond_7

    .line 1169
    const-string v5, "media"

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    move-object v6, v0

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    move-object v8, v0

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/videoeditor/util/MediaItemUtils;->getDefaultImageDuration()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getTheme()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v13}, Lcom/android/videoeditor/service/ApiService;->addMediaItemImageUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IJLjava/lang/String;)V

    .line 1181
    :goto_4
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    goto/16 :goto_0

    .line 1176
    :cond_6
    const v5, 0x7f090021

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "image/*"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v9

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService;->loadMediaItem(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_4

    .line 1184
    :cond_7
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemImageUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1190
    .end local v9           #mediaUri:Landroid/net/Uri;
    :pswitch_6
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    .line 1191
    .local v25, data:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-eqz v5, :cond_8

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    move-object v5, v0

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v25

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService;->addAudioTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 1195
    :cond_8
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddAudioTrackUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1201
    .end local v25           #data:Landroid/net/Uri;
    :pswitch_7
    const-string v5, "transition"

    const/4 v6, -0x1

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1202
    .local v13, type:I
    const-string v5, "media_item_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1204
    .local v11, afterMediaId:Ljava/lang/String;
    const-string v5, "transition_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1206
    .local v12, transitionId:Ljava/lang/String;
    const-string v5, "duration"

    const-wide/16 v6, 0x1f4

    move-object/from16 v0, p3

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 1208
    .local v14, transitionDurationMs:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-eqz v5, :cond_9

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-object v10, v0

    invoke-virtual/range {v10 .. v15}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->editTransition(Ljava/lang/String;Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 1213
    :cond_9
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionAfterMediaId:Ljava/lang/String;

    .line 1214
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionId:Ljava/lang/String;

    .line 1215
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionType:I

    .line 1216
    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionDurationMs:J

    goto/16 :goto_0

    .line 1222
    .end local v11           #afterMediaId:Ljava/lang/String;
    .end local v12           #transitionId:Ljava/lang/String;
    .end local v13           #type:I
    .end local v14           #transitionDurationMs:J
    :pswitch_8
    const-string v5, "transition"

    const/4 v6, -0x1

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1223
    .restart local v13       #type:I
    const-string v5, "media_item_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1225
    .restart local v11       #afterMediaId:Ljava/lang/String;
    const-string v5, "duration"

    const-wide/16 v6, 0x1f4

    move-object/from16 v0, p3

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 1227
    .restart local v14       #transitionDurationMs:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-eqz v5, :cond_a

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-object v5, v0

    invoke-virtual {v5, v11, v13, v14, v15}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 1231
    :cond_a
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionAfterMediaId:Ljava/lang/String;

    .line 1232
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionType:I

    .line 1233
    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionDurationMs:J

    goto/16 :goto_0

    .line 1239
    .end local v11           #afterMediaId:Ljava/lang/String;
    .end local v13           #type:I
    .end local v14           #transitionDurationMs:J
    :pswitch_9
    const-string v5, "media_item_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1241
    .local v18, mediaItemId:Ljava/lang/String;
    const-string v5, "attributes"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v20

    .line 1243
    .local v20, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-eqz v5, :cond_b

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v27

    .line 1245
    .local v27, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v27, :cond_0

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v27 .. v27}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v21

    const-wide/16 v23, 0xbb8

    move-object/from16 v16, p0

    invoke-static/range {v16 .. v24}, Lcom/android/videoeditor/service/ApiService;->addOverlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->invalidateCAB()V

    goto/16 :goto_0

    .line 1254
    .end local v27           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_b
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddOverlayMediaItemId:Ljava/lang/String;

    .line 1255
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddOverlayUserAttributes:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 1261
    .end local v18           #mediaItemId:Ljava/lang/String;
    .end local v20           #bundle:Landroid/os/Bundle;
    :pswitch_a
    const-string v5, "attributes"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v20

    .line 1263
    .restart local v20       #bundle:Landroid/os/Bundle;
    const-string v5, "media_item_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1265
    .restart local v18       #mediaItemId:Ljava/lang/String;
    const-string v5, "overlay_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1267
    .local v28, overlayId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-eqz v5, :cond_c

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v18

    move-object/from16 v3, v28

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService;->setOverlayUserAttributes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->invalidateCAB()V

    goto/16 :goto_0

    .line 1273
    :cond_c
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayMediaItemId:Ljava/lang/String;

    .line 1274
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayId:Ljava/lang/String;

    .line 1275
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayUserAttributes:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 1281
    .end local v18           #mediaItemId:Ljava/lang/String;
    .end local v20           #bundle:Landroid/os/Bundle;
    .end local v28           #overlayId:Ljava/lang/String;
    :pswitch_b
    const-string v5, "media_item_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1283
    .restart local v18       #mediaItemId:Ljava/lang/String;
    const-string v5, "effect"

    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1285
    .restart local v13       #type:I
    const-string v5, "start_rect"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v29

    check-cast v29, Landroid/graphics/Rect;

    .line 1286
    .local v29, startRect:Landroid/graphics/Rect;
    const-string v5, "end_rect"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v26

    check-cast v26, Landroid/graphics/Rect;

    .line 1287
    .local v26, endRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-eqz v5, :cond_d

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-object v5, v0

    move-object v0, v5

    move v1, v13

    move-object/from16 v2, v18

    move-object/from16 v3, v29

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addEffect(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1291
    :cond_d
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddEffectMediaItemId:Ljava/lang/String;

    .line 1292
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddEffectType:I

    .line 1293
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddKenBurnsStartRect:Landroid/graphics/Rect;

    .line 1294
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddKenBurnsEndRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 1300
    .end local v13           #type:I
    .end local v18           #mediaItemId:Ljava/lang/String;
    .end local v26           #endRect:Landroid/graphics/Rect;
    .end local v29           #startRect:Landroid/graphics/Rect;
    :pswitch_c
    const-string v5, "media_item_id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1302
    .restart local v18       #mediaItemId:Ljava/lang/String;
    const-string v5, "effect"

    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1304
    .restart local v13       #type:I
    const-string v5, "start_rect"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v29

    check-cast v29, Landroid/graphics/Rect;

    .line 1305
    .restart local v29       #startRect:Landroid/graphics/Rect;
    const-string v5, "end_rect"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v26

    check-cast v26, Landroid/graphics/Rect;

    .line 1306
    .restart local v26       #endRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-eqz v5, :cond_e

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-object v5, v0

    move-object v0, v5

    move v1, v13

    move-object/from16 v2, v18

    move-object/from16 v3, v29

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->editEffect(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1310
    :cond_e
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mEditEffectMediaItemId:Ljava/lang/String;

    .line 1311
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mEditEffectType:I

    .line 1312
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mEditKenBurnsStartRect:Landroid/graphics/Rect;

    .line 1313
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mEditKenBurnsEndRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 1094
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1111
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 8
    .parameter "target"

    .prologue
    const-wide/16 v6, 0x0

    .line 1000
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v1

    .line 1002
    .local v1, playheadPosMs:J
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1004
    :pswitch_0
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v4, :cond_0

    .line 1005
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1006
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1200(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V

    goto :goto_0

    .line 1007
    :cond_1
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1008
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-static {v4, v5, v1, v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/VideoEditorProject;J)V

    goto :goto_0

    .line 1015
    :pswitch_1
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v4, :cond_0

    .line 1016
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1017
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1200(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V

    .line 1018
    invoke-virtual {p0, v6, v7}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 1019
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-static {v4, v5, v6, v7}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/VideoEditorProject;J)V

    goto :goto_0

    .line 1021
    :cond_2
    invoke-virtual {p0, v6, v7}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 1022
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->showPreviewFrame()Z

    goto :goto_0

    .line 1029
    :pswitch_2
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v4, :cond_0

    .line 1031
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1032
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1200(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V

    .line 1033
    const/4 v3, 0x1

    .line 1038
    .local v3, restartPreview:Z
    :goto_1
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getNextMediaItem(J)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 1039
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v0, :cond_5

    .line 1040
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemBeginTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 1041
    if-eqz v3, :cond_4

    .line 1042
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v6, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/VideoEditorProject;J)V

    goto/16 :goto_0

    .line 1035
    .end local v0           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v3           #restartPreview:Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #restartPreview:Z
    goto :goto_1

    .line 1045
    .restart local v0       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_4
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->showPreviewFrame()Z

    goto/16 :goto_0

    .line 1048
    :cond_5
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 1049
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->showPreviewFrame()Z

    goto/16 :goto_0

    .line 1056
    .end local v0           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v3           #restartPreview:Z
    :pswitch_3
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v4, :cond_0

    .line 1058
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1059
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1200(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V

    .line 1060
    const/4 v3, 0x1

    .line 1065
    .restart local v3       #restartPreview:Z
    :goto_2
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPreviousMediaItem(J)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 1066
    .restart local v0       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v0, :cond_7

    .line 1067
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemBeginTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 1072
    :goto_3
    if-eqz v3, :cond_8

    .line 1073
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v6, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/VideoEditorProject;J)V

    goto/16 :goto_0

    .line 1062
    .end local v0           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v3           #restartPreview:Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #restartPreview:Z
    goto :goto_2

    .line 1069
    .restart local v0       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_7
    invoke-virtual {p0, v6, v7}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    goto :goto_3

    .line 1075
    :cond_8
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->showPreviewFrame()Z

    goto/16 :goto_0

    .line 1002
    nop

    :pswitch_data_0
    .packed-switch 0x7f08002a
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 208
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 209
    const v2, 0x7f090001

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 212
    const v2, 0x7f08002f

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/widgets/PreviewSurfaceView;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceView:Lcom/android/videoeditor/widgets/PreviewSurfaceView;

    .line 213
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceView:Lcom/android/videoeditor/widgets/PreviewSurfaceView;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 214
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 215
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 217
    const v2, 0x7f080022

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayView:Landroid/widget/ImageView;

    .line 219
    const v2, 0x7f080027

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorProjectView:Landroid/view/View;

    .line 220
    const v2, 0x7f08000e

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorEmptyView:Landroid/view/View;

    .line 222
    const v2, 0x7f080031

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineScroller:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 223
    const v2, 0x7f080032

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineLayout:Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

    .line 224
    const v2, 0x7f080033

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .line 225
    const v2, 0x7f080034

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    .line 226
    const v2, 0x7f080035

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    .line 227
    const v2, 0x7f080036

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/widgets/PlayheadView;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPlayheadView:Lcom/android/videoeditor/widgets/PlayheadView;

    .line 228
    const v2, 0x7f08002c

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewPlayButton:Landroid/widget/ImageButton;

    .line 229
    const v2, 0x7f08002b

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewRewindButton:Landroid/widget/ImageButton;

    .line 230
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewNextButton:Landroid/widget/ImageButton;

    .line 231
    const v2, 0x7f08002a

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewPrevButton:Landroid/widget/ImageButton;

    .line 233
    const v2, 0x7f08002e

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimeView:Landroid/widget/TextView;

    .line 235
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 237
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    new-instance v3, Lcom/android/videoeditor/VideoEditorActivity$2;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/VideoEditorActivity$2;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setListener(Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;)V

    .line 301
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    new-instance v3, Lcom/android/videoeditor/VideoEditorActivity$3;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/VideoEditorActivity$3;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->setListener(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;)V

    .line 312
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineScroller:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    new-instance v3, Lcom/android/videoeditor/VideoEditorActivity$4;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/VideoEditorActivity$4;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->addScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 368
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineScroller:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    new-instance v3, Lcom/android/videoeditor/VideoEditorActivity$5;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/VideoEditorActivity$5;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->setScaleListener(Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;)V

    .line 427
    if-eqz p1, :cond_0

    .line 428
    const-string v2, "insert_after_media_item_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 430
    const-string v2, "playing"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mRestartPreview:Z

    .line 431
    const-string v2, "capture_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    .line 437
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 438
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mActivityWidth:I

    .line 440
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceView:Lcom/android/videoeditor/widgets/PreviewSurfaceView;

    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/android/videoeditor/VideoEditorActivity$6;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/VideoEditorActivity$6;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-direct {v3, p0, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/PreviewSurfaceView;->setGestureListener(Landroid/view/GestureDetector;)V

    .line 471
    const v2, 0x7f080028

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/widgets/ZoomControl;

    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mZoomControl:Lcom/android/videoeditor/widgets/ZoomControl;

    .line 472
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mZoomControl:Lcom/android/videoeditor/widgets/ZoomControl;

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/ZoomControl;->setMax(I)V

    .line 473
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mZoomControl:Lcom/android/videoeditor/widgets/ZoomControl;

    new-instance v3, Lcom/android/videoeditor/VideoEditorActivity$7;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/VideoEditorActivity$7;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/ZoomControl;->setOnZoomChangeListener(Lcom/android/videoeditor/widgets/ZoomControl$OnZoomChangeListener;)V

    .line 483
    return-void

    .line 433
    .end local v1           #display:Landroid/view/Display;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mRestartPreview:Z

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 21
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 758
    sparse-switch p1, :sswitch_data_0

    .line 991
    const/4 v5, 0x0

    .end local p1
    :goto_0
    return-object v5

    .line 760
    .restart local p1
    :sswitch_0
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 761
    .local v18, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f09000a

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 762
    const-string v5, "aspect_ratios"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 764
    .local v17, aspectRatios:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 765
    .local v19, count:I
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 766
    .local v16, aspectRatioStrings:[Ljava/lang/CharSequence;
    const/16 v20, 0x0

    .end local p1
    .local v20, i:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 767
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 768
    .local v15, aspectRatio:I
    packed-switch v15, :pswitch_data_0

    .line 766
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 770
    :pswitch_0
    const v5, 0x7f090029

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v16, v20

    goto :goto_2

    .line 775
    :pswitch_1
    const v5, 0x7f09002a

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v16, v20

    goto :goto_2

    .line 780
    :pswitch_2
    const v5, 0x7f09002b

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v16, v20

    goto :goto_2

    .line 785
    :pswitch_3
    const v5, 0x7f09002c

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v16, v20

    goto :goto_2

    .line 790
    :pswitch_4
    const v5, 0x7f09002d

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v16, v20

    goto :goto_2

    .line 800
    .end local v15           #aspectRatio:I
    :cond_0
    const-string v5, "current_aspect_ratio"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lcom/android/videoeditor/VideoEditorActivity$8;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/VideoEditorActivity$8;-><init>(Lcom/android/videoeditor/VideoEditorActivity;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 814
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 815
    new-instance v5, Lcom/android/videoeditor/VideoEditorActivity$9;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$9;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 823
    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 827
    .end local v16           #aspectRatioStrings:[Ljava/lang/CharSequence;
    .end local v17           #aspectRatios:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18           #builder:Landroid/app/AlertDialog$Builder;
    .end local v19           #count:I
    .end local v20           #i:I
    .restart local p1
    :sswitch_1
    const v5, 0x7f09000c

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const v5, 0x7f09000f

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v5, 0x7f09007e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/videoeditor/VideoEditorActivity$10;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$10;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    const v5, 0x7f09007f

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/videoeditor/VideoEditorActivity$11;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$11;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    new-instance v13, Lcom/android/videoeditor/VideoEditorActivity$12;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$12;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v14}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 861
    :sswitch_2
    const v5, 0x7f09000c

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const v5, 0x7f090030

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v5, 0x7f09007e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/videoeditor/VideoEditorActivity$13;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/VideoEditorActivity$13;-><init>(Lcom/android/videoeditor/VideoEditorActivity;Landroid/os/Bundle;)V

    const v5, 0x7f09007f

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/videoeditor/VideoEditorActivity$14;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$14;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    new-instance v13, Lcom/android/videoeditor/VideoEditorActivity$15;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$15;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v14}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 893
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 894
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 897
    :cond_1
    const v5, 0x7f09000b

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getName()Ljava/lang/String;

    move-result-object v7

    const v5, 0x104000a

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/videoeditor/VideoEditorActivity$16;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$16;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    const/high16 v5, 0x104

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/videoeditor/VideoEditorActivity$17;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$17;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    new-instance v12, Lcom/android/videoeditor/VideoEditorActivity$18;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$18;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    const/4 v13, 0x0

    const/16 v14, 0x20

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v14}, Lcom/android/videoeditor/AlertDialogs;->createEditDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;II)Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 930
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 931
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 934
    :cond_2
    new-instance v5, Lcom/android/videoeditor/VideoEditorActivity$19;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$19;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    new-instance v6, Lcom/android/videoeditor/VideoEditorActivity$20;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$20;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    new-instance v7, Lcom/android/videoeditor/VideoEditorActivity$21;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$21;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/videoeditor/service/VideoEditorProject;->getAspectRatio()I

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/ExportOptionsDialog;->create(Landroid/content/Context;Lcom/android/videoeditor/ExportOptionsDialog$ExportOptionsListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;I)Landroid/app/Dialog;

    move-result-object v5

    goto/16 :goto_0

    .line 967
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v5

    goto/16 :goto_0

    .line 971
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v5

    goto/16 :goto_0

    .line 975
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v5

    goto/16 :goto_0

    .line 979
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v5

    goto/16 :goto_0

    .line 983
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v5

    goto/16 :goto_0

    .line 987
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v5

    goto/16 :goto_0

    .line 758
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_7
        0xc -> :sswitch_6
        0xd -> :sswitch_8
        0xe -> :sswitch_9
        0xf -> :sswitch_a
        0x64 -> :sswitch_2
    .end sparse-switch

    .line 768
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 531
    const/16 v0, 0xb

    const v1, 0x7f09000d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 535
    const/16 v0, 0xc

    const v1, 0x7f09000e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 539
    const/4 v0, 0x3

    const v1, 0x7f090004

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 543
    const v0, 0x7f090005

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020035

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 547
    const/4 v0, 0x4

    const v1, 0x7f090006

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020031

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 549
    const/4 v0, 0x5

    const v1, 0x7f09000a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 551
    const/4 v0, 0x6

    const v1, 0x7f09000b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 553
    const/16 v0, 0x8

    const v1, 0x7f090008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 554
    const/16 v0, 0x9

    const v1, 0x7f090009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 556
    const/16 v0, 0xa

    const v1, 0x7f090007

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 557
    const/4 v0, 0x7

    const v1, 0x7f09000c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 558
    const/4 v0, 0x1

    return v0
.end method

.method protected onExportComplete()V
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    .line 1627
    :cond_0
    return-void
.end method

.method protected onExportProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1616
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    .line 602
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 748
    const/4 v10, 0x0

    .end local p1
    :goto_0
    return v10

    .line 604
    .restart local p1
    :sswitch_0
    new-instance v6, Landroid/content/Intent;

    const-class v10, Lcom/android/videoeditor/ProjectsActivity;

    invoke-direct {v6, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 605
    .local v6, intent:Landroid/content/Intent;
    const/high16 v10, 0x400

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 606
    invoke-virtual {p0, v6}, Lcom/android/videoeditor/VideoEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 608
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->finish()V

    .line 609
    const/4 v10, 0x1

    goto :goto_0

    .line 613
    .end local v6           #intent:Landroid/content/Intent;
    :sswitch_1
    iget-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v11, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/android/videoeditor/service/VideoEditorProject;->getInsertAfterMediaItem(J)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v7

    .line 615
    .local v7, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v7, :cond_0

    .line 616
    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 622
    :goto_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 623
    .local v9, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    .line 625
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v10, "output"

    iget-object v11, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 627
    const-string v10, "android.intent.extra.videoQuality"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    const/4 v10, 0x4

    invoke-virtual {p0, v6, v10}, Lcom/android/videoeditor/VideoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 629
    const/4 v10, 0x1

    goto :goto_0

    .line 618
    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_0
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    goto :goto_1

    .line 633
    .end local v7           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :sswitch_2
    iget-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v11, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/android/videoeditor/service/VideoEditorProject;->getInsertAfterMediaItem(J)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v7

    .line 635
    .restart local v7       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v7, :cond_1

    .line 636
    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 642
    :goto_2
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 643
    .restart local v9       #values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    .line 645
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v10, "output"

    iget-object v11, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 647
    const-string v10, "android.intent.extra.videoQuality"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    const/4 v10, 0x5

    invoke-virtual {p0, v6, v10}, Lcom/android/videoeditor/VideoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 649
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 638
    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    goto :goto_2

    .line 653
    .end local v7           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :sswitch_3
    iget-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v11, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/android/videoeditor/service/VideoEditorProject;->getInsertAfterMediaItem(J)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v7

    .line 655
    .restart local v7       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v7, :cond_2

    .line 656
    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 661
    :goto_3
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.GET_CONTENT"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v10, "video/*"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const-string v10, "android.intent.extra.LOCAL_ONLY"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 664
    const/4 v10, 0x1

    invoke-virtual {p0, v6, v10}, Lcom/android/videoeditor/VideoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 665
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 658
    .end local v6           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    goto :goto_3

    .line 669
    .end local v7           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :sswitch_4
    iget-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v11, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/android/videoeditor/service/VideoEditorProject;->getInsertAfterMediaItem(J)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v7

    .line 671
    .restart local v7       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v7, :cond_3

    .line 672
    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 677
    :goto_4
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.GET_CONTENT"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v10, "image/*"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string v10, "android.intent.extra.LOCAL_ONLY"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 680
    const/4 v10, 0x2

    invoke-virtual {p0, v6, v10}, Lcom/android/videoeditor/VideoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 681
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 674
    .end local v6           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    goto :goto_4

    .line 685
    .end local v7           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :sswitch_5
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.GET_CONTENT"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v10, "audio/*"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    const/4 v10, 0x3

    invoke-virtual {p0, v6, v10}, Lcom/android/videoeditor/VideoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 688
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 692
    .end local v6           #intent:Landroid/content/Intent;
    :sswitch_6
    iget-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->getUniqueAspectRatiosList()Ljava/util/ArrayList;

    move-result-object v1

    .line 693
    .local v1, aspectRatiosList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 694
    .local v8, size:I
    const/4 v10, 0x1

    if-le v8, v10, :cond_5

    .line 695
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 696
    .local v2, bundle:Landroid/os/Bundle;
    const-string v10, "aspect_ratios"

    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 699
    iget-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->getAspectRatio()I

    move-result v3

    .line 700
    .local v3, currentAspectRatio:I
    const/4 v4, 0x0

    .line 701
    .local v4, currentAspectRatioIndex:I
    const/4 v5, 0x0

    .end local p1
    .local v5, i:I
    :goto_5
    if-ge v5, v8, :cond_4

    .line 702
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 703
    .local v0, aspectRatio:I
    if-ne v0, v3, :cond_6

    .line 704
    move v4, v5

    .line 708
    .end local v0           #aspectRatio:I
    :cond_4
    const-string v10, "current_aspect_ratio"

    invoke-virtual {v2, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 709
    const/4 v10, 0x3

    invoke-virtual {p0, v10, v2}, Lcom/android/videoeditor/VideoEditorActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 711
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #currentAspectRatio:I
    .end local v4           #currentAspectRatioIndex:I
    .end local v5           #i:I
    :cond_5
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 701
    .restart local v0       #aspectRatio:I
    .restart local v2       #bundle:Landroid/os/Bundle;
    .restart local v3       #currentAspectRatio:I
    .restart local v4       #currentAspectRatioIndex:I
    .restart local v5       #i:I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 715
    .end local v0           #aspectRatio:I
    .end local v1           #aspectRatiosList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #currentAspectRatio:I
    .end local v4           #currentAspectRatioIndex:I
    .end local v5           #i:I
    .end local v8           #size:I
    .restart local p1
    :sswitch_7
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/VideoEditorActivity;->showDialog(I)V

    .line 716
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 721
    :sswitch_8
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/VideoEditorActivity;->showDialog(I)V

    .line 722
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 727
    :sswitch_9
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/VideoEditorActivity;->showDialog(I)V

    .line 728
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 732
    :sswitch_a
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    .restart local v6       #intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->getExportedMovieUri()Landroid/net/Uri;

    move-result-object v10

    const-string v11, "video/*"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const-string v10, "android.intent.extra.finishOnCompletion"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 735
    invoke-virtual {p0, v6}, Lcom/android/videoeditor/VideoEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 736
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 740
    .end local v6           #intent:Landroid/content/Intent;
    :sswitch_b
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.STREAM"

    iget-object v11, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getExportedMovieUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 742
    const-string v10, "video/*"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    invoke-virtual {p0, v6}, Lcom/android/videoeditor/VideoEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 744
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 602
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 490
    invoke-super {p0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onPause()V

    .line 494
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    .line 498
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 566
    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v3, :cond_1

    move v2, v5

    .line 567
    .local v2, haveProject:Z
    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v3

    if-lez v3, :cond_2

    move v1, v5

    .line 568
    .local v1, haveMediaItems:Z
    :goto_1
    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 569
    const/16 v3, 0xc

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 570
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 571
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 572
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTracks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    move v4, v5

    :goto_2
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 574
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->hasMultipleAspectRatios()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_3
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 576
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 579
    move v0, v2

    .line 580
    .local v0, enableMenu:Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v3, :cond_0

    .line 582
    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v3}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1000(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v0

    .line 583
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 584
    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/videoeditor/service/ApiService;->isProjectEdited(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v5

    .line 588
    :cond_0
    :goto_4
    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    move v4, v5

    :goto_5
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 589
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getExportedMovieUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_6
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 591
    const/16 v3, 0xa

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getExportedMovieUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_7
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 593
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 594
    return v5

    .end local v0           #enableMenu:Z
    .end local v1           #haveMediaItems:Z
    .end local v2           #haveProject:Z
    :cond_1
    move v2, v6

    .line 566
    goto/16 :goto_0

    .restart local v2       #haveProject:Z
    :cond_2
    move v1, v6

    .line 567
    goto/16 :goto_1

    .restart local v1       #haveMediaItems:Z
    :cond_3
    move v4, v6

    .line 572
    goto :goto_2

    :cond_4
    move v4, v6

    .line 574
    goto :goto_3

    .restart local v0       #enableMenu:Z
    :cond_5
    move v0, v6

    .line 584
    goto :goto_4

    :cond_6
    move v4, v6

    .line 588
    goto :goto_5

    :cond_7
    move v4, v6

    .line 589
    goto :goto_6

    :cond_8
    move v4, v6

    .line 591
    goto :goto_7
.end method

.method protected onProjectEditStateChange(Z)V
    .locals 5
    .parameter "projectEdited"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1634
    const-string v0, "VideoEditorActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1635
    const-string v0, "VideoEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProjectEditStateChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewPlayButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/16 v1, 0x64

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 1639
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewPlayButton:Landroid/widget/ImageButton;

    if-nez p1, :cond_2

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1640
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewRewindButton:Landroid/widget/ImageButton;

    if-nez p1, :cond_3

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1641
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewNextButton:Landroid/widget/ImageButton;

    if-nez p1, :cond_4

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1642
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewPrevButton:Landroid/widget/ImageButton;

    if-nez p1, :cond_5

    move v1, v4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1644
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->invalidateCAB()V

    .line 1645
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->invalidateCAB()V

    .line 1646
    return-void

    .line 1638
    :cond_1
    const/16 v1, 0xff

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1639
    goto :goto_1

    :cond_3
    move v1, v3

    .line 1640
    goto :goto_2

    :cond_4
    move v1, v3

    .line 1641
    goto :goto_3

    :cond_5
    move v1, v3

    .line 1642
    goto :goto_4
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 505
    invoke-super {p0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onResume()V

    .line 507
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->onResume()V

    .line 509
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->onResume()V

    .line 511
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 518
    invoke-super {p0, p1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 520
    const-string v0, "insert_after_media_item_id"

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v0, "playing"

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 523
    const-string v0, "capture_uri"

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 524
    return-void

    .line 521
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setAspectRatio(I)V
    .locals 4
    .parameter "aspectRatio"

    .prologue
    .line 1543
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceView:Lcom/android/videoeditor/widgets/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/PreviewSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1546
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 1577
    :goto_0
    const-string v1, "VideoEditorActivity"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1578
    const-string v1, "VideoEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAspectRatio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceView:Lcom/android/videoeditor/widgets/PreviewSurfaceView;

    invoke-virtual {v1, v0}, Lcom/android/videoeditor/widgets/PreviewSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1581
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1582
    return-void

    .line 1548
    :pswitch_0
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1553
    :pswitch_1
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1558
    :pswitch_2
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1563
    :pswitch_3
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/lit8 v1, v1, 0xb

    div-int/lit8 v1, v1, 0x9

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1568
    :pswitch_4
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x9

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected showPreviewFrame()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1406
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-nez v0, :cond_0

    move v0, v5

    .line 1417
    :goto_0
    return v0

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPendingExportFilename:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1413
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v6

    :goto_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->previewFrame(Lcom/android/videoeditor/service/VideoEditorProject;JZ)V

    :cond_1
    move v0, v6

    .line 1417
    goto :goto_0

    :cond_2
    move v4, v5

    .line 1413
    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1341
    const-string v0, "VideoEditorActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    const-string v0, "VideoEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v0, :cond_1

    .line 1346
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0, p3, p4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;II)V

    .line 1348
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 1328
    const-string v0, "VideoEditorActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    const-string v0, "VideoEditorActivity"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_0
    new-instance v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, p0, v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;-><init>(Lcom/android/videoeditor/VideoEditorActivity;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    .line 1334
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->restartPreview()V

    .line 1335
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 1354
    const-string v0, "VideoEditorActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    const-string v0, "VideoEditorActivity"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v0, :cond_1

    .line 1360
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1200(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V

    .line 1361
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->quit()V

    .line 1362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    .line 1364
    :cond_1
    return-void
.end method

.method protected updateTimelineDuration()V
    .locals 9

    .prologue
    .line 1425
    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v7, :cond_0

    .line 1450
    :goto_0
    return-void

    .line 1429
    :cond_0
    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v7}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v2

    .line 1432
    .local v2, durationMs:J
    iget v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mActivityWidth:I

    invoke-direct {p0, v2, v3}, Lcom/android/videoeditor/VideoEditorActivity;->timeToDimension(J)I

    move-result v8

    add-int v6, v7, v8

    .line 1433
    .local v6, zoomWidth:I
    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineLayout:Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

    invoke-virtual {v7}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->getChildCount()I

    move-result v1

    .line 1434
    .local v1, childrenCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 1435
    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineLayout:Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

    invoke-virtual {v7, v4}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1436
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1437
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1438
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1434
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1441
    .end local v0           #child:Landroid/view/View;
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineLayout:Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

    iget-object v8, p0, Lcom/android/videoeditor/VideoEditorActivity;->mLayoutCallback:Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;

    invoke-virtual {v7, v8}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->requestLayout(Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;)V

    .line 1445
    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v7}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_2

    .line 1446
    invoke-virtual {p0, v2, v3}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 1449
    :cond_2
    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {v7}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->updateTimelineDuration()V

    goto :goto_0
.end method
