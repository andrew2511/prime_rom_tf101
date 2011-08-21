.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeGlow;

.field private mEdgeGlowTop:Landroid/widget/EdgeGlow;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 149
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 83
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 90
    iput-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 97
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 114
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 127
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 135
    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 136
    iput-object v3, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 154
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 156
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 159
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 161
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    return-void
.end method

.method private canScroll()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 256
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1b

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 259
    .local v1, childHeight:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_19

    const/4 v2, 0x1

    .line 261
    .end local v1           #childHeight:I
    :goto_18
    return v2

    .restart local v1       #childHeight:I
    :cond_19
    move v2, v5

    .line 259
    goto :goto_18

    .end local v1           #childHeight:I
    :cond_1b
    move v2, v5

    .line 261
    goto :goto_18
.end method

.method private clamp(III)I
    .registers 5
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1522
    if-ge p2, p3, :cond_4

    if-gez p1, :cond_6

    .line 1538
    :cond_4
    const/4 v0, 0x0

    .line 1548
    :goto_5
    return v0

    .line 1540
    :cond_6
    add-int v0, p2, p1

    if-le v0, p3, :cond_d

    .line 1546
    sub-int v0, p3, p2

    goto :goto_5

    :cond_d
    move v0, p1

    .line 1548
    goto :goto_5
.end method

.method private doScrollY(I)V
    .registers 4
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1007
    if-eqz p1, :cond_a

    .line 1008
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_b

    .line 1009
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1014
    :cond_a
    :goto_a
    return-void

    .line 1011
    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_a
.end method

.method private endDrag()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1434
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1436
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    .line 1437
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1438
    iput-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1441
    :cond_f
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_1d

    .line 1442
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 1443
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 1446
    :cond_1d
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_28

    .line 1447
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1448
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1450
    :cond_28
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 15
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 751
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 752
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 761
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 763
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 764
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_c
    if-ge v4, v0, :cond_56

    .line 765
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 766
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 767
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 769
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_2a

    if-ge v9, p3, :cond_2a

    .line 775
    if-ge p2, v9, :cond_2d

    if-ge v6, p3, :cond_2d

    const/4 v10, 0x1

    move v8, v10

    .line 778
    .local v8, viewIsFullyContained:Z
    :goto_26
    if-nez v1, :cond_30

    .line 780
    move-object v1, v5

    .line 781
    move v3, v8

    .line 764
    .end local v8           #viewIsFullyContained:Z
    :cond_2a
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 775
    :cond_2d
    const/4 v10, 0x0

    move v8, v10

    goto :goto_26

    .line 783
    .restart local v8       #viewIsFullyContained:Z
    :cond_30
    if-eqz p1, :cond_38

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_40

    :cond_38
    if-nez p1, :cond_4a

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_4a

    :cond_40
    const/4 v10, 0x1

    move v7, v10

    .line 788
    .local v7, viewIsCloserToBoundary:Z
    :goto_42
    if-eqz v3, :cond_4d

    .line 789
    if-eqz v8, :cond_2a

    if-eqz v7, :cond_2a

    .line 795
    move-object v1, v5

    goto :goto_2a

    .line 783
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_4a
    const/4 v10, 0x0

    move v7, v10

    goto :goto_42

    .line 798
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_4d
    if-eqz v8, :cond_52

    .line 800
    move-object v1, v5

    .line 801
    const/4 v3, 0x1

    goto :goto_2a

    .line 802
    :cond_52
    if-eqz v7, :cond_2a

    .line 807
    move-object v1, v5

    goto :goto_2a

    .line 814
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_56
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .registers 8
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 720
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 721
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 722
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 724
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_1f

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_1f

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_1f

    move-object v3, p3

    .line 730
    :goto_1e
    return-object v3

    :cond_1f
    invoke-direct {p0, p1, v2, v0}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    goto :goto_1e
.end method

.method private getScrollRange()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 689
    const/4 v1, 0x0

    .line 690
    .local v1, scrollRange:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1f

    .line 691
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 692
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 695
    .end local v0           #child:Landroid/view/View;
    :cond_1f
    return v1
.end method

.method private inChild(II)Z
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 394
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2b

    .line 395
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 396
    .local v1, scrollY:I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 397
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt p2, v2, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge p2, v2, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_29

    const/4 v2, 0x1

    .line 402
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :goto_28
    return v2

    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #scrollY:I
    :cond_29
    move v2, v3

    .line 397
    goto :goto_28

    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :cond_2b
    move v2, v3

    .line 402
    goto :goto_28
