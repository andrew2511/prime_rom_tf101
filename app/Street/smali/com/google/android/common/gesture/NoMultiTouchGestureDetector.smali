.class Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;
.super Ljava/lang/Object;
.source "NoMultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;,
        Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;,
        Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;
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

.field private mDoubleTapListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->LONGPRESS_TIMEOUT:I

    .line 221
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->TAP_TIMEOUT:I

    .line 222
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;-><init>(Landroid/content/Context;Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/16 v0, 0x190

    iput v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mBiggerTouchSlopSquare:I

    .line 319
    if-eqz p3, :cond_1

    .line 320
    new-instance v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;-><init>(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    .line 324
    :goto_0
    iput-object p2, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;

    .line 325
    instance-of v0, p2, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_0

    .line 326
    check-cast p2, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->setOnDoubleTapListener(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;)V

    .line 328
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->init(Landroid/content/Context;)V

    .line 329
    return-void

    .line 322
    .restart local p2
    :cond_1
    new-instance v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;-><init>(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;)V

    iput-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;)Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;)Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mDoubleTapListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 535
    iget-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    iget-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    iget-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 538
    iget-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 540
    iput-boolean v2, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mIsDoubleTapping:Z

    .line 541
    iput-boolean v2, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mStillDown:Z

    .line 542
    iget-boolean v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    .line 543
    iput-boolean v2, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mInLongPress:Z

    .line 545
    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mInLongPress:Z

    .line 566
    iget-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;

    iget-object v1, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 567
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 332
    iget-object v3, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;

    if-nez v3, :cond_0

    .line 333
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "OnGestureListener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 336
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mIsLongpressEnabled:Z

    .line 341
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 342
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 343
    .local v2, touchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 344
    .local v1, doubleTapSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mMinimumFlingVelocity:I

    .line 345
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mMaximumFlingVelocity:I

    .line 347
    mul-int v3, v2, v2

    iput v3, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mTouchSlopSquare:I

    .line 348
    mul-int v3, v1, v1

    iput v3, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mDoubleTapSlopSquare:I

    .line 349
    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "firstDown"
    .parameter "firstUp"
    .parameter "secondDown"

    .prologue
    const/4 v6, 0x0

    .line 549
    iget-boolean v2, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v2, :cond_0

    move v2, v6

    .line 560
    :goto_0
    return v2

    .line 553
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v4, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move v2, v6

    .line 555
    goto :goto_0

    .line 558
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 559
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 560
    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mDoubleTapSlopSquare:I

    if-ge v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "ev"

    .prologue
    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 393
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 394
    .local v19, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .line 396
    .local v18, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 397
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 399
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 401
    const/4 v11, 0x0

    .line 403
    .local v11, handled:Z
    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 531
    :cond_1
    :goto_0
    :pswitch_0
    return v11

    .line 406
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->cancel()V

    goto :goto_0

    .line 411
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 412
    const v20, 0xff00

    and-int v20, v20, v5

    shr-int/lit8 v20, v20, 0x8

    if-nez v20, :cond_2

    const/16 v20, 0x1

    move/from16 v12, v20

    .line 414
    .local v12, id:I
    :goto_1
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mLastMotionX:F

    .line 415
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mLastMotionY:F

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 417
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 412
    .end local v12           #id:I
    :cond_2
    const/16 v20, 0x0

    move/from16 v12, v20

    goto :goto_1

    .line 422
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mDoubleTapListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    .line 424
    .local v10, hadTapMessage:Z
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 425
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 430
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mIsDoubleTapping:Z

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mDoubleTapListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mDoubleTapListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 442
    .end local v10           #hadTapMessage:Z
    :cond_4
    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mLastMotionX:F

    .line 443
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mLastMotionY:F

    .line 444
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 445
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mAlwaysInTapRegion:Z

    .line 446
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 447
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mStillDown:Z

    .line 448
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mInLongPress:Z

    .line 450
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mIsLongpressEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v22

    sget v24, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    sget v24, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 456
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v22

    sget v24, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 459
    goto/16 :goto_0

    .line 438
    .restart local v10       #hadTapMessage:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    sget v22, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 462
    .end local v10           #hadTapMessage:Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mInLongPress:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1

    .line 465
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mLastMotionX:F

    move/from16 v20, v0

    sub-float v13, v20, v18

    .line 466
    .local v13, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mLastMotionY:F

    move/from16 v20, v0

    sub-float v14, v20, v19

    .line 467
    .local v14, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mIsDoubleTapping:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mDoubleTapListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    goto/16 :goto_0

    .line 470
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    sub-float v20, v18, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v7, v0

    .line 472
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    sub-float v20, v19, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v8, v0

    .line 473
    .local v8, deltaY:I
    mul-int v20, v7, v7

    mul-int v21, v8, v8

    add-int v9, v20, v21

    .line 474
    .local v9, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mTouchSlopSquare:I

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    .line 477
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mLastMotionX:F

    .line 478
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mLastMotionY:F

    .line 479
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mAlwaysInTapRegion:Z

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mBiggerTouchSlopSquare:I

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 485
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_0

    .line 487
    .end local v7           #deltaX:I
    .end local v8           #deltaY:I
    .end local v9           #distance:I
    :cond_9
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x3f80

    cmpl-float v20, v20, v21

    if-gez v20, :cond_a

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x3f80

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_1

    .line 488
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    .line 490
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mLastMotionX:F

    .line 491
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mLastMotionY:F

    goto/16 :goto_0

    .line 496
    .end local v13           #scrollX:F
    .end local v14           #scrollY:F
    :pswitch_5
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mStillDown:Z

    .line 497
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 498
    .local v6, currentUpEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mIsDoubleTapping:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mDoubleTapListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 521
    :cond_b
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 523
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 524
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mIsDoubleTapping:Z

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 501
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mInLongPress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 503
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mInLongPress:Z

    goto :goto_3

    .line 504
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v11

    goto :goto_3

    .line 509
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    .line 510
    .local v15, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mMaximumFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v15

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 512
    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    .line 513
    .local v17, velocityY:F
    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v16

    .line 515
    .local v16, velocityX:F
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mMinimumFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_f

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mMinimumFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_b

    .line 517
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v6

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    goto/16 :goto_3

    .line 529
    .end local v6           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v15           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v16           #velocityX:F
    .end local v17           #velocityY:F
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->cancel()V

    goto/16 :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0
    .parameter "isLongpressEnabled"

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mIsLongpressEnabled:Z

    .line 374
    return-void
.end method

.method public setOnDoubleTapListener(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;)V
    .locals 0
    .parameter "onDoubleTapListener"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->mDoubleTapListener:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;

    .line 361
    return-void
.end method
