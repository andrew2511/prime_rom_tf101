.class public abstract Lcom/android/launcher2/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedView$ScrollInterpolator;,
        Lcom/android/launcher2/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field protected static mPageViewIconCache:Lcom/android/launcher2/PagedViewIconCache;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field protected mActivePointerId:I

.field protected mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field protected mChoiceMode:I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mDeferScrollUpdate:Z

.field private mDirtyPageAlpha:Z

.field private mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mIsPageMoving:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutMaxHeight:I

.field protected mPageLayoutPaddingBottom:I

.field protected mPageLayoutPaddingLeft:I

.field protected mPageLayoutPaddingRight:I

.field protected mPageLayoutPaddingTop:I

.field protected mPageLayoutWidthGap:I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

.field private mPagingTouchSlop:I

.field protected mRestorePage:I

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSmoothingTime:F

.field protected mSnapVelocity:I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/android/launcher2/PagedViewIconCache;

    invoke-direct {v0}, Lcom/android/launcher2/PagedViewIconCache;-><init>()V

    sput-object v0, Lcom/android/launcher2/PagedView;->mPageViewIconCache:Lcom/android/launcher2/PagedViewIconCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    .line 74
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 77
    iput v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 78
    iput v3, p0, Lcom/android/launcher2/PagedView;->mRestorePage:I

    .line 88
    iput v3, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 96
    iput v2, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 100
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 114
    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 115
    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 117
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    .line 121
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 125
    iput v3, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 147
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 150
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    .line 154
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    .line 158
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    .line 160
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 176
    iput v2, p0, Lcom/android/launcher2/PagedView;->mChoiceMode:I

    .line 178
    sget-object v1, Lcom/android/launcher/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 180
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    .line 181
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingTop:I

    .line 183
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingBottom:I

    .line 185
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingLeft:I

    .line 187
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingRight:I

    .line 189
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutWidthGap:I

    .line 191
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutHeightGap:I

    .line 193
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutMaxHeight:I

    .line 195
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->init()V

    .line 199
    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1124
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1127
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 1137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1139
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1140
    .local v1, pointerId:I
    iget v3, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1144
    if-nez v2, :cond_2

    const/4 v3, 0x1

    move v0, v3

    .line 1145
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1146
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    .line 1147
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1148
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1149
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1150
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1153
    .end local v0           #newPointerIndex:I
    :cond_0
    iget v3, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v3, :cond_1

    .line 1154
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->onWallpaperTap(Landroid/view/MotionEvent;)V

    .line 1156
    :cond_1
    return-void

    .line 1144
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .parameter "f"

    .prologue
    const/high16 v1, 0x3f80

    .line 912
    sub-float/2addr p1, v1

    .line 913
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1134
    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x1

    .line 671
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 672
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 674
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 675
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 676
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 683
    :cond_1
    :goto_0
    return-void

    .line 678
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 679
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 680
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1359
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    return v0
.end method

