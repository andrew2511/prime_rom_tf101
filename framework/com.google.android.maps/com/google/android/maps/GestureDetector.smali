.class Lcom/google/android/maps/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/GestureDetector$GestureHandler;,
        Lcom/google/android/maps/GestureDetector$SimpleOnGestureListener;,
        Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;,
        Lcom/google/android/maps/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mBiggerTouchSlopSquare:I

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 213
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/google/android/maps/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 214
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/google/android/maps/GestureDetector;->TAP_TIMEOUT:I

    .line 215
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/google/android/maps/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/GestureDetector$OnGestureListener;)V
    .registers 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/GestureDetector;-><init>(Landroid/content/Context;Lcom/google/android/maps/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 334
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 5
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/16 v0, 0x190

    iput v0, p0, Lcom/google/android/maps/GestureDetector;->mBiggerTouchSlopSquare:I

    .line 349
    if-eqz p3, :cond_1f

    .line 350
    new-instance v0, Lcom/google/android/maps/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Lcom/google/android/maps/GestureDetector$GestureHandler;-><init>(Lcom/google/android/maps/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 354
    :goto_10
    iput-object p2, p0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    .line 355
    instance-of v0, p2, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_1b

    .line 356
    check-cast p2, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/google/android/maps/GestureDetector;->setOnDoubleTapListener(Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;)V

    .line 358
    :cond_1b
    invoke-direct {p0, p1}, Lcom/google/android/maps/GestureDetector;->init(Landroid/content/Context;)V

    .line 359
    return-void

    .line 352
    .restart local p2
    :cond_1f
    new-instance v0, Lcom/google/android/maps/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Lcom/google/android/maps/GestureDetector$GestureHandler;-><init>(Lcom/google/android/maps/GestureDetector;)V

    iput-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_10
.end method

.method static synthetic access$000(Lcom/google/android/maps/GestureDetector;)Landroid/view/MotionEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/maps/GestureDetector;)Lcom/google/android/maps/GestureDetector$OnGestureListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/maps/GestureDetector;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/maps/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/maps/GestureDetector;)Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/maps/GestureDetector;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/maps/GestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 561
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 562
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 564
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 566
    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    .line 567
    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mStillDown:Z

    .line 568
    iget-boolean v0, p0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_25

    .line 569
    iput-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    .line 571
    :cond_25
    return-void
.end method