.end method

.method private initScrollView()V
    .registers 4

    .prologue
    .line 204
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 205
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 206
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 207
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 208
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 209
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 210
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 211
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 212
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 213
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 214
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4
    .parameter "descendant"

    .prologue
    const/4 v1, 0x0

    .line 986
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 1389
    if-ne p1, p2, :cond_5

    move v1, v2

    .line 1394
    :goto_4
    return v1

    .line 1393
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1394
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_4

    :cond_17
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 6
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 994
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 995
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 997
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "ev"

    .prologue
    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 628
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 629
    .local v1, pointerId:I
    iget v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_2b

    .line 633
    if-nez v2, :cond_2c

    const/4 v3, 0x1

    move v0, v3

    .line 634
    .local v0, newPointerIndex:I
    :goto_16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 635
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 636
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2b

    .line 637
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 640
    .end local v0           #newPointerIndex:I
    :cond_2b
    return-void

    .line 633
    :cond_2c
    const/4 v3, 0x0

    move v0, v3

    goto :goto_16
.end method

.method private scrollAndFocus(III)Z
    .registers 12
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 897
    const/4 v3, 0x1

    .line 899
    .local v3, handled:Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 900
    .local v4, height:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 901
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 902
    .local v0, containerBottom:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_27

    const/4 v7, 0x1

    move v6, v7

    .line 904
    .local v6, up:Z
    :goto_11
    invoke-direct {p0, v6, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 905
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_18

    .line 906
    move-object v5, p0

    .line 909
    :cond_18
    if-lt p2, v1, :cond_2a

    if-gt p3, v0, :cond_2a

    .line 910
    const/4 v3, 0x0

    .line 916
    :goto_1d
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_26

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 918
    :cond_26
    return v3

    .line 902
    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_27
    const/4 v7, 0x0

    move v6, v7

    goto :goto_11

    .line 912
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_2a
    if-eqz v6, :cond_33

    sub-int v7, p2, v1

    move v2, v7

    .line 913
    .local v2, delta:I
    :goto_2f
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_1d

    .line 912
    .end local v2           #delta:I
    :cond_33
    sub-int v7, p3, v0

    move v2, v7

    goto :goto_2f
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 1176
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1179
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1181
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1183
    .local v0, scrollDelta:I
    if-eqz v0, :cond_16

    .line 1184
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1186
    :cond_16
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 7
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v3, 0x0

    .line 1197
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1198
    .local v0, delta:I
    if-eqz v0, :cond_11

    const/4 v2, 0x1

    move v1, v2

    .line 1199
    .local v1, scroll:Z
    :goto_9
    if-eqz v1, :cond_10

    .line 1200
    if-eqz p2, :cond_13

    .line 1201
    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1206
    :cond_10
    :goto_10
    return v1

    .end local v1           #scroll:Z
    :cond_11
    move v1, v3

    .line 1198
    goto :goto_9

    .line 1203
    .restart local v1       #scroll:Z
    :cond_13
    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_10
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 223
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 232
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 250
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "params"

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 13
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v9, 0x0

    .line 930
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 931
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    .line 933
    :cond_a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 935
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 937
    .local v3, maxJump:I
    if-eqz v4, :cond_57

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    invoke-direct {p0, v4, v3, v7}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 938
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 939
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 940
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 941
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 942
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 966
    :goto_38
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 973
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v2

    .line 974
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 975
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 976
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 978
    .end local v2           #descendantFocusability:I
    :cond_55
    const/4 v7, 0x1

    :goto_56
    return v7

    .line 945
    .end local v6           #scrollDelta:I
    :cond_57
    move v6, v3

    .line 947
    .restart local v6       #scrollDelta:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_6a

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    if-ge v7, v6, :cond_6a

    .line 948
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .line 960
    :cond_66
    :goto_66
    if-nez v6, :cond_8b

    move v7, v9

    .line 961
    goto :goto_56

    .line 949
    :cond_6a
    if-ne p1, v10, :cond_66

    .line 950
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_66

    .line 951
    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 953
    .local v1, daBottom:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    add-int v5, v7, v8

    .line 955
    .local v5, screenBottom:I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_66

    .line 956
    sub-int v6, v1, v5

    goto :goto_66

    .line 963
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_8b
    if-ne p1, v10, :cond_92

    move v7, v6

    :goto_8e
    invoke-direct {p0, v7}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_38

    :cond_92
    neg-int v7, v6

    goto :goto_8e
.end method

.method public computeScroll()V
    .registers 15

    .prologue
    const/4 v5, 0x0

    .line 1120
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1137
    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1138
    .local v3, oldX:I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1139
    .local v4, oldY:I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 1140
    .local v12, x:I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1142
    .local v13, y:I
    if-ne v3, v12, :cond_1d

    if-eq v4, v13, :cond_53

    .line 1143
    :cond_1d
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    iget v8, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1145
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1147
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v11

    .line 1148
    .local v11, range:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v10

    .line 1149
    .local v10, overscrollMode:I
    if-eqz v10, :cond_43

    const/4 v0, 0x1

    if-ne v10, v0, :cond_53

    if-lez v11, :cond_53

    .line 1151
    :cond_43
    if-gez v13, :cond_5a

    if-ltz v4, :cond_5a

    .line 1152
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 1158
    .end local v10           #overscrollMode:I
    .end local v11           #range:I
    :cond_53
    :goto_53
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 1161
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidate()V

    .line 1168
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_59
    :goto_59
    return-void

    .line 1153
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v10       #overscrollMode:I
    .restart local v11       #range:I
    .restart local v12       #x:I
    .restart local v13       #y:I
    :cond_5a
    if-le v13, v11, :cond_53

    if-gt v4, v11, :cond_53

    .line 1154
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    goto :goto_53

    .line 1163
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #overscrollMode:I
    .end local v11           #range:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_6b
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_59

    .line 1164
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1165
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_59
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 12
    .parameter "rect"

    .prologue
    const/4 v9, 0x0

    .line 1218
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_9

    move v7, v9

    .line 1272
    :goto_8
    return v7

    .line 1220
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 1221
    .local v3, height:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 1222
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1224
    .local v4, screenBottom:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1227
    .local v2, fadingEdge:I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-lez v7, :cond_1c

    .line 1228
    add-int/2addr v5, v2

    .line 1232
    :cond_1c
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_29

    .line 1233
    sub-int/2addr v4, v2

    .line 1236
    :cond_29
    const/4 v6, 0x0

    .line 1238
    .local v6, scrollYDelta:I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_51

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v5, :cond_51

    .line 1243
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_4c

    .line 1245
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    add-int/2addr v6, v7

    .line 1252
    :goto_3c
    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1253
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1254
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_4a
    :goto_4a
    move v7, v6

    .line 1272
    goto :goto_8

    .line 1248
    :cond_4c
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    add-int/2addr v6, v7

    goto :goto_3c

    .line 1256
    :cond_51
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_4a

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_4a

    .line 1261
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6e

    .line 1263
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1270
    :goto_64
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_4a

    .line 1266
    :cond_6e
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_64
.end method

.method protected computeVerticalScrollOffset()I
    .registers 3

    .prologue
    .line 1086
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1066
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 1067
    .local v1, count:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1068
    .local v0, contentHeight:I
    if-nez v1, :cond_14

    move v5, v0

    .line 1081
    :goto_13
    return v5

    .line 1072
    :cond_14
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1073
    .local v3, scrollRange:I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1074
    .local v4, scrollY:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1075
    .local v2, overscrollBottom:I
    if-gez v4, :cond_29

    .line 1076
    sub-int/2addr v3, v4

    :cond_27
    :goto_27
    move v5, v3

    .line 1081
    goto :goto_13

    .line 1077
    :cond_29
    if-le v4, v2, :cond_27

    .line 1078
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_27
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    .line 1490
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1491
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v4, :cond_8a

    .line 1492
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1493
    .local v2, scrollY:I
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_43

    .line 1494
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1495
    .local v1, restoreCount:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 1497
    .local v3, width:I
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1498
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 1499
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1500
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1502
    :cond_40
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1504
    .end local v1           #restoreCount:I
    .end local v3           #width:I
    :cond_43
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v4}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v4

    if-nez v4, :cond_8a

    .line 1505
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1506
    .restart local v1       #restoreCount:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 1507
    .restart local v3       #width:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 1509
    .local v0, height:I
    neg-int v4, v3

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1511
    const/high16 v4, 0x4334

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1512
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v4, v3, v0}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 1513
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 1514
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1516
    :cond_87
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1519
    .end local v0           #height:I
    .end local v1           #restoreCount:I
    .end local v2           #scrollY:I
    .end local v3           #width:I
    :cond_8a
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 352
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 354
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 355
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3a

    .line 356
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_24

    const/4 v0, 0x0

    .line 358
    :cond_24
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 360
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_38

    if-eq v2, p0, :cond_38

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_38

    const/4 v3, 0x1

    .line 390
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :goto_37
    return v3

    .restart local v0       #currentFocused:Landroid/view/View;
    .restart local v2       #nextFocused:Landroid/view/View;
    :cond_38
    move v3, v6

    .line 360
    goto :goto_37

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_3a
    move v3, v6

    .line 364
    goto :goto_37

    .line 367
    :cond_3c
    const/4 v1, 0x0

    .line 368
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4a

    .line 369
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_7a

    :cond_4a
    :goto_4a
    move v3, v1

    .line 390
    goto :goto_37

    .line 371
    :sswitch_4c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_57

    .line 372
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_4a

    .line 374
    :cond_57
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 376
    goto :goto_4a

    .line 378
    :sswitch_5c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_67

    .line 379
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_4a

    .line 381
    :cond_67
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 383
    goto :goto_4a

    .line 385
    :sswitch_6c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_77

    move v3, v4

    :goto_73
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_4a

    :cond_77
    move v3, v5

    goto :goto_73

    .line 369
    nop

    :sswitch_data_7a
    .sparse-switch
        0x13 -> :sswitch_4c
        0x14 -> :sswitch_5c
        0x3e -> :sswitch_6c
    .end sparse-switch
