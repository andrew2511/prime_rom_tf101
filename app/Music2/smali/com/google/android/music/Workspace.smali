.class public Lcom/google/android/music/Workspace;
.super Landroid/view/ViewGroup;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/Workspace$SavedState;,
        Lcom/google/android/music/Workspace$ScreenSwitchListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final INVALID_SCREEN:I = -0x1

.field private static final MIN_LENGTH_FOR_FLING:I = 0x64

.field private static final SNAP_VELOCITY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "NuMusic"

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

.field private mLocked:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mPagingTouchSlop:I

.field private mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabRow:Lcom/google/android/music/TabRow;

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

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-boolean v2, p0, Lcom/google/android/music/Workspace;->mFirstLayout:Z

    .line 55
    iput v0, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    .line 66
    iput v1, p0, Lcom/google/android/music/Workspace;->mTouchState:I

    .line 70
    iput-boolean v2, p0, Lcom/google/android/music/Workspace;->mAllowLongPress:Z

    .line 78
    iput v0, p0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    .line 704
    new-instance v0, Lcom/google/android/music/Workspace$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/Workspace$2;-><init>(Lcom/google/android/music/Workspace;)V

    iput-object v0, p0, Lcom/google/android/music/Workspace;->mFilterWindowEnabler:Ljava/lang/Runnable;

    .line 101
    iput v1, p0, Lcom/google/android/music/Workspace;->mDefaultScreen:I

    .line 102
    iput-boolean v1, p0, Lcom/google/android/music/Workspace;->mLocked:Z

    .line 104
    invoke-virtual {p0, v1}, Lcom/google/android/music/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 105
    invoke-direct {p0}, Lcom/google/android/music/Workspace;->initWorkspace()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    return v0
.end method

.method private initWorkspace()V
    .locals 3

    .prologue
    .line 112
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 113
    iget v1, p0, Lcom/google/android/music/Workspace;->mDefaultScreen:I

    iput v1, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    .line 115
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 116
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/music/Workspace;->mTouchSlop:I

    .line 117
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/music/Workspace;->mPagingTouchSlop:I

    .line 118
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/google/android/music/Workspace;->mMaximumVelocity:I

    .line 119
    return-void
.end method

.method private notifyScreenSwitchListener()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

    iget v1, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/music/Workspace$ScreenSwitchListener;->onScreenSwitch(Landroid/view/View;I)V

    .line 202
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 512
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 513
    .local v1, pointerId:I
    iget v3, p0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 517
    if-nez v2, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 518
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/google/android/music/Workspace;->mDownMotionX:F

    iput v3, p0, Lcom/google/android/music/Workspace;->mLastMotionX:F

    .line 519
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/google/android/music/Workspace;->mLastMotionY:F

    .line 520
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    .line 521
    iget-object v3, p0, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 522
    iget-object v3, p0, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 525
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 517
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private snapToDestination()V
    .locals 4

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScrollWidth()I

    move-result v0

    .line 649
    .local v0, screenWidth:I
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 651
    .local v1, whichScreen:I
    invoke-virtual {p0, v1}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    .line 652
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

    .line 363
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 364
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 366
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 367
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    if-lez v0, :cond_1

    .line 368
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 375
    :cond_1
    :goto_0
    return-void

    .line 370
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 371
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 372
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/google/android/music/Workspace;->mAllowLongPress:Z

    return v0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 220
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/Workspace;->scrollTo(II)V

    .line 222
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->postInvalidate()V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget v0, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    if-eq v0, v4, :cond_0

    .line 224
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    .line 225
    invoke-direct {p0}, Lcom/google/android/music/Workspace;->notifyScreenSwitchListener()V

    .line 226
    iput v4, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x1

    .line 232
    const/4 v5, 0x0

    .line 233
    .local v5, restore:Z
    const/4 v6, 0x0

    .line 240
    .local v6, restoreCount:I
    iget v7, p0, Lcom/google/android/music/Workspace;->mTouchState:I

    if-eq v7, v9, :cond_2

    iget v7, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    move v3, v9

    .line 242
    .local v3, fastDraw:Z
    :goto_0
    if-eqz v3, :cond_3

    .line 243
    iget v7, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getDrawingTime()J

    move-result-wide v8

    invoke-virtual {p0, p1, v7, v8, v9}, Lcom/google/android/music/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 260
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 261
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 263
    :cond_1
    return-void

    .line 240
    .end local v3           #fastDraw:Z
    :cond_2
    const/4 v7, 0x0

    move v3, v7

    goto :goto_0

    .line 245
    .restart local v3       #fastDraw:Z
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getDrawingTime()J

    move-result-wide v1

    .line 247
    .local v1, drawingTime:J
    iget v7, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    if-ltz v7, :cond_4

    iget v7, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget v7, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    iget v8, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 249
    iget v7, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/google/android/music/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 250
    iget v7, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    invoke-virtual {p0, v7}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/google/android/music/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 253
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v0

    .line 254
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_0

    .line 255
    invoke-virtual {p0, v4}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/google/android/music/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 345
    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getCurrentScreen()I

    move-result v0

    if-lez v0, :cond_2

    .line 347
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getCurrentScreen()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    move v0, v2

    .line 358
    :goto_0
    return v0

    .line 350
    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getCurrentScreen()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 352
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getCurrentScreen()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    move v0, v2

    .line 353
    goto :goto_0

    .line 355
    :cond_1
    const/16 v0, 0x21

    if-ne p2, v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mTabRow:Lcom/google/android/music/TabRow;

    invoke-virtual {v0}, Lcom/google/android/music/TabRow;->focusCurrentTab()V

    .line 358
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 386
    iget v3, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 389
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 390
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 400
    :cond_0
    return-void

    .line 393
    :cond_1
    if-eq v2, p0, :cond_0

    .line 396
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 397
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 398
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method getCurrentScreen()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    return v0
.end method

