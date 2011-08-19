.class public Lcom/android/videoeditor/widgets/MediaLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MediaLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;,
        Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;,
        Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;
    }
.end annotation


# static fields
.field private static final MAXIMUM_IMAGE_DURATION:J = 0x1770L

.field private static final MAXIMUM_TRANSITION_DURATION:J = 0xbb8L

.field private static final MINIMUM_TRANSITION_DURATION:J = 0xfaL

.field private static final PARAM_DIALOG_CURRENT_RENDERING_MODE:Ljava/lang/String; = "rendering_mode"

.field private static final PARAM_DIALOG_MEDIA_ITEM_ID:Ljava/lang/String; = "media_item_id"

.field private static final PARAM_DIALOG_TRANSITION_ID:Ljava/lang/String; = "transition_id"

.field private static final TAG:Ljava/lang/String; = "MediaLinearLayout"

.field private static final TIME_TOLERANCE:J = 0x1eL


# instance fields
.field private mDragMediaItemId:Ljava/lang/String;

.field private mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field private mDropIndex:I

.field private mFirstEntered:Z

.field private final mHalfParentWidth:I

.field private final mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLeftAddClipButton:Landroid/widget/ImageButton;

.field private mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

.field private mListener:Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;

.field private mMediaItemActionMode:Landroid/view/ActionMode;

.field private final mMediaItemGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

.field private mMoveLayoutPending:Z

.field private mPlaybackInProgress:Z

.field private mPrevDragPosition:F

.field private mPrevDragScrollTime:J

.field private mProject:Lcom/android/videoeditor/service/VideoEditorProject;

.field private final mRightAddClipButton:Landroid/widget/ImageButton;

.field private mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

.field private mSelectedView:Landroid/view/View;

.field private mTransitionActionMode:Landroid/view/ActionMode;

.field private final mTransitionGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