.end method

.method public fling(I)V
    .registers 22
    .parameter "velocityY"

    .prologue
    .line 1405
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_8b

    .line 1406
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mPaddingBottom:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mPaddingTop:I

    move v5, v0

    sub-int v17, v4, v5

    .line 1407
    .local v17, height:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 1409
    .local v15, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    sub-int v12, v15, v17

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    div-int/lit8 v14, v17, 0x2

    move/from16 v8, p1

    invoke-virtual/range {v4 .. v14}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1412
    if-lez p1, :cond_8c

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 1414
    .local v18, movingDown:Z
    :goto_4a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v16

    .line 1415
    .local v16, currentFocused:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v4

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v19

    .line 1417
    .local v19, newFocused:Landroid/view/View;
    if-nez v19, :cond_66

    .line 1418
    move-object/from16 v19, p0

    .line 1421
    :cond_66
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_76

    .line 1422
    if-eqz v18, :cond_90

    const/16 v4, 0x82

    :goto_70
    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 1425
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    move-object v4, v0

    if-nez v4, :cond_88

    .line 1426
    const-string v4, "ScrollView-fling"

    invoke-static {v4}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1429
    :cond_88
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1431
    .end local v15           #bottom:I
    .end local v16           #currentFocused:Landroid/view/View;
    .end local v17           #height:I
    .end local v18           #movingDown:Z
    .end local v19           #newFocused:Landroid/view/View;
    :cond_8b
    return-void

    .line 1412
    .restart local v15       #bottom:I
    .restart local v17       #height:I
    :cond_8c
    const/4 v4, 0x0

    move/from16 v18, v4

    goto :goto_4a

    .line 1422
    .restart local v16       #currentFocused:Landroid/view/View;
    .restart local v18       #movingDown:Z
    .restart local v19       #newFocused:Landroid/view/View;
    :cond_90
    const/16 v4, 0x21

    goto :goto_70
