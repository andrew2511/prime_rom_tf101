.class public Lcom/google/android/common/gesture/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# instance fields
.field private mBottomSlopEdge:F

.field private mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private mEdgeSlop:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private mListener:Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;

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
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 133
    .local v0, config:Landroid/view/ViewConfiguration;
    iput-object p1, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mListener:Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;

    .line 135
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mEdgeSlop:F

    .line 136
    return-void
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .locals 3
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float v0, v1, v2

    .line 287
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .locals 3
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float v0, v1, v2

    .line 296
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 337
    iget-object v0, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 339
    iput-object v2, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 343
    iput-object v2, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 345
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    .line 346
    iput-boolean v1, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mGestureInProgress:Z

    .line 347
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 20
    .parameter "curr"

    .prologue
    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 303
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 305
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrLen:F

    .line 306
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevLen:F

    .line 307
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mScaleFactor:F

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object v9, v0

    .line 311
    .local v9, prev:Landroid/view/MotionEvent;
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 312
    .local v12, px0:F
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 313
    .local v14, py0:F
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 314
    .local v13, px1:F
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    .line 315
    .local v15, py1:F
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 316
    .local v5, cx0:F
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 317
    .local v7, cy0:F
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 318
    .local v6, cx1:F
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 320
    .local v8, cy1:F
    sub-float v10, v13, v12

    .line 321
    .local v10, pvx:F
    sub-float v11, v15, v14

    .line 322
    .local v11, pvy:F
    sub-float v3, v6, v5

    .line 323
    .local v3, cvx:F
    sub-float v4, v8, v7

    .line 324
    .local v4, cvy:F
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 325
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 326
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 327
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 329
    const/high16 v16, 0x3f00

    mul-float v16, v16, v3

    add-float v16, v16, v5

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusX:F

    .line 330
    const/high16 v16, 0x3f00

    mul-float v16, v16, v4

    add-float v16, v16, v7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusY:F

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/common/gesture/ScaleGestureDetector;->mTimeDelta:J

    .line 332
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v16

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v17

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrPressure:F

    .line 333
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v16

    const/16 v17, 0x1

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v17

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevPressure:F

    .line 334
    return-void
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 4

    .prologue
    .line 396
    iget v2, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 397
    iget v0, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 398
    .local v0, cvx:F
    iget v1, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 399
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrLen:F

    .line 401
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_0
    iget v2, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrLen:F

    return v2
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 4

    .prologue
    .line 411
    iget v2, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 412
    iget v0, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 413
    .local v0, pvx:F
    iget v1, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 414
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevLen:F

    .line 416
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_0
    iget v2, p0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevLen:F

    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 140
    .local v3, action:I
    const/4 v6, 0x1

    .line 142
    .local v6, handled:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v17, v0

    if-nez v17, :cond_14

    .line 143
    const/16 v17, 0x5

    move v0, v3

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    const/16 v17, 0x105

    move v0, v3

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 151
    .local v8, metrics:Landroid/util/DisplayMetrics;
    move-object v0, v8

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mEdgeSlop:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mRightSlopEdge:F

    .line 152
    move-object v0, v8

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mEdgeSlop:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/google/android/common/gesture/ScaleGestureDetector;->reset()V

    .line 157
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 158
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/common/gesture/ScaleGestureDetector;->mTimeDelta:J

    .line 160
    invoke-direct/range {p0 .. p1}, Lcom/google/android/common/gesture/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mEdgeSlop:F

    move v5, v0

    .line 167
    .local v5, edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mRightSlopEdge:F

    move v11, v0

    .line 168
    .local v11, rightSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mBottomSlopEdge:F

    move v4, v0

    .line 169
    .local v4, bottomSlop:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 170
    .local v13, x0:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    .line 171
    .local v15, y0:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/common/gesture/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v14

    .line 172
    .local v14, x1:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/common/gesture/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 174
    .local v16, y1:F
    cmpg-float v17, v13, v5

    if-ltz v17, :cond_1

    cmpg-float v17, v15, v5

    if-ltz v17, :cond_1

    cmpl-float v17, v13, v11

    if-gtz v17, :cond_1

    cmpl-float v17, v15, v4

    if-lez v17, :cond_4

    :cond_1
    const/16 v17, 0x1

    move/from16 v9, v17

    .line 176
    .local v9, p0sloppy:Z
    :goto_0
    cmpg-float v17, v14, v5

    if-ltz v17, :cond_2

    cmpg-float v17, v16, v5

    if-ltz v17, :cond_2

    cmpl-float v17, v14, v11

    if-gtz v17, :cond_2

    cmpl-float v17, v16, v4

    if-lez v17, :cond_5

    :cond_2
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 179
    .local v10, p1sloppy:Z
    :goto_1
    if-eqz v9, :cond_6

    if-eqz v10, :cond_6

    .line 180
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusX:F

    .line 181
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusY:F

    .line 182
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    .line 278
    .end local v4           #bottomSlop:F
    .end local v5           #edgeSlop:F
    .end local v8           #metrics:Landroid/util/DisplayMetrics;
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    .end local v11           #rightSlop:F
    .end local v13           #x0:F
    .end local v14           #x1:F
    .end local v15           #y0:F
    .end local v16           #y1:F
    :cond_3
    :goto_2
    return v6

    .line 174
    .restart local v4       #bottomSlop:F
    .restart local v5       #edgeSlop:F
    .restart local v8       #metrics:Landroid/util/DisplayMetrics;
    .restart local v11       #rightSlop:F
    .restart local v13       #x0:F
    .restart local v14       #x1:F
    .restart local v15       #y0:F
    .restart local v16       #y1:F
    :cond_4
    const/16 v17, 0x0

    move/from16 v9, v17

    goto :goto_0

    .line 176
    .restart local v9       #p0sloppy:Z
    :cond_5
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_1

    .line 183
    .restart local v10       #p1sloppy:Z
    :cond_6
    if-eqz v9, :cond_7

    .line 184
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusX:F

    .line 185
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusY:F

    .line 186
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    goto :goto_2

    .line 187
    :cond_7
    if-eqz v10, :cond_8

    .line 188
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusX:F

    .line 189
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusY:F

    .line 190
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    goto :goto_2

    .line 192
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mListener:Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/google/android/common/gesture/ScaleGestureDetector;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mGestureInProgress:Z

    goto :goto_2

    .line 194
    .end local v4           #bottomSlop:F
    .end local v5           #edgeSlop:F
    .end local v8           #metrics:Landroid/util/DisplayMetrics;
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    .end local v11           #rightSlop:F
    .end local v13           #x0:F
    .end local v14           #x1:F
    .end local v15           #y0:F
    .end local v16           #y1:F
    :cond_9
    const/16 v17, 0x2

    move v0, v3

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mEdgeSlop:F

    move v5, v0

    .line 197
    .restart local v5       #edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mRightSlopEdge:F

    move v11, v0

    .line 198
    .restart local v11       #rightSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mBottomSlopEdge:F

    move v4, v0

    .line 199
    .restart local v4       #bottomSlop:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 200
    .restart local v13       #x0:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    .line 201
    .restart local v15       #y0:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/common/gesture/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v14

    .line 202
    .restart local v14       #x1:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/common/gesture/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 204
    .restart local v16       #y1:F
    cmpg-float v17, v13, v5

    if-ltz v17, :cond_a

    cmpg-float v17, v15, v5

    if-ltz v17, :cond_a

    cmpl-float v17, v13, v11

    if-gtz v17, :cond_a

    cmpl-float v17, v15, v4

    if-lez v17, :cond_c

    :cond_a
    const/16 v17, 0x1

    move/from16 v9, v17

    .line 206
    .restart local v9       #p0sloppy:Z
    :goto_3
    cmpg-float v17, v14, v5

    if-ltz v17, :cond_b

    cmpg-float v17, v16, v5

    if-ltz v17, :cond_b

    cmpl-float v17, v14, v11

    if-gtz v17, :cond_b

    cmpl-float v17, v16, v4

    if-lez v17, :cond_d

    :cond_b
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 209
    .restart local v10       #p1sloppy:Z
    :goto_4
    if-eqz v9, :cond_e

    if-eqz v10, :cond_e

    .line 210
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusX:F

    .line 211
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_2

    .line 204
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    :cond_c
    const/16 v17, 0x0

    move/from16 v9, v17

    goto :goto_3

    .line 206
    .restart local v9       #p0sloppy:Z
    :cond_d
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_4

    .line 212
    .restart local v10       #p1sloppy:Z
    :cond_e
    if-eqz v9, :cond_f

    .line 213
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusX:F

    .line 214
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_2

    .line 215
    :cond_f
    if-eqz v10, :cond_10

    .line 216
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusX:F

    .line 217
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_2

    .line 219
    :cond_10
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mListener:Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/google/android/common/gesture/ScaleGestureDetector;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_2

    .line 222
    .end local v4           #bottomSlop:F
    .end local v5           #edgeSlop:F
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    .end local v11           #rightSlop:F
    .end local v13           #x0:F
    .end local v14           #x1:F
    .end local v15           #y0:F
    .end local v16           #y1:F
    :cond_11
    const/16 v17, 0x6

    move v0, v3

    move/from16 v1, v17

    if-eq v0, v1, :cond_12

    const/16 v17, 0x106

    move v0, v3

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 226
    const v17, 0xff00

    and-int v17, v17, v3

    shr-int/lit8 v17, v17, 0x8

    if-nez v17, :cond_13

    const/16 v17, 0x1

    move/from16 v7, v17

    .line 228
    .local v7, id:I
    :goto_5
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusX:F

    .line 229
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_2

    .line 226
    .end local v7           #id:I
    :cond_13
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_5

    .line 233
    :cond_14
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    .line 262
    :sswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/common/gesture/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mCurrPressure:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevPressure:F

    move/from16 v18, v0

    div-float v17, v17, v18

    const v18, 0x3f2b851f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_3

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mListener:Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/google/android/common/gesture/ScaleGestureDetector;)Z

    move-result v12

    .line 270
    .local v12, updatePrevious:Z
    if-eqz v12, :cond_3

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->recycle()V

    .line 272
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_2

    .line 237
    .end local v12           #updatePrevious:Z
    :sswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/common/gesture/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 240
    const v17, 0xff00

    and-int v17, v17, v3

    shr-int/lit8 v17, v17, 0x8

    if-nez v17, :cond_16

    const/16 v17, 0x1

    move/from16 v7, v17

    .line 243
    .restart local v7       #id:I
    :goto_6
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusX:F

    .line 244
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/gesture/ScaleGestureDetector;->mFocusY:F

    .line 246
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-nez v17, :cond_15

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mListener:Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/google/android/common/gesture/ScaleGestureDetector;)V

    .line 250
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/common/gesture/ScaleGestureDetector;->reset()V

    goto/16 :goto_2

    .line 240
    .end local v7           #id:I
    :cond_16
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_6

    .line 254
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-nez v17, :cond_17

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gesture/ScaleGestureDetector;->mListener:Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/google/android/common/gesture/ScaleGestureDetector;)V

    .line 258
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/common/gesture/ScaleGestureDetector;->reset()V

    goto/16 :goto_2

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0x106 -> :sswitch_1
    .end sparse-switch
.end method
