.class public Lcom/android/videoeditor/widgets/OverlayLinearLayout;
.super Landroid/widget/LinearLayout;
.source "OverlayLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;,
        Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayLayoutListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_TITLE_DURATION:J = 0xbb8L

.field private static final PARAM_DIALOG_MEDIA_ITEM_ID:Ljava/lang/String; = "media_item_id"

.field private static final TAG:Ljava/lang/String; = "OverlayLinearLayout"


# instance fields
.field private final mHalfParentWidth:I

.field private final mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

.field private mMoveLayoutPending:Z

.field private mOverlayActionMode:Landroid/view/ActionMode;

.field private final mOverlayGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

.field private mPlaybackInProgress:Z

.field private mProject:Lcom/android/videoeditor/service/VideoEditorProject;

.field private mResizingView:Landroid/view/View;

.field private mRightHandle:Lcom/android/videoeditor/widgets/HandleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 377
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 378
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 371
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v4, 0x7f040008

    const/4 v5, 0x0

    .line 182
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    new-instance v3, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    .line 326
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 327
    .local v0, beginView:Landroid/view/View;
    new-instance v3, Lcom/android/videoeditor/widgets/OverlayLinearLayout$2;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$2;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addView(Landroid/view/View;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 339
    .local v2, endView:Landroid/view/View;
    new-instance v3, Lcom/android/videoeditor/widgets/OverlayLinearLayout$3;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$3;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addView(Landroid/view/View;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04000c

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/widgets/HandleView;

    iput-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    .line 350
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addView(Landroid/view/View;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040013

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/widgets/HandleView;

    iput-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    .line 353
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addView(Landroid/view/View;)V

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHandleWidth:I

    .line 358
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 359
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHalfParentWidth:I

    .line 361
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHandler:Landroid/os/Handler;

    .line 363
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 364
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mPlaybackInProgress:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getOverlayView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->selectView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->unselectAllViews()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHalfParentWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mMoveLayoutPending:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mMoveLayoutPending:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)Landroid/view/View;
    .locals 5
    .parameter "mediaItem"

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040010

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/widgets/OverlayView;

    .line 441
    .local v1, overlayView:Lcom/android/videoeditor/widgets/OverlayView;
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 442
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    .line 447
    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/videoeditor/widgets/OverlayView;->setTag(Ljava/lang/Object;)V

    .line 449
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/OverlayView;->setGestureListener(Lcom/android/videoeditor/widgets/ItemMoveGestureListener;)V

    .line 451
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 453
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 460
    return-object v1

    .line 444
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    goto :goto_0
.end method

.method private getMediaItemViewIndex(Ljava/lang/String;)I
    .locals 7
    .parameter "mediaItemId"

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v2

    .line 812
    .local v2, childrenCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 813
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 814
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 815
    .local v5, tag:Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v6, v5, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v6, :cond_0

    .line 816
    move-object v0, v5

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v4, v0

    .line 817
    .local v4, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v3

    .line 823
    .end local v1           #childView:Landroid/view/View;
    .end local v4           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v5           #tag:Ljava/lang/Object;
    :goto_1
    return v6

    .line 812
    .restart local v1       #childView:Landroid/view/View;
    .restart local v5       #tag:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 823
    .end local v1           #childView:Landroid/view/View;
    .end local v5           #tag:Ljava/lang/Object;
    :cond_1
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private getOverlayView(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .parameter "mediaItemId"

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v1

    .line 793
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 794
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 795
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 796
    .local v3, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 801
    .end local v0           #childView:Landroid/view/View;
    .end local v3           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return-object v4

    .line 793
    .restart local v0       #childView:Landroid/view/View;
    .restart local v3       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 801
    .end local v0           #childView:Landroid/view/View;
    .end local v3           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private removeViews()V
    .locals 3

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 832
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 833
    .local v1, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v1, :cond_0

    .line 834
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->removeViewAt(I)V

    goto :goto_0

    .line 836
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 840
    .end local v1           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 841
    return-void
.end method

.method private selectView(Landroid/view/View;Z)V
    .locals 13
    .parameter "selectedView"
    .parameter "selected"

    .prologue
    const/16 v7, 0x8

    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 877
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-ne v5, p2, :cond_0

    .line 1000
    :goto_0
    return-void

    .line 881
    :cond_0
    if-nez p2, :cond_1

    .line 883
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 884
    iput-object v6, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    .line 885
    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v5, v7}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 886
    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 887
    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v5, v7}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 888
    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    goto :goto_0

    .line 893
    :cond_1
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->unselectAllViews()V

    .line 896
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 898
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 899
    .local v4, tag:Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v1, v0

    .line 900
    .local v1, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_2

    .line 901
    new-instance v5, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;

    invoke-direct {v5, p0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 904
    :cond_2
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v2

    .line 905
    .local v2, overlay:Lcom/android/videoeditor/service/MovieOverlay;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getOverlayView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 906
    .local v3, overlayView:Landroid/view/View;
    iput-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    .line 908
    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v5, v11}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 909
    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v5}, Lcom/android/videoeditor/widgets/HandleView;->bringToFront()V

    .line 910
    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v6

    invoke-static {v1}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumMediaItemDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    move v6, v12

    :goto_1
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_4

    move v7, v12

    :goto_2
    invoke-virtual {v5, v6, v7}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 914
    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    new-instance v6, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;

    invoke-direct {v6, p0, v1, v3, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;Landroid/view/View;Lcom/android/videoeditor/service/MovieOverlay;)V

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    goto :goto_0

    :cond_3
    move v6, v11

    .line 910
    goto :goto_1

    :cond_4
    move v7, v11

    goto :goto_2