.field private final mTransitionVerticalInset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 603
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 604
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 597
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    .line 411
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 413
    new-instance v3, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .line 476
    new-instance v3, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .line 512
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040005

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 513
    .local v0, beginView:Landroid/view/View;
    new-instance v3, Lcom/android/videoeditor/widgets/MediaLinearLayout$3;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$3;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    const v3, 0x7f08000d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    .line 524
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 525
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/videoeditor/widgets/MediaLinearLayout$4;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$4;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addView(Landroid/view/View;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040007

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 542
    .local v2, endView:Landroid/view/View;
    new-instance v3, Lcom/android/videoeditor/widgets/MediaLinearLayout$5;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$5;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    const v3, 0x7f080011

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightAddClipButton:Landroid/widget/ImageButton;

    .line 553
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightAddClipButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/videoeditor/widgets/MediaLinearLayout$6;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$6;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addView(Landroid/view/View;)V

    .line 572
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04000c

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/widgets/HandleView;

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    .line 573
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addView(Landroid/view/View;)V

    .line 575
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040013

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/widgets/HandleView;

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    .line 576
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addView(Landroid/view/View;)V

    .line 578
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHandleWidth:I

    .line 580
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionVerticalInset:I

    .line 584
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 585
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    .line 587
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHandler:Landroid/os/Handler;

    .line 589
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 590
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->selectView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->showAddMediaItemButtons(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieTransition;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->editTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/videoeditor/widgets/MediaLinearLayout;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getTransitionView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->unselectAllViews()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mListener:Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setTrimState(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMoveLayoutPending:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMoveLayoutPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPlaybackInProgress:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->invalidateAllChildren()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/videoeditor/widgets/MediaLinearLayout;ILcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->pickEffect(ILcom/android/videoeditor/service/MovieMediaItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/videoeditor/widgets/MediaLinearLayout;ILcom/android/videoeditor/service/MovieMediaItem;Lcom/android/videoeditor/service/MovieEffect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->editEffect(ILcom/android/videoeditor/service/MovieMediaItem;Lcom/android/videoeditor/service/MovieEffect;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/videoeditor/widgets/MediaLinearLayout;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->pickOverlay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->pickTransition(Lcom/android/videoeditor/service/MovieMediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/videoeditor/widgets/MediaLinearLayout;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getMediaItemView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    return-object v0
.end method

.method private addMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 13
    .parameter "mediaItem"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x5

    .line 707
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f04000f

    invoke-static {v9, v10, v12}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 708
    .local v5, mediaItemView:Landroid/view/View;
    move-object v0, v5

    check-cast v0, Lcom/android/videoeditor/widgets/MediaItemView;

    move-object v9, v0

    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/MediaItemView;->setGestureListener(Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;)V

    .line 709
    move-object v0, v5

    check-cast v0, Lcom/android/videoeditor/widgets/MediaItemView;

    move-object v9, v0

    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/MediaItemView;->setProjectPath(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v5, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 714
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 717
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x3

    sub-int/2addr v9, v10

    invoke-virtual {p0, v5, v9, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 720
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v1

    .line 721
    .local v1, beginTransition:Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v1, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v2

    .line 724
    .local v2, cc:I
    if-le v2, v11, :cond_3

    .line 725
    sub-int v9, v2, v11

    invoke-virtual {p0, v9}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 726
    .local v8, view:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 728
    .local v7, tag:Ljava/lang/Object;
    if-eqz v7, :cond_0

    instance-of v9, v7, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v9, :cond_0

    .line 729
    move-object v0, v7

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v6, v0

    .line 730
    .local v6, prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v1, v9}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    .line 737
    .end local v2           #cc:I
    .end local v6           #prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v7           #tag:Ljava/lang/Object;
    .end local v8           #view:Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v3

    .line 738
    .local v3, endTransition:Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v3, :cond_1

    .line 739
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v3, v9}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 745
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v9, :cond_2

    .line 746
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v9}, Landroid/view/ActionMode;->invalidate()V

    .line 750
    :cond_2
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 751
    return-void

    .line 733
    .end local v3           #endTransition:Lcom/android/videoeditor/service/MovieTransition;
    .restart local v2       #cc:I
    :cond_3
    invoke-virtual {p0, v1, v12}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    goto :goto_0
.end method

.method private computeViewDuration(Landroid/view/View;)J
    .locals 8
    .parameter "view"

    .prologue
    .line 1546
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1547
    .local v4, tag:Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 1548
    instance-of v6, v4, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v6, :cond_2

    .line 1549
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1550
    .local v3, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v1

    .line 1551
    .local v1, durationMs:J
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1552
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v6

    sub-long/2addr v1, v6

    .line 1555
    :cond_0
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1556
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v6

    sub-long/2addr v1, v6

    .line 1566
    .end local v3           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    :goto_0
    return-wide v1

    .line 1559
    .end local v1           #durationMs:J
    :cond_2
    move-object v0, v4

    check-cast v0, Lcom/android/videoeditor/service/MovieTransition;

    move-object v5, v0

    .line 1560
    .local v5, transition:Lcom/android/videoeditor/service/MovieTransition;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v1

    .line 1561
    .restart local v1       #durationMs:J
    goto :goto_0

    .line 1563
    .end local v1           #durationMs:J
    .end local v5           #transition:Lcom/android/videoeditor/service/MovieTransition;
    :cond_3
    const-wide/16 v1, 0x0

    .restart local v1       #durationMs:J
    goto :goto_0
.end method

.method private editEffect(ILcom/android/videoeditor/service/MovieMediaItem;Lcom/android/videoeditor/service/MovieEffect;)V
    .locals 3
    .parameter "category"
    .parameter "mediaItem"
    .parameter "effect"

    .prologue
    .line 2128
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/videoeditor/EffectsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2129
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "category"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2130
    const-string v1, "media_item_id"

    invoke-virtual {p2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2131
    const-string v1, "effect"

    invoke-virtual {p3}, Lcom/android/videoeditor/service/MovieEffect;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2132
    const-string v1, "filename"

    invoke-virtual {p2}, Lcom/android/videoeditor/service/MovieMediaItem;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2133
    const-string v1, "width"

    invoke-virtual {p2}, Lcom/android/videoeditor/service/MovieMediaItem;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2134
    const-string v1, "height"

    invoke-virtual {p2}, Lcom/android/videoeditor/service/MovieMediaItem;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2135
    invoke-virtual {p3}, Lcom/android/videoeditor/service/MovieEffect;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 2136
    const-string v1, "start_rect"

    invoke-virtual {p3}, Lcom/android/videoeditor/service/MovieEffect;->getStartRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2137
    const-string v1, "end_rect"

    invoke-virtual {p3}, Lcom/android/videoeditor/service/MovieEffect;->getEndRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2140
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2142
    return-void
.end method

.method private editTransition(Lcom/android/videoeditor/service/MovieTransition;)V
    .locals 6
    .parameter "transition"

    .prologue
    .line 2179
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v3, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPreviousMediaItem(Lcom/android/videoeditor/service/MovieTransition;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 2180
    .local v0, afterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2182
    .local v1, afterMediaItemId:Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/videoeditor/TransitionsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2183
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "media_item_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2184
    const-string v3, "transition_id"

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2185
    const-string v3, "transition"

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieTransition;->getType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2186
    const-string v3, "min_duration"

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2187
    const-string v3, "default_duration"

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2188
    const-string v3, "max_duration"

    invoke-direct {p0, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getMaxTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2190
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2192
    return-void

    .line 2180
    .end local v1           #afterMediaItemId:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .restart local p0
    :cond_0
    const/4 v3, 0x0

    move-object v1, v3

    goto :goto_0
.end method

.method private getLeftDropPosition()J
    .locals 13

    .prologue
    .line 1985
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v6

    .line 1986
    .local v6, mediaItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    const-wide/16 v0, 0x0

    .line 1987
    .local v0, beginMs:J
    const-wide/16 v2, 0x0

    .line 1988
    .local v2, endMs:J
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v9

    .line 1990
    .local v9, timeMs:J
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1991
    .local v7, mediaItemsCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v7, :cond_6

    .line 1992
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1994
    .local v5, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v11

    add-long v2, v0, v11

    .line 1996
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 1997
    const/4 v11, 0x1

    sub-int v11, v7, v11

    if-ge v4, v11, :cond_0

    .line 1998
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v11

    sub-long/2addr v2, v11

    .line 2002
    :cond_0
    cmp-long v11, v9, v0

    if-lez v11, :cond_5

    cmp-long v11, v9, v2

    if-gtz v11, :cond_5

    .line 2003
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 2004
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v11

    add-long/2addr v0, v11

    .line 2007
    :cond_1
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 2008
    if-lez v4, :cond_3

    .line 2010
    const/4 v11, 0x1

    sub-int v11, v4, v11

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2011
    .local v8, prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2012
    iput-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2013
    iput v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    move-wide v11, v0

    .line 2035
    .end local v5           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v8           #prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return-wide v11

    .line 2016
    .restart local v5       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .restart local v8       #prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2017
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    move-wide v11, v0

    .line 2018
    goto :goto_1

    .line 2021
    .end local v8           #prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_3
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2022
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    .line 2023
    const-wide/16 v11, 0x0

    goto :goto_1

    .line 2026
    :cond_4
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2027
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    move-wide v11, v0

    .line 2028
    goto :goto_1

    .line 2032
    :cond_5
    move-wide v0, v2

    .line 1991
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v5           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_6
    move-wide v11, v9

    .line 2035
    goto :goto_1
.end method

.method private getMaxTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J
    .locals 12
    .parameter "afterMediaItem"

    .prologue
    const-wide/16 v10, 0xbb8

    const-wide/16 v8, 0x4

    .line 2340
    if-nez p1, :cond_0

    .line 2341
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getFirstMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v1

    .line 2342
    .local v1, firstMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2352
    .end local v1           #firstMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_0
    return-wide v4

    .line 2344
    :cond_0
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->isLastMediaItem(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2345
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 2348
    :cond_1
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getNextMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 2350
    .local v0, beforeMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2352
    .local v2, minDurationMs:J
    div-long v4, v2, v8

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0
.end method

.method private getMediaItemView(Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "mediaItemId"

    .prologue
    .line 2201
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v2

    .line 2202
    .local v2, childrenCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2203
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2204
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 2205
    .local v5, tag:Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v6, v5, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v6, :cond_0

    .line 2206
    move-object v0, v5

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v4, v0

    .line 2207
    .local v4, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    .line 2213
    .end local v1           #childView:Landroid/view/View;
    .end local v4           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v5           #tag:Ljava/lang/Object;
    :goto_1
    return-object v6

    .line 2202
    .restart local v1       #childView:Landroid/view/View;
    .restart local v5       #tag:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2213
    .end local v1           #childView:Landroid/view/View;
    .end local v5           #tag:Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private getMediaItemViewIndex(Ljava/lang/String;)I
    .locals 7
    .parameter "mediaItemId"

    .prologue
    .line 2223
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v2

    .line 2224
    .local v2, childrenCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2225
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2226
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 2227
    .local v5, tag:Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v6, v5, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v6, :cond_0

    .line 2228
    move-object v0, v5

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v4, v0

    .line 2229
    .local v4, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v3

    .line 2235
    .end local v1           #childView:Landroid/view/View;
    .end local v4           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v5           #tag:Ljava/lang/Object;
    :goto_1
    return v6

    .line 2224
    .restart local v1       #childView:Landroid/view/View;
    .restart local v5       #tag:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2235
    .end local v1           #childView:Landroid/view/View;
    .end local v5           #tag:Ljava/lang/Object;
    :cond_1
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private getRightDropPosition()J
    .locals 13

    .prologue
    .line 2042
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v6

    .line 2043
    .local v6, mediaItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    const-wide/16 v0, 0x0

    .line 2044
    .local v0, beginMs:J
    const-wide/16 v2, 0x0

    .line 2045
    .local v2, endMs:J
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v9

    .line 2047
    .local v9, timeMs:J
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 2048
    .local v7, mediaItemsCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v7, :cond_5

    .line 2049
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2051
    .local v5, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v11

    add-long v2, v0, v11

    .line 2053
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2054
    const/4 v11, 0x1

    sub-int v11, v7, v11

    if-ge v4, v11, :cond_0

    .line 2055
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v11

    sub-long/2addr v2, v11

    .line 2059
    :cond_0
    cmp-long v11, v9, v0

    if-ltz v11, :cond_4

    cmp-long v11, v9, v2

    if-gez v11, :cond_4

    .line 2060
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 2061
    const/4 v11, 0x1

    sub-int v11, v7, v11

    if-ge v4, v11, :cond_2

    .line 2063
    add-int/lit8 v11, v4, 0x1

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2064
    .local v8, nextMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 2065
    iput-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2066
    iput v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    move-wide v11, v2

    .line 2088
    .end local v5           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v8           #nextMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return-wide v11

    .line 2069
    .restart local v5       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .restart local v8       #nextMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2070
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    move-wide v11, v2

    .line 2071
    goto :goto_1

    .line 2074
    .end local v8           #nextMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    iput-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2075
    iput v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    move-wide v11, v2

    .line 2076
    goto :goto_1

    .line 2079
    :cond_3
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2080
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    move-wide v11, v2

    .line 2081
    goto :goto_1

    .line 2085
    :cond_4
    move-wide v0, v2

    .line 2048
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v5           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_5
    move-wide v11, v9

    .line 2088
    goto :goto_1
.end method

.method private getTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J
    .locals 12
    .parameter "afterMediaItem"

    .prologue
    const-wide/16 v10, 0x5dc

    const-wide/16 v8, 0x4

    .line 2316
    if-nez p1, :cond_0

    .line 2317
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getFirstMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v1

    .line 2318
    .local v1, firstMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2328
    .end local v1           #firstMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_0
    return-wide v4

    .line 2320
    :cond_0
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->isLastMediaItem(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2321
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 2324
    :cond_1
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getNextMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 2326
    .local v0, beforeMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2328
    .local v2, minDurationMs:J
    div-long v4, v2, v8

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0
.end method

.method private getTransitionView(Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "transitionId"

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v2

    .line 2247
    .local v2, childrenCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2248
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2249
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2250
    .local v4, tag:Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v6, v4, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v6, :cond_0

    .line 2251
    move-object v0, v4

    check-cast v0, Lcom/android/videoeditor/service/MovieTransition;

    move-object v5, v0

    .line 2252
    .local v5, transition:Lcom/android/videoeditor/service/MovieTransition;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    .line 2258
    .end local v1           #childView:Landroid/view/View;
    .end local v4           #tag:Ljava/lang/Object;
    .end local v5           #transition:Lcom/android/videoeditor/service/MovieTransition;
    :goto_1
    return-object v6

    .line 2247
    .restart local v1       #childView:Landroid/view/View;
    .restart local v4       #tag:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2258
    .end local v1           #childView:Landroid/view/View;
    .end local v4           #tag:Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private invalidateAllChildren()V
    .locals 3

    .prologue
    .line 2874
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 2875
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2876
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2877
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2875
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2879
    .end local v0           #childView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private moveToPosition(F)V
    .locals 10
    .parameter "eventX"

    .prologue
    .line 1937
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1938
    .local v4, scrollView:Landroid/view/View;
    float-to-int v6, p1

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int v5, v6, v7

    .line 1939
    .local v5, x:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1940
    .local v0, now:J
    iget-wide v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragScrollTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x12c

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 1941
    int-to-float v6, v5

    iget v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragPosition:F

    const/high16 v8, 0x4228

    sub-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 1942
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getLeftDropPosition()J

    move-result-wide v2

    .line 1943
    .local v2, positionMs:J
    iget v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    if-ltz v6, :cond_1

    .line 1945
    const v6, 0x7f080002

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1953
    :goto_0
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mListener:Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;

    const/4 v7, 0x1

    invoke-interface {v6, v2, v3, v7}, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;->onRequestMovePlayhead(JZ)V

    .line 1954
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 1956
    int-to-float v6, v5

    iput v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragPosition:F

    .line 1957
    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragScrollTime:J

    .line 1979
    .end local v2           #positionMs:J
    :cond_0
    :goto_1
    return-void

    .line 1949
    .restart local v2       #positionMs:J
    :cond_1
    const v6, 0x7f080002

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 1958
    .end local v2           #positionMs:J
    :cond_2
    int-to-float v6, v5

    iget v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragPosition:F

    const/high16 v8, 0x4228

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 1959
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getRightDropPosition()J

    move-result-wide v2

    .line 1960
    .restart local v2       #positionMs:J
    iget v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    if-ltz v6, :cond_3

    .line 1962
    const v6, 0x7f080002

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1970
    :goto_2
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mListener:Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;

    const/4 v7, 0x1

    invoke-interface {v6, v2, v3, v7}, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;->onRequestMovePlayhead(JZ)V

    .line 1971
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 1973
    int-to-float v6, v5

    iput v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragPosition:F

    .line 1974
    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragScrollTime:J

    goto :goto_1

    .line 1966
    :cond_3
    const v6, 0x7f080002

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 1977
    .end local v2           #positionMs:J
    :cond_4
    int-to-float v6, v5

    iput v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragPosition:F

    goto :goto_1
.end method

.method private pickEffect(ILcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 3
    .parameter "category"
    .parameter "mediaItem"

    .prologue
    .line 2110
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/videoeditor/EffectsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2111
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "category"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2112
    const-string v1, "media_item_id"

    invoke-virtual {p2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2113
    const-string v1, "filename"

    invoke-virtual {p2}, Lcom/android/videoeditor/service/MovieMediaItem;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2114
    const-string v1, "width"

    invoke-virtual {p2}, Lcom/android/videoeditor/service/MovieMediaItem;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2115
    const-string v1, "height"

    invoke-virtual {p2}, Lcom/android/videoeditor/service/MovieMediaItem;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2116
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2118
    return-void
.end method

.method private pickOverlay(Ljava/lang/String;)V
    .locals 3
    .parameter "mediaItemId"

    .prologue
    .line 2097
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/videoeditor/OverlaysActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2098
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "media_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2099
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2101
    return-void
.end method

.method private pickTransition(Lcom/android/videoeditor/service/MovieMediaItem;)Z
    .locals 10
    .parameter "afterMediaItem"

    .prologue
    const-wide/16 v8, 0xfa

    const/4 v7, 0x0

    .line 2153
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v2

    .line 2154
    .local v2, transitionDurationMs:J
    cmp-long v4, v2, v8

    if-gez v4, :cond_0

    .line 2155
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09004b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v7

    .line 2170
    .end local p0
    :goto_0
    return v4

    .line 2161
    .restart local p0
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 2162
    .local v0, afterMediaId:Ljava/lang/String;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/videoeditor/TransitionsActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2163
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "media_item_id"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2164
    const-string v4, "min_duration"

    invoke-virtual {v1, v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2165
    const-string v4, "default_duration"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2166
    const-string v4, "max_duration"

    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getMaxTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2168
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/16 v4, 0xb

    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2170
    const/4 v4, 0x1

    goto :goto_0

    .line 2161
    .end local v0           #afterMediaId:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .restart local p0
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method private removeViews()V
    .locals 4

    .prologue
    .line 2293
    const/4 v0, 0x0

    .line 2294
    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2295
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2296
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2297
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    goto :goto_0

    .line 2299
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2302
    .end local v1           #tag:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 2305
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2306
    return-void
.end method

.method private selectView(Landroid/view/View;Z)V
    .locals 15
    .parameter "selectedView"
    .parameter "selected"

    .prologue
    .line 2400
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v9

    move v0, v9

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 2823
    :cond_0
    :goto_0
    return-void

    .line 2404
    :cond_1
    if-eqz p2, :cond_2

    .line 2406
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->unselectAllViews()V

    .line 2409
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->showAddMediaItemButtons(Z)V

    .line 2413
    :cond_2
    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->setSelected(Z)V

    .line 2415
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 2416
    .local v7, tag:Ljava/lang/Object;
    if-nez p2, :cond_3

    .line 2417
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    .line 2418
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 2419
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 2420
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 2421
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    goto :goto_0

    .line 2425
    :cond_3
    instance-of v9, v7, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v9, :cond_d

    .line 2426
    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    .line 2428
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2429
    .local v6, scrollView:Landroid/view/View;
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/videoeditor/widgets/MediaItemView;

    move-object v4, v0

    .line 2430
    .local v4, mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;
    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/MediaItemView;->isInProgress()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2431
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 2432
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 2438
    :goto_1
    move-object v0, v7

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v5, v0

    .line 2439
    .local v5, mi:Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-nez v9, :cond_4

    .line 2440
    new-instance v9, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;

    invoke-direct {v9, p0, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V

    invoke-virtual {p0, v9}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 2443
    :cond_4
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->isVideoClip()Z

    move-result v8

    .line 2444
    .local v8, videoClip:Z
    if-eqz v8, :cond_5

    .line 2445
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 2446
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v9}, Lcom/android/videoeditor/widgets/HandleView;->bringToFront()V

    .line 2447
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_7

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v11

    invoke-static {}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumVideoItemDuration()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-gtz v11, :cond_8

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v9, v10, v11}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 2450
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    new-instance v10, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;

    invoke-direct {v10, p0, v4, v8, v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/widgets/MediaItemView;ZLandroid/view/View;)V

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 2620
    :cond_5
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 2621
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v9}, Lcom/android/videoeditor/widgets/HandleView;->bringToFront()V

    .line 2622
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v2

    .line 2623
    .local v2, durationMs:J
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-static {v5}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumMediaItemDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v10

    cmp-long v10, v2, v10

    if-gtz v10, :cond_9

    const/4 v10, 0x1

    :goto_4
    if-eqz v8, :cond_b

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v11

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-ltz v11, :cond_a

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v9, v10, v11}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 2627
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    new-instance v10, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;

    invoke-direct {v10, p0, v4, v8, v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/widgets/MediaItemView;ZLandroid/view/View;)V

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    goto/16 :goto_0

    .line 2434
    .end local v2           #durationMs:J
    .end local v5           #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v8           #videoClip:Z
    :cond_6
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 2435
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 2447
    .restart local v5       #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    .restart local v8       #videoClip:Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 2623
    .restart local v2       #durationMs:J
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    :cond_a
    const/4 v11, 0x0

    goto :goto_5

    :cond_b
    const-wide/16 v11, 0x1770

    cmp-long v11, v2, v11

    if-ltz v11, :cond_c

    const/4 v11, 0x1

    goto :goto_5

    :cond_c
    const/4 v11, 0x0

    goto :goto_5

    .line 2818
    .end local v2           #durationMs:J
    .end local v4           #mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;
    .end local v5           #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v6           #scrollView:Landroid/view/View;
    .end local v8           #videoClip:Z
    :cond_d
    instance-of v9, v7, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v9, :cond_0

    .line 2819
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    if-nez v9, :cond_0

    .line 2820
    new-instance v9, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;

    check-cast v7, Lcom/android/videoeditor/service/MovieTransition;

    .end local v7           #tag:Ljava/lang/Object;
    invoke-direct {v9, p0, v7}, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieTransition;)V

    invoke-virtual {p0, v9}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto/16 :goto_0
.end method

.method private setPlaybackState(Z)V
    .locals 5
    .parameter "playback"

    .prologue
    .line 2849
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 2850
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2851
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2852
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2853
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 2854
    instance-of v4, v3, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v4, :cond_1

    .line 2855
    check-cast v0, Lcom/android/videoeditor/widgets/MediaItemView;

    .end local v0           #childView:Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/android/videoeditor/widgets/MediaItemView;->setPlaybackMode(Z)V

    .line 2850
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2856
    .restart local v0       #childView:Landroid/view/View;
    :cond_1
    instance-of v4, v3, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v4, :cond_0

    .line 2857
    check-cast v0, Lcom/android/videoeditor/widgets/TransitionView;

    .end local v0           #childView:Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/android/videoeditor/widgets/TransitionView;->setPlaybackMode(Z)V

    goto :goto_1

    .line 2861
    .end local v3           #tag:Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private setTrimState(Landroid/view/View;Z)V
    .locals 5
    .parameter "trimmingView"
    .parameter "trimming"

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 2833
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2834
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2835
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2836
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v4, :cond_0

    .line 2837
    check-cast v0, Lcom/android/videoeditor/widgets/MediaItemView;

    .end local v0           #childView:Landroid/view/View;
    invoke-virtual {v0, p1, p2}, Lcom/android/videoeditor/widgets/MediaItemView;->setTrimMode(Landroid/view/View;Z)V

    .line 2833
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2840
    .end local v3           #tag:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private showAddMediaItemButtons(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2887
    if-eqz p1, :cond_1

    .line 2888
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2889
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2891
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightAddClipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2896
    :goto_0
    return-void

    .line 2893
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2894
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightAddClipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private unselectAllViews()V
    .locals 1

    .prologue
    .line 2867
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 2868
    return-void
.end method


# virtual methods
.method public addEffect(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .parameter "effectType"
    .parameter "mediaItemId"
    .parameter "startRect"
    .parameter "endRect"

    .prologue
    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    .line 1233
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v10

    .line 1234
    .local v10, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v10, :cond_1

    .line 1235
    const-string v0, "MediaLinearLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEffect media item not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v3

    .line 1240
    .local v3, id:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1277
    :goto_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    .line 1242
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    move-object v2, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectKenBurns(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1248
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/4 v8, 0x2

    const v9, 0x7f7f7f

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    .line 1255
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/4 v8, 0x3

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    .line 1261
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/4 v8, 0x4

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    .line 1267
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/4 v8, 0x5

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    .line 1240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public addMediaItems(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieMediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mediaItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    const/4 v3, 0x0

    .line 684
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    .line 685
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 686
    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    .line 689
    :cond_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 690
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 691
    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    .line 694
    :cond_1
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViews()V

    .line 696
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 697
    .local v1, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-direct {p0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    goto :goto_0

    .line 699
    .end local v1           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    return-void
.end method

.method public addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;
    .locals 12
    .parameter "transition"
    .parameter "afterMediaItemId"

    .prologue
    const/4 v11, 0x0

    .line 1082
    if-eqz p2, :cond_2

    .line 1083
    const/4 v3, -0x1

    .line 1084
    .local v3, index:I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 1085
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1086
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1087
    .local v6, tag:Ljava/lang/Object;
    if-eqz v6, :cond_1

    instance-of v8, v6, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v8, :cond_1

    .line 1088
    move-object v0, v6

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v5, v0

    .line 1089
    .local v5, mi:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1090
    add-int/lit8 v3, v2, 0x1

    .line 1096
    .end local v5           #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v6           #tag:Ljava/lang/Object;
    :cond_0
    if-gez v3, :cond_3

    .line 1097
    const-string v8, "MediaLinearLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addTransition media item not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    .line 1122
    .end local v1           #childrenCount:I
    .end local v2           #i:I
    :goto_1
    return-object v8

    .line 1085
    .restart local v1       #childrenCount:I
    .restart local v2       #i:I
    .restart local v6       #tag:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1101
    .end local v1           #childrenCount:I
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v6           #tag:Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x1

    .line 1104
    .restart local v3       #index:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f040016

    invoke-static {v8, v9, v11}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1105
    .local v7, transitionView:Landroid/view/View;
    move-object v0, v7

    check-cast v0, Lcom/android/videoeditor/widgets/TransitionView;

    move-object v8, v0

    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    invoke-virtual {v8, v9}, Lcom/android/videoeditor/widgets/TransitionView;->setGestureListener(Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;)V

    .line 1106
    move-object v0, v7

    check-cast v0, Lcom/android/videoeditor/widgets/TransitionView;

    move-object v8, v0

    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v9}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/videoeditor/widgets/TransitionView;->setProjectPath(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v7, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1110
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1112
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v7, v3, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 1118
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v8, :cond_4

    .line 1119
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v8}, Landroid/view/ActionMode;->invalidate()V

    :cond_4
    move-object v8, v7

    .line 1122
    goto :goto_1
.end method

.method public addTransition(Ljava/lang/String;IJ)V
    .locals 11
    .parameter "afterMediaItemId"
    .parameter "transitionType"
    .parameter "transitionDurationMs"

    .prologue
    const/16 v8, 0x32

    const/4 v9, 0x0

    const/4 v6, 0x2

    .line 959
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->unselectAllViews()V

    .line 962
    if-eqz p1, :cond_1

    .line 963
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v10

    .line 964
    .local v10, afterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v10, :cond_2

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 968
    .end local v10           #afterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    const/4 v10, 0x0

    .line 971
    .restart local v10       #afterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v3

    .line 972
    .local v3, id:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 1032
    :goto_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    .line 974
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const v7, 0x7f050001

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->insertAlphaTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIZ)V

    goto :goto_1

    .line 981
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const v7, 0x7f050002

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->insertAlphaTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIZ)V

    goto :goto_1

    .line 988
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/service/ApiService;->insertCrossfadeTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_1

    .line 994
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/service/ApiService;->insertFadeBlackTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_1

    .line 1000
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-wide v4, p3

    move v7, v9

    invoke-static/range {v0 .. v7}, Lcom/android/videoeditor/service/ApiService;->insertSlidingTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_1

    .line 1007
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Lcom/android/videoeditor/service/ApiService;->insertSlidingTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_1

    .line 1014
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-wide v4, p3

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/android/videoeditor/service/ApiService;->insertSlidingTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    goto/16 :goto_1

    .line 1021
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x3

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Lcom/android/videoeditor/service/ApiService;->insertSlidingTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    goto/16 :goto_1

    .line 972
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public editEffect(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 12
    .parameter "effectType"
    .parameter "mediaItemId"
    .parameter "startRect"
    .parameter "endRect"

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v11

    .line 1292
    .local v11, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v11, :cond_1

    .line 1293
    const-string v0, "MediaLinearLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editEffect media item not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1297
    :cond_1
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getEffect()Lcom/android/videoeditor/service/MovieEffect;

    move-result-object v10

    .line 1299
    .local v10, effect:Lcom/android/videoeditor/service/MovieEffect;
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v3

    .line 1300
    .local v3, id:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1349
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    .line 1302
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    move-object v2, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectKenBurns(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1309
    :pswitch_1
    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieEffect;->getType()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 1310
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/4 v8, 0x2

    const v9, 0x7f7f7f

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    .line 1319
    :pswitch_2
    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieEffect;->getType()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 1320
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    .line 1328
    :pswitch_3
    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieEffect;->getType()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 1329
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    .line 1337
    :pswitch_4
    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieEffect;->getType()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 1338
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/4 v8, 0x5

    const/4 v9, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto/16 :goto_1

    .line 1300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public editTransition(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 3
    .parameter "afterMediaItemId"
    .parameter "transitionId"
    .parameter "transitionType"
    .parameter "transitionDurationMs"

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1, p2}, Lcom/android/videoeditor/service/VideoEditorProject;->getTransition(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    .line 1048
    .local v0, transition:Lcom/android/videoeditor/service/MovieTransition;
    if-nez v0, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1053
    :cond_1
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieTransition;->getType()I

    move-result v1

    if-eq v1, p3, :cond_3

    .line 1055
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/android/videoeditor/service/ApiService;->removeTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Ljava/lang/String;IJ)V

    .line 1063
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    .line 1057
    :cond_3
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v1

    cmp-long v1, v1, p4

    if-eqz v1, :cond_2

    .line 1058
    invoke-virtual {v0, p4, p5}, Lcom/android/videoeditor/service/MovieTransition;->setAppDuration(J)V

    .line 1059
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2, p4, p5}, Lcom/android/videoeditor/service/ApiService;->setTransitionDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public insertMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;)V
    .locals 15
    .parameter "mediaItem"
    .parameter "afterMediaItemId"

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x1

    .line 760
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f04000f

    invoke-static {v10, v11, v14}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 761
    .local v6, mediaItemView:Landroid/view/View;
    move-object v0, v6

    check-cast v0, Lcom/android/videoeditor/widgets/MediaItemView;

    move-object v10, v0

    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    invoke-virtual {v10, v11}, Lcom/android/videoeditor/widgets/MediaItemView;->setGestureListener(Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;)V

    .line 762
    move-object v0, v6

    check-cast v0, Lcom/android/videoeditor/widgets/MediaItemView;

    move-object v10, v0

    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/videoeditor/widgets/MediaItemView;->setProjectPath(Ljava/lang/String;)V

    .line 764
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 767
    if-eqz p2, :cond_5

    .line 768
    move-object v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getMediaItemViewIndex(Ljava/lang/String;)I

    move-result v4

    .local v4, insertViewIndex:I
    if-ne v4, v13, :cond_0

    .line 769
    const-string v10, "MediaLinearLayout"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Media item not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_0
    return-void

    .line 773
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 775
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 776
    invoke-virtual {p0, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 777
    .local v8, tag:Ljava/lang/Object;
    if-eqz v8, :cond_1

    instance-of v10, v8, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v10, :cond_1

    .line 779
    invoke-virtual {p0, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    .line 793
    .end local v8           #tag:Ljava/lang/Object;
    :cond_1
    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v5, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 795
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v6, v4, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 798
    invoke-virtual/range {p1 .. p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v2

    .line 799
    .local v2, beginTransition:Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v2, :cond_2

    .line 800
    if-le v4, v12, :cond_7

    .line 801
    sub-int v10, v4, v12

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 802
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 804
    .restart local v8       #tag:Ljava/lang/Object;
    if-eqz v8, :cond_2

    instance-of v10, v8, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v10, :cond_2

    .line 805
    move-object v0, v8

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v7, v0

    .line 806
    .local v7, prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v2, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    .line 813
    .end local v7           #prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v8           #tag:Ljava/lang/Object;
    .end local v9           #view:Landroid/view/View;
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v3

    .line 814
    .local v3, endTransition:Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v3, :cond_3

    .line 815
    invoke-virtual/range {p1 .. p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v3, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    .line 819
    :cond_3
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 821
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v10, :cond_4

    .line 822
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v10}, Landroid/view/ActionMode;->invalidate()V

    .line 826
    :cond_4
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 784
    .end local v2           #beginTransition:Lcom/android/videoeditor/service/MovieTransition;
    .end local v3           #endTransition:Lcom/android/videoeditor/service/MovieTransition;
    .end local v4           #insertViewIndex:I
    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    invoke-virtual {p0, v12}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 785
    .restart local v8       #tag:Ljava/lang/Object;
    if-eqz v8, :cond_6

    instance-of v10, v8, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v10, :cond_6

    .line 786
    invoke-virtual {p0, v12}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    .line 789
    :cond_6
    const/4 v4, 0x1

    .restart local v4       #insertViewIndex:I
    goto :goto_1

    .line 809
    .end local v8           #tag:Ljava/lang/Object;
    .restart local v2       #beginTransition:Lcom/android/videoeditor/service/MovieTransition;
    .restart local v5       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    invoke-virtual {p0, v2, v14}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    goto :goto_2
.end method

.method public invalidateCAB()V
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1171
    :cond_0
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 20
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    if-nez v5, :cond_0

    .line 1580
    const/4 v5, 0x0

    .line 1804
    :goto_0
    return-object v5

    .line 1583
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1804
    :pswitch_0
    const/4 v5, 0x0

    goto :goto_0

    .line 1585
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    const-string v6, "media_item_id"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v17

    .line 1587
    .local v17, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v17, :cond_1

    .line 1588
    const/4 v5, 0x0

    goto :goto_0

    .line 1591
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 1592
    .local v4, activity:Landroid/app/Activity;
    invoke-virtual/range {v17 .. v17}, Lcom/android/videoeditor/service/MovieMediaItem;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/videoeditor/util/FileUtils;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/videoeditor/service/MovieMediaItem;->isVideoClip()Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f090017

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    const v8, 0x7f09007e

    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/videoeditor/widgets/MediaLinearLayout$7;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout$7;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;Lcom/android/videoeditor/service/MovieMediaItem;)V

    const v10, 0x7f09007f

    invoke-virtual {v4, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/videoeditor/widgets/MediaLinearLayout$8;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$8;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V

    new-instance v12, Lcom/android/videoeditor/widgets/MediaLinearLayout$9;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$9;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V

    const/4 v13, 0x1

    invoke-static/range {v4 .. v13}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    :cond_2
    const v7, 0x7f090018

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1632
    .end local v4           #activity:Landroid/app/Activity;
    .end local v17           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    const-string v6, "media_item_id"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v17

    .line 1634
    .restart local v17       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v17, :cond_3

    .line 1635
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1638
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 1639
    .restart local v4       #activity:Landroid/app/Activity;
    new-instance v14, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v14, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1640
    .local v14, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090014

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1641
    const/4 v5, 0x3

    move v0, v5

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    .line 1642
    .local v18, renderingModeStrings:[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f09007b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v18, v5

    .line 1643
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f09007c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v18, v5

    .line 1644
    const/4 v5, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f09007d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v18, v5

    .line 1646
    const-string v5, "rendering_mode"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 1648
    .local v15, currentRenderingMode:I
    packed-switch v15, :pswitch_data_1

    .line 1661
    const/16 v16, 0x0

    .line 1666
    .local v16, currentRenderingModeIndex:I
    :goto_2
    new-instance v5, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;Landroid/app/Activity;)V

    move-object v0, v14

    move-object/from16 v1, v18

    move/from16 v2, v16

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1704
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1705
    new-instance v5, Lcom/android/videoeditor/widgets/MediaLinearLayout$11;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$11;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V

    invoke-virtual {v14, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1713
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1650
    .end local v16           #currentRenderingModeIndex:I
    :pswitch_3
    const/16 v16, 0x2

    .line 1651
    .restart local v16       #currentRenderingModeIndex:I
    goto :goto_2

    .line 1655
    .end local v16           #currentRenderingModeIndex:I
    :pswitch_4
    const/16 v16, 0x1

    .line 1656
    .restart local v16       #currentRenderingModeIndex:I
    goto :goto_2

    .line 1717
    .end local v4           #activity:Landroid/app/Activity;
    .end local v14           #builder:Landroid/app/AlertDialog$Builder;
    .end local v15           #currentRenderingMode:I
    .end local v16           #currentRenderingModeIndex:I
    .end local v17           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v18           #renderingModeStrings:[Ljava/lang/CharSequence;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    const-string v6, "transition_id"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/service/VideoEditorProject;->getTransition(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v19

    .line 1719
    .local v19, transition:Lcom/android/videoeditor/service/MovieTransition;
    if-nez v19, :cond_4

    .line 1720
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1723
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 1724
    .restart local v4       #activity:Landroid/app/Activity;
    const v5, 0x7f090081

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x7f090015

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f09007e

    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;Lcom/android/videoeditor/service/MovieTransition;)V

    const v10, 0x7f09007f

    invoke-virtual {v4, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/videoeditor/widgets/MediaLinearLayout$13;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$13;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V

    new-instance v12, Lcom/android/videoeditor/widgets/MediaLinearLayout$14;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$14;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V

    const/4 v13, 0x1

    invoke-static/range {v4 .. v13}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1761
    .end local v4           #activity:Landroid/app/Activity;
    .end local v19           #transition:Lcom/android/videoeditor/service/MovieTransition;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v5, v0

    const-string v6, "media_item_id"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v17

    .line 1763
    .restart local v17       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v17, :cond_5

    .line 1764
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1767
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 1768
    .restart local v4       #activity:Landroid/app/Activity;
    invoke-virtual/range {v17 .. v17}, Lcom/android/videoeditor/service/MovieMediaItem;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/videoeditor/util/FileUtils;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x7f090016

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f09007e

    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/videoeditor/widgets/MediaLinearLayout$15;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout$15;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;Lcom/android/videoeditor/service/MovieMediaItem;)V

    const v10, 0x7f09007f

    invoke-virtual {v4, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/videoeditor/widgets/MediaLinearLayout$16;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$16;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V

    new-instance v12, Lcom/android/videoeditor/widgets/MediaLinearLayout$17;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$17;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V

    const/4 v13, 0x1

    invoke-static/range {v4 .. v13}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1583
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 1648
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const v7, 0x7f080002

    const/4 v6, 0x2

    .line 1814
    const/4 v1, 0x0

    .line 1815
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1920
    const-string v3, "MediaLinearLayout"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1921
    const-string v3, "MediaLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Other drag event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    :cond_0
    const/4 v1, 0x1

    .line 1928
    :goto_0
    return v1

    .line 1818
    :pswitch_0
    const-string v3, "MediaLinearLayout"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1819
    const-string v3, "MediaLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DRAG_STARTED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    .line 1825
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 1826
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 1828
    iput-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1829
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    .line 1831
    iput-boolean v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mFirstEntered:Z

    .line 1833
    const/4 v1, 0x1

    .line 1834
    goto :goto_0

    .line 1838
    :pswitch_1
    const-string v3, "MediaLinearLayout"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1839
    const-string v3, "MediaLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DRAG_ENTERED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_2
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1843
    .local v2, scrollView:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mFirstEntered:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    if-ltz v3, :cond_3

    .line 1844
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1850
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1852
    iput-boolean v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mFirstEntered:Z

    goto :goto_0

    .line 1847
    :cond_3
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 1857
    .end local v2           #scrollView:Landroid/view/View;
    :pswitch_2
    const-string v3, "MediaLinearLayout"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1858
    const-string v3, "MediaLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DRAG_EXITED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_4
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1863
    .restart local v2       #scrollView:Landroid/view/View;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1864
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 1869
    .end local v2           #scrollView:Landroid/view/View;
    :pswitch_3
    const-string v3, "MediaLinearLayout"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1870
    const-string v3, "MediaLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DRAG_ENDED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_5
    iput-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    .line 1874
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    .line 1877
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3, v9}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 1878
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3, v9}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 1881
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1882
    .restart local v2       #scrollView:Landroid/view/View;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1883
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1885
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    goto/16 :goto_0

    .line 1890
    .end local v2           #scrollView:Landroid/view/View;
    :pswitch_4
    const-string v3, "MediaLinearLayout"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1891
    const-string v3, "MediaLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DRAG_LOCATION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :cond_6
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->moveToPosition(F)V

    .line 1896
    const/4 v1, 0x1

    .line 1897
    goto/16 :goto_0

    .line 1901
    :pswitch_5
    const-string v3, "MediaLinearLayout"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1902
    const-string v3, "MediaLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DROP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_7
    iget v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    if-ltz v3, :cond_9

    .line 1906
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1908
    .local v0, afterMediaItemId:Ljava/lang/String;
    :goto_2
    const-string v3, "MediaLinearLayout"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1909
    const-string v3, "MediaLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DROP: Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_8
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    invoke-static {v3, v4, v5, v0, v8}, Lcom/android/videoeditor/service/ApiService;->moveMediaItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    .end local v0           #afterMediaItemId:Ljava/lang/String;
    :cond_9
    const/4 v1, 0x1

    .line 1915
    goto/16 :goto_0

    :cond_a
    move-object v0, v8

    .line 1906
    goto :goto_2

    .line 1815
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onGeneratePreviewMediaItemProgress(Ljava/lang/String;II)V
    .locals 4
    .parameter "mediaItemId"
    .parameter "action"
    .parameter "progress"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1182
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getMediaItemView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/MediaItemView;

    .line 1183
    .local v0, view:Lcom/android/videoeditor/widgets/MediaItemView;
    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0, p3}, Lcom/android/videoeditor/widgets/MediaItemView;->setProgress(I)V

    .line 1186
    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1187
    if-nez p3, :cond_1

    .line 1188
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 1189
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    const/16 v1, 0x64

    if-ne p3, v1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v3}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 1192
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v3}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onGeneratePreviewTransitionProgress(Ljava/lang/String;II)V
    .locals 4
    .parameter "transitionId"
    .parameter "action"
    .parameter "progress"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1208
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getTransitionView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TransitionView;

    .line 1209
    .local v0, view:Lcom/android/videoeditor/widgets/TransitionView;
    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {v0, p3}, Lcom/android/videoeditor/widgets/TransitionView;->setProgress(I)V

    .line 1212
    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TransitionView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1213
    if-nez p3, :cond_1

    .line 1214
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 1215
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    const/16 v1, 0x64

    if-ne p3, v1, :cond_0

    .line 1217
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v3}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 1218
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v3}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v18

    .line 1410
    .local v18, totalDurationMs:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    sub-int v21, v22, v23

    .line 1412
    .local v21, viewWidth:I
    const-wide/16 v15, 0x0

    .line 1413
    .local v15, startMs:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v5

    .line 1414
    .local v5, childrenCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getPaddingTop()I

    move-result v13

    .line 1415
    .local v13, paddingTop:I
    const/4 v9, 0x0

    .line 1416
    .local v9, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 1417
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v5, :cond_15

    .line 1418
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1419
    .local v20, view:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 1420
    .local v17, tag:Ljava/lang/Object;
    if-eqz v17, :cond_4

    .line 1421
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->computeViewDuration(Landroid/view/View;)J

    move-result-wide v6

    .line 1423
    .local v6, durationMs:J
    add-long v22, v15, v6

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    move/from16 v23, v0

    add-int v14, v22, v23

    .line 1426
    .local v14, right:I
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 1427
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v22

    move v0, v9

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v22

    move v0, v14

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 1428
    :cond_0
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 1429
    .local v11, oldLeft:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v12

    .line 1430
    .local v12, oldRight:I
    sub-int v22, p5, p3

    move-object/from16 v0, v20

    move v1, v9

    move v2, v13

    move v3, v14

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1431
    check-cast v20, Lcom/android/videoeditor/widgets/MediaItemView;

    .end local v20           #view:Landroid/view/View;
    move-object/from16 v0, v20

    move v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaItemView;->onLayoutPerformed(II)V

    .line 1440
    .end local v11           #oldLeft:I
    .end local v12           #oldRight:I
    :goto_1
    add-long/2addr v15, v6

    .line 1441
    move v9, v14

    .line 1417
    .end local v6           #durationMs:J
    .end local v14           #right:I
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1433
    .restart local v6       #durationMs:J
    .restart local v14       #right:I
    .restart local v20       #view:Landroid/view/View;
    :cond_2
    sub-int v22, p5, p3

    move-object/from16 v0, v20

    move v1, v9

    move v2, v13

    move v3, v14

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1436
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionVerticalInset:I

    move/from16 v22, v0

    add-int v22, v22, v13

    sub-int v23, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionVerticalInset:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, v20

    move v1, v9

    move/from16 v2, v22

    move v3, v14

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1442
    .end local v6           #durationMs:J
    .end local v14           #right:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 1444
    if-nez v8, :cond_5

    .line 1445
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    move/from16 v23, v0

    sub-int v24, p5, p3

    move-object/from16 v0, v20

    move/from16 v1, v22

    move v2, v13

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1446
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    move/from16 v22, v0

    add-int v9, v9, v22

    goto :goto_2

    .line 1448
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v22

    sub-int v23, p5, p3

    move-object/from16 v0, v20

    move v1, v9

    move v2, v13

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 1451
    .end local v8           #i:I
    .end local v17           #tag:Ljava/lang/Object;
    .end local v20           #view:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    .line 1452
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    const/high16 v22, 0x7f08

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1455
    .local v10, leftViewWidth:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    if-ge v8, v5, :cond_15

    .line 1456
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1457
    .restart local v20       #view:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 1458
    .restart local v17       #tag:Ljava/lang/Object;
    if-eqz v17, :cond_a

    .line 1459
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->computeViewDuration(Landroid/view/View;)J

    move-result-wide v6

    .line 1461
    .restart local v6       #durationMs:J
    add-long v22, v15, v6

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v14, v22, v10

    .line 1464
    .restart local v14       #right:I
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 1465
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v22

    move v0, v9

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v22

    move v0, v14

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 1466
    :cond_7
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 1467
    .restart local v11       #oldLeft:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v12

    .line 1468
    .restart local v12       #oldRight:I
    sub-int v22, p5, p3

    move-object/from16 v0, v20

    move v1, v9

    move v2, v13

    move v3, v14

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1469
    check-cast v20, Lcom/android/videoeditor/widgets/MediaItemView;

    .end local v20           #view:Landroid/view/View;
    move-object/from16 v0, v20

    move v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaItemView;->onLayoutPerformed(II)V

    .line 1478
    .end local v11           #oldLeft:I
    .end local v12           #oldRight:I
    :goto_4
    add-long/2addr v15, v6

    .line 1479
    move v9, v14

    .line 1455
    .end local v6           #durationMs:J
    .end local v14           #right:I
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1471
    .restart local v6       #durationMs:J
    .restart local v14       #right:I
    .restart local v20       #view:Landroid/view/View;
    :cond_8
    sub-int v22, p5, p3

    move-object/from16 v0, v20

    move v1, v9

    move v2, v13

    move v3, v14

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1474
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionVerticalInset:I

    move/from16 v22, v0

    add-int v22, v22, v13

    sub-int v23, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionVerticalInset:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, v20

    move v1, v9

    move/from16 v2, v22

    move v3, v14

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1480
    .end local v6           #durationMs:J
    .end local v14           #right:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHandleWidth:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    add-int v23, v23, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v24

    sub-int v25, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 1484
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    add-int v23, v23, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHandleWidth:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v25, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    .line 1489
    :cond_c
    if-nez v8, :cond_d

    .line 1490
    const/16 v22, 0x0

    sub-int v23, p5, p3

    move-object/from16 v0, v20

    move/from16 v1, v22

    move v2, v13

    move v3, v10

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1491
    add-int/2addr v9, v10

    goto/16 :goto_5

    .line 1493
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v10

    sub-int v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v23

    sub-int v24, p5, p3

    move-object/from16 v0, v20

    move/from16 v1, v22

    move v2, v13

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    .line 1498
    .end local v8           #i:I
    .end local v10           #leftViewWidth:I
    .end local v17           #tag:Ljava/lang/Object;
    .end local v20           #view:Landroid/view/View;
    .restart local p1
    :cond_e
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_6
    if-ge v8, v5, :cond_15

    .line 1499
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1500
    .restart local v20       #view:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 1501
    .restart local v17       #tag:Ljava/lang/Object;
    if-eqz v17, :cond_13

    .line 1502
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->computeViewDuration(Landroid/view/View;)J

    move-result-wide v6

    .line 1504
    .restart local v6       #durationMs:J
    add-long v22, v15, v6

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    move/from16 v23, v0

    add-int v14, v22, v23

    .line 1507
    .restart local v14       #right:I
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move/from16 v22, v0

    if-eqz v22, :cond_12

    .line 1508
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v22

    move v0, v9

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v22

    move v0, v14

    move/from16 v1, v22

    if-eq v0, v1, :cond_11

    .line 1509
    :cond_f
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 1510
    .restart local v11       #oldLeft:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v12

    .line 1511
    .restart local v12       #oldRight:I
    sub-int v22, p5, p3

    move-object/from16 v0, v20

    move v1, v9

    move v2, v13

    move v3, v14

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1512
    check-cast v20, Lcom/android/videoeditor/widgets/MediaItemView;

    .end local v20           #view:Landroid/view/View;
    move-object/from16 v0, v20

    move v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaItemView;->onLayoutPerformed(II)V

    .line 1521
    .end local v11           #oldLeft:I
    .end local v12           #oldRight:I
    :goto_7
    add-long/2addr v15, v6

    .line 1522
    move v9, v14

    .line 1498
    .end local v6           #durationMs:J
    .end local v14           #right:I
    :cond_10
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1514
    .restart local v6       #durationMs:J
    .restart local v14       #right:I
    .restart local v20       #view:Landroid/view/View;
    :cond_11
    sub-int v22, p5, p3

    move-object/from16 v0, v20

    move v1, v9

    move v2, v13

    move v3, v14

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    .line 1517
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionVerticalInset:I

    move/from16 v22, v0

    add-int v22, v22, v13

    sub-int v23, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionVerticalInset:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, v20

    move v1, v9

    move/from16 v2, v22

    move v3, v14

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    .line 1523
    .end local v6           #durationMs:J
    .end local v14           #right:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 1525
    if-nez v8, :cond_14

    .line 1526
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    move/from16 v23, v0

    sub-int v24, p5, p3

    move-object/from16 v0, v20

    move/from16 v1, v22

    move v2, v13

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1527
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    move/from16 v22, v0

    add-int v9, v9, v22

    goto :goto_8

    .line 1529
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v23

    sub-int v24, p5, p3

    move-object/from16 v0, v20

    move/from16 v1, v22

    move v2, v13

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    .line 1534
    .end local v17           #tag:Ljava/lang/Object;
    .end local v20           #view:Landroid/view/View;
    .end local p1
    :cond_15
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMoveLayoutPending:Z

    .line 1535
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 612
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 613
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 614
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 615
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 616
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 617
    instance-of v4, v3, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v4, :cond_1

    .line 618
    check-cast v0, Lcom/android/videoeditor/widgets/MediaItemView;

    .end local v0           #childView:Landroid/view/View;
    invoke-virtual {v0, v5}, Lcom/android/videoeditor/widgets/MediaItemView;->setProgress(I)V

    .line 613
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 619
    .restart local v0       #childView:Landroid/view/View;
    :cond_1
    instance-of v4, v3, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v4, :cond_0

    .line 620
    check-cast v0, Lcom/android/videoeditor/widgets/TransitionView;

    .end local v0           #childView:Landroid/view/View;
    invoke-virtual {v0, v5}, Lcom/android/videoeditor/widgets/TransitionView;->setProgress(I)V

    goto :goto_1

    .line 624
    .end local v3           #tag:Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public removeMediaItem(Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;)Landroid/view/View;
    .locals 13
    .parameter "mediaItemId"
    .parameter "transition"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 894
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v4

    .line 895
    .local v4, childrenCount:I
    const/4 v8, 0x0

    .line 896
    .local v8, prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_8

    .line 897
    invoke-virtual {p0, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 898
    .local v3, childView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 899
    .local v9, tag:Ljava/lang/Object;
    if-eqz v9, :cond_7

    instance-of v10, v9, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v10, :cond_7

    .line 900
    move-object v0, v9

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v7, v0

    .line 901
    .local v7, mi:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 902
    move v6, v5

    .line 905
    .local v6, mediaItemViewIndex:I
    if-lez v6, :cond_0

    .line 906
    sub-int v10, v6, v11

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 907
    .local v2, beforeTag:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v10, v2, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v10, :cond_0

    .line 909
    sub-int v10, v6, v11

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    .line 910
    add-int/lit8 v6, v6, -0x1

    .line 915
    .end local v2           #beforeTag:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v11

    if-ge v6, v10, :cond_1

    .line 916
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 917
    .local v1, afterTag:Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v10, v1, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v10, :cond_1

    .line 919
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    .line 924
    .end local v1           #afterTag:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    .line 926
    if-eqz p2, :cond_2

    .line 927
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-virtual {p0, p2, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    .line 931
    :cond_2
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v10, :cond_3

    .line 932
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v10}, Landroid/view/ActionMode;->invalidate()V

    .line 935
    :cond_3
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v10

    if-nez v10, :cond_4

    .line 937
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_4
    move-object v10, v3

    .line 946
    .end local v3           #childView:Landroid/view/View;
    .end local v6           #mediaItemViewIndex:I
    .end local v7           #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v9           #tag:Ljava/lang/Object;
    :goto_2
    return-object v10

    .restart local v3       #childView:Landroid/view/View;
    .restart local v6       #mediaItemViewIndex:I
    .restart local v7       #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    .restart local v9       #tag:Ljava/lang/Object;
    :cond_5
    move-object v10, v12

    .line 927
    goto :goto_1

    .line 942
    .end local v6           #mediaItemViewIndex:I
    :cond_6
    move-object v8, v7

    .line 896
    .end local v7           #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .end local v3           #childView:Landroid/view/View;
    .end local v9           #tag:Ljava/lang/Object;
    :cond_8
    move-object v10, v12

    .line 946
    goto :goto_2
.end method

.method public removeTransition(Ljava/lang/String;)V
    .locals 6
    .parameter "transitionId"

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 1142
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1143
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1144
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v5, v3, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v5, :cond_1

    .line 1145
    move-object v0, v3

    check-cast v0, Lcom/android/videoeditor/service/MovieTransition;

    move-object v4, v0

    .line 1146
    .local v4, transition:Lcom/android/videoeditor/service/MovieTransition;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1148
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    .line 1151
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 1154
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_0

    .line 1155
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v5}, Landroid/view/ActionMode;->invalidate()V

    .line 1162
    .end local v3           #tag:Ljava/lang/Object;
    .end local v4           #transition:Lcom/android/videoeditor/service/MovieTransition;
    :cond_0
    return-void

    .line 1142
    .restart local v3       #tag:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeTransitionView(Ljava/lang/String;)V
    .locals 6
    .parameter "transitionId"

    .prologue
    .line 2267
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 2268
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2269
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2270
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v5, v3, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v5, :cond_1

    .line 2271
    move-object v0, v3

    check-cast v0, Lcom/android/videoeditor/service/MovieTransition;

    move-object v4, v0

    .line 2272
    .local v4, transition:Lcom/android/videoeditor/service/MovieTransition;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2274
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    .line 2277
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 2280
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_0

    .line 2281
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v5}, Landroid/view/ActionMode;->invalidate()V

    .line 2287
    .end local v3           #tag:Ljava/lang/Object;
    .end local v4           #transition:Lcom/android/videoeditor/service/MovieTransition;
    :cond_0
    return-void

    .line 2268
    .restart local v3       #tag:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setListener(Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mListener:Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;

    .line 631
    return-void
.end method

.method public setMediaItemThumbnails(Ljava/lang/String;[Landroid/graphics/Bitmap;JJ)Z
    .locals 11
    .parameter "mediaItemId"
    .parameter "bitmaps"
    .parameter "startMs"
    .parameter "endMs"

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v7

    .line 1367
    .local v7, childrenCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 1368
    invoke-virtual {p0, v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .line 1369
    .local v10, tag:Ljava/lang/Object;
    if-eqz v10, :cond_0

    instance-of v1, v10, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v1, :cond_0

    .line 1370
    move-object v0, v10

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v9, v0

    .line 1371
    .local v9, mi:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v9}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1372
    invoke-virtual {p0, v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/widgets/MediaItemView;

    move-object v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/videoeditor/widgets/MediaItemView;->setBitmaps([Landroid/graphics/Bitmap;JJ)Z

    move-result v1

    .line 1377
    .end local v9           #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v10           #tag:Ljava/lang/Object;
    :goto_1
    return v1

    .line 1367
    .restart local v10       #tag:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1377
    .end local v10           #tag:Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setPlaybackInProgress(Z)V
    .locals 2
    .parameter "inProgress"

    .prologue
    const/4 v1, 0x0

    .line 662
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPlaybackInProgress:Z

    .line 664
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setPlaybackState(Z)V

    .line 667
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 669
    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 674
    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    .line 676
    :cond_1
    return-void
.end method

.method public setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V
    .locals 3
    .parameter "project"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 638
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 640
    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 645
    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 650
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 653
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViews()V

    .line 655
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 656
    return-void
.end method

.method public setSelected(Z)V
    .locals 6
    .parameter "selected"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2362
    if-nez p1, :cond_2

    .line 2363
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_0

    .line 2364
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 2365
    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    .line 2368
    :cond_0
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    .line 2369
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 2370
    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    .line 2373
    :cond_1
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3, v5}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 2374
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 2375
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3, v5}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 2376
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 2378
    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    .line 2381
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->showAddMediaItemButtons(Z)V

    .line 2385
    :cond_2
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 2386
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2387
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2388
    .local v0, childView:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 2386
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2390
    .end local v0           #childView:Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setTransitionThumbnails(Ljava/lang/String;[Landroid/graphics/Bitmap;)Z
    .locals 6
    .parameter "transitionId"
    .parameter "bitmaps"

    .prologue
    .line 1389
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 1390
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1391
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1392
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v5, :cond_0

    .line 1393
    move-object v0, v3

    check-cast v0, Lcom/android/videoeditor/service/MovieTransition;

    move-object v4, v0

    .line 1394
    .local v4, transition:Lcom/android/videoeditor/service/MovieTransition;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1395
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/videoeditor/widgets/TransitionView;

    invoke-virtual {p0, p2}, Lcom/android/videoeditor/widgets/TransitionView;->setBitmaps([Landroid/graphics/Bitmap;)Z

    move-result v5

    .line 1400
    .end local v3           #tag:Ljava/lang/Object;
    .end local v4           #transition:Lcom/android/videoeditor/service/MovieTransition;
    :goto_1
    return v5

    .line 1390
    .restart local v3       #tag:Ljava/lang/Object;
    .restart local p0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1400
    .end local v3           #tag:Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 11
    .parameter "mediaItem"

    .prologue
    const/4 v10, 0x1

    .line 835
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    .line 836
    .local v4, mediaItemId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v2

    .line 837
    .local v2, childrenCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 838
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 839
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 840
    .local v7, tag:Ljava/lang/Object;
    if-eqz v7, :cond_4

    instance-of v9, v7, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v9, :cond_4

    .line 841
    move-object v0, v7

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v5, v0

    .line 842
    .local v5, mi:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 843
    if-eq p1, v5, :cond_1

    .line 845
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 846
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 847
    if-lez v3, :cond_0

    .line 848
    sub-int v9, v3, v10

    invoke-virtual {p0, v9}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 849
    .local v6, tView:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 850
    .local v8, tagT:Ljava/lang/Object;
    if-eqz v8, :cond_0

    instance-of v9, v8, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v9, :cond_0

    .line 851
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 856
    .end local v6           #tView:Landroid/view/View;
    .end local v8           #tagT:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 857
    sub-int v9, v2, v10

    if-ge v3, v9, :cond_1

    .line 858
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v9}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 859
    .restart local v6       #tView:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 860
    .restart local v8       #tagT:Ljava/lang/Object;
    if-eqz v8, :cond_1

    instance-of v9, v8, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v9, :cond_1

    .line 861
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 867
    .end local v6           #tView:Landroid/view/View;
    .end local v8           #tagT:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 868
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 869
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v9, v10}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 877
    .end local v1           #childView:Landroid/view/View;
    .end local v5           #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v7           #tag:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 879
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v9, :cond_3

    .line 880
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v9}, Landroid/view/ActionMode;->invalidate()V

    .line 882
    :cond_3
    return-void

    .line 837
    .restart local v1       #childView:Landroid/view/View;
    .restart local v7       #tag:Ljava/lang/Object;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public updateTransition(Ljava/lang/String;)V
    .locals 0
    .parameter "transitionId"

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 1132
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->invalidate()V

    .line 1133
    return-void
.end method
