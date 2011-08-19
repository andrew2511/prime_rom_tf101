.class public Lcom/google/android/youtube/core/ui/Workspace;
.super Landroid/view/ViewGroup;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/ui/Workspace$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final INVALID_SCREEN:I = -0x1

.field private static final MIN_LENGTH_FOR_FLING:I = 0x64

.field private static final SNAP_VELOCITY:I = 0x1f4

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mActivePointerId:I

.field private mAllowLongPress:Z

.field private mCurrentScreen:I

.field private mDefaultScreen:I

.field private mDownMotionX:F

.field mFilterWindowEnabler:Ljava/lang/Runnable;

.field private mFirstLayout:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mPagingTouchSlop:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabRow:Lcom/google/android/youtube/core/ui/TabRow;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-boolean v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->mFirstLayout:Z

    .line 57
    iput v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    .line 68
    iput v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTouchState:I

    .line 70
    iput-boolean v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->mAllowLongPress:Z

    .line 78
    iput v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mActivePointerId:I

    .line 710
    new-instance v0, Lcom/google/android/youtube/core/ui/Workspace$2;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/ui/Workspace$2;-><init>(Lcom/google/android/youtube/core/ui/Workspace;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mFilterWindowEnabler:Ljava/lang/Runnable;

    .line 110
    iput v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mDefaultScreen:I

    .line 112
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 113
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->setHorizontalFadingEdgeEnabled(Z)V

    .line 114
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/Workspace;->initWorkspace()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/ui/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    return v0
.end method

.method private initWorkspace()V
    .locals 3

    .prologue
    .line 121
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 122
    iget v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mDefaultScreen:I

    iput v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    .line 124
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 125
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTouchSlop:I

    .line 128
    const/16 v1, 0x32

    iput v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mPagingTouchSlop:I

    .line 129
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mMaximumVelocity:I

    .line 130
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 545
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 546
    .local v1, pointerId:I
    iget v3, p0, Lcom/google/android/youtube/core/ui/Workspace;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 550
    if-nez v2, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 551
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/google/android/youtube/core/ui/Workspace;->mDownMotionX:F

    iput v3, p0, Lcom/google/android/youtube/core/ui/Workspace;->mLastMotionX:F

    .line 552
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/google/android/youtube/core/ui/Workspace;->mLastMotionY:F

    .line 553
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/youtube/core/ui/Workspace;->mActivePointerId:I

    .line 554
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 555
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 558
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 550
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public static setTabRowToWorkspace(Landroid/app/Activity;II)V
    .locals 1
    .parameter "activity"
    .parameter "tabRowId"
    .parameter "workspaceId"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/youtube/core/ui/Workspace;->setTabRowToWorkspace(Landroid/app/Activity;III)V

    .line 100
    return-void
.end method

.method public static setTabRowToWorkspace(Landroid/app/Activity;III)V
    .locals 5
    .parameter "activity"
    .parameter "tabRowId"
    .parameter "workspaceId"
    .parameter "selectedTabId"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/ui/TabRow;

    .line 87
    .local v2, tabRow:Lcom/google/android/youtube/core/ui/TabRow;
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/ui/Workspace;

    .line 88
    .local v3, workspace:Lcom/google/android/youtube/core/ui/Workspace;
    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/ui/Workspace;->setTabRow(Lcom/google/android/youtube/core/ui/TabRow;)V

    .line 90
    invoke-virtual {v3, p3}, Lcom/google/android/youtube/core/ui/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, selectedView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v3, v1}, Lcom/google/android/youtube/core/ui/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 93
    .local v0, selectedIndex:I
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/google/android/youtube/core/ui/TabRow;->focusTab(IZ)V

    .line 94
    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/ui/Workspace;->setCurrentScreen(I)V

    .line 96
    .end local v0           #selectedIndex:I
    :cond_0
    return-void
.end method

