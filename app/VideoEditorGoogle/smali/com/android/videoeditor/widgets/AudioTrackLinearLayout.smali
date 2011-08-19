.class public Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AudioTrackLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;,
        Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;
    }
.end annotation


# static fields
.field private static final PARAM_DIALOG_AUDIO_TRACK_ID:Ljava/lang/String; = "audio_track_id"

.field private static final TAG:Ljava/lang/String; = "AudioTrackLinearLayout"


# instance fields
.field private final mAddAudioTrackButtonView:Landroid/view/View;

.field private final mAddAudioTrackButtonWidth:I

.field private mAudioTrackActionMode:Landroid/view/ActionMode;

.field private final mAudioTrackGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

.field private final mAudioTrackHeight:I

.field private final mHalfParentWidth:I

.field private mListener:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;

.field private mPlaybackInProgress:Z

.field private mProject:Lcom/android/videoeditor/service/VideoEditorProject;

.field private mTimelineDurationMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 311
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 312
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 305
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v5, 0x7f040008

    const/4 v6, 0x0

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 215
    new-instance v4, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)V

    iput-object v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .line 251
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5, v6}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 252
    .local v1, beginView:Landroid/view/View;
    new-instance v4, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$2;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$2;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addView(Landroid/view/View;)V

    .line 263
    invoke-static {p1, v5, v6}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 264
    .local v3, endView:Landroid/view/View;
    new-instance v4, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$3;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$3;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addView(Landroid/view/View;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x7f04

    invoke-static {v4, v5, v6}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonView:Landroid/view/View;

    .line 276
    iget-object v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addView(Landroid/view/View;I)V

    .line 277
    iget-object v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonView:Landroid/view/View;

    new-instance v5, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$4;

    invoke-direct {v5, p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$4;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonWidth:I

    .line 291
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 292
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mHalfParentWidth:I

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackHeight:I

    .line 297
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 298
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getAudioTrackView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->selectView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mPlaybackInProgress:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->unselectAllViews()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mListener:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;

    return-object v0
.end method

.method private getAudioTrackView(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .parameter "audioTrackId"

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v2

    .line 697
    .local v2, childrenCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 698
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 699
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 700
    .local v0, audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 705
    .end local v0           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v1           #childView:Landroid/view/View;
    :goto_1
    return-object v4

    .line 697
    .restart local v0       #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    .restart local v1       #childView:Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 705
    .end local v0           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v1           #childView:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private removeAudioTrackViews()V
    .locals 3

    .prologue
    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 714
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 715
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 716
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->removeViewAt(I)V

    goto :goto_0

    .line 718
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    .end local v1           #tag:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->requestLayout()V

    .line 723
    return-void
.end method

.method private selectView(Landroid/view/View;Z)V
    .locals 2
    .parameter "selectedView"
    .parameter "selected"

    .prologue
    .line 770
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 785
    :goto_0
    return-void

    .line 774
    :cond_0
    if-eqz p2, :cond_1

    .line 775
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->unselectAllViews()V

    .line 778
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_2

    .line 779
    new-instance v1, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-direct {v1, p0, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Lcom/android/videoeditor/service/MovieAudioTrack;)V

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 784
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method private unselectAllViews()V
    .locals 1

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 792
    return-void
.end method

.method private updateAddAudioTrackButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 729
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 740
    :goto_0
    return-void

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addAudioTrack(Lcom/android/videoeditor/service/MovieAudioTrack;)Landroid/view/View;
    .locals 5
    .parameter "audioTrack"

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->updateAddAudioTrackButton()V

    .line 405
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040002

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/AudioTrackView;

    .line 408
    .local v0, audioTrackView:Lcom/android/videoeditor/widgets/AudioTrackView;
    invoke-virtual {v0, p1}, Lcom/android/videoeditor/widgets/AudioTrackView;->setTag(Ljava/lang/Object;)V

    .line 410
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/AudioTrackView;->setGestureListener(Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;)V

    .line 412
    iget-wide v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    invoke-virtual {v0, v2, v3}, Lcom/android/videoeditor/widgets/AudioTrackView;->updateTimelineDuration(J)V

    .line 414
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieAudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 415
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieAudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/AudioTrackView;->setWaveformData(Landroid/media/videoeditor/WaveformData;)V

    .line 421
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 423
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->requestLayout()V

    .line 430
    return-object v0

    .line 417
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/videoeditor/service/ApiService;->extractAudioTrackAudioWaveform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addAudioTracks(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieAudioTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, audioTracks:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieAudioTrack;>;"
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 381
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    .line 384
    :cond_0
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->updateAddAudioTrackButton()V

    .line 386
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->removeAudioTrackViews()V

    .line 388
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    .line 390
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 391
    .local v0, audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addAudioTrack(Lcom/android/videoeditor/service/MovieAudioTrack;)Landroid/view/View;

    goto :goto_0

    .line 393
    .end local v0           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    :cond_1
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "id"
    .parameter "bundle"

    .prologue
    const/4 v3, 0x0

    .line 635
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v1, :cond_0

    move-object v1, v3

    .line 684
    :goto_0
    return-object v1

    .line 639
    :cond_0
    packed-switch p1, :pswitch_data_0

    move-object v1, v3

    .line 684
    goto :goto_0

    .line 641
    :pswitch_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    const-string v2, "audio_track_id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v10

    .line 643
    .local v10, audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    if-nez v10, :cond_1

    move-object v1, v3

    .line 644
    goto :goto_0

    .line 647
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 648
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieAudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/videoeditor/util/FileUtils;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f090011

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09007e

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;

    invoke-direct {v5, p0, v0, v10}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/app/Activity;Lcom/android/videoeditor/service/MovieAudioTrack;)V

    const v6, 0x7f09007f

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$6;

    invoke-direct {v7, p0, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$6;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/app/Activity;)V

    new-instance v8, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$7;

    invoke-direct {v8, p0, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$7;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/app/Activity;)V

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public onGeneratePreviewProgress(Ljava/lang/String;II)V
    .locals 4
    .parameter "audioTrackId"
    .parameter "action"
    .parameter "progress"

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getAudioTrackView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/AudioTrackView;

    .line 486
    .local v0, audioTrackView:Lcom/android/videoeditor/widgets/AudioTrackView;
    if-nez v0, :cond_0

    .line 487
    const-string v1, "AudioTrackLinearLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGeneratePreviewProgress: audio track view not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/videoeditor/widgets/AudioTrackView;->setProgress(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v2

    .line 564
    .local v2, childrenCount:I
    iget-wide v10, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 565
    const/4 v5, 0x0

    .line 566
    .local v5, left:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_8

    .line 567
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 568
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 569
    .local v0, audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v0, :cond_0

    .line 571
    const/4 v10, 0x0

    iget v11, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackHeight:I

    invoke-virtual {v1, v5, v10, v5, v11}, Landroid/view/View;->layout(IIII)V

    .line 566
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 573
    :cond_0
    const/4 v10, 0x0

    iget v11, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mHalfParentWidth:I

    add-int/2addr v11, v5

    iget v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackHeight:I

    invoke-virtual {v1, v5, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 574
    iget v10, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mHalfParentWidth:I

    add-int/2addr v5, v10

    goto :goto_1

    .line 578
    .end local v0           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v1           #childView:Landroid/view/View;
    .end local v3           #i:I
    .end local v5           #left:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mHalfParentWidth:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v8, v10, v11

    .line 579
    .local v8, viewWidth:I
    const/4 v5, 0x0

    .line 581
    .restart local v5       #left:I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    const/high16 v10, 0x7f08

    invoke-virtual {p1, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 584
    .local v6, leftViewWidth:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v2, :cond_8

    .line 585
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 586
    .restart local v1       #childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    .line 587
    .local v4, id:I
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 588
    .restart local v0       #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v0, :cond_5

    .line 590
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->isAppLooping()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 591
    iget-wide v10, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getAppStartTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    int-to-long v12, v8

    mul-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    div-long/2addr v10, v12

    long-to-int v9, v10

    .line 604
    .local v9, width:I
    :goto_3
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getAppStartTime()J

    move-result-wide v10

    int-to-long v12, v8

    mul-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    div-long/2addr v10, v12

    long-to-int v10, v10

    add-int v7, v10, v6

    .line 607
    .local v7, trackLeft:I
    const/4 v10, 0x0

    add-int v11, v7, v9

    iget v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackHeight:I

    invoke-virtual {v1, v7, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 608
    add-int v5, v7, v9

    .line 584
    .end local v7           #trackLeft:I
    .end local v9           #width:I
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 594
    :cond_3
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getAppStartTime()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getTimelineDuration()J

    move-result-wide v12

    add-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    .line 596
    iget-wide v10, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getAppStartTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    int-to-long v12, v8

    mul-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    div-long/2addr v10, v12

    long-to-int v9, v10

    .restart local v9       #width:I
    goto :goto_3

    .line 599
    .end local v9           #width:I
    :cond_4
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getTimelineDuration()J

    move-result-wide v10

    int-to-long v12, v8

    mul-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    div-long/2addr v10, v12

    long-to-int v9, v10

    .restart local v9       #width:I
    goto :goto_3

    .line 609
    .end local v9           #width:I
    :cond_5
    const v10, 0x7f080003

    if-ne v4, v10, :cond_6

    .line 610
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_2

    .line 611
    const/4 v10, 0x0

    iget v11, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonWidth:I

    add-int/2addr v11, v5

    iget v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackHeight:I

    invoke-virtual {v1, v5, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 613
    iget v10, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonWidth:I

    add-int/2addr v5, v10

    goto :goto_4

    .line 615
    :cond_6
    if-nez v3, :cond_7

    .line 616
    const/4 v10, 0x0

    add-int v11, v5, v6

    iget v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackHeight:I

    invoke-virtual {v1, v5, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 617
    add-int/2addr v5, v6

    goto :goto_4

    .line 619
    :cond_7
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getWidth()I

    move-result v11

    iget v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackHeight:I

    invoke-virtual {v1, v5, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 623
    .end local v0           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v1           #childView:Landroid/view/View;
    .end local v4           #id:I
    .end local v6           #leftViewWidth:I
    .end local v8           #viewWidth:I
    :cond_8
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v4

    .line 319
    .local v4, childrenCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 320
    invoke-virtual {p0, v5}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 321
    .local v3, childView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 322
    .local v6, tag:Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 323
    move-object v0, v3

    check-cast v0, Lcom/android/videoeditor/widgets/AudioTrackView;

    move-object v2, v0

    .line 324
    .local v2, audioTrackView:Lcom/android/videoeditor/widgets/AudioTrackView;
    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/AudioTrackView;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v7

    if-nez v7, :cond_0

    .line 325
    move-object v0, v6

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    move-object v1, v0

    .line 326
    .local v1, audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 327
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/videoeditor/widgets/AudioTrackView;->setWaveformData(Landroid/media/videoeditor/WaveformData;)V

    .line 328
    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/AudioTrackView;->invalidate()V

    .line 319
    .end local v1           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v2           #audioTrackView:Lcom/android/videoeditor/widgets/AudioTrackView;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 333
    .end local v3           #childView:Landroid/view/View;
    .end local v6           #tag:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public removeAudioTrack(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .parameter "audioTrackId"

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v2

    .line 441
    .local v2, childrenCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 442
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 443
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 444
    .local v0, audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->removeViewAt(I)V

    .line 447
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->updateAddAudioTrackButton()V

    .line 449
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->requestLayout()V

    move-object v4, v1

    .line 454
    .end local v0           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v1           #childView:Landroid/view/View;
    :goto_1
    return-object v4

    .line 441
    .restart local v0       #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    .restart local v1       #childView:Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 454
    .end local v0           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v1           #childView:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setListener(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mListener:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;

    .line 340
    return-void
.end method

.method public setPlaybackInProgress(Z)V
    .locals 1
    .parameter "inProgress"

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mPlaybackInProgress:Z

    .line 367
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    .line 371
    :cond_0
    return-void
.end method

.method public setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V
    .locals 1
    .parameter "project"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    .line 352
    :cond_0
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 354
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->updateAddAudioTrackButton()V

    .line 356
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->removeAudioTrackViews()V

    .line 357
    return-void
.end method

.method public setSelected(Z)V
    .locals 4
    .parameter "selected"

    .prologue
    .line 747
    if-nez p1, :cond_0

    .line 749
    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_0

    .line 750
    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 751
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    .line 755
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v1

    .line 756
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 757
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 758
    .local v0, childView:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 756
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 760
    .end local v0           #childView:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setWaveformExtractionComplete(Ljava/lang/String;)V
    .locals 5
    .parameter "audioTrackId"

    .prologue
    .line 517
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getAudioTrackView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/widgets/AudioTrackView;

    .line 518
    .local v1, audioTrackView:Lcom/android/videoeditor/widgets/AudioTrackView;
    if-nez v1, :cond_0

    .line 519
    const-string v2, "AudioTrackLinearLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWaveformExtractionComplete: audio track view not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_0
    return-void

    .line 524
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/AudioTrackView;->setProgress(I)V

    .line 526
    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/AudioTrackView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 527
    .local v0, audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 528
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/AudioTrackView;->setWaveformData(Landroid/media/videoeditor/WaveformData;)V

    .line 531
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->requestLayout()V

    .line 532
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->invalidate()V

    goto :goto_0
.end method

.method public setWaveformExtractionProgress(Ljava/lang/String;I)V
    .locals 4
    .parameter "audioTrackId"
    .parameter "progress"

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getAudioTrackView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/AudioTrackView;

    .line 502
    .local v0, audioTrackView:Lcom/android/videoeditor/widgets/AudioTrackView;
    if-nez v0, :cond_0

    .line 503
    const-string v1, "AudioTrackLinearLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWaveformExtractionProgress: audio track view not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/AudioTrackView;->setProgress(I)V

    goto :goto_0
.end method

.method public updateAudioTrack(Ljava/lang/String;)V
    .locals 4
    .parameter "audioTrackId"

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getAudioTrackView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/AudioTrackView;

    .line 464
    .local v0, audioTrackView:Lcom/android/videoeditor/widgets/AudioTrackView;
    if-nez v0, :cond_0

    .line 465
    const-string v1, "AudioTrackLinearLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAudioTrack: audio track view not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->requestLayout()V

    .line 474
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->invalidate()V

    goto :goto_0
.end method

.method public updateTimelineDuration()V
    .locals 6

    .prologue
    .line 539
    iget-object v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    .line 542
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->updateAddAudioTrackButton()V

    .line 545
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v2

    .line 546
    .local v2, childrenCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 547
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 548
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 549
    .local v0, audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v0, :cond_0

    .line 550
    check-cast v1, Lcom/android/videoeditor/widgets/AudioTrackView;

    .end local v1           #childView:Landroid/view/View;
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    invoke-virtual {v1, v4, v5}, Lcom/android/videoeditor/widgets/AudioTrackView;->updateTimelineDuration(J)V

    .line 546
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 554
    .end local v0           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->requestLayout()V

    .line 555
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->invalidate()V

    .line 556
    return-void
.end method
