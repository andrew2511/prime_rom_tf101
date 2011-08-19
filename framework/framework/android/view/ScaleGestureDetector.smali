.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private mActive0MostRecent:Z

.field private mActiveId0:I

.field private mActiveId1:I

.field private mBottomSlopEdge:F

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private final mEdgeSlop:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private mInvalidGesture:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mRightSlopEdge:F

.field private mScaleFactor:F

.field private mSloppyGesture:Z

.field private mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .registers 5
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 168
    .local v0, config:Landroid/view/ViewConfiguration;
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 170
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    .line 171
    return-void
.end method

.method private findNewActiveIndex(Landroid/view/MotionEvent;II)I
    .registers 14
    .parameter "ev"
    .parameter "otherActiveId"
    .parameter "oldIndex"

    .prologue
    .line 472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 475
    .local v5, pointerCount:I
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 476
    .local v4, otherActiveIndex:I
    const/4 v3, -0x1

    .line 479
    .local v3, newActiveIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v5, :cond_2f

    .line 480
    if-eq v2, p3, :cond_30

    if-eq v2, v4, :cond_30

    .line 481
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    .line 482
    .local v1, edgeSlop:F
    iget v6, p0, Landroid/view/ScaleGestureDetector;->mRightSlopEdge:F

    .line 483
    .local v6, rightSlop:F
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 484
    .local v0, bottomSlop:F
    invoke-static {p1, v2}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 485
    .local v7, x:F
    invoke-static {p1, v2}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 486
    .local v8, y:F
    cmpl-float v9, v7, v1

    if-ltz v9, :cond_30

    cmpl-float v9, v8, v1

    if-ltz v9, :cond_30

    cmpg-float v9, v7, v6

    if-gtz v9, :cond_30

    cmpg-float v9, v8, v0

    if-gtz v9, :cond_30

    .line 487
    move v3, v2

    .line 493
    .end local v0           #bottomSlop:F
    .end local v1           #edgeSlop:F
    .end local v6           #rightSlop:F
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_2f
    return v3

    .line 479
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .registers 5
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 500
    if-gez p1, :cond_4

    const/4 v1, 0x1

    .line 503
    :goto_3
    return v1

    .line 501
    :cond_4
    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    goto :goto_3

    .line 502
    :cond_b
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v0, v1, v2

    .line 503
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_3
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .registers 5
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 510
    if-gez p1, :cond_4

    const/4 v1, 0x1

    .line 513
    :goto_3
    return v1

    .line 511
    :cond_4
    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    goto :goto_3

    .line 512
    :cond_b
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v0, v1, v2

    .line 513
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_3
.end method

.method private reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 568
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_e

    .line 569
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 570
    iput-object v3, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 572
    :cond_e
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_19

    .line 573
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 574
    iput-object v3, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 576
    :cond_19
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    .line 577
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 578
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 579
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 580
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    .line 581
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .registers 26
    .parameter "curr"

    .prologue
    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 520
    :cond_11
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 522
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    .line 523
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    .line 524
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object v11, v0

    .line 528
    .local v11, prev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move-object v0, v11

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 529
    .local v12, prevIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move-object v0, v11

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 530
    .local v13, prevIndex1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 531
    .local v3, currIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 533
    .local v4, currIndex1:I
    if-ltz v12, :cond_76

    if-ltz v13, :cond_76

    if-ltz v3, :cond_76

    if-gez v4, :cond_a0

    .line 534
    :cond_76
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    .line 535
    const-string v20, "ScaleGestureDetector"

    const-string v21, "Invalid MotionEvent stream detected."

    new-instance v22, Ljava/lang/Throwable;

    invoke-direct/range {v22 .. v22}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v20 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9f

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 565
    :cond_9f
    :goto_9f
    return-void

    .line 542
    :cond_a0
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 543
    .local v16, px0:F
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 544
    .local v18, py0:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 545
    .local v17, px1:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 546
    .local v19, py1:F
    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 547
    .local v7, cx0:F
    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 548
    .local v9, cy0:F
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 549
    .local v8, cx1:F
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 551
    .local v10, cy1:F
    sub-float v14, v17, v16

    .line 552
    .local v14, pvx:F
    sub-float v15, v19, v18

    .line 553
    .local v15, pvy:F
    sub-float v5, v8, v7

    .line 554
    .local v5, cvx:F
    sub-float v6, v10, v9

    .line 555
    .local v6, cvy:F
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 556
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 557
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 558
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 560
    const/high16 v20, 0x3f00

    mul-float v20, v20, v5

    add-float v20, v20, v7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 561
    const/high16 v20, 0x3f00

    mul-float v20, v20, v6

    add-float v20, v20, v9

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    .line 563
    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrPressure:F

    .line 564
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevPressure:F

    goto/16 :goto_9f