.method private dispatchLongPress()V
    .registers 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    .line 591
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 592
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 362
    iget-object v3, p0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    if-nez v3, :cond_c

    .line 363
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "OnGestureListener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 365
    :cond_c
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/maps/GestureDetector;->mIsLongpressEnabled:Z

    .line 369
    if-nez p1, :cond_2e

    .line 371
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    .line 372
    .local v2, touchSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    .line 374
    .local v1, doubleTapSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/google/android/maps/GestureDetector;->mMinimumFlingVelocity:I

    .line 375
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/google/android/maps/GestureDetector;->mMaximumFlingVelocity:I

    .line 383
    :goto_25
    mul-int v3, v2, v2

    iput v3, p0, Lcom/google/android/maps/GestureDetector;->mTouchSlopSquare:I

    .line 384
    mul-int v3, v1, v1

    iput v3, p0, Lcom/google/android/maps/GestureDetector;->mDoubleTapSlopSquare:I

    .line 385
    return-void

    .line 377
    .end local v1           #doubleTapSlop:I
    .end local v2           #touchSlop:I
    :cond_2e
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 378
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 379
    .restart local v2       #touchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 380
    .restart local v1       #doubleTapSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/google/android/maps/GestureDetector;->mMinimumFlingVelocity:I

    .line 381
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/google/android/maps/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_25
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "firstDown"
    .parameter "firstUp"
    .parameter "secondDown"

    .prologue
    const/4 v6, 0x0

    .line 575
    iget-boolean v2, p0, Lcom/google/android/maps/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v2, :cond_7

    move v2, v6

    .line 585
    :goto_6
    return v2

    .line 579
    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v4, Lcom/google/android/maps/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_19

    move v2, v6

    .line 580
    goto :goto_6

    .line 583
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 584
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 585
    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/maps/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge v2, v3, :cond_3c

    const/4 v2, 0x1

    goto :goto_6

    :cond_3c
    move v2, v6

    goto :goto_6
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 28
    .parameter "ev"

    .prologue
    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 428
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 429
    .local v19, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .line 431
    .local v18, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-nez v20, :cond_1e

    .line 432
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 434
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 436
    const/4 v11, 0x0

    .line 438
    .local v11, handled:Z
    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_3be

    .line 557
    :cond_34
    :goto_34
    :pswitch_34
    return v11

    .line 441
    :pswitch_35
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/GestureDetector;->cancel()V

    goto :goto_34

    .line 446
    :pswitch_39
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_34

    .line 447
    const v20, 0xff00

    and-int v20, v20, v5

    shr-int/lit8 v20, v20, 0x8

    if-nez v20, :cond_80

    const/16 v20, 0x1

    move/from16 v12, v20

    .line 449
    .local v12, id:I
    :goto_52
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionX:F

    .line 450
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionY:F

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 452
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_34

    .line 447
    .end local v12           #id:I
    :cond_80
    const/16 v20, 0x0

    move/from16 v12, v20

    goto :goto_52

    .line 457
    :pswitch_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_fc

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    .line 459
    .local v10, hadTapMessage:Z
    if-eqz v10, :cond_a6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 460
    :cond_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19c

    if-eqz v10, :cond_19c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_19c

    .line 463
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 474
    .end local v10           #hadTapMessage:Z
    :cond_fc
    :goto_fc
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionX:F

    .line 475
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionY:F

    .line 476
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 477
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mAlwaysInTapRegion:Z

    .line 478
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 479
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mStillDown:Z

    .line 480
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    .line 482
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16c

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v22

    sget v24, Lcom/google/android/maps/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    sget v24, Lcom/google/android/maps/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 487
    :cond_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v22

    sget v24, Lcom/google/android/maps/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 489
    goto/16 :goto_34

    .line 470
    .restart local v10       #hadTapMessage:Z
    :cond_19c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    sget v22, Lcom/google/android/maps/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_fc

    .line 492
    .end local v10           #hadTapMessage:Z
    :pswitch_1b0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    move/from16 v20, v0

    if-nez v20, :cond_34

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_34

    .line 495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mLastMotionX:F

    move/from16 v20, v0

    sub-float v13, v20, v18

    .line 496
    .local v13, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mLastMotionY:F

    move/from16 v20, v0

    sub-float v14, v20, v19

    .line 497
    .local v14, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1ee

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    goto/16 :goto_34

    .line 500
    :cond_1ee
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v20, v0

    if-eqz v20, :cond_289

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    sub-float v20, v18, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v7, v0

    .line 502
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    sub-float v20, v19, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v8, v0

    .line 503
    .local v8, deltaY:I
    mul-int v20, v7, v7

    mul-int v21, v8, v8

    add-int v9, v20, v21

    .line 504
    .local v9, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mTouchSlopSquare:I

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-le v0, v1, :cond_274

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    .line 506
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionX:F

    .line 507
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionY:F

    .line 508
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mAlwaysInTapRegion:Z

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 513
    :cond_274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mBiggerTouchSlopSquare:I

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-le v0, v1, :cond_34

    .line 514
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_34

    .line 516
    .end local v7           #deltaX:I
    .end local v8           #deltaY:I
    .end local v9           #distance:I
    :cond_289
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x3f80

    cmpl-float v20, v20, v21

    if-gez v20, :cond_29d

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x3f80

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_34

    .line 517
    :cond_29d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    .line 518
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionX:F

    .line 519
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/GestureDetector;->mLastMotionY:F

    goto/16 :goto_34

    .line 524
    .end local v13           #scrollX:F
    .end local v14           #scrollY:F
    :pswitch_2c3
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mStillDown:Z

    .line 525
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 526
    .local v6, currentUpEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v20, v0

    if-eqz v20, :cond_322

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 547
    :cond_2e7
    :goto_2e7
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 549
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 550
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mIsDoubleTapping:Z

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_34

    .line 529
    :cond_322
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_33e

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/maps/GestureDetector;->mInLongPress:Z

    goto :goto_2e7

    .line 532
    :cond_33e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v20, v0

    if-eqz v20, :cond_355

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v11

    goto :goto_2e7

    .line 537
    :cond_355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    .line 538
    .local v15, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v15

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 539
    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    .line 540
    .local v17, velocityY:F
    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v16

    .line 542
    .local v16, velocityX:F
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_39d

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_2e7

    .line 544
    :cond_39d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v6

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    goto/16 :goto_2e7

    .line 555
    .end local v6           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v15           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v16           #velocityX:F
    .end local v17           #velocityY:F
    :pswitch_3b8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/GestureDetector;->cancel()V

    goto/16 :goto_34

    .line 438
    nop

    :pswitch_data_3be
    .packed-switch 0x0
        :pswitch_85
        :pswitch_2c3
        :pswitch_1b0
        :pswitch_3b8
        :pswitch_34
        :pswitch_35
        :pswitch_39
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .registers 2
    .parameter "isLongpressEnabled"

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/google/android/maps/GestureDetector;->mIsLongpressEnabled:Z

    .line 409
    return-void
.end method

.method public setOnDoubleTapListener(Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;)V
    .registers 2
    .parameter "onDoubleTapListener"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    .line 396
    return-void
.end method
