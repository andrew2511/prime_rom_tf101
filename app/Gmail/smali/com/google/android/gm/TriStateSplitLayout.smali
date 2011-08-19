.class Lcom/google/android/gm/TriStateSplitLayout;
.super Landroid/widget/LinearLayout;
.source "TriStateSplitLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/android/gm/ViewMode$ModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;,
        Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;
    }
.end annotation


# static fields
.field private static final sCollapseInterpolator:Landroid/animation/TimeInterpolator;

.field private static final sLeftInterpolator:Landroid/animation/TimeInterpolator;

.field private static final sRightInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mAnimatingFade:Z

.field private mConvNotificationsArea:Landroid/view/View;

.field private mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

.field private mConversationLeft:I

.field private mConversationListContainer:Landroid/view/View;

.field private mConversationListMenuView:Landroid/view/ViewGroup;

.field private mConversationMenuView:Landroid/view/ViewGroup;

.field private mConversationView:Landroid/view/View;

.field private mConversationViewOverlay:Landroid/view/View;

.field private mInnerListView:Lcom/google/android/gm/FadingListView;

.field private mLabelListRightMargin:I

.field private mLabelListTopMargin:I

.field private mLabelsLeft:I

.field private mLabelsView:Landroid/view/View;

.field private mLayoutMarginValuesValid:Z

.field private mLeftColumnBottomFadeStrength:F

.field private mLeftColumnBottomPadding:I

.field private mLeftColumnFadingEdgeLength:I

.field private mLeftColumnNotifTopPadding:I

.field private mLeftColumnTopPadding:I

.field private mLeftColumnTopParentPadding:I

.field private mListAlpha:I

.field private mListBitmap:Landroid/graphics/Bitmap;

.field private mListBitmapLeft:I

.field private mListCollapsed:Z

.field private mListLeft:I

.field private mListPaint:Landroid/graphics/Paint;

.field private mListSpacer:Landroid/view/View;

.field private mListView:Landroid/view/View;

.field private mListener:Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;

.field private mOutstandingAnimator:Landroid/animation/Animator;

.field private mPaint:Landroid/graphics/Paint;

.field private mRightColumnFadingEdgeLength:I

.field private mRightColumnNotifLeftPadding:I

.field private mRightColumnNotifRightPadding:I

.field private mRightColumnTopPadding:I

.field private mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

.field private mViewMode:Lcom/google/android/gm/ViewMode;

.field private mViewOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x4020

    .line 70
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4010

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/google/android/gm/TriStateSplitLayout;->sLeftInterpolator:Landroid/animation/TimeInterpolator;

    .line 71
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/google/android/gm/TriStateSplitLayout;->sRightInterpolator:Landroid/animation/TimeInterpolator;

    .line 72
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/google/android/gm/TriStateSplitLayout;->sCollapseInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLayoutMarginValuesValid:Z

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLayoutMarginValuesValid:Z

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLayoutMarginValuesValid:Z

    .line 174
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/TriStateSplitLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->destroyBitmaps()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gm/TriStateSplitLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onFinishEnteringConversationListMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onFinishEnteringConversationMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onUncollapseList()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onCollapseList()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/gm/TriStateSplitLayout;)Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListener:Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/gm/TriStateSplitLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mAnimatingFade:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/android/gm/TriStateSplitLayout;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mOutstandingAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private captureBitmaps()V
    .locals 4

    .prologue
    .line 510
    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    .line 516
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 517
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private computeConversationListWidth()I
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListWidth(I)I

    move-result v0

    return v0
.end method

.method private computeConversationListWidth(I)I
    .locals 4
    .parameter "totalWidth"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 391
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 385
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeLabelListWidth()I

    move-result v0

    sub-int v0, p1, v0

    iget v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelListRightMargin:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 387
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isListCollapsible()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x3fd51eb851eb851fL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private computeConversationWidth()I
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationWidth(I)I

    move-result v0

    return v0
.end method