.end method

.method public fullScroll(I)Z
    .registers 9
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 866
    const/16 v4, 0x82

    if-ne p1, v4, :cond_3f

    move v1, v6

    .line 867
    .local v1, down:Z
    :goto_7
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 869
    .local v2, height:I
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 870
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 872
    if-eqz v1, :cond_32

    .line 873
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 874
    .local v0, count:I
    if-lez v0, :cond_32

    .line 875
    sub-int v4, v0, v6

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 876
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 877
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 881
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_32
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_3f
    move v1, v5

    .line 866
    goto :goto_7
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 6

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 181
    const/4 v3, 0x0

    .line 191
    :goto_7
    return v3

    .line 184
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 185
    .local v1, length:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 186
    .local v0, bottomEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 187
    .local v2, span:I
    if-ge v2, v1, :cond_28

    .line 188
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_7

    .line 191
    :cond_28
    const/high16 v3, 0x3f80

    goto :goto_7
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 199
    const/high16 v0, 0x3f00

    iget v1, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v2, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 4

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 167
    const/4 v1, 0x0

    .line 175
    :goto_7
    return v1

    .line 170
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 171
    .local v0, length:I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_16

    .line 172
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_7

    .line 175
    :cond_16
    const/high16 v1, 0x3f80

    goto :goto_7