.method getScreenAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0, p1}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getScreenCount()I
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v0

    .line 164
    .local v0, numchildren:I
    iget-object v1, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 165
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 167
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
    .line 752
    const/4 v2, -0x1

    .line 753
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 754
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 755
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v0

    .line 756
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 757
    invoke-virtual {p0, v1}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move v4, v1

    .line 762
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v4

    .line 756
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

    .line 762
    goto :goto_1
.end method

.method getScrollWidth()I
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getWidth()I

    move-result v0

    .line 179
    .local v0, w:I
    iget-object v1, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_0
    return v0
.end method

.method public lockCurrentScreen()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/Workspace;->mLocked:Z

    .line 123
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 419
    .local v0, action:I
    const/4 v11, 0x2

    if-ne v0, v11, :cond_0

    iget v11, p0, Lcom/google/android/music/Workspace;->mTouchState:I

    if-eqz v11, :cond_0

    move v11, v13

    .line 506
    :goto_0
    return v11

    .line 423
    :cond_0
    and-int/lit16 v11, v0, 0xff

    packed-switch v11, :pswitch_data_0

    .line 506
    :cond_1
    :goto_1
    :pswitch_0
    iget v11, p0, Lcom/google/android/music/Workspace;->mTouchState:I

    if-eqz v11, :cond_8

    move v11, v13

    goto :goto_0

    .line 425
    :pswitch_1
    iget-boolean v11, p0, Lcom/google/android/music/Workspace;->mLocked:Z

    if-nez v11, :cond_1

    .line 438
    iget v11, p0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 439
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 440
    .local v4, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 441
    .local v8, y:F
    iget v11, p0, Lcom/google/android/music/Workspace;->mLastMotionX:F

    sub-float v11, v4, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v5, v11

    .line 442
    .local v5, xDiff:I
    iget v11, p0, Lcom/google/android/music/Workspace;->mLastMotionY:F

    sub-float v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v9, v11

    .line 444
    .local v9, yDiff:I
    iget v3, p0, Lcom/google/android/music/Workspace;->mTouchSlop:I

    .line 445
    .local v3, touchSlop:I
    iget v11, p0, Lcom/google/android/music/Workspace;->mPagingTouchSlop:I

    if-le v5, v11, :cond_4

    move v7, v13

    .line 446
    .local v7, xPaged:Z
    :goto_2
    if-le v5, v3, :cond_5

    move v6, v13

    .line 447
    .local v6, xMoved:Z
    :goto_3
    if-le v9, v3, :cond_6

    move v10, v13

    .line 449
    .local v10, yMoved:Z
    :goto_4
    if-nez v6, :cond_2

    if-eqz v10, :cond_1

    .line 451
    :cond_2
    if-eqz v7, :cond_3

    .line 453
    iput v13, p0, Lcom/google/android/music/Workspace;->mTouchState:I

    .line 454
    iput v4, p0, Lcom/google/android/music/Workspace;->mLastMotionX:F

    .line 457
    :cond_3
    iget-boolean v11, p0, Lcom/google/android/music/Workspace;->mAllowLongPress:Z

    if-eqz v11, :cond_1

    .line 458
    iput-boolean v12, p0, Lcom/google/android/music/Workspace;->mAllowLongPress:Z

    .line 462
    iget v11, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v11}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 463
    .local v1, currentScreen:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    .end local v1           #currentScreen:Landroid/view/View;
    .end local v6           #xMoved:Z
    .end local v7           #xPaged:Z
    .end local v10           #yMoved:Z
    :cond_4
    move v7, v12

    .line 445
    goto :goto_2

    .restart local v7       #xPaged:Z
    :cond_5
    move v6, v12

    .line 446
    goto :goto_3

    .restart local v6       #xMoved:Z
    :cond_6
    move v10, v12

    .line 447
    goto :goto_4

    .line 470
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

    .line 471
    .restart local v4       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 473
    .restart local v8       #y:F
    iput v4, p0, Lcom/google/android/music/Workspace;->mDownMotionX:F

    .line 474
    iput v4, p0, Lcom/google/android/music/Workspace;->mLastMotionX:F

    .line 475
    iput v8, p0, Lcom/google/android/music/Workspace;->mLastMotionY:F

    .line 476
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    .line 477
    iput-boolean v13, p0, Lcom/google/android/music/Workspace;->mAllowLongPress:Z

    .line 484
    iget-object v11, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_7

    move v11, v12

    :goto_5
    iput v11, p0, Lcom/google/android/music/Workspace;->mTouchState:I

    goto :goto_1

    :cond_7
    move v11, v13

    goto :goto_5

    .line 491
    .end local v4           #x:F
    .end local v8           #y:F
    :pswitch_3
    iput v12, p0, Lcom/google/android/music/Workspace;->mTouchState:I

    .line 492
    iput-boolean v12, p0, Lcom/google/android/music/Workspace;->mAllowLongPress:Z

    .line 493
    const/4 v11, -0x1

    iput v11, p0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    goto/16 :goto_1

    .line 498
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/music/Workspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_8
    move v11, v12

    .line 506
    goto/16 :goto_0

    .line 423
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
    .line 305
    const/4 v1, 0x0

    .line 307
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v3

    .line 308
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 309
    invoke-virtual {p0, v4}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 310
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 311
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 312
    .local v2, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 313
    add-int/2addr v1, v2

    .line 308
    .end local v2           #childWidth:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 316
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 267
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 269
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 270
    .local v4, widthMode:I
    if-eq v4, v5, :cond_0

    .line 271
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 274
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 275
    .local v1, heightMode:I
    if-eq v1, v5, :cond_1

    .line 276
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v0

    .line 281
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 282
    iget-object v5, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v8, :cond_2

    .line 284
    invoke-virtual {p0, v2}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v5, v6, p2}, Landroid/view/View;->measure(II)V

    .line 281
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 291
    :cond_3
    iget-boolean v5, p0, Lcom/google/android/music/Workspace;->mFirstLayout:Z

    if-eqz v5, :cond_5

    .line 292
    invoke-virtual {p0, v7}, Lcom/google/android/music/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 293
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 294
    .local v3, width:I
    iget-object v5, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    .line 295
    iget-object v5, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 297
    :cond_4
    iget v5, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    mul-int/2addr v5, v3

    invoke-virtual {p0, v5, v7}, Lcom/google/android/music/Workspace;->scrollTo(II)V

    .line 298
    invoke-virtual {p0, v8}, Lcom/google/android/music/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 299
    iput-boolean v7, p0, Lcom/google/android/music/Workspace;->mFirstLayout:Z

    .line 301
    .end local v3           #width:I
    :cond_5
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 331
    iget v2, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 332
    iget v0, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    .line 336
    .local v0, focusableScreen:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 337
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 340
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 334
    .end local v0           #focusableScreen:I
    .end local v1           #v:Landroid/view/View;
    :cond_1
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 720
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/Workspace$SavedState;

    move-object v1, v0

    .line 721
    .local v1, savedState:Lcom/google/android/music/Workspace$SavedState;
    invoke-virtual {v1}, Lcom/google/android/music/Workspace$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 722
    iget v2, v1, Lcom/google/android/music/Workspace$SavedState;->currentScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 723
    iget v2, v1, Lcom/google/android/music/Workspace$SavedState;->currentScreen:I

    iput v2, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    .line 725
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 713
    new-instance v0, Lcom/google/android/music/Workspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/music/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 714
    .local v0, state:Lcom/google/android/music/Workspace$SavedState;
    iget v1, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    iput v1, v0, Lcom/google/android/music/Workspace$SavedState;->currentScreen:I

    .line 715
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "ev"

    .prologue
    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 543
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 545
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 547
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 549
    .local v3, action:I
    move v0, v3

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 644
    :cond_1
    :goto_0
    :pswitch_0
    const/16 v18, 0x1

    return v18

    .line 555
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_2

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->abortAnimation()V

    .line 560
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mLastMotionX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mDownMotionX:F

    .line 561
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mActivePointerId:I

    goto :goto_0

    .line 565
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/Workspace;->mLocked:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 569
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 571
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 572
    .local v9, pointerIndex:I
    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 573
    .local v17, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mLastMotionX:F

    move/from16 v18, v0

    sub-float v18, v18, v17

    move/from16 v0, v18

    float-to-int v0, v0

    move v7, v0

    .line 574
    .local v7, deltaX:I
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mLastMotionX:F

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/Workspace;->getScrollX()I

    move-result v13

    .line 577
    .local v13, sx:I
    if-gez v7, :cond_3

    .line 578
    if-lez v13, :cond_1

    .line 579
    move v0, v13

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/Workspace;->scrollBy(II)V

    goto/16 :goto_0

    .line 581
    :cond_3
    if-lez v7, :cond_4

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v18

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    sub-int v18, v18, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/Workspace;->getWidth()I

    move-result v19

    sub-int v5, v18, v19

    .line 584
    .local v5, availableToScroll:I
    if-lez v5, :cond_1

    .line 585
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/Workspace;->scrollBy(II)V

    goto/16 :goto_0

    .line 588
    .end local v5           #availableToScroll:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/Workspace;->awakenScrollBars()Z

    goto/16 :goto_0

    .line 594
    .end local v7           #deltaX:I
    .end local v9           #pointerIndex:I
    .end local v13           #sx:I
    .end local v17           #x:F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 595
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    move v4, v0

    .line 596
    .local v4, activePointerId:I
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 597
    .restart local v9       #pointerIndex:I
    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 598
    .restart local v17       #x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v14, v0

    .line 599
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 600
    invoke-virtual {v14, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v15, v0

    .line 601
    .local v15, velocityX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mDownMotionX:F

    move/from16 v18, v0

    sub-float v18, v18, v17

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const/high16 v19, 0x42c8

    cmpl-float v18, v18, v19

    if-lez v18, :cond_6

    const/16 v18, 0x1

    move/from16 v8, v18

    .line 603
    .local v8, isfling:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/Workspace;->getScrollX()I

    move-result v11

    .line 604
    .local v11, scrollX:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/Workspace;->getWidth()I

    move-result v10

    .line 605
    .local v10, screenWidth:I
    div-int/lit8 v18, v10, 0x2

    add-int v18, v18, v11

    div-int v16, v18, v10

    .line 606
    .local v16, whichScreen:I
    move v0, v11

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v12, v18, v19

    .line 608
    .local v12, scrolledPos:F
    if-eqz v8, :cond_8

    const/16 v18, 0x1f4

    move v0, v15

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    if-lez v18, :cond_8

    .line 611
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v12, v18

    if-gez v18, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move/from16 v6, v18

    .line 613
    .local v6, bound:I
    :goto_2
    move/from16 v0, v16

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    .line 625
    .end local v6           #bound:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    .line 627
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 630
    .end local v4           #activePointerId:I
    .end local v8           #isfling:Z
    .end local v9           #pointerIndex:I
    .end local v10           #screenWidth:I
    .end local v11           #scrollX:I
    .end local v12           #scrolledPos:F
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #whichScreen:I
    .end local v17           #x:F
    :cond_5
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mTouchState:I

    .line 631
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mActivePointerId:I

    goto/16 :goto_0

    .line 601
    .restart local v4       #activePointerId:I
    .restart local v9       #pointerIndex:I
    .restart local v14       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v15       #velocityX:I
    .restart local v17       #x:F
    :cond_6
    const/16 v18, 0x0

    move/from16 v8, v18

    goto :goto_1

    .line 611
    .restart local v8       #isfling:Z
    .restart local v10       #screenWidth:I
    .restart local v11       #scrollX:I
    .restart local v12       #scrolledPos:F
    .restart local v16       #whichScreen:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    move/from16 v6, v18

    goto :goto_2

    .line 614
    :cond_8
    if-eqz v8, :cond_a

    const/16 v18, -0x1f4

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v19

    const/16 v20, 0x1

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 618
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v12, v18

    if-lez v18, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v6, v18

    .line 620
    .restart local v6       #bound:I
    :goto_4
    move/from16 v0, v16

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    goto :goto_3

    .line 618
    .end local v6           #bound:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    move/from16 v6, v18

    goto :goto_4

    .line 622
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/Workspace;->snapToDestination()V

    goto/16 :goto_3

    .line 635
    .end local v4           #activePointerId:I
    .end local v8           #isfling:Z
    .end local v9           #pointerIndex:I
    .end local v10           #screenWidth:I
    .end local v11           #scrollX:I
    .end local v12           #scrolledPos:F
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #whichScreen:I
    .end local v17           #x:F
    :pswitch_4
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mTouchState:I

    .line 636
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mActivePointerId:I

    goto/16 :goto_0

    .line 640
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/music/Workspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 549
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
    .line 529
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 530
    invoke-virtual {p0, p1}, Lcom/google/android/music/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 531
    .local v0, screen:I
    iget-object v1, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 532
    div-int/lit8 v0, v0, 0x2

    .line 534
    :cond_0
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 535
    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    .line 537
    :cond_1
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lcom/google/android/music/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 321
    .local v0, screen:I
    iget v1, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    .line 323
    const/4 v1, 0x1

    .line 325
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

    .line 728
    iget-boolean v0, p0, Lcom/google/android/music/Workspace;->mLocked:Z

    if-eqz v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    goto :goto_0

    .line 735
    :cond_2
    iget v0, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 740
    iget-boolean v0, p0, Lcom/google/android/music/Workspace;->mLocked:Z

    if-eqz v0, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    goto :goto_0

    .line 747
    :cond_2
    iget v0, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    goto :goto_0
.end method

.method setCurrentScreen(I)V
    .locals 3
    .parameter "currentScreen"

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    .line 193
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScrollWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/Workspace;->scrollTo(II)V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->invalidate()V

    .line 195
    invoke-direct {p0}, Lcom/google/android/music/Workspace;->notifyScreenSwitchListener()V

    .line 196
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/android/music/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 212
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v0

    .line 213
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 214
    invoke-virtual {p0, v1}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_0
    return-void
.end method

.method public setScreenSwitchListener(Lcom/google/android/music/Workspace$ScreenSwitchListener;)V
    .locals 3
    .parameter "screenSwitchListener"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A screen switch listener is already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/Workspace;->mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/google/android/music/Workspace;->mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

    .line 148
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

    iget v1, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/music/Workspace$ScreenSwitchListener;->onScreenSwitch(Landroid/view/View;I)V

    .line 151
    :cond_1
    return-void
.end method

.method public setSeparator(I)V
    .locals 8
    .parameter "resid"

    .prologue
    const/4 v7, 0x2

    .line 804
    iget-object v6, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    if-nez p1, :cond_2

    .line 806
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 807
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v3

    .line 808
    .local v3, num:I
    sub-int v0, v3, v7

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 809
    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->removeViewAt(I)V

    .line 808
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->requestLayout()V

    .line 839
    .end local v0           #i:I
    .end local v3           #num:I
    :cond_1
    :goto_1
    return-void

    .line 812
    :cond_2
    if-eqz p1, :cond_1

    .line 814
    iget-object v6, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_4

    .line 816
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v4

    .line 817
    .local v4, numsep:I
    const/4 v1, 0x1

    .line 818
    .local v1, insertindex:I
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 819
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v4, :cond_3

    .line 820
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 821
    .local v5, v:Landroid/view/View;
    iget-object v6, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 822
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 824
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    invoke-virtual {p0, v5, v1}, Lcom/google/android/music/Workspace;->addView(Landroid/view/View;I)V

    .line 826
    add-int/lit8 v1, v1, 0x2

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 828
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->requestLayout()V

    goto :goto_1

    .line 831
    .end local v0           #i:I
    .end local v1           #insertindex:I
    .end local v4           #numsep:I
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 832
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v3

    .line 833
    .restart local v3       #num:I
    sub-int v0, v3, v7

    .restart local v0       #i:I
    :goto_3
    if-lez v0, :cond_5

    .line 834
    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 833
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    .line 836
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->requestLayout()V

    goto :goto_1
.end method

.method public setTabHolder(Lcom/google/android/music/TabRow;)V
    .locals 1
    .parameter "th"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/music/Workspace;->mTabRow:Lcom/google/android/music/TabRow;

    .line 134
    new-instance v0, Lcom/google/android/music/Workspace$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/Workspace$1;-><init>(Lcom/google/android/music/Workspace;)V

    invoke-virtual {p1, v0}, Lcom/google/android/music/TabRow;->setOnTabClickListener(Lcom/google/android/music/TabRow$OnTabClickListener;)V

    .line 140
    return-void
.end method

.method snapToScreen(I)V
    .locals 12
    .parameter "whichScreen"

    .prologue
    const/4 v2, 0x0

    .line 657
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 659
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 661
    .local v8, screenDelta:I
    iput p1, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    .line 663
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 664
    .local v6, focusedChild:Landroid/view/View;
    const/4 v9, 0x0

    .line 665
    .local v9, setTabFocus:Z
    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mTabRow:Lcom/google/android/music/TabRow;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/android/music/TabRow;->setOnTabClickListener(Lcom/google/android/music/TabRow$OnTabClickListener;)V

    .line 670
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 671
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mTabRow:Lcom/google/android/music/TabRow;

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->setTabHolder(Lcom/google/android/music/TabRow;)V

    .line 672
    const/4 v9, 0x1

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScrollWidth()I

    move-result v0

    mul-int v7, p1, v0

    .line 676
    .local v7, newX:I
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScrollX()I

    move-result v1

    .line 677
    .local v1, sX:I
    sub-int v3, v7, v1

    .line 678
    .local v3, delta:I
    mul-int/lit16 v5, v8, 0x12c

    .line 679
    .local v5, duration:I
    invoke-virtual {p0, v5}, Lcom/google/android/music/Workspace;->awakenScrollBars(I)Z

    .line 680
    if-nez v5, :cond_1

    .line 681
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 684
    :cond_1
    iget v0, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    iget v4, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    if-eq v0, v4, :cond_2

    .line 686
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 690
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mFilterWindowEnabler:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 691
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mFilterWindowEnabler:Ljava/lang/Runnable;

    add-int/lit8 v4, v5, 0xa

    int-to-long v10, v4

    invoke-virtual {p0, v0, v10, v11}, Lcom/google/android/music/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 696
    :cond_3
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 697
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mTabRow:Lcom/google/android/music/TabRow;

    invoke-virtual {v0, p1}, Lcom/google/android/music/TabRow;->setCurrentTab(I)V

    .line 698
    if-eqz v9, :cond_4

    .line 699
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mTabRow:Lcom/google/android/music/TabRow;

    invoke-virtual {v0}, Lcom/google/android/music/TabRow;->focusCurrentTab()V

    .line 701
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->invalidate()V

    .line 702
    return-void
.end method

.method public unlockCurrentScreen()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/Workspace;->mLocked:Z

    .line 127
    return-void
.end method