.method private computeConversationWidth(I)I
    .locals 4
    .parameter "totalWidth"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 438
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 433
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isListCollapsible()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    .line 434
    goto :goto_0

    .line 436
    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x3fd51eb851eb851fL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sub-int v0, p1, v0

    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private computeLabelListWidth()I
    .locals 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 406
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method private destroyBitmaps()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    .line 528
    :cond_0
    return-void
.end method

.method private dispatchConversationListVisibilityChange()V
    .locals 2

    .prologue
    .line 864
    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListener:Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;

    if-eqz v1, :cond_0

    .line 868
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 869
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/gm/TriStateSplitLayout$5;

    invoke-direct {v1, p0}, Lcom/google/android/gm/TriStateSplitLayout$5;-><init>(Lcom/google/android/gm/TriStateSplitLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 876
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private hideConversationMenu()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 908
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 909
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationListMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 910
    return-void
.end method

.method private isAnimatingFade()Z
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mAnimatingFade:Z

    return v0
.end method

.method private onCollapseList()V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationViewOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 824
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->dispatchConversationListVisibilityChange()V

    .line 825
    return-void
.end method

.method private onEnterConversationListMode()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 543
    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v2, v6}, Lcom/google/android/gm/HtmlConversationFragment;->setWebViewVisibility(Z)V

    .line 545
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->hideConversationMenu()V

    .line 546
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListStyles()V

    .line 549
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->setLabelListRightMargin()V

    .line 553
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 555
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onFinishEnteringConversationListMode()V

    .line 599
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeLabelListWidth()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/gm/TriStateSplitLayout;->setLabelListWidth(I)V

    .line 563
    iput-boolean v8, p0, Lcom/google/android/gm/TriStateSplitLayout;->mAnimatingFade:Z

    .line 564
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->captureBitmaps()V

    .line 565
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 567
    .local v1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeLabelListWidth()I

    move-result v0

    .line 568
    .local v0, labelsWidth:I
    const-string v2, "labelsLeft"

    new-array v3, v7, [I

    neg-int v4, v0

    iget v5, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelListRightMargin:I

    sub-int/2addr v4, v5

    aput v4, v3, v6

    aput v6, v3, v8

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-virtual {p0, v6}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListLeft(I)V

    .line 575
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListWidth()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListWidth(I)V

    .line 577
    const-string v2, "listBitmapLeft"

    new-array v3, v7, [I

    aput v6, v3, v6

    iget v4, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelListRightMargin:I

    add-int/2addr v4, v0

    aput v4, v3, v8

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    const-string v2, "listBitmapAlpha"

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    const-string v2, "listLeft"

    new-array v3, v7, [I

    aput v6, v3, v6

    iget v4, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelListRightMargin:I

    add-int/2addr v4, v0

    aput v4, v3, v8

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    const-string v2, "listAlpha"

    new-array v3, v7, [I

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    const-string v2, "conversationLeft"

    new-array v3, v7, [I

    iget-object v4, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    aput v4, v3, v6

    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getWidth()I

    move-result v4

    aput v4, v3, v8

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    const/16 v3, 0x20d

    new-instance v4, Lcom/google/android/gm/TriStateSplitLayout$1;

    invoke-direct {v4, p0}, Lcom/google/android/gm/TriStateSplitLayout$1;-><init>(Lcom/google/android/gm/TriStateSplitLayout;)V

    sget-object v5, Lcom/google/android/gm/TriStateSplitLayout;->sRightInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/animation/PropertyValuesHolder;

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/google/android/gm/TriStateSplitLayout;->startLayoutAnimation(ILcom/google/android/gm/TriStateSplitLayout$AnimatorListener;Landroid/animation/TimeInterpolator;[Landroid/animation/PropertyValuesHolder;)V

    goto/16 :goto_0

    .line 579
    :array_0
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 581
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onEnterConversationMode()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 620
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->showConversationMenu()V

    .line 621
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListStyles()V

    .line 622
    iget-object v5, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 626
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getMeasuredWidth()I

    move-result v5

    if-nez v5, :cond_0

    .line 627
    iput-boolean v9, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    .line 628
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onFinishEnteringConversationMode()V

    .line 674
    :goto_0
    return-void

    .line 633
    :cond_0
    iput-boolean v9, p0, Lcom/google/android/gm/TriStateSplitLayout;->mAnimatingFade:Z

    .line 634
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->captureBitmaps()V

    .line 635
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 638
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    iget-object v5, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 639
    .local v1, labelsWidth:I
    const-string v5, "labelsLeft"

    new-array v6, v11, [I

    aput v10, v6, v10

    neg-int v7, v1

    iget v8, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelListRightMargin:I

    sub-int/2addr v7, v8

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    iput-boolean v9, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    .line 645
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListWidth()I

    move-result v3

    .line 646
    .local v3, targetWidth:I
    invoke-direct {p0, v3}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListWidth(I)V

    .line 648
    iget v5, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelListRightMargin:I

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getConversationListLeft()I

    move-result v6

    add-int v0, v5, v6

    .line 649
    .local v0, currentListLeft:I
    invoke-virtual {p0, v3}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListLeft(I)I

    move-result v2

    .line 650
    .local v2, targetListLeft:I
    invoke-virtual {p0, v2}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListLeft(I)V

    .line 651
    if-eq v0, v2, :cond_1

    .line 652
    const-string v5, "listBitmapLeft"

    new-array v6, v11, [I

    aput v0, v6, v10

    aput v2, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    const-string v5, "listBitmapAlpha"

    new-array v6, v11, [I

    fill-array-data v6, :array_0

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    const-string v5, "listLeft"

    new-array v6, v11, [I

    iget-object v7, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v0

    sub-int/2addr v7, v3

    aput v7, v6, v10

    aput v2, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    const-string v5, "listAlpha"

    new-array v6, v11, [I

    fill-array-data v6, :array_1

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationWidth()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationWidth(I)V

    .line 665
    const-string v5, "conversationLeft"

    new-array v6, v11, [I

    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getWidth()I

    move-result v7

    aput v7, v6, v10

    add-int v7, v2, v3

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    const/16 v6, 0x1db

    new-instance v7, Lcom/google/android/gm/TriStateSplitLayout$2;

    invoke-direct {v7, p0}, Lcom/google/android/gm/TriStateSplitLayout$2;-><init>(Lcom/google/android/gm/TriStateSplitLayout;)V

    sget-object v8, Lcom/google/android/gm/TriStateSplitLayout;->sLeftInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/animation/PropertyValuesHolder;

    invoke-direct {p0, v6, v7, v8, v5}, Lcom/google/android/gm/TriStateSplitLayout;->startLayoutAnimation(ILcom/google/android/gm/TriStateSplitLayout$AnimatorListener;Landroid/animation/TimeInterpolator;[Landroid/animation/PropertyValuesHolder;)V

    goto/16 :goto_0

    .line 654
    nop

    :array_0
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 658
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onFinishEnteringConversationListMode()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    .line 606
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationViewOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 616
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->dispatchConversationListVisibilityChange()V

    .line 617
    return-void
.end method

.method private onFinishEnteringConversationMode()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->setWebViewVisibility(Z)V

    .line 683
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListWidth(I)V

    .line 685
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isListCollapsible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onCollapseList()V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mInnerListView:Lcom/google/android/gm/FadingListView;

    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationPositionTracker;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/FadingListView;->smoothScrollToPosition(I)V

    .line 692
    :cond_1
    return-void
.end method

.method private onUncollapseList()V
    .locals 2

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isListCollapsible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationViewOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 792
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->dispatchConversationListVisibilityChange()V

    .line 793
    return-void

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationViewOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshLayoutMargins()V
    .locals 2

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLayoutMarginValuesValid:Z

    if-nez v0, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelListRightMargin:I

    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLayoutMarginValuesValid:Z

    .line 931
    :cond_0
    return-void
.end method

.method private setConversationListStyles()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 331
    const/4 v3, 0x0

    .line 332
    .local v3, innerListTopPadding:I
    const/4 v2, 0x0

    .line 333
    .local v2, innerListBottomPadding:I
    const/4 v1, 0x0

    .line 334
    .local v1, fadingEdgeLength:I
    const/4 v6, 0x0

    .line 335
    .local v6, notifTopPadding:I
    const/4 v4, 0x0

    .line 336
    .local v4, notifLeftPadding:I
    const/4 v5, 0x0

    .line 337
    .local v5, notifRightPadding:I
    const/4 v7, 0x0

    .line 338
    .local v7, parentPadding:I
    const/4 v8, 0x0

    .line 339
    .local v8, topMinStrength:F
    const/4 v0, 0x0

    .line 340
    .local v0, bottomMinStrength:F
    iget-object v9, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v9}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 341
    iget v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLeftColumnFadingEdgeLength:I

    .line 342
    iget v6, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLeftColumnNotifTopPadding:I

    .line 343
    iget v7, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLeftColumnTopParentPadding:I

    .line 344
    iget v3, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLeftColumnTopPadding:I

    .line 345
    iget v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLeftColumnBottomPadding:I

    .line 346
    iget v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLeftColumnBottomFadeStrength:F

    .line 347
    iget-object v9, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListSpacer:Landroid/view/View;

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 357
    :goto_0
    iget-object v9, p0, Lcom/google/android/gm/TriStateSplitLayout;->mInnerListView:Lcom/google/android/gm/FadingListView;

    invoke-virtual {v9, v1}, Lcom/google/android/gm/FadingListView;->setFadingEdgeLength(I)V

    .line 358
    iget-object v9, p0, Lcom/google/android/gm/TriStateSplitLayout;->mInnerListView:Lcom/google/android/gm/FadingListView;

    iget-object v10, p0, Lcom/google/android/gm/TriStateSplitLayout;->mInnerListView:Lcom/google/android/gm/FadingListView;

    invoke-virtual {v10}, Lcom/google/android/gm/FadingListView;->getPaddingLeft()I

    move-result v10

    iget-object v11, p0, Lcom/google/android/gm/TriStateSplitLayout;->mInnerListView:Lcom/google/android/gm/FadingListView;

    invoke-virtual {v11}, Lcom/google/android/gm/FadingListView;->getPaddingRight()I

    move-result v11

    invoke-virtual {v9, v10, v3, v11, v2}, Lcom/google/android/gm/FadingListView;->setPadding(IIII)V

    .line 360
    iget-object v9, p0, Lcom/google/android/gm/TriStateSplitLayout;->mInnerListView:Lcom/google/android/gm/FadingListView;

    invoke-virtual {v9, v8}, Lcom/google/android/gm/FadingListView;->setTopMinStrength(F)V

    .line 361
    iget-object v9, p0, Lcom/google/android/gm/TriStateSplitLayout;->mInnerListView:Lcom/google/android/gm/FadingListView;

    invoke-virtual {v9, v0}, Lcom/google/android/gm/FadingListView;->setBottomMinStrength(F)V

    .line 362
    iget-object v9, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    iget-object v11, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    iget-object v12, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 364
    iget-object v9, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConvNotificationsArea:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConvNotificationsArea:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v9, v4, v6, v5, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 368
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->requestLayout()V

    .line 374
    if-eqz v3, :cond_0

    .line 375
    iget-object v9, p0, Lcom/google/android/gm/TriStateSplitLayout;->mInnerListView:Lcom/google/android/gm/FadingListView;

    neg-int v10, v3

    invoke-virtual {v9, v10, v13}, Lcom/google/android/gm/FadingListView;->smoothScrollBy(II)V

    .line 377
    :cond_0
    return-void

    .line 349
    :cond_1
    iget v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mRightColumnFadingEdgeLength:I

    .line 350
    iget v3, p0, Lcom/google/android/gm/TriStateSplitLayout;->mRightColumnTopPadding:I

    .line 351
    iget v4, p0, Lcom/google/android/gm/TriStateSplitLayout;->mRightColumnNotifLeftPadding:I

    .line 352
    iget v5, p0, Lcom/google/android/gm/TriStateSplitLayout;->mRightColumnNotifRightPadding:I

    .line 353
    const v8, 0x3ecccccd

    .line 354
    const v0, 0x3f19999a

    .line 355
    iget-object v9, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListSpacer:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setConversationListWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 323
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->requestLayout()V

    .line 324
    return-void
.end method

.method private setConversationWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 423
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->requestLayout()V

    .line 424
    return-void
.end method

.method private setLabelListRightMargin()V
    .locals 2

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->refreshLayoutMargins()V

    .line 917
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelListRightMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 919
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->requestLayout()V

    .line 920
    return-void
.end method

.method private setLabelListWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 415
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 416
    return-void
.end method

.method private showConversationMenu()V
    .locals 2

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->hideConversationMenu()V

    .line 901
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getConversationMenuView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 902
    return-void
.end method

.method private varargs startLayoutAnimation(ILcom/google/android/gm/TriStateSplitLayout$AnimatorListener;Landroid/animation/TimeInterpolator;[Landroid/animation/PropertyValuesHolder;)V
    .locals 4
    .parameter "duration"
    .parameter "listener"
    .parameter "interpolator"
    .parameter "values"

    .prologue
    .line 939
    invoke-static {p0, p4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 941
    .local v0, animator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 942
    if-eqz p2, :cond_0

    .line 943
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 946
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mOutstandingAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 947
    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mOutstandingAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 949
    :cond_1
    iput-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mOutstandingAnimator:Landroid/animation/Animator;

    .line 950
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 951
    return-void
.end method


# virtual methods
.method public attachToViewMode(Lcom/google/android/gm/ViewMode;)V
    .locals 1
    .parameter "viewMode"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    .line 265
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ViewMode;->addListener(Lcom/google/android/gm/ViewMode$ModeChangeListener;)V

    .line 266
    return-void
.end method

.method public bindFragment(Lcom/google/android/gm/HtmlConversationFragment;)V
    .locals 0
    .parameter "conversationFragment"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationFragment:Lcom/google/android/gm/HtmlConversationFragment;

    .line 241
    return-void
.end method

.method public collapseList()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 800
    iget-boolean v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    if-eqz v1, :cond_0

    move v1, v6

    .line 816
    :goto_0
    return v1

    .line 803
    :cond_0
    iput-boolean v5, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    .line 805
    const-string v1, "conversationListLeft"

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getConversationListLeft()I

    move-result v3

    aput v3, v2, v6

    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListWidth()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListLeft(I)I

    move-result v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 810
    .local v0, listLeftValues:Landroid/animation/PropertyValuesHolder;
    const/16 v1, 0x96

    new-instance v2, Lcom/google/android/gm/TriStateSplitLayout$4;

    invoke-direct {v2, p0}, Lcom/google/android/gm/TriStateSplitLayout$4;-><init>(Lcom/google/android/gm/TriStateSplitLayout;)V

    sget-object v3, Lcom/google/android/gm/TriStateSplitLayout;->sCollapseInterpolator:Landroid/animation/TimeInterpolator;

    new-array v4, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v6

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/gm/TriStateSplitLayout;->startLayoutAnimation(ILcom/google/android/gm/TriStateSplitLayout$AnimatorListener;Landroid/animation/TimeInterpolator;[Landroid/animation/PropertyValuesHolder;)V

    move v1, v5

    .line 816
    goto :goto_0
.end method

.method public computeConversationListLeft(I)I
    .locals 2
    .parameter "width"

    .prologue
    const/4 v1, 0x0

    .line 848
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isListCollapsible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    iget-boolean v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    if-eqz v0, :cond_0

    neg-int v0, p1

    .line 852
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 849
    goto :goto_0

    :cond_1
    move v0, v1

    .line 852
    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 696
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isAnimatingFade()Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 721
    :goto_0
    return-void

    .line 701
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 702
    iget v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelListTopMargin:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 703
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 704
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 707
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmapLeft:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 711
    :cond_1
    iget v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListLeft:I

    int-to-float v1, v0

    iget v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListLeft:I

    iget-object v3, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListAlpha:I

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 713
    iget v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListLeft:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 714
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 715
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 717
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 718
    iget v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mRightColumnTopPadding:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 719
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 720
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getConversationListLeft()I
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method public getConversationMenuView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 889
    iget v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 890
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationMenuView:Landroid/view/ViewGroup;

    .line 892
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationListMenuView:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public isConversationListVisible()Z
    .locals 1

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isListCollapsible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConversationPaneVisible()Z
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v0

    return v0
.end method

.method public isListCollapsible()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 748
    iget v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewOrientation:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 727
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewOrientation:I

    if-ne v0, v1, :cond_0

    .line 742
    :goto_0
    return-void

    .line 731
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewOrientation:I

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLayoutMarginValuesValid:Z

    .line 734
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->setLabelListRightMargin()V

    .line 737
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeLabelListWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->setLabelListWidth(I)V

    .line 741
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListStyles()V

    goto :goto_0

    .line 739
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->showConversationMenu()V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 186
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 187
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 188
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 189
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewOrientation:I

    .line 191
    const v2, 0x7f0e007a

    invoke-virtual {p0, v2}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    .line 192
    const v2, 0x7f0e007b

    invoke-virtual {p0, v2}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationListContainer:Landroid/view/View;

    .line 193
    const v2, 0x7f0e007c

    invoke-virtual {p0, v2}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    .line 194
    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/FadingListView;

    iput-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mInnerListView:Lcom/google/android/gm/FadingListView;

    .line 195
    const v2, 0x7f0e007d

    invoke-virtual {p0, v2}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListSpacer:Landroid/view/View;

    .line 196
    const v2, 0x7f0e0080

    invoke-virtual {p0, v2}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationView:Landroid/view/View;

    .line 197
    const v2, 0x7f0e0082

    invoke-virtual {p0, v2}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationViewOverlay:Landroid/view/View;

    .line 199
    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationViewOverlay:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    const v2, 0x7f0e0056

    invoke-virtual {p0, v2}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationMenuView:Landroid/view/ViewGroup;

    .line 202
    const v2, 0x7f0e007f

    invoke-virtual {p0, v2}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationListMenuView:Landroid/view/ViewGroup;

    .line 204
    const v2, 0x7f0c0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLeftColumnTopPadding:I

    .line 205
    const v2, 0x7f0c0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLeftColumnBottomPadding:I

    .line 207
    const v2, 0x7f0c0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLeftColumnTopParentPadding:I

    .line 209
    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLeftColumnFadingEdgeLength:I

    .line 212
    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLeftColumnBottomFadeStrength:F

    .line 214
    const v2, 0x7f0c0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mRightColumnTopPadding:I

    .line 215
    const v2, 0x7f0c0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mRightColumnFadingEdgeLength:I

    .line 217
    const v2, 0x7f0c002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLeftColumnNotifTopPadding:I

    .line 219
    const v2, 0x7f0c002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelListTopMargin:I

    .line 220
    const v2, 0x7f0c002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mRightColumnNotifLeftPadding:I

    .line 222
    const v2, 0x7f0c002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mRightColumnNotifRightPadding:I

    .line 224
    const v2, 0x7f0e0038

    invoke-virtual {p0, v2}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConvNotificationsArea:Landroid/view/View;

    .line 225
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->refreshLayoutMargins()V

    .line 227
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mPaint:Landroid/graphics/Paint;

    .line 228
    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 229
    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListPaint:Landroid/graphics/Paint;

    .line 231
    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 232
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v4, 0x4000

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 279
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewOrientation:I

    .line 280
    if-ne p1, p3, :cond_0

    .line 316
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v3}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 313
    :goto_1
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 314
    .local v2, widthSpec:I
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 315
    .local v1, heightSpec:I
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gm/TriStateSplitLayout;->measure(II)V

    goto :goto_0

    .line 287
    .end local v1           #heightSpec:I
    .end local v2           #widthSpec:I
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->setLabelListRightMargin()V

    .line 288
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeLabelListWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/gm/TriStateSplitLayout;->setLabelListWidth(I)V

    goto :goto_1

    .line 292
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListWidth(I)I

    move-result v0

    .line 293
    .local v0, conversationListWidth:I
    invoke-direct {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListWidth(I)V

    .line 294
    invoke-direct {p0, p1}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationWidth(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationWidth(I)V

    .line 295
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->showConversationMenu()V

    .line 298
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isListCollapsible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    .line 300
    invoke-virtual {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListLeft(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListLeft(I)V

    .line 301
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onCollapseList()V

    goto :goto_1

    .line 303
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    .line 304
    invoke-virtual {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListLeft(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListLeft(I)V

    .line 305
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onUncollapseList()V

    goto :goto_1

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "target"
    .parameter "event"

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isListCollapsible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationViewOverlay:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->collapseList()Z

    .line 755
    const/4 v0, 0x1

    .line 757
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewModeChanged(Lcom/google/android/gm/ViewMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 540
    :goto_0
    return-void

    .line 534
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onEnterConversationMode()V

    goto :goto_0

    .line 537
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onEnterConversationListMode()V

    goto :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setConversationLeft(I)V
    .locals 0
    .parameter "left"

    .prologue
    .line 502
    iput p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationLeft:I

    .line 503
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->invalidate()V

    .line 504
    return-void
.end method

.method public setConversationListLeft(I)V
    .locals 1
    .parameter "left"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 840
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->requestLayout()V

    .line 841
    return-void
.end method

.method public setLabelsLeft(I)V
    .locals 0
    .parameter "left"

    .prologue
    .line 454
    iput p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsLeft:I

    .line 455
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->invalidate()V

    .line 456
    return-void
.end method

.method public setListAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 492
    iput p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListAlpha:I

    .line 493
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->invalidate()V

    .line 494
    return-void
.end method

.method public setListBitmapAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 474
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->invalidate()V

    .line 475
    return-void
.end method

.method public setListBitmapLeft(I)V
    .locals 0
    .parameter "left"

    .prologue
    .line 464
    iput p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmapLeft:I

    .line 465
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->invalidate()V

    .line 466
    return-void
.end method

.method public setListLeft(I)V
    .locals 0
    .parameter "left"

    .prologue
    .line 483
    iput p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListLeft:I

    .line 484
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->invalidate()V

    .line 485
    return-void
.end method

.method public setListener(Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListener:Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;

    .line 257
    return-void
.end method

.method public setSelectedPosition(Lcom/google/android/gm/ConversationPositionTracker;)V
    .locals 0
    .parameter "selectedConversationPos"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mSelectedConversationPos:Lcom/google/android/gm/ConversationPositionTracker;

    .line 250
    return-void
.end method

.method public uncollapseList()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 765
    iget-boolean v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    if-nez v1, :cond_0

    move v1, v5

    .line 780
    :goto_0
    return v1

    .line 768
    :cond_0
    iput-boolean v5, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    .line 770
    const-string v1, "conversationListLeft"

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getConversationListLeft()I

    move-result v3

    aput v3, v2, v5

    aput v5, v2, v6

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 774
    .local v0, listLeftValues:Landroid/animation/PropertyValuesHolder;
    const/16 v1, 0x96

    new-instance v2, Lcom/google/android/gm/TriStateSplitLayout$3;

    invoke-direct {v2, p0}, Lcom/google/android/gm/TriStateSplitLayout$3;-><init>(Lcom/google/android/gm/TriStateSplitLayout;)V

    sget-object v3, Lcom/google/android/gm/TriStateSplitLayout;->sCollapseInterpolator:Landroid/animation/TimeInterpolator;

    new-array v4, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/gm/TriStateSplitLayout;->startLayoutAnimation(ILcom/google/android/gm/TriStateSplitLayout$AnimatorListener;Landroid/animation/TimeInterpolator;[Landroid/animation/PropertyValuesHolder;)V

    move v1, v6

    .line 780
    goto :goto_0
.end method