.end method

.method public isFillViewport()Z
    .registers 2

    .prologue
    .line 272
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    .prologue
    .line 295
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 10
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1091
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1096
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1099
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1101
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1102
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1107
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1109
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1112
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1115
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1116
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1340
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1342
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_f

    .line 1343
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1344
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1346
    :cond_f
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1a

    .line 1347
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1348
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1350
    :cond_1a
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_f

    .line 645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_42

    .line 668
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_13
    return v5

    .line 647
    :pswitch_14
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_f

    .line 648
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 649
    .local v4, vscroll:F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_f

    .line 650
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 651
    .local v0, delta:I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v3

    .line 652
    .local v3, range:I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 653
    .local v2, oldScrollY:I
    sub-int v1, v2, v0

    .line 654
    .local v1, newScrollY:I
    if-gez v1, :cond_3d

    .line 655
    const/4 v1, 0x0

    .line 659
    :cond_34
    :goto_34
    if-eq v1, v2, :cond_f

    .line 660
    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 661
    const/4 v5, 0x1

    goto :goto_13

    .line 656
    :cond_3d
    if-le v1, v3, :cond_34

    .line 657
    move v1, v3

    goto :goto_34

    .line 645
    nop

    :pswitch_data_42
    .packed-switch 0x8
        :pswitch_14
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "ev"

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 419
    .local v7, action:I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_10

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_10

    move v0, v2

    .line 497
    :goto_f
    return v0

    .line 423
    :cond_10
    and-int/lit16 v0, v7, 0xff

    packed-switch v0, :pswitch_data_9a

    .line 497
    :cond_15
    :goto_15
    :pswitch_15
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    goto :goto_f

    .line 434
    :pswitch_18
    iget v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 435
    .local v8, activePointerId:I
    if-eq v8, v1, :cond_15

    .line 440
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 441
    .local v9, pointerIndex:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 442
    .local v10, y:F
    iget v0, p0, Landroid/widget/ScrollView;->mLastMotionY:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v11, v0

    .line 443
    .local v11, yDiff:I
    iget v0, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v11, v0, :cond_15

    .line 444
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 445
    iput v10, p0, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 446
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_15

    .line 447
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_15

    .line 454
    .end local v8           #activePointerId:I
    .end local v9           #pointerIndex:I
    .end local v10           #y:F
    .end local v11           #yDiff:I
    :pswitch_42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 455
    .restart local v10       #y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    float-to-int v1, v10

    invoke-direct {p0, v0, v1}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v0

    if-nez v0, :cond_55

    .line 456
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    goto :goto_15

    .line 464
    :cond_55
    iput v10, p0, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 465
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 472
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_79

    move v0, v2

    :goto_66
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 473
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_15

    .line 474
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_15

    :cond_79
    move v0, v3

    .line 472
    goto :goto_66

    .line 482
    .end local v10           #y:F
    :pswitch_7b
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 483
    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 484
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 485
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_15

    .line 489
    :pswitch_95
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_15

    .line 423
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_42
        :pswitch_7b
        :pswitch_18
        :pswitch_7b
        :pswitch_15
        :pswitch_15
        :pswitch_95
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1354
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1355
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1357
    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1358
    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1360
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1363
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1364
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 308
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 310
    iget-boolean v6, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v6, :cond_8

    .line 335
    :cond_7
    :goto_7
    return-void

    .line 314
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 315
    .local v4, heightMode:I
    if-eqz v4, :cond_7

    .line 319
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_7

    .line 320
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 321
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    .line 322
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_7

    .line 323
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 325
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 327
    .local v2, childWidthMeasureSpec:I
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v6

    .line 328
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    .line 329
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 332
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_7
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 12
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v3, 0x0

    .line 675
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_25

    .line 676
    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 677
    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 678
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    .line 679
    if-eqz p4, :cond_21

    .line 680
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 685
    :cond_21
    :goto_21
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 686
    return-void

    .line 683
    :cond_25
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_21
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x0

    .line 1300
    const/4 v1, 0x2

    if-ne p1, v1, :cond_16

    .line 1301
    const/16 p1, 0x82

    .line 1306
    :cond_6
    :goto_6
    if-nez p2, :cond_1c

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1311
    .local v0, nextFocus:Landroid/view/View;
    :goto_12
    if-nez v0, :cond_26

    move v1, v3

    .line 1319
    :goto_15
    return v1

    .line 1302
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_16
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 1303
    const/16 p1, 0x21

    goto :goto_6

    .line 1306
    :cond_1c
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_12

    .line 1315
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_26
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2e

    move v1, v3

    .line 1316
    goto :goto_15

    .line 1319
    :cond_2e
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_15
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1368
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1370
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1371
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_b

    if-ne p0, v0, :cond_c

    .line 1383
    :cond_b
    :goto_b
    return-void

    .line 1377
    :cond_c
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1378
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1379
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1380
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1381
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 38
    .parameter "ev"

    .prologue
    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v5

    if-eqz v5, :cond_e

    .line 506
    const/4 v5, 0x0

    .line 622
    :goto_d
    return v5

    .line 509
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_1e

    .line 510
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 512
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 514
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v26

    .line 516
    .local v26, action:I
    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    packed-switch v5, :pswitch_data_268

    .line 622
    :cond_35
    :goto_35
    :pswitch_35
    const/4 v5, 0x1

    goto :goto_d

    .line 518
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_4c

    const/4 v5, 0x1

    :goto_3e
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 519
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-nez v5, :cond_4e

    .line 520
    const/4 v5, 0x0

    goto :goto_d

    .line 518
    :cond_4c
    const/4 v5, 0x0

    goto :goto_3e

    .line 527
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_76

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    move-object v5, v0

    if-eqz v5, :cond_76

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/StrictMode$Span;->finish()V

    .line 531
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 536
    :cond_76
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 537
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mActivePointerId:I

    goto :goto_35

    .line 541
    :pswitch_8d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-eqz v5, :cond_35

    .line 543
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move v5, v0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v27

    .line 544
    .local v27, activePointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v35

    .line 545
    .local v35, y:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mLastMotionY:F

    move v5, v0

    sub-float v5, v5, v35

    float-to-int v7, v5

    .line 546
    .local v7, deltaY:I
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 548
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollX:I

    move/from16 v30, v0

    .line 549
    .local v30, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v31, v0

    .line 550
    .local v31, oldY:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v11

    .line 551
    .local v11, range:I
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    move v13, v0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 556
    :cond_e5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 558
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v32

    .line 559
    .local v32, overscrollMode:I
    if-eqz v32, :cond_108

    const/4 v5, 0x1

    move/from16 v0, v32

    move v1, v5

    if-ne v0, v1, :cond_35

    if-lez v11, :cond_35

    .line 561
    :cond_108
    add-int v33, v31, v7

    .line 562
    .local v33, pulledToY:I
    if-gez v33, :cond_150

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    int-to-float v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    .end local v7           #deltaY:I
    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_12e

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 573
    :cond_12e
    :goto_12e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    if-eqz v5, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_14b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_35

    .line 575
    :cond_14b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    goto/16 :goto_35

    .line 567
    .restart local v7       #deltaY:I
    :cond_150
    move/from16 v0, v33

    move v1, v11

    if-le v0, v1, :cond_12e

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v5, v0

    int-to-float v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    .end local v7           #deltaY:I
    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_12e

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_12e

    .line 581
    .end local v11           #range:I
    .end local v27           #activePointerIndex:I
    .end local v30           #oldX:I
    .end local v31           #oldY:I
    .end local v32           #overscrollMode:I
    .end local v33           #pulledToY:I
    .end local v35           #y:F
    :pswitch_178
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-eqz v5, :cond_35

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v34, v0

    .line 583
    .local v34, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    move v6, v0

    int-to-float v6, v6

    move-object/from16 v0, v34

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 584
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move v5, v0

    move-object/from16 v0, v34

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v29, v0

    .line 586
    .local v29, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1bf

    .line 587
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    move v6, v0

    if-le v5, v6, :cond_1ca

    .line 588
    move/from16 v0, v29

    neg-int v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fling(I)V

    .line 597
    :cond_1bf
    :goto_1bf
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 598
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_35

    .line 590
    :cond_1ca
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v18

    .line 591
    .local v18, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollX:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v5

    if-eqz v5, :cond_1bf

    .line 592
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_1bf

    .line 602
    .end local v18           #bottom:I
    .end local v29           #initialVelocity:I
    .end local v34           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_1ec
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-eqz v5, :cond_35

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_35

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v25

    invoke-virtual/range {v19 .. v25}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v5

    if-eqz v5, :cond_21e

    .line 604
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 606
    :cond_21e
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 607
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_35

    .line 611
    :pswitch_229
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v28

    .line 612
    .local v28, index:I
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v35

    .line 613
    .restart local v35       #y:F
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 614
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mActivePointerId:I

    goto/16 :goto_35

    .line 618
    .end local v28           #index:I
    .end local v35           #y:F
    :pswitch_24a
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 619
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move v5, v0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mLastMotionY:F

    goto/16 :goto_35

    .line 516
    nop

    :pswitch_data_268
    .packed-switch 0x0
        :pswitch_37
        :pswitch_178
        :pswitch_8d
        :pswitch_1ec
        :pswitch_35
        :pswitch_229
        :pswitch_24a
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .registers 10
    .parameter "direction"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 830
    const/16 v4, 0x82

    if-ne p1, v4, :cond_4c

    move v1, v7

    .line 831
    .local v1, down:Z
    :goto_7
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 833
    .local v2, height:I
    if-eqz v1, :cond_4e

    .line 834
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 835
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 836
    .local v0, count:I
    if-lez v0, :cond_36

    .line 837
    sub-int v4, v0, v7

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 838
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_36

    .line 839
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 848
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_36
    :goto_36
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 850
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_4c
    move v1, v6

    .line 830
    goto :goto_7

    .line 843
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_4e
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 844
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_36

    .line 845
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_36
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1277
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_b

    .line 1278
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1283
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1284
    return-void

    .line 1281
    :cond_b
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_7
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1326
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1329
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1334
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1335
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1336
    return-void