.end method


# virtual methods
.method public getCurrentSpan()F
    .registers 5

    .prologue
    .line 628
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_17

    .line 629
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 630
    .local v0, cvx:F
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 631
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    .line 633
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_17
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    return v2
.end method

.method public getCurrentSpanX()F
    .registers 2

    .prologue
    .line 643
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .registers 2

    .prologue
    .line 653
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    return v0
.end method

.method public getEventTime()J
    .registers 3

    .prologue
    .line 721
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .registers 2

    .prologue
    .line 603
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .registers 2

    .prologue
    .line 618
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .registers 5

    .prologue
    .line 663
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_17

    .line 664
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 665
    .local v0, pvx:F
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 666
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    .line 668
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_17
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    return v2
.end method

.method public getPreviousSpanX()F
    .registers 2

    .prologue
    .line 678
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .registers 2

    .prologue
    .line 688
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    return v0
.end method

.method public getScaleFactor()F
    .registers 3

    .prologue
    .line 699
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 700
    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 702
    :cond_13
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .registers 3

    .prologue
    .line 712
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public isInProgress()Z
    .registers 2

    .prologue
    .line 588
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 33
    .parameter "event"

    .prologue
    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 175
    .local v4, action:I
    const/4 v11, 0x1

    .line 177
    .local v11, handled:Z
    if-nez v4, :cond_a

    .line 178
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 181
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    move/from16 v28, v0

    if-eqz v28, :cond_15

    const/16 v28, 0x0

    .line 468
    :goto_14
    return v28

    .line 183
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v28, v0

    if-nez v28, :cond_436

    .line 184
    packed-switch v4, :pswitch_data_6de

    :cond_20
    :goto_20
    :pswitch_20
    move/from16 v28, v11

    .line 468
    goto :goto_14

    .line 186
    :pswitch_23
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 187
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    goto :goto_20

    .line 192
    :pswitch_3c
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_20

    .line 199
    :pswitch_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 200
    .local v15, metrics:Landroid/util/DisplayMetrics;
    move-object v0, v15

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mRightSlopEdge:F

    .line 201
    move-object v0, v15

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/MotionEvent;->recycle()V

    .line 204
    :cond_8f
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 205
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    .line 208
    .local v14, index1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 209
    .local v13, index0:I
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 210
    if-ltz v13, :cond_c4

    if-ne v13, v14, :cond_e0

    .line 212
    :cond_c4
    if-ne v13, v14, :cond_15d

    const/16 v28, -0x1

    :goto_c8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v13

    .line 213
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 215
    :cond_e0
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 217
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    move v9, v0

    .line 224
    .local v9, edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mRightSlopEdge:F

    move/from16 v22, v0

    .line 225
    .local v22, rightSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mBottomSlopEdge:F

    move v8, v0

    .line 226
    .local v8, bottomSlop:F
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 227
    .local v24, x0:F
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 228
    .local v26, y0:F
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 229
    .local v25, x1:F
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v27

    .line 231
    .local v27, y1:F
    cmpg-float v28, v24, v9

    if-ltz v28, :cond_127

    cmpg-float v28, v26, v9

    if-ltz v28, :cond_127

    cmpl-float v28, v24, v22

    if-gtz v28, :cond_127

    cmpl-float v28, v26, v8

    if-lez v28, :cond_165

    :cond_127
    const/16 v28, 0x1

    move/from16 v19, v28

    .line 233
    .local v19, p0sloppy:Z
    :goto_12b
    cmpg-float v28, v25, v9

    if-ltz v28, :cond_13b

    cmpg-float v28, v27, v9

    if-ltz v28, :cond_13b

    cmpl-float v28, v25, v22

    if-gtz v28, :cond_13b

    cmpl-float v28, v27, v8

    if-lez v28, :cond_16a

    :cond_13b
    const/16 v28, 0x1

    move/from16 v20, v28

    .line 236
    .local v20, p1sloppy:Z
    :goto_13f
    if-eqz v19, :cond_16f

    if-eqz v20, :cond_16f

    .line 237
    const/high16 v28, -0x4080

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 238
    const/high16 v28, -0x4080

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 239
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_20

    .line 212
    .end local v8           #bottomSlop:F
    .end local v9           #edgeSlop:F
    .end local v19           #p0sloppy:Z
    .end local v20           #p1sloppy:Z
    .end local v22           #rightSlop:F
    .end local v24           #x0:F
    .end local v25           #x1:F
    .end local v26           #y0:F
    .end local v27           #y1:F
    :cond_15d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    goto/16 :goto_c8

    .line 231
    .restart local v8       #bottomSlop:F
    .restart local v9       #edgeSlop:F
    .restart local v22       #rightSlop:F
    .restart local v24       #x0:F
    .restart local v25       #x1:F
    .restart local v26       #y0:F
    .restart local v27       #y1:F
    :cond_165
    const/16 v28, 0x0

    move/from16 v19, v28

    goto :goto_12b

    .line 233
    .restart local v19       #p0sloppy:Z
    :cond_16a
    const/16 v28, 0x0

    move/from16 v20, v28

    goto :goto_13f

    .line 240
    .restart local v20       #p1sloppy:Z
    :cond_16f
    if-eqz v19, :cond_195

    .line 241
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 242
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 243
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_20

    .line 244
    :cond_195
    if-eqz v20, :cond_1bb

    .line 245
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 246
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 247
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_20

    .line 249
    :cond_1bb
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_20

    .line 256
    .end local v8           #bottomSlop:F
    .end local v9           #edgeSlop:F
    .end local v13           #index0:I
    .end local v14           #index1:I
    .end local v15           #metrics:Landroid/util/DisplayMetrics;
    .end local v19           #p0sloppy:Z
    .end local v20           #p1sloppy:Z
    .end local v22           #rightSlop:F
    .end local v24           #x0:F
    .end local v25           #x1:F
    .end local v26           #y0:F
    .end local v27           #y1:F
    :pswitch_1d9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v28, v0

    if-eqz v28, :cond_20

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mEdgeSlop:F

    move v9, v0

    .line 259
    .restart local v9       #edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mRightSlopEdge:F

    move/from16 v22, v0

    .line 260
    .restart local v22       #rightSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mBottomSlopEdge:F

    move v8, v0

    .line 261
    .restart local v8       #bottomSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 262
    .restart local v13       #index0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 264
    .restart local v14       #index1:I
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 265
    .restart local v24       #x0:F
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 266
    .restart local v26       #y0:F
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 267
    .restart local v25       #x1:F
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v27

    .line 269
    .restart local v27       #y1:F
    cmpg-float v28, v24, v9

    if-ltz v28, :cond_239

    cmpg-float v28, v26, v9

    if-ltz v28, :cond_239

    cmpl-float v28, v24, v22

    if-gtz v28, :cond_239

    cmpl-float v28, v26, v8

    if-lez v28, :cond_2cd

    :cond_239
    const/16 v28, 0x1

    move/from16 v19, v28

    .line 271
    .restart local v19       #p0sloppy:Z
    :goto_23d
    cmpg-float v28, v25, v9

    if-ltz v28, :cond_24d

    cmpg-float v28, v27, v9

    if-ltz v28, :cond_24d

    cmpl-float v28, v25, v22

    if-gtz v28, :cond_24d

    cmpl-float v28, v27, v8

    if-lez v28, :cond_2d3

    :cond_24d
    const/16 v28, 0x1

    move/from16 v20, v28

    .line 274
    .restart local v20       #p1sloppy:Z
    :goto_251
    if-eqz v19, :cond_284

    .line 276
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 277
    .local v12, index:I
    if-ltz v12, :cond_284

    .line 278
    move v13, v12

    .line 279
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 280
    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 281
    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 282
    const/16 v19, 0x0

    .line 286
    .end local v12           #index:I
    :cond_284
    if-eqz v20, :cond_2b7

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 289
    .restart local v12       #index:I
    if-ltz v12, :cond_2b7

    .line 290
    move v14, v12

    .line 291
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 292
    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 293
    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v27

    .line 294
    const/16 v20, 0x0

    .line 298
    .end local v12           #index:I
    :cond_2b7
    if-eqz v19, :cond_2d9

    if-eqz v20, :cond_2d9

    .line 299
    const/high16 v28, -0x4080

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 300
    const/high16 v28, -0x4080

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_20

    .line 269
    .end local v19           #p0sloppy:Z
    .end local v20           #p1sloppy:Z
    :cond_2cd
    const/16 v28, 0x0

    move/from16 v19, v28

    goto/16 :goto_23d

    .line 271
    .restart local v19       #p0sloppy:Z
    :cond_2d3
    const/16 v28, 0x0

    move/from16 v20, v28

    goto/16 :goto_251

    .line 301
    .restart local v20       #p1sloppy:Z
    :cond_2d9
    if-eqz v19, :cond_2f7

    .line 302
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 303
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_20

    .line 304
    :cond_2f7
    if-eqz v20, :cond_315

    .line 305
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 306
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_20

    .line 308
    :cond_315
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_20

    .line 315
    .end local v8           #bottomSlop:F
    .end local v9           #edgeSlop:F
    .end local v13           #index0:I
    .end local v14           #index1:I
    .end local v19           #p0sloppy:Z
    .end local v20           #p1sloppy:Z
    .end local v22           #rightSlop:F
    .end local v24           #x0:F
    .end local v25           #x1:F
    .end local v26           #y0:F
    .end local v27           #y1:F
    :pswitch_333
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v28, v0

    if-eqz v28, :cond_20

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v21

    .line 317
    .local v21, pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 318
    .local v6, actionIndex:I
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 320
    .local v5, actionId:I
    const/16 v28, 0x2

    move/from16 v0, v21

    move/from16 v1, v28

    if-le v0, v1, :cond_3ae

    .line 321
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move v0, v5

    move/from16 v1, v28

    if-ne v0, v1, :cond_380

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v16

    .line 323
    .local v16, newIndex:I
    if-ltz v16, :cond_20

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_20

    .line 324
    .end local v16           #newIndex:I
    :cond_380
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move v0, v5

    move/from16 v1, v28

    if-ne v0, v1, :cond_20

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v16

    .line 326
    .restart local v16       #newIndex:I
    if-ltz v16, :cond_20

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    goto/16 :goto_20

    .line 330
    .end local v16           #newIndex:I
    :cond_3ae
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move v0, v5

    move/from16 v1, v28

    if-ne v0, v1, :cond_3f6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    :goto_3bf
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 332
    .restart local v12       #index:I
    if-gez v12, :cond_3fd

    .line 333
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    .line 334
    const-string v28, "ScaleGestureDetector"

    const-string v29, "Invalid MotionEvent stream detected."

    new-instance v30, Ljava/lang/Throwable;

    invoke-direct/range {v30 .. v30}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v28 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3f2

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 338
    :cond_3f2
    const/16 v28, 0x0

    goto/16 :goto_14

    .line 330
    .end local v12           #index:I
    :cond_3f6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    goto :goto_3bf

    .line 341
    .restart local v12       #index:I
    :cond_3fd
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 343
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 344
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 345
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 346
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_20

    .line 353
    .end local v5           #actionId:I
    .end local v6           #actionIndex:I
    .end local v12           #index:I
    .end local v21           #pointerCount:I
    :cond_436
    packed-switch v4, :pswitch_data_6f0

    :pswitch_439
    goto/16 :goto_20

    .line 447
    :pswitch_43b
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto/16 :goto_20

    .line 356
    :pswitch_440
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 357
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v17, v0

    .line 358
    .local v17, oldActive0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v18, v0

    .line 359
    .local v18, oldActive1:I
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 361
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 362
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    move/from16 v28, v0

    if-eqz v28, :cond_525

    move/from16 v28, v17

    :goto_470
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 364
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 366
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 367
    .restart local v13       #index0:I
    if-ltz v13, :cond_4b2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_50c

    .line 369
    :cond_4b2
    const-string v28, "ScaleGestureDetector"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Got "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " with bad state while a gesture was in progress. "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Did you forget to pass an event to "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ScaleGestureDetector#onTouchEvent?"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_529

    const/16 v28, -0x1

    :goto_4f4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v13

    .line 375
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 378
    :cond_50c
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_20

    .end local v13           #index0:I
    :cond_525
    move/from16 v28, v18

    .line 362
    goto/16 :goto_470

    .line 373
    .restart local v13       #index0:I
    :cond_529
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    goto :goto_4f4

    .line 385
    .end local v13           #index0:I
    .end local v17           #oldActive0:I
    .end local v18           #oldActive1:I
    :pswitch_530
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v21

    .line 386
    .restart local v21       #pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 387
    .restart local v6       #actionIndex:I
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 389
    .restart local v5       #actionId:I
    const/4 v10, 0x0

    .line 390
    .local v10, gestureEnded:Z
    const/16 v28, 0x2

    move/from16 v0, v21

    move/from16 v1, v28

    if-le v0, v1, :cond_681

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move v0, v5

    move/from16 v1, v28

    if-ne v0, v1, :cond_61a

    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v16

    .line 393
    .restart local v16       #newIndex:I
    if-ltz v16, :cond_618

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 395
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 396
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 397
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 398
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 416
    .end local v16           #newIndex:I
    :cond_5aa
    :goto_5aa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/MotionEvent;->recycle()V

    .line 417
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 418
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 423
    :goto_5c0
    if-eqz v10, :cond_20

    .line 425
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move v0, v5

    move/from16 v1, v28

    if-ne v0, v1, :cond_684

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move/from16 v7, v28

    .line 429
    .local v7, activeId:I
    :goto_5d8
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 430
    .restart local v12       #index:I
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 431
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 434
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 435
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 436
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    goto/16 :goto_20

    .line 401
    .end local v7           #activeId:I
    .end local v12           #index:I
    .restart local v16       #newIndex:I
    :cond_618
    const/4 v10, 0x1

    goto :goto_5aa

    .line 403
    .end local v16           #newIndex:I
    :cond_61a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move v0, v5

    move/from16 v1, v28

    if-ne v0, v1, :cond_5aa

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v16

    .line 405
    .restart local v16       #newIndex:I
    if-ltz v16, :cond_67e

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 407
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 408
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 409
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 410
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_5aa

    .line 413
    :cond_67e
    const/4 v10, 0x1

    goto/16 :goto_5aa

    .line 420
    .end local v16           #newIndex:I
    :cond_681
    const/4 v10, 0x1

    goto/16 :goto_5c0

    .line 428
    :cond_684
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v28, v0

    move/from16 v7, v28

    goto/16 :goto_5d8

    .line 442
    .end local v5           #actionId:I
    .end local v6           #actionIndex:I
    .end local v10           #gestureEnded:Z
    .end local v21           #pointerCount:I
    :pswitch_68e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 443
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto/16 :goto_20

    .line 451
    :pswitch_6a0
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrPressure:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mPrevPressure:F

    move/from16 v29, v0

    div-float v28, v28, v29

    const v29, 0x3f2b851f

    cmpl-float v28, v28, v29

    if-lez v28, :cond_20

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v23

    .line 459
    .local v23, updatePrevious:Z
    if-eqz v23, :cond_20

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/MotionEvent;->recycle()V

    .line 461
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_20

    .line 184
    nop

    :pswitch_data_6de
    .packed-switch 0x0
        :pswitch_23
        :pswitch_3c
        :pswitch_1d9
        :pswitch_20
        :pswitch_20
        :pswitch_40
        :pswitch_333
    .end packed-switch

    .line 353
    :pswitch_data_6f0
    .packed-switch 0x1
        :pswitch_43b
        :pswitch_6a0
        :pswitch_68e
        :pswitch_439
        :pswitch_440
        :pswitch_530
    .end packed-switch
.end method