.end method

.method private unselectAllViews()V
    .locals 1

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 1007
    return-void
.end method


# virtual methods
.method public addMediaItems(Ljava/util/List;)V
    .locals 3
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
    .line 420
    .local p1, mediaItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 422
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    .line 425
    :cond_0
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->removeViews()V

    .line 427
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 428
    .local v1, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-direct {p0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)Landroid/view/View;

    goto :goto_0

    .line 430
    .end local v1           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    return-void
.end method

.method public addOverlay(Ljava/lang/String;Lcom/android/videoeditor/service/MovieOverlay;)V
    .locals 4
    .parameter "mediaItemId"
    .parameter "overlay"

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getOverlayView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/OverlayView;

    .line 558
    .local v0, view:Lcom/android/videoeditor/widgets/OverlayView;
    if-nez v0, :cond_0

    .line 559
    const-string v1, "OverlayLinearLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOverlay: Media item not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_0
    return-void

    .line 563
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    .line 565
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 566
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->invalidate()V

    goto :goto_0
.end method

.method public insertMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;)V
    .locals 7
    .parameter "mediaItem"
    .parameter "afterMediaItemId"

    .prologue
    const/4 v6, -0x1

    .line 470
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040010

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/widgets/OverlayView;

    .line 472
    .local v2, overlayView:Lcom/android/videoeditor/widgets/OverlayView;
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 473
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    .line 478
    :goto_0
    invoke-virtual {v2, p1}, Lcom/android/videoeditor/widgets/OverlayView;->setTag(Ljava/lang/Object;)V

    .line 480
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/OverlayView;->setGestureListener(Lcom/android/videoeditor/widgets/ItemMoveGestureListener;)V

    .line 483
    if-eqz p2, :cond_3

    .line 484
    invoke-direct {p0, p2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getMediaItemViewIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, insertViewIndex:I
    if-ne v0, v6, :cond_1

    .line 485
    const-string v3, "OverlayLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media item not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_1
    return-void

    .line 475
    .end local v0           #insertViewIndex:I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    goto :goto_0

    .line 489
    .restart local v0       #insertViewIndex:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 494
    :goto_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 496
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 498
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_2

    .line 499
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 502
    :cond_2
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    goto :goto_1

    .line 491
    .end local v0           #insertViewIndex:I
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/4 v0, 0x1

    .restart local v0       #insertViewIndex:I
    goto :goto_2
.end method

.method public invalidateCAB()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 632
    :cond_0
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "id"
    .parameter "bundle"

    .prologue
    const/4 v3, 0x0

    .line 731
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v1, :cond_0

    move-object v1, v3

    .line 780
    :goto_0
    return-object v1

    .line 735
    :cond_0
    packed-switch p1, :pswitch_data_0

    move-object v1, v3

    .line 780
    goto :goto_0

    .line 737
    :pswitch_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    const-string v2, "media_item_id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v10

    .line 739
    .local v10, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v10, :cond_1

    move-object v1, v3

    .line 740
    goto :goto_0

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 744
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/videoeditor/util/FileUtils;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f090013

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09007e

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/videoeditor/widgets/OverlayLinearLayout$4;

    invoke-direct {v5, p0, v0, v10}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$4;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/app/Activity;Lcom/android/videoeditor/service/MovieMediaItem;)V

    const v6, 0x7f09007f

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/videoeditor/widgets/OverlayLinearLayout$5;

    invoke-direct {v7, p0, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$5;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/app/Activity;)V

    new-instance v8, Lcom/android/videoeditor/widgets/OverlayLinearLayout$6;

    invoke-direct {v8, p0, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$6;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/app/Activity;)V

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 28
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v18

    .line 640
    .local v18, totalDurationMs:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHalfParentWidth:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    sub-int v21, v22, v23

    .line 642
    .local v21, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getParent()Landroid/view/ViewParent;

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

    .line 644
    .local v10, leftViewWidth:I
    const-wide/16 v12, 0x0

    .line 645
    .local v12, mediaItemStartTimeMs:J
    const/4 v9, 0x0

    .line 646
    .local v9, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v5

    .line 647
    .local v5, childrenCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v5, :cond_9

    .line 648
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 649
    .local v20, view:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 650
    .local v11, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v11, :cond_5

    .line 651
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v14

    .line 654
    .local v14, overlay:Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v14, :cond_4

    .line 657
    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v22

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-gtz v22, :cond_2

    .line 658
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v22, v22, v12

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v9, v10, v22

    .line 660
    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v22

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 662
    .local v6, durationMs:J
    add-long v22, v12, v6

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v15, v10, v22

    .line 690
    .end local v6           #durationMs:J
    .local v15, right:I
    :goto_1
    const/16 v22, 0x0

    sub-int v23, p5, p3

    move-object/from16 v0, v20

    move v1, v9

    move/from16 v2, v22

    move v3, v15

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 692
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v22

    add-long v12, v12, v22

    .line 693
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 694
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v22

    sub-long v12, v12, v22

    .line 697
    :cond_0
    move v9, v15

    .line 647
    .end local v14           #overlay:Lcom/android/videoeditor/service/MovieOverlay;
    .end local v15           #right:I
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 664
    .restart local v14       #overlay:Lcom/android/videoeditor/service/MovieOverlay;
    :cond_2
    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v22

    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v24

    add-long v22, v22, v24

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-lez v22, :cond_3

    .line 666
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v22

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v24

    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v26

    sub-long v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    .line 668
    .local v16, startTimeMs:J
    add-long v22, v12, v16

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v24

    sub-long v22, v22, v24

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v9, v10, v22

    .line 671
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v22

    sub-long v6, v22, v16

    .line 672
    .restart local v6       #durationMs:J
    add-long v22, v12, v16

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v24

    sub-long v22, v22, v24

    add-long v22, v22, v6

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v15, v10, v22

    .line 675
    .restart local v15       #right:I
    goto/16 :goto_1

    .line 676
    .end local v6           #durationMs:J
    .end local v15           #right:I
    .end local v16           #startTimeMs:J
    :cond_3
    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v22

    add-long v22, v22, v12

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v24

    sub-long v22, v22, v24

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v9, v10, v22

    .line 679
    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v22

    add-long v22, v22, v12

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v24

    sub-long v22, v22, v24

    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v24

    add-long v22, v22, v24

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v15, v10, v22

    .restart local v15       #right:I
    goto/16 :goto_1

    .line 684
    .end local v15           #right:I
    :cond_4
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v22, v22, v12

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v9, v10, v22

    .line 686
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v22

    add-long v22, v22, v12

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v15, v10, v22

    .restart local v15       #right:I
    goto/16 :goto_1

    .line 698
    .end local v14           #overlay:Lcom/android/videoeditor/service/MovieOverlay;
    .end local v15           #right:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHandleWidth:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v24

    sub-int v25, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

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

    goto/16 :goto_2

    .line 704
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHandleWidth:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v25, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

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

    goto/16 :goto_2

    .line 710
    :cond_7
    if-nez v8, :cond_8

    .line 711
    const/16 v22, 0x0

    add-int v23, v9, v10

    sub-int v24, p5, p3

    move-object/from16 v0, v20

    move v1, v9

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 712
    add-int/2addr v9, v10

    goto/16 :goto_2

    .line 714
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHalfParentWidth:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHalfParentWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v10

    sub-int v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getWidth()I

    move-result v24

    sub-int v25, p5, p3

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 719
    .end local v11           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v20           #view:Landroid/view/View;
    :cond_9
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mMoveLayoutPending:Z

    .line 720
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 622
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->invalidate()V

    .line 623
    return-void