.method private snapToDestination()V
    .locals 4

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getScrollWidth()I

    move-result v0

    .line 667
    .local v0, screenWidth:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 669
    .local v1, whichScreen:I
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->snapToScreen(I)V

    .line 670
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

    .line 402
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 403
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    .line 404
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    if-lez v0, :cond_0

    .line 405
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 408
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 409
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 167
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 168
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .parameter "child"
    .parameter "index"

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 174
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 175
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 185
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 186
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 187
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 181
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 192
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mAllowLongPress:Z

    return v0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 254
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->scrollTo(II)V

    .line 256
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->postInvalidate()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    if-eq v0, v4, :cond_0

    .line 258
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    .line 259
    iput v4, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x1

    .line 265
    const/4 v5, 0x0

    .line 266
    .local v5, restore:Z
    const/4 v6, 0x0

    .line 273
    .local v6, restoreCount:I
    iget v7, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTouchState:I

    if-eq v7, v9, :cond_2

    iget v7, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    move v3, v9

    .line 275
    .local v3, fastDraw:Z
    :goto_0
    if-eqz v3, :cond_3

    .line 276
    iget v7, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getDrawingTime()J

    move-result-wide v8

    invoke-virtual {p0, p1, v7, v8, v9}, Lcom/google/android/youtube/core/ui/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 293
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 294
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 296
    :cond_1
    return-void

    .line 273
    .end local v3           #fastDraw:Z
    :cond_2
    const/4 v7, 0x0

    move v3, v7

    goto :goto_0

    .line 278
    .restart local v3       #fastDraw:Z
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    .line 280
    .local v1, drawingTime:J
    iget v7, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    if-ltz v7, :cond_4

    iget v7, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget v7, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    iget v8, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 282
    iget v7, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/google/android/youtube/core/ui/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 283
    iget v7, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    invoke-virtual {p0, v7}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/google/android/youtube/core/ui/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 286
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v0

    .line 287
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_0

    .line 288
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/google/android/youtube/core/ui/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 287
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 386
    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getCurrentScreen()I

    move-result v0

    if-lez v0, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getCurrentScreen()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->snapToScreen(I)V

    move v0, v2

    .line 397
    :goto_0
    return v0

    .line 391
    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getCurrentScreen()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getCurrentScreen()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->snapToScreen(I)V

    move v0, v2

    .line 394
    goto :goto_0

    .line 397
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 423
    iget v3, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    .line 424
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 426
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 427
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 437
    :cond_0
    return-void

    .line 430
    :cond_1
    if-eq v2, p0, :cond_0

    .line 433
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 434
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 435
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    return v0
.end method