.end method

.method public scrollTo(II)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1460
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3a

    .line 1461
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1462
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 1463
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 1464
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v1, :cond_37

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v1, :cond_3a

    .line 1465
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1468
    .end local v0           #child:Landroid/view/View;
    :cond_3a
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3
    .parameter "fillViewport"

    .prologue
    .line 285
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 286
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 287
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 289
    :cond_9
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 8
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    .line 1472
    const/4 v4, 0x2

    if-eq p1, v4, :cond_30

    .line 1473
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-nez v4, :cond_2c

    .line 1474
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1475
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1476
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10803e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1477
    .local v1, edge:Landroid/graphics/drawable/Drawable;
    const v4, 0x10803e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1478
    .local v2, glow:Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/widget/EdgeGlow;

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/EdgeGlow;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 1479
    new-instance v4, Landroid/widget/EdgeGlow;

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/EdgeGlow;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 1485
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #edge:Landroid/graphics/drawable/Drawable;
    .end local v2           #glow:Landroid/graphics/drawable/Drawable;
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_2c
    :goto_2c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1486
    return-void

    .line 1482
    :cond_30
    iput-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 1483
    iput-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    goto :goto_2c
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 303
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 304
    return-void
.end method

.method public final smoothScrollBy(II)V
    .registers 14
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1023
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 1048
    :goto_7
    return-void

    .line 1027
    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    .line 1028
    .local v1, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_4e

    .line 1029
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 1030
    .local v3, height:I
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1031
    .local v0, bottom:I
    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1032
    .local v4, maxY:I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1033
    .local v5, scrollY:I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1035
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1036
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1047
    .end local v0           #bottom:I
    .end local v3           #height:I
    .end local v4           #maxY:I
    .end local v5           #scrollY:I
    :goto_47
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ScrollView;->mLastScroll:J

    goto :goto_7

    .line 1038
    :cond_4e
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_67

    .line 1039
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1040
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_67

    .line 1041
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 1042
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1045
    :cond_67
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_47
.end method

.method public final smoothScrollTo(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1057
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1058
    return-void
.end method