.end method

.method public removeMediaItem(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .parameter "mediaItemId"

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v1

    .line 537
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 538
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 539
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 540
    .local v3, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->removeViewAt(I)V

    .line 542
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    move-object v4, v0

    .line 547
    .end local v0           #childView:Landroid/view/View;
    .end local v3           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return-object v4

    .line 537
    .restart local v0       #childView:Landroid/view/View;
    .restart local v3       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 547
    .end local v0           #childView:Landroid/view/View;
    .end local v3           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public removeOverlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "mediaItemId"
    .parameter "overlayId"

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getOverlayView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/OverlayView;

    .line 577
    .local v0, view:Lcom/android/videoeditor/widgets/OverlayView;
    if-nez v0, :cond_1

    .line 578
    const-string v1, "OverlayLinearLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeOverlay: Media item not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    .line 584
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 585
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->invalidate()V

    .line 587
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 589
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public setPlaybackInProgress(Z)V
    .locals 1
    .parameter "inProgress"

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mPlaybackInProgress:Z

    .line 408
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    .line 412
    :cond_0
    return-void
.end method

.method public setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V
    .locals 3
    .parameter "project"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 387
    iput-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 392
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 395
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->removeViews()V

    .line 397
    iput-object p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 398
    return-void
.end method

.method public setSelected(Z)V
    .locals 6
    .parameter "selected"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 848
    if-nez p1, :cond_1

    .line 850
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_0

    .line 851
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 852
    iput-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    .line 855
    :cond_0
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3, v5}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 856
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 857
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3, v5}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 858
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 859
    iput-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    .line 862
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v1

    .line 863
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 864
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 865
    .local v0, childView:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 863
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 867
    .end local v0           #childView:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 6
    .parameter "mediaItem"

    .prologue
    .line 511
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, mediaItemId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v1

    .line 513
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 514
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 515
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 516
    .local v4, mi:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 517
    if-eq p1, v4, :cond_0

    .line 519
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 525
    .end local v0           #childView:Landroid/view/View;
    .end local v4           #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 526
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->invalidate()V

    .line 527
    return-void

    .line 513
    .restart local v0       #childView:Landroid/view/View;
    .restart local v4       #mi:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public updateOverlayAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "mediaItemId"
    .parameter "overlayId"
    .parameter "userAttributes"

    .prologue
    .line 602
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 603
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v0, :cond_0

    .line 604
    const-string v2, "OverlayLinearLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateOverlayAttributes: Media item not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getOverlayView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 609
    .local v1, overlayView:Landroid/view/View;
    if-nez v1, :cond_1

    .line 610
    const-string v2, "OverlayLinearLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateOverlayAttributes: Overlay not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 614
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