.method getScreenAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getScreenCount()I
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v0

    .line 206
    .local v0, numchildren:I
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 207
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 209
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getScreenForView(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 754
    const/4 v2, -0x1

    .line 755
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 756
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 757
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v0

    .line 758
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 759
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move v4, v1

    .line 764
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v4

    .line 758
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

    .line 764
    goto :goto_1
.end method

.method getScrollWidth()I
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getWidth()I

    move-result v0

    .line 221
    .local v0, w:I
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 456
    .local v0, action:I
    const/4 v11, 0x2

    if-ne v0, v11, :cond_0

    iget v11, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTouchState:I

    if-eqz v11, :cond_0

    move v11, v13

    .line 539
    :goto_0
    return v11

    .line 460
    :cond_0
    and-int/lit16 v11, v0, 0xff

    packed-switch v11, :pswitch_data_0

    .line 539
    :cond_1
    :goto_1
    :pswitch_0
    iget v11, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTouchState:I

    if-eqz v11, :cond_8

    move v11, v13

    goto :goto_0

    .line 471
    :pswitch_1
    iget v11, p0, Lcom/google/android/youtube/core/ui/Workspace;->mActivePointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 472
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 473
    .local v4, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 474
    .local v8, y:F
    iget v11, p0, Lcom/google/android/youtube/core/ui/Workspace;->mLastMotionX:F

    sub-float v11, v4, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v5, v11

    .line 475
    .local v5, xDiff:I
    iget v11, p0, Lcom/google/android/youtube/core/ui/Workspace;->mLastMotionY:F

    sub-float v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v9, v11

    .line 477
    .local v9, yDiff:I
    iget v3, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTouchSlop:I

    .line 478
    .local v3, touchSlop:I
    iget v11, p0, Lcom/google/android/youtube/core/ui/Workspace;->mPagingTouchSlop:I

    if-le v5, v11, :cond_4

    move v7, v13

    .line 479
    .local v7, xPaged:Z
    :goto_2
    if-le v5, v3, :cond_5

    move v6, v13

    .line 480
    .local v6, xMoved:Z
    :goto_3
    if-le v9, v3, :cond_6

    move v10, v13

    .line 482
    .local v10, yMoved:Z
    :goto_4
    if-nez v6, :cond_2

    if-eqz v10, :cond_1

    .line 484
    :cond_2
    if-eqz v7, :cond_3

    .line 486
    iput v13, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTouchState:I

    .line 487
    iput v4, p0, Lcom/google/android/youtube/core/ui/Workspace;->mLastMotionX:F

    .line 490
    :cond_3
    iget-boolean v11, p0, Lcom/google/android/youtube/core/ui/Workspace;->mAllowLongPress:Z

    if-eqz v11, :cond_1

    .line 491
    iput-boolean v12, p0, Lcom/google/android/youtube/core/ui/Workspace;->mAllowLongPress:Z

    .line 495
    iget v11, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v11}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 496
    .local v1, currentScreen:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    .end local v1           #currentScreen:Landroid/view/View;
    .end local v6           #xMoved:Z
    .end local v7           #xPaged:Z
    .end local v10           #yMoved:Z
    :cond_4
    move v7, v12

    .line 478
    goto :goto_2

    .restart local v7       #xPaged:Z
    :cond_5
    move v6, v12

    .line 479
    goto :goto_3

    .restart local v6       #xMoved:Z
    :cond_6
    move v10, v12

    .line 480
    goto :goto_4

    .line 503
    .end local v2           #pointerIndex:I
    .end local v3           #touchSlop:I
    .end local v4           #x:F
    .end local v5           #xDiff:I
    .end local v6           #xMoved:Z
    .end local v7           #xPaged:Z
    .end local v8           #y:F
    .end local v9           #yDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 504
    .restart local v4       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 506
    .restart local v8       #y:F
    iput v4, p0, Lcom/google/android/youtube/core/ui/Workspace;->mDownMotionX:F

    .line 507
    iput v4, p0, Lcom/google/android/youtube/core/ui/Workspace;->mLastMotionX:F

    .line 508
    iput v8, p0, Lcom/google/android/youtube/core/ui/Workspace;->mLastMotionY:F

    .line 509
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/google/android/youtube/core/ui/Workspace;->mActivePointerId:I

    .line 510
    iput-boolean v13, p0, Lcom/google/android/youtube/core/ui/Workspace;->mAllowLongPress:Z

    .line 517
    iget-object v11, p0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_7

    move v11, v12

    :goto_5
    iput v11, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTouchState:I

    goto :goto_1

    :cond_7
    move v11, v13

    goto :goto_5

    .line 524
    .end local v4           #x:F
    .end local v8           #y:F
    :pswitch_3
    iput v12, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTouchState:I

    .line 525
    iput-boolean v12, p0, Lcom/google/android/youtube/core/ui/Workspace;->mAllowLongPress:Z

    .line 526
    const/4 v11, -0x1

    iput v11, p0, Lcom/google/android/youtube/core/ui/Workspace;->mActivePointerId:I

    goto :goto_1

    .line 531
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/Workspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_8
    move v11, v12

    .line 539
    goto/16 :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v3

    .line 349
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 350
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 353
    .local v2, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 354
    add-int/2addr v1, v2

    .line 349
    .end local v2           #childWidth:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 357
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "Workspace can only be used in EXACTLY mode."

    .line 309
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 311
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 312
    .local v4, widthMode:I
    if-eq v4, v5, :cond_0

    .line 313
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 316
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 317
    .local v1, heightMode:I
    if-eq v1, v5, :cond_1

    .line 318
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v0

    .line 323
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 324
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v8, :cond_2

    .line 326
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v5, v6, p2}, Landroid/view/View;->measure(II)V

    .line 323
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 333
    :cond_3
    iget-boolean v5, p0, Lcom/google/android/youtube/core/ui/Workspace;->mFirstLayout:Z

    if-eqz v5, :cond_5

    .line 334
    invoke-virtual {p0, v7}, Lcom/google/android/youtube/core/ui/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 335
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 336
    .local v3, width:I
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    .line 337
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 339
    :cond_4
    iget v5, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    mul-int/2addr v5, v3

    invoke-virtual {p0, v5, v7}, Lcom/google/android/youtube/core/ui/Workspace;->scrollTo(II)V

    .line 340
    invoke-virtual {p0, v8}, Lcom/google/android/youtube/core/ui/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 341
    iput-boolean v7, p0, Lcom/google/android/youtube/core/ui/Workspace;->mFirstLayout:Z

    .line 343
    .end local v3           #width:I
    :cond_5
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 372
    iget v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 373
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    .line 377
    .local v0, focusableScreen:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 378
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 381
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 375
    .end local v0           #focusableScreen:I
    .end local v1           #v:Landroid/view/View;
    :cond_1
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 726
    move-object v0, p1

    check-cast v0, Lcom/google/android/youtube/core/ui/Workspace$SavedState;

    move-object v1, v0

    .line 727
    .local v1, savedState:Lcom/google/android/youtube/core/ui/Workspace$SavedState;
    invoke-virtual {v1}, Lcom/google/android/youtube/core/ui/Workspace$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 728
    iget v2, v1, Lcom/google/android/youtube/core/ui/Workspace$SavedState;->currentScreen:I

    iput v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    .line 729
    iget v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 730
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    .line 732
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTabRow:Lcom/google/android/youtube/core/ui/TabRow;

    if-eqz v2, :cond_2

    .line 733
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTabRow:Lcom/google/android/youtube/core/ui/TabRow;

    iget v3, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/ui/TabRow;->focusTab(IZ)V

    .line 735
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 719
    new-instance v0, Lcom/google/android/youtube/core/ui/Workspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/ui/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 720
    .local v0, state:Lcom/google/android/youtube/core/ui/Workspace$SavedState;
    iget v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    iput v1, v0, Lcom/google/android/youtube/core/ui/Workspace$SavedState;->currentScreen:I

    .line 721
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 300
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 301
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->setCurrentScreen(I)V

    .line 302
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTabRow:Lcom/google/android/youtube/core/ui/TabRow;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTabRow:Lcom/google/android/youtube/core/ui/TabRow;

    iget v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/ui/TabRow;->focusTab(IZ)V

    .line 305
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "ev"

    .prologue
    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    if-nez v15, :cond_0

    .line 573
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/core/ui/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 575
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 577
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 579
    .local v3, action:I
    and-int/lit16 v15, v3, 0xff

    packed-switch v15, :pswitch_data_0

    .line 662
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v15, 0x1

    return v15

    .line 585
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-nez v15, :cond_2

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/widget/Scroller;->abortAnimation()V

    .line 590
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/youtube/core/ui/Workspace;->mLastMotionX:F

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/youtube/core/ui/Workspace;->mDownMotionX:F

    .line 591
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/youtube/core/ui/Workspace;->mActivePointerId:I

    goto :goto_0

    .line 595
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mTouchState:I

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mActivePointerId:I

    move v15, v0

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 598
    .local v8, pointerIndex:I
    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 599
    .local v14, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mLastMotionX:F

    move v15, v0

    sub-float/2addr v15, v14

    float-to-int v6, v15

    .line 600
    .local v6, deltaX:I
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/youtube/core/ui/Workspace;->mLastMotionX:F

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/ui/Workspace;->getScrollX()I

    move-result v10

    .line 603
    .local v10, sx:I
    if-gez v6, :cond_3

    .line 604
    if-lez v10, :cond_1

    .line 605
    neg-int v15, v10

    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/ui/Workspace;->scrollBy(II)V

    goto :goto_0

    .line 607
    :cond_3
    if-lez v6, :cond_4

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v15

    const/16 v16, 0x1

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int/2addr v15, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/ui/Workspace;->getWidth()I

    move-result v16

    sub-int v5, v15, v16

    .line 610
    .local v5, availableToScroll:I
    if-lez v5, :cond_1

    .line 611
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/ui/Workspace;->scrollBy(II)V

    goto/16 :goto_0

    .line 614
    .end local v5           #availableToScroll:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/ui/Workspace;->awakenScrollBars()Z

    goto/16 :goto_0

    .line 620
    .end local v6           #deltaX:I
    .end local v8           #pointerIndex:I
    .end local v10           #sx:I
    .end local v14           #x:F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mTouchState:I

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 621
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mActivePointerId:I

    move v4, v0

    .line 622
    .local v4, activePointerId:I
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 623
    .restart local v8       #pointerIndex:I
    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 624
    .restart local v14       #x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v11, v0

    .line 625
    .local v11, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v15, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mMaximumVelocity:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object v0, v11

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 626
    invoke-virtual {v11, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v15

    float-to-int v12, v15

    .line 627
    .local v12, velocityX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mDownMotionX:F

    move v15, v0

    sub-float/2addr v15, v14

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x42c8

    cmpl-float v15, v15, v16

    if-lez v15, :cond_6

    const/4 v15, 0x1

    move v7, v15

    .line 629
    .local v7, isfling:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/ui/Workspace;->getWidth()I

    move-result v9

    .line 630
    .local v9, screenWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/ui/Workspace;->getScrollX()I

    move-result v15

    div-int/lit8 v16, v9, 0x2

    add-int v15, v15, v16

    div-int v13, v15, v9

    .line 632
    .local v13, whichScreen:I
    if-eqz v7, :cond_7

    const/16 v15, 0x1f4

    if-le v12, v15, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    move v15, v0

    if-lez v15, :cond_7

    .line 634
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    move v15, v0

    const/16 v16, 0x1

    sub-int v15, v15, v16

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->snapToScreen(I)V

    .line 643
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    if-eqz v15, :cond_5

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->recycle()V

    .line 645
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/core/ui/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 648
    .end local v4           #activePointerId:I
    .end local v7           #isfling:Z
    .end local v8           #pointerIndex:I
    .end local v9           #screenWidth:I
    .end local v11           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v12           #velocityX:I
    .end local v13           #whichScreen:I
    .end local v14           #x:F
    :cond_5
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/youtube/core/ui/Workspace;->mTouchState:I

    .line 649
    const/4 v15, -0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/youtube/core/ui/Workspace;->mActivePointerId:I

    goto/16 :goto_0

    .line 627
    .restart local v4       #activePointerId:I
    .restart local v8       #pointerIndex:I
    .restart local v11       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v12       #velocityX:I
    .restart local v14       #x:F
    :cond_6
    const/4 v15, 0x0

    move v7, v15

    goto :goto_1

    .line 635
    .restart local v7       #isfling:Z
    .restart local v9       #screenWidth:I
    .restart local v13       #whichScreen:I
    :cond_7
    if-eqz v7, :cond_8

    const/16 v15, -0x1f4

    if-ge v12, v15, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    move v15, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    .line 638
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    move v15, v0

    add-int/lit8 v15, v15, 0x1

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->snapToScreen(I)V

    goto :goto_2

    .line 640
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/core/ui/Workspace;->snapToDestination()V

    goto :goto_2

    .line 653
    .end local v4           #activePointerId:I
    .end local v7           #isfling:Z
    .end local v8           #pointerIndex:I
    .end local v9           #screenWidth:I
    .end local v11           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v12           #velocityX:I
    .end local v13           #whichScreen:I
    .end local v14           #x:F
    :pswitch_4
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/youtube/core/ui/Workspace;->mTouchState:I

    .line 654
    const/4 v15, -0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/youtube/core/ui/Workspace;->mActivePointerId:I

    goto/16 :goto_0

    .line 658
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/youtube/core/ui/Workspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 579
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

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 562
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 563
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 564
    .local v0, screen:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->snapToScreen(I)V

    .line 567
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 362
    .local v0, screen:I
    iget v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->snapToScreen(I)V

    .line 364
    const/4 v1, 0x1

    .line 366
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 738
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->snapToScreen(I)V

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 746
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->snapToScreen(I)V

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method public setCurrentScreen(I)V
    .locals 3
    .parameter "currentScreen"

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    .line 235
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getScrollWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/ui/Workspace;->scrollTo(II)V

    .line 236
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->invalidate()V

    .line 237
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenCount()I

    move-result v0

    .line 247
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 248
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method public setSeparator(I)V
    .locals 8
    .parameter "resid"

    .prologue
    const/4 v7, 0x2

    .line 806
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    if-nez p1, :cond_2

    .line 808
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 809
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v3

    .line 810
    .local v3, num:I
    sub-int v0, v3, v7

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 811
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->removeViewAt(I)V

    .line 810
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 813
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->requestLayout()V

    .line 841
    .end local v0           #i:I
    .end local v3           #num:I
    :cond_1
    :goto_1
    return-void

    .line 814
    :cond_2
    if-eqz p1, :cond_1

    .line 816
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_4

    .line 818
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v4

    .line 819
    .local v4, numsep:I
    const/4 v1, 0x1

    .line 820
    .local v1, insertindex:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 821
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v4, :cond_3

    .line 822
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 823
    .local v5, v:Landroid/view/View;
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 824
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 826
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    invoke-virtual {p0, v5, v1}, Lcom/google/android/youtube/core/ui/Workspace;->addView(Landroid/view/View;I)V

    .line 828
    add-int/lit8 v1, v1, 0x2

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 830
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->requestLayout()V

    goto :goto_1

    .line 833
    .end local v0           #i:I
    .end local v1           #insertindex:I
    .end local v4           #numsep:I
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 834
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v3

    .line 835
    .restart local v3       #num:I
    sub-int v0, v3, v7

    .restart local v0       #i:I
    :goto_3
    if-lez v0, :cond_5

    .line 836
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/youtube/core/ui/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 835
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    .line 838
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->requestLayout()V

    goto :goto_1
.end method

.method public setTabRow(Lcom/google/android/youtube/core/ui/TabRow;)V
    .locals 1
    .parameter "th"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTabRow:Lcom/google/android/youtube/core/ui/TabRow;

    .line 137
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->updateTabRow()V

    .line 139
    new-instance v0, Lcom/google/android/youtube/core/ui/Workspace$1;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/ui/Workspace$1;-><init>(Lcom/google/android/youtube/core/ui/Workspace;)V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/ui/TabRow;->setOnTabClickListener(Lcom/google/android/youtube/core/ui/TabRow$OnTabClickListener;)V

    .line 145
    return-void
.end method

.method public snapToScreen(I)V
    .locals 12
    .parameter "whichScreen"

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 673
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 675
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 677
    .local v8, screenDelta:I
    iput p1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    .line 679
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 680
    .local v6, focusedChild:Landroid/view/View;
    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 682
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getScrollWidth()I

    move-result v0

    mul-int v7, p1, v0

    .line 686
    .local v7, newX:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getScrollX()I

    move-result v1

    .line 687
    .local v1, sX:I
    sub-int v3, v7, v1

    .line 688
    .local v3, delta:I
    mul-int/lit16 v5, v8, 0x12c

    .line 689
    .local v5, duration:I
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/core/ui/Workspace;->awakenScrollBars(I)Z

    .line 690
    if-nez v5, :cond_1

    .line 691
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 694
    :cond_1
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mNextScreen:I

    iget v4, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    if-eq v0, v4, :cond_2

    .line 696
    iget v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 700
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mFilterWindowEnabler:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 701
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mFilterWindowEnabler:Ljava/lang/Runnable;

    add-int/lit8 v4, v5, 0xa

    int-to-long v9, v4

    invoke-virtual {p0, v0, v9, v10}, Lcom/google/android/youtube/core/ui/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 704
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 705
    :cond_3
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mScroller:Landroid/widget/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 706
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTabRow:Lcom/google/android/youtube/core/ui/TabRow;

    invoke-virtual {v0, p1, v11}, Lcom/google/android/youtube/core/ui/TabRow;->focusTab(IZ)V

    .line 707
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->invalidate()V

    .line 708
    return-void
.end method

.method public updateTabRow()V
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTabRow:Lcom/google/android/youtube/core/ui/TabRow;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/ui/TabRow;->removeAllTabs()V

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTabRow:Lcom/google/android/youtube/core/ui/TabRow;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/ui/TabRow;->addTab(Ljava/lang/String;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 153
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTabRow:Lcom/google/android/youtube/core/ui/TabRow;

    if-eqz v1, :cond_3

    .line 156
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/Workspace;->mTabRow:Lcom/google/android/youtube/core/ui/TabRow;

    iget v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->mCurrentScreen:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/ui/TabRow;->focusTab(IZ)V

    .line 162
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->requestLayout()V

    .line 163
    return-void
.end method