.method protected animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "v"
    .parameter "r"

    .prologue
    .line 845
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f04000a

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 847
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 848
    new-instance v1, Lcom/android/launcher2/PagedView$1;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher2/PagedView$1;-><init>(Lcom/android/launcher2/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 853
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 854
    return-void
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 897
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v1, :cond_0

    .line 898
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 902
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 903
    .local v0, currentPage:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 904
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 907
    .end local v0           #currentPage:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    .line 369
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 346
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 348
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 349
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    move v0, v2

    .line 363
    :goto_0
    return v0

    .line 351
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v0, v3, :cond_2

    .line 352
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 353
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 354
    iput v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 355
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 358
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v0, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageEndMoving()V

    :cond_1
    move v0, v2

    .line 361
    goto :goto_0

    :cond_2
    move v0, v4

    .line 363
    goto :goto_0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 857
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 858
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 12
    .parameter "ev"
    .parameter "touchSlopScale"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 869
    iget v9, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 870
    .local v0, pointerIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 871
    .local v2, x:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 872
    .local v6, y:F
    iget v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v3, v9

    .line 873
    .local v3, xDiff:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v7, v9

    .line 875
    .local v7, yDiff:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v9, v9

    mul-float/2addr v9, p2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 876
    .local v1, touchSlop:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    if-le v3, v9, :cond_3

    move v5, v10

    .line 877
    .local v5, xPaged:Z
    :goto_0
    if-le v3, v1, :cond_4

    move v4, v10

    .line 878
    .local v4, xMoved:Z
    :goto_1
    if-le v7, v1, :cond_5

    move v8, v10

    .line 880
    .local v8, yMoved:Z
    :goto_2
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-eqz v8, :cond_2

    .line 881
    :cond_0
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v9, :cond_6

    if-eqz v5, :cond_1

    .line 883
    :goto_3
    iput v10, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 884
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 885
    iput v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 886
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 887
    iget v9, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v9, v9

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 888
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 889
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 892
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    .line 894
    :cond_2
    return-void

    .end local v4           #xMoved:Z
    .end local v5           #xPaged:Z
    .end local v8           #yMoved:Z
    :cond_3
    move v5, v11

    .line 876
    goto :goto_0

    .restart local v5       #xPaged:Z
    :cond_4
    move v4, v11

    .line 877
    goto :goto_1

    .restart local v4       #xMoved:Z
    :cond_5
    move v8, v11

    .line 878
    goto :goto_2

    .line 881
    .restart local v8       #yMoved:Z
    :cond_6
    if-eqz v4, :cond_1

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v16

    div-int/lit8 v7, v16, 0x2

    .line 584
    .local v7, halfScreenSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move/from16 v16, v0

    add-int v13, v16, v7

    .line 586
    .local v13, screenCenter:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    move/from16 v16, v0

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 587
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->updateAdjacentPagesAlpha()V

    .line 589
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 595
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v10

    .line 596
    .local v10, pageCount:I
    if-lez v10, :cond_5

    .line 597
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v11

    .line 598
    .local v11, pageWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v14

    .line 599
    .local v14, screenWidth:I
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v16

    add-int v15, v16, v11

    .line 600
    .local v15, x:I
    const/4 v9, 0x0

    .line 601
    .local v9, leftScreen:I
    const/4 v12, 0x0

    .line 602
    .local v12, rightScreen:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-gt v0, v1, :cond_1

    .line 603
    add-int/lit8 v9, v9, 0x1

    .line 604
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int v15, v15, v16

    goto :goto_0

    .line 606
    :cond_1
    move v12, v9

    .line 607
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move/from16 v16, v0

    add-int v16, v16, v14

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    if-ge v12, v10, :cond_3

    .line 608
    add-int/lit8 v12, v12, 0x1

    .line 609
    if-ge v12, v10, :cond_2

    .line 610
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int v15, v15, v16

    goto :goto_1

    .line 613
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    move v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getDrawingTime()J

    move-result-wide v5

    .line 617
    .local v5, drawingTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mRight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLeft:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mBottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 621
    move v8, v9

    .local v8, i:I
    :goto_2
    if-gt v8, v12, :cond_4

    .line 622
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-wide v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 621
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 624
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 626
    .end local v5           #drawingTime:J
    .end local v8           #i:I
    .end local v9           #leftScreen:I
    .end local v11           #pageWidth:I
    .end local v12           #rightScreen:I
    .end local v14           #screenWidth:I
    .end local v15           #x:I
    :cond_5
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 655
    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 657
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    move v0, v2

    .line 666
    :goto_0
    return v0

    .line 660
    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 661
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 662
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    move v0, v2

    .line 663
    goto :goto_0

    .line 666
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 1249
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 1250
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1251
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public endChoiceMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1441
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->isChoiceMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1442
    iput v1, p0, Lcom/android/launcher2/PagedView;->mChoiceMode:I

    .line 1443
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->resetCheckedGrandchildren()V

    .line 1444
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1445
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mActionMode:Landroid/view/ActionMode;

    .line 1447
    :cond_1
    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 694
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 695
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 697
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 698
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 708
    :cond_0
    return-void

    .line 701
    :cond_1
    if-eq v2, p0, :cond_0

    .line 704
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 705
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 706
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected forceUpdateAdjacentPagesAlpha()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 515
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateAdjacentPagesAlpha()V

    .line 516
    return-void
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 1426
    const/4 v0, 0x0

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3
    .parameter "page"

    .prologue
    .line 1429
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1430
    .local v0, count:I
    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected getCheckedGrandchildren()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Checkable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1455
    .local v1, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Checkable;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v2

    .line 1456
    .local v2, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 1457
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Page;

    .line 1458
    .local v6, layout:Lcom/android/launcher2/Page;
    invoke-interface {v6}, Lcom/android/launcher2/Page;->getPageChildCount()I

    move-result v3

    .line 1459
    .local v3, grandChildCount:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 1460
    invoke-interface {v6, v5}, Lcom/android/launcher2/Page;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v7

    .line 1461
    .local v7, v:Landroid/view/View;
    instance-of v8, v7, Landroid/widget/Checkable;

    if-eqz v8, :cond_0

    move-object v0, v7

    check-cast v0, Landroid/widget/Checkable;

    move-object v8, v0

    invoke-interface {v8}, Landroid/widget/Checkable;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1462
    check-cast v7, Landroid/widget/Checkable;

    .end local v7           #v:Landroid/view/View;
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1459
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1456
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1466
    .end local v3           #grandChildCount:I
    .end local v5           #j:I
    .end local v6           #layout:Lcom/android/launcher2/Page;
    :cond_2
    return-object v1
.end method

.method protected getChildOffset(I)I
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 1197
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 1204
    :goto_0
    return v2

    .line 1200
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    .line 1201
    .local v1, offset:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 1202
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 1204
    goto :goto_0
.end method

.method protected getChildWidth(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 1189
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMinimumWidth:I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    return v0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 1342
    const/4 v2, -0x1

    .line 1343
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 1344
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1345
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1346
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1347
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move v4, v1

    .line 1352
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v4

    .line 1346
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_1
    move v4, v2

    .line 1352
    goto :goto_1
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 1212
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v7

    .line 1213
    .local v7, minDistanceFromScreenCenter:I
    const/4 v8, -0x1

    .line 1214
    .local v8, minDistanceFromScreenCenterIndex:I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1215
    .local v9, screenCenter:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 1216
    .local v1, childCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1217
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1218
    .local v6, layout:Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1219
    .local v2, childWidth:I
    div-int/lit8 v4, v2, 0x2

    .line 1220
    .local v4, halfChildWidth:I
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v10

    add-int v0, v10, v4

    .line 1221
    .local v0, childCenter:I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1222
    .local v3, distanceFromScreenCenter:I
    if-ge v3, v7, :cond_0

    .line 1223
    move v7, v3

    .line 1224
    move v8, v5

    .line 1216
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1227
    .end local v0           #childCenter:I
    .end local v2           #childWidth:I
    .end local v3           #distanceFromScreenCenter:I
    .end local v4           #halfChildWidth:I
    .end local v6           #layout:Landroid/view/View;
    :cond_1
    return v8
.end method

.method protected getRelativeChildOffset(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 1193
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildWidth(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 1208
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMinimumWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSingleCheckedGrandchild()Landroid/widget/Checkable;
    .locals 9

    .prologue
    .line 1474
    iget v7, p0, Lcom/android/launcher2/PagedView;->mChoiceMode:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 1475
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 1476
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1477
    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Page;

    .line 1478
    .local v5, layout:Lcom/android/launcher2/Page;
    invoke-interface {v5}, Lcom/android/launcher2/Page;->getPageChildCount()I

    move-result v2

    .line 1479
    .local v2, grandChildCount:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 1480
    invoke-interface {v5, v4}, Lcom/android/launcher2/Page;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1481
    .local v6, v:Landroid/view/View;
    instance-of v7, v6, Landroid/widget/Checkable;

    if-eqz v7, :cond_0

    move-object v0, v6

    check-cast v0, Landroid/widget/Checkable;

    move-object v7, v0

    invoke-interface {v7}, Landroid/widget/Checkable;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1482
    check-cast v6, Landroid/widget/Checkable;

    .end local v6           #v:Landroid/view/View;
    move-object v7, v6

    .line 1487
    .end local v1           #childCount:I
    .end local v2           #grandChildCount:I
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #layout:Lcom/android/launcher2/Page;
    :goto_2
    return-object v7

    .line 1479
    .restart local v1       #childCount:I
    .restart local v2       #grandChildCount:I
    .restart local v3       #i:I
    .restart local v4       #j:I
    .restart local v5       #layout:Lcom/android/launcher2/Page;
    .restart local v6       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1476
    .end local v6           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1487
    .end local v1           #childCount:I
    .end local v2           #grandChildCount:I
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #layout:Lcom/android/launcher2/Page;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public getTouchState()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    return v0
.end method

.method protected hitsNextPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 731
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 206
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 207
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/launcher2/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 208
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 209
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mCenterPagesVertically:Z

    .line 211
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 212
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    .line 213
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    .line 214
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    .line 215
    return-void
.end method

.method protected invalidatePageData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1530
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v2, :cond_2

    .line 1532
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncPages()V

    .line 1535
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1536
    .local v0, count:I
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1537
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1538
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1537
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1542
    :cond_0
    iget v2, p0, Lcom/android/launcher2/PagedView;->mRestorePage:I

    if-le v2, v4, :cond_1

    .line 1543
    iget v2, p0, Lcom/android/launcher2/PagedView;->mRestorePage:I

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1544
    iput v4, p0, Lcom/android/launcher2/PagedView;->mRestorePage:I

    .line 1548
    :cond_1
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 1549
    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 1550
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateAdjacentPagesAlpha()V

    .line 1551
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    .line 1553
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method protected isChoiceMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 1450
    iget v0, p0, Lcom/android/launcher2/PagedView;->mChoiceMode:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAssociatedPages(I)V
    .locals 8
    .parameter "page"

    .prologue
    .line 1401
    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v6, :cond_3

    .line 1402
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 1403
    .local v1, count:I
    if-ge p1, v1, :cond_3

    .line 1404
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedLowerPageBound(I)I

    move-result v4

    .line 1405
    .local v4, lowerPageBound:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedUpperPageBound(I)I

    move-result v5

    .line 1406
    .local v5, upperPageBound:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1407
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Page;

    .line 1408
    .local v3, layout:Lcom/android/launcher2/Page;
    invoke-interface {v3}, Lcom/android/launcher2/Page;->getPageChildCount()I

    move-result v0

    .line 1409
    .local v0, childCount:I
    if-gt v4, v2, :cond_1

    if-gt v2, v5, :cond_1

    .line 1410
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1411
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->syncPageItems(I)V

    .line 1412
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1406
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1415
    :cond_1
    if-lez v0, :cond_2

    .line 1416
    invoke-interface {v3}, Lcom/android/launcher2/Page;->removeAllViewsOnPage()V

    .line 1418
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1423
    .end local v0           #childCount:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #layout:Lcom/android/launcher2/Page;
    .end local v4           #lowerPageBound:I
    .end local v5           #upperPageBound:I
    :cond_3
    return-void
.end method

.method protected maxOverScroll()F
    .locals 3

    .prologue
    .line 941
    const/high16 v0, 0x3f80

    .line 942
    .local v0, f:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 943
    const v1, 0x3da3d70a

    mul-float/2addr v1, v0

    return v1
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 283
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1095
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1096
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1119
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1101
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1102
    const/4 v1, 0x0

    .line 1103
    .local v1, vscroll:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1108
    .local v0, hscroll:F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1109
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1110
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    .line 1114
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1105
    .end local v0           #hscroll:F
    .end local v1           #vscroll:F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1106
    .restart local v1       #vscroll:F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0       #hscroll:F
    goto :goto_1

    .line 1112
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 748
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 751
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    if-gtz v5, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 840
    :goto_0
    return v5

    .line 758
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 759
    .local v0, action:I
    if-ne v0, v9, :cond_1

    iget v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v5, v8, :cond_1

    move v5, v8

    .line 761
    goto :goto_0

    .line 764
    :cond_1
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 840
    :cond_2
    :goto_1
    :pswitch_0
    iget v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v5, :cond_8

    move v5, v8

    goto :goto_0

    .line 770
    :pswitch_1
    iget v5, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    if-eq v5, v10, :cond_3

    .line 771
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 782
    :cond_3
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 783
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 785
    .local v4, y:F
    iput v2, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    .line 786
    iput v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 787
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    .line 788
    iput v6, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 789
    iput v6, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 790
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 791
    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 798
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getFinalX()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 799
    .local v3, xDist:I
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    if-ge v3, v5, :cond_5

    :cond_4
    move v1, v8

    .line 800
    .local v1, finishedScrolling:Z
    :goto_2
    if-eqz v1, :cond_6

    .line 801
    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 802
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 809
    :goto_3
    iget v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v5, v9, :cond_2

    iget v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    .line 810
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 811
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/PagedView;->hitsPreviousPage(FF)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 812
    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_1

    .end local v1           #finishedScrolling:Z
    :cond_5
    move v1, v7

    .line 799
    goto :goto_2

    .line 804
    .restart local v1       #finishedScrolling:Z
    :cond_6
    iput v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_3

    .line 813
    :cond_7
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/PagedView;->hitsNextPage(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 814
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_1

    .line 822
    .end local v1           #finishedScrolling:Z
    .end local v2           #x:F
    .end local v3           #xDist:I
    .end local v4           #y:F
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->onWallpaperTap(Landroid/view/MotionEvent;)V

    .line 824
    :pswitch_4
    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 825
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 826
    iput v10, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 827
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 831
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 832
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    :cond_8
    move v5, v7

    .line 840
    goto/16 :goto_0

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 477
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 478
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 479
    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v10

    sub-int v7, v9, v10

    .line 480
    .local v7, newX:I
    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 481
    iget-object v9, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9, v7}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 482
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 483
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 486
    .end local v7           #newX:I
    :cond_0
    iget v9, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    iget v10, p0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    add-int v8, v9, v10

    .line 487
    .local v8, verticalPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 488
    .local v1, childCount:I
    const/4 v3, 0x0

    .line 489
    .local v3, childLeft:I
    if-lez v1, :cond_1

    .line 490
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v3

    .line 493
    :cond_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v1, :cond_4

    .line 494
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_3

    .line 496
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 497
    .local v5, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 498
    .local v2, childHeight:I
    iget v4, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    .line 499
    .local v4, childTop:I
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mCenterPagesVertically:Z

    if-eqz v9, :cond_2

    .line 500
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v9, v8

    sub-int/2addr v9, v2

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v4, v9

    .line 503
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 505
    iget v9, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 493
    .end local v2           #childHeight:I
    .end local v4           #childTop:I
    .end local v5           #childWidth:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 508
    .end local v0           #child:Landroid/view/View;
    :cond_4
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_5

    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 509
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 511
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 373
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 374
    .local v15, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 375
    .local v16, widthSize:I
    const/high16 v17, 0x4000

    move v0, v15

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 376
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Workspace can only be used in EXACTLY mode."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 384
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 385
    .local v9, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 386
    .local v10, heightSize:I
    const/4 v13, 0x0

    .line 388
    .local v13, maxChildHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    move/from16 v18, v0

    add-int v14, v17, v18

    .line 390
    .local v14, verticalPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageLayoutMaxHeight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageLayoutMaxHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    move v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 396
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    .line 397
    .local v4, childCount:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v4, :cond_4

    .line 399
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 400
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 403
    .local v12, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object v0, v12

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 404
    const/high16 v8, -0x8000

    .line 410
    .local v8, childWidthMode:I
    :goto_1
    move-object v0, v12

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 411
    const/high16 v6, -0x8000

    .line 416
    .local v6, childHeightMode:I
    :goto_2
    move/from16 v0, v16

    move v1, v8

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 418
    .local v7, childWidthMeasureSpec:I
    sub-int v17, v10, v14

    move/from16 v0, v17

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 421
    .local v5, childHeightMeasureSpec:I
    invoke-virtual {v3, v7, v5}, Landroid/view/View;->measure(II)V

    .line 422
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move v0, v13

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 397
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 406
    .end local v5           #childHeightMeasureSpec:I
    .end local v6           #childHeightMode:I
    .end local v7           #childWidthMeasureSpec:I
    .end local v8           #childWidthMode:I
    :cond_2
    const/high16 v8, 0x4000

    .restart local v8       #childWidthMode:I
    goto :goto_1

    .line 413
    :cond_3
    const/high16 v6, 0x4000

    .restart local v6       #childHeightMode:I
    goto :goto_2

    .line 425
    .end local v3           #child:Landroid/view/View;
    .end local v6           #childHeightMode:I
    .end local v8           #childWidthMode:I
    .end local v12           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/high16 v17, -0x8000

    move v0, v9

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 426
    add-int v10, v13, v14

    .line 428
    :cond_5
    if-lez v4, :cond_6

    .line 429
    const/16 v17, 0x1

    sub-int v17, v4, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v17

    const/16 v18, 0x1

    sub-int v18, v4, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    .line 434
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->setMeasuredDimension(II)V

    .line 435
    return-void

    .line 431
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto :goto_3
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 641
    iget v2, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 642
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 646
    .local v0, focusablePage:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 647
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 650
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 644
    .end local v0           #focusablePage:I
    .end local v1           #v:Landroid/view/View;
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .restart local v0       #focusablePage:I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v17

    if-gtz v17, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 1090
    :goto_0
    return v17

    .line 951
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 953
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 955
    .local v3, action:I
    move v0, v3

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1090
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v17, 0x1

    goto :goto_0

    .line 961
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_2

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 966
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    .line 967
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 968
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 969
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 970
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    goto :goto_1

    .line 976
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 978
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 979
    .local v11, pointerIndex:I
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 980
    .local v16, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    move/from16 v18, v0

    add-float v17, v17, v18

    sub-float v5, v17, v16

    .line 982
    .local v5, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v17, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v18

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 987
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x3f80

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_4

    .line 988
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchX:F

    move/from16 v17, v0

    add-float v17, v17, v5

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 989
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x4e6e6b28

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 990
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 991
    move v0, v5

    float-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    .line 995
    :goto_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 996
    move v0, v5

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v5, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    .line 993
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_2

    .line 998
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1001
    .end local v5           #deltaX:F
    .end local v11           #pointerIndex:I
    .end local v16           #x:F
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1006
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 1007
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    move v4, v0

    .line 1008
    .local v4, activePointerId:I
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 1009
    .restart local v11       #pointerIndex:I
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 1010
    .restart local v16       #x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v14, v0

    .line 1011
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1012
    invoke-virtual {v14, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v15, v0

    .line 1013
    .local v15, velocityX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    move/from16 v17, v0

    sub-float v17, v16, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v5, v0

    .line 1014
    .local v5, deltaX:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    const/16 v17, 0x1

    move/from16 v8, v17

    .line 1015
    .local v8, isSignificantMove:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    move v13, v0

    .line 1017
    .local v13, snapVelocity:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    move/from16 v19, v0

    add-float v18, v18, v19

    sub-float v18, v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1022
    const/4 v12, 0x0

    .line 1023
    .local v12, returnToOriginalPage:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v10

    .line 1024
    .local v10, pageWidth:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3ea8f5c3

    mul-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_6

    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    move v0, v5

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_6

    .line 1026
    const/4 v12, 0x1

    .line 1029
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v17, v0

    const/high16 v18, 0x41c8

    cmpl-float v17, v17, v18

    if-lez v17, :cond_a

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    move v1, v13

    if-le v0, v1, :cond_a

    const/16 v17, 0x1

    move/from16 v7, v17

    .line 1036
    .local v7, isFling:Z
    :goto_4
    if-eqz v8, :cond_7

    if-lez v5, :cond_7

    if-eqz v7, :cond_8

    :cond_7
    if-eqz v7, :cond_c

    if-lez v15, :cond_c

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    if-lez v17, :cond_c

    .line 1038
    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v6, v17

    .line 1039
    .local v6, finalPage:I
    :goto_5
    move-object/from16 v0, p0

    move v1, v6

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    .line 1071
    .end local v4           #activePointerId:I
    .end local v5           #deltaX:I
    .end local v6           #finalPage:I
    .end local v7           #isFling:Z
    .end local v8           #isSignificantMove:Z
    .end local v10           #pageWidth:I
    .end local v11           #pointerIndex:I
    .end local v12           #returnToOriginalPage:Z
    .end local v13           #snapVelocity:I
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #x:F
    :goto_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1072
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1073
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1014
    .restart local v4       #activePointerId:I
    .restart local v5       #deltaX:I
    .restart local v11       #pointerIndex:I
    .restart local v14       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v15       #velocityX:I
    .restart local v16       #x:F
    :cond_9
    const/16 v17, 0x0

    move/from16 v8, v17

    goto/16 :goto_3

    .line 1029
    .restart local v8       #isSignificantMove:Z
    .restart local v10       #pageWidth:I
    .restart local v12       #returnToOriginalPage:Z
    .restart local v13       #snapVelocity:I
    :cond_a
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_4

    .line 1038
    .restart local v7       #isFling:Z
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move/from16 v6, v17

    goto :goto_5

    .line 1040
    :cond_c
    if-eqz v8, :cond_d

    if-gez v5, :cond_d

    if-eqz v7, :cond_e

    :cond_d
    if-eqz v7, :cond_10

    if-gez v15, :cond_10

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v18

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    .line 1043
    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v6, v17

    .line 1044
    .restart local v6       #finalPage:I
    :goto_7
    move-object/from16 v0, p0

    move v1, v6

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_6

    .line 1043
    .end local v6           #finalPage:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v6, v17

    goto :goto_7

    .line 1046
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_6

    .line 1048
    .end local v4           #activePointerId:I
    .end local v5           #deltaX:I
    .end local v7           #isFling:Z
    .end local v8           #isSignificantMove:Z
    .end local v10           #pageWidth:I
    .end local v11           #pointerIndex:I
    .end local v12           #returnToOriginalPage:Z
    .end local v13           #snapVelocity:I
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #x:F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 1052
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1053
    .local v9, nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move v0, v9

    move/from16 v1, v17

    if-eq v0, v1, :cond_12

    .line 1054
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto/16 :goto_6

    .line 1056
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_6

    .line 1058
    .end local v9           #nextPage:I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 1062
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1063
    .restart local v9       #nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move v0, v9

    move/from16 v1, v17

    if-eq v0, v1, :cond_14

    .line 1064
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto/16 :goto_6

    .line 1066
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_6

    .line 1069
    .end local v9           #nextPage:I
    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onWallpaperTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 1077
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 1078
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1080
    :cond_16
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1081
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1082
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1086
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 955
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 1159
    return-void
.end method

.method protected overScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 917
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 919
    .local v2, screenSize:I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 921
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 936
    :goto_0
    return-void

    .line 922
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 925
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 926
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 929
    :cond_1
    const v3, 0x3da3d70a

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 930
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 931
    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 935
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 933
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    goto :goto_1
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 287
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageBeginMoving()V

    .line 288
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageEndMoving()V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 293
    return-void
.end method

.method protected postInvalidatePageData(Z)V
    .locals 1
    .parameter "clearViews"

    .prologue
    .line 1518
    new-instance v0, Lcom/android/launcher2/PagedView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/PagedView$2;-><init>(Lcom/android/launcher2/PagedView;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->post(Ljava/lang/Runnable;)Z

    .line 1527
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1163
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1164
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1165
    .local v0, page:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1166
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1168
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 630
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 631
    .local v0, page:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 632
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 633
    const/4 v1, 0x1

    .line 635
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    .line 718
    if-eqz p1, :cond_0

    .line 721
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 722
    .local v0, currentPage:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 724
    .end local v0           #currentPage:Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 725
    return-void
.end method

.method protected resetCheckedGrandchildren()V
    .locals 4

    .prologue
    .line 1492
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCheckedGrandchildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 1493
    .local v1, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Checkable;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1494
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    .line 1495
    .local v0, c:Landroid/widget/Checkable;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1493
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1497
    .end local v0           #c:Landroid/widget/Checkable;
    :cond_0
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 0
    .parameter "screenCenter"

    .prologue
    .line 579
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 319
    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 320
    return-void
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1326
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1327
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1329
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1334
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1337
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 324
    iput p1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    .line 326
    if-gez p1, :cond_1

    .line 327
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 328
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    .line 329
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    .line 340
    :cond_0
    :goto_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 341
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 342
    return-void

    .line 331
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_2

    .line 332
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 333
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    .line 334
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    goto :goto_0

    .line 337
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method protected scrollToNewPageWithoutMovingPages(I)V
    .locals 7
    .parameter "newCurrentPage"

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v6

    sub-int v2, v5, v6

    .line 439
    .local v2, newX:I
    iget v5, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    sub-int v0, v2, v5

    .line 441
    .local v0, delta:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    .line 442
    .local v4, pageCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 443
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 444
    .local v3, page:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    .end local v3           #page:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 447
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 1367
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1368
    return-void
.end method

.method setCurrentPage(I)V
    .locals 3
    .parameter "currentPage"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 274
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateCurrentPageScroll()V

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 276
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0
.end method

.method public setLayoutScale(F)V
    .locals 11
    .parameter "childrenScale"

    .prologue
    .line 453
    iput p1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 456
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    .line 457
    .local v7, childCount:I
    new-array v8, v7, [F

    .line 458
    .local v8, childrenX:[F
    new-array v9, v7, [F

    .line 459
    .local v9, childrenY:[F
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v7, :cond_0

    .line 460
    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 461
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v0

    aput v0, v8, v10

    .line 462
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v0

    aput v0, v9, v10

    .line 459
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 464
    .end local v6           #child:Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/PagedView;->mLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mTop:I

    iget v4, p0, Lcom/android/launcher2/PagedView;->mRight:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/PagedView;->onLayout(ZIIII)V

    .line 465
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v7, :cond_1

    .line 466
    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 467
    .restart local v6       #child:Landroid/view/View;
    aget v0, v8, v10

    invoke-virtual {v6, v0}, Landroid/view/View;->setX(F)V

    .line 468
    aget v0, v9, v10

    invoke-virtual {v6, v0}, Landroid/view/View;->setY(F)V

    .line 465
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 472
    .end local v6           #child:Landroid/view/View;
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->scrollToNewPageWithoutMovingPages(I)V

    .line 473
    return-void
.end method

.method protected setMinimumWidthOverride(I)V
    .locals 0
    .parameter "minimumWidth"

    .prologue
    .line 1185
    iput p1, p0, Lcom/android/launcher2/PagedView;->mMinimumWidth:I

    .line 1186
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 311
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 312
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 313
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method

.method public setRestorePage(I)V
    .locals 0
    .parameter "restorePage"

    .prologue
    .line 1500
    iput p1, p0, Lcom/android/launcher2/PagedView;->mRestorePage:I

    .line 1501
    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1232
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .parameter "whichPage"

    .prologue
    .line 1289
    const/16 v0, 0x226

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1290
    return-void
.end method

.method protected snapToPage(II)V
    .locals 6
    .parameter "whichPage"
    .parameter "duration"

    .prologue
    .line 1293
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1295
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1296
    .local v1, newX:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    .line 1297
    .local v2, sX:I
    sub-int v0, v1, v2

    .line 1298
    .local v0, delta:I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 1299
    return-void
.end method

.method protected snapToPage(III)V
    .locals 7
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 1302
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1304
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1305
    .local v6, focusedChild:Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 1307
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1310
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1311
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->awakenScrollBars(I)Z

    .line 1312
    if-nez p3, :cond_1

    .line 1313
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 1316
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1317
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1320
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 1321
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 1322
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 1323
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 10
    .parameter "whichPage"
    .parameter "velocity"

    .prologue
    const/high16 v9, 0x3f80

    .line 1255
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1256
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 1258
    .local v4, halfScreenSize:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 1259
    .local v5, newX:I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 1260
    .local v0, delta:I
    const/4 v3, 0x0

    .line 1262
    .local v3, duration:I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0xfa

    if-ge v6, v7, :cond_0

    .line 1265
    const/16 v6, 0x226

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1286
    :goto_0
    return-void

    .line 1273
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1274
    .local v2, distanceRatio:F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1277
    .local v1, distance:F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1278
    const/16 v6, 0x898

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1283
    const/high16 v6, 0x447a

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 1285
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public abstract syncPageItems(I)V
.end method

.method public abstract syncPages()V
.end method

.method protected updateAdjacentPagesAlpha()V
    .locals 15

    .prologue
    .line 519
    iget-boolean v12, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v12, :cond_7

    .line 520
    iget-boolean v12, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    if-nez v12, :cond_0

    iget v12, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    iget-object v12, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->isFinished()Z

    move-result v12

    if-nez v12, :cond_7

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v8, v12, 0x2

    .line 522
    .local v8, halfScreenSize:I
    iget v12, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int v11, v12, v8

    .line 523
    .local v11, screenCenter:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v2

    .line 524
    .local v2, childCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v2, :cond_6

    .line 525
    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 526
    .local v10, layout:Landroid/view/View;
    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    .line 527
    .local v3, childWidth:I
    div-int/lit8 v7, v3, 0x2

    .line 528
    .local v7, halfChildWidth:I
    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v12

    add-int v1, v12, v7

    .line 533
    .local v1, childCenter:I
    if-gtz v3, :cond_1

    .line 534
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    .line 535
    mul-int v12, v9, v3

    div-int/lit8 v13, v3, 0x2

    add-int v1, v12, v13

    .line 538
    :cond_1
    move v4, v7

    .line 539
    .local v4, d:I
    sub-int v6, v1, v11

    .line 540
    .local v6, distanceFromScreenCenter:I
    if-lez v6, :cond_4

    .line 541
    if-lez v9, :cond_2

    .line 542
    const/4 v12, 0x1

    sub-int v12, v9, v12

    invoke-virtual {p0, v12}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v4, v12

    .line 549
    :cond_2
    :goto_1
    iget v12, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v4, v12

    .line 552
    const/4 v12, 0x1

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 554
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v4

    div-float v5, v12, v13

    .line 555
    .local v5, dimAlpha:F
    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    mul-float v14, v5, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 556
    const/high16 v12, 0x3f80

    sub-float v0, v12, v5

    .line 558
    .local v0, alpha:F
    const v12, 0x38d1b717

    cmpg-float v12, v0, v12

    if-gez v12, :cond_5

    .line 559
    const/4 v0, 0x0

    .line 570
    :cond_3
    :goto_2
    invoke-virtual {v10, v0}, Landroid/view/View;->setAlpha(F)V

    .line 524
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 545
    .end local v0           #alpha:F
    .end local v5           #dimAlpha:F
    :cond_4
    const/4 v12, 0x1

    sub-int v12, v2, v12

    if-ge v9, v12, :cond_2

    .line 546
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {p0, v12}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v4, v12

    goto :goto_1

    .line 560
    .restart local v0       #alpha:F
    .restart local v5       #dimAlpha:F
    :cond_5
    const v12, 0x3f7ff972

    cmpl-float v12, v0, v12

    if-lez v12, :cond_3

    .line 561
    const/high16 v0, 0x3f80

    goto :goto_2

    .line 573
    .end local v0           #alpha:F
    .end local v1           #childCenter:I
    .end local v3           #childWidth:I
    .end local v4           #d:I
    .end local v5           #dimAlpha:F
    .end local v6           #distanceFromScreenCenter:I
    .end local v7           #halfChildWidth:I
    .end local v10           #layout:Landroid/view/View;
    :cond_6
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 576
    .end local v2           #childCount:I
    .end local v8           #halfScreenSize:I
    .end local v9           #i:I
    .end local v11           #screenCenter:I
    :cond_7
    return-void
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    .prologue
    .line 255
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 256
    .local v0, newX:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 257
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 258
    return-void
.end method
