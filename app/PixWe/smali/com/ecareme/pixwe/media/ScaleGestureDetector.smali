.class public Lcom/ecareme/pixwe/media/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;,
        Lcom/ecareme/pixwe/media/ScaleGestureDetector$SimpleOnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private mBottomFingerBeginX:F

.field private mBottomFingerBeginY:F

.field private mBottomFingerCurrX:F

.field private mBottomFingerCurrY:F

.field private mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private mListener:Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;

.field private mPointerOneUp:Z

.field private mPointerTwoUp:Z

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mScaleFactor:F

.field private mTimeDelta:J

.field private mTopFingerBeginX:F

.field private mTopFingerBeginY:F

.field private mTopFingerCurrX:F

.field private mTopFingerCurrY:F

.field private mTopFingerIsPointer1:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 0
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mListener:Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;

    .line 167
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 319
    iput-object v1, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 323
    iput-object v1, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 325
    :cond_1
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 20
    .parameter "curr"

    .prologue
    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 277
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 279
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrLen:F

    .line 280
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevLen:F

    .line 281
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mScaleFactor:F

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object v9, v0

    .line 285
    .local v9, prev:Landroid/view/MotionEvent;
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 286
    .local v12, px0:F
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 287
    .local v14, py0:F
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 288
    .local v13, px1:F
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    .line 289
    .local v15, py1:F
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 290
    .local v5, cx0:F
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 291
    .local v7, cy0:F
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 292
    .local v6, cx1:F
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 294
    .local v8, cy1:F
    sub-float v10, v13, v12

    .line 295
    .local v10, pvx:F
    sub-float v11, v15, v14

    .line 296
    .local v11, pvy:F
    sub-float v3, v6, v5

    .line 297
    .local v3, cvx:F
    sub-float v4, v8, v7

    .line 298
    .local v4, cvy:F
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 299
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 300
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 301
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 303
    const/high16 v16, 0x3f00

    mul-float v16, v16, v3

    add-float v16, v16, v5

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mFocusX:F

    .line 304
    const/high16 v16, 0x3f00

    mul-float v16, v16, v4

    add-float v16, v16, v7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mFocusY:F

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTimeDelta:J

    .line 306
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

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrPressure:F

    .line 307
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

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevPressure:F

    .line 310
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerCurrX:F

    .line 311
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerCurrY:F

    .line 312
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerCurrX:F

    .line 313
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerCurrY:F

    .line 314
    return-void
.end method


# virtual methods
.method public getBottomFingerDeltaX()F
    .locals 2

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerCurrX:F

    iget v1, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerBeginX:F

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerCurrX:F

    iget v1, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerBeginX:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getBottomFingerDeltaY()F
    .locals 2

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerCurrY:F

    iget v1, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerBeginY:F

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerCurrY:F

    iget v1, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerBeginY:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getBottomFingerX()F
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerCurrX:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerCurrX:F

    goto :goto_0
.end method

.method public getBottomFingerY()F
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerCurrY:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerCurrY:F

    goto :goto_0
.end method

.method public getCurrentSpan()F
    .locals 4

    .prologue
    .line 372
    iget v2, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 373
    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 374
    .local v0, cvx:F
    iget v1, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 375
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrLen:F

    .line 377
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_0
    iget v2, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrLen:F

    return v2
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 4

    .prologue
    .line 387
    iget v2, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 388
    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 389
    .local v0, pvx:F
    iget v1, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 390
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevLen:F

    .line 392
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_0
    iget v2, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevLen:F

    return v2
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 403
    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mScaleFactor:F

    .line 406
    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .locals 2

    .prologue
    .line 416
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public getTopFingerDeltaX()F
    .locals 2

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerCurrX:F

    iget v1, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerBeginX:F

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerCurrX:F

    iget v1, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerBeginX:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getTopFingerDeltaY()F
    .locals 2

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerCurrY:F

    iget v1, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerBeginY:F

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerCurrY:F

    iget v1, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerBeginY:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getTopFingerX()F
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerCurrX:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerCurrX:F

    goto :goto_0
.end method

.method public getTopFingerY()F
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerCurrY:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerCurrY:F

    goto :goto_0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 171
    .local v0, action:I
    const/4 v1, 0x1

    .line 173
    .local v1, handled:Z
    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mGestureInProgress:Z

    if-nez v4, :cond_3

    .line 181
    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    const/16 v4, 0x105

    if-ne v0, v4, :cond_1

    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 184
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerBeginX:F

    .line 185
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerBeginY:F

    .line 186
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerBeginX:F

    .line 187
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerBeginY:F

    .line 189
    iget v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerBeginX:F

    iput v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerCurrX:F

    .line 190
    iget v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerBeginY:F

    iput v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerCurrY:F

    .line 191
    iget v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerBeginX:F

    iput v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerCurrX:F

    .line 192
    iget v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerBeginY:F

    iput v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerCurrY:F

    .line 193
    iput-boolean v7, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPointerOneUp:Z

    .line 194
    iput-boolean v7, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPointerTwoUp:Z

    .line 197
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->reset()V

    .line 200
    iget v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerBeginY:F

    iget v5, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mBottomFingerBeginY:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 201
    iput-boolean v7, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    .line 206
    :goto_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 207
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTimeDelta:J

    .line 209
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 210
    iget-object v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mListener:Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, p0}, Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/ecareme/pixwe/media/ScaleGestureDetector;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mGestureInProgress:Z

    .line 270
    :cond_1
    :goto_1
    return v1

    .line 203
    :cond_2
    iput-boolean v6, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    goto :goto_0

    .line 214
    :cond_3
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 216
    :sswitch_0
    iput-boolean v6, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPointerOneUp:Z

    .line 217
    iput-boolean v6, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPointerTwoUp:Z

    .line 219
    :sswitch_1
    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPointerOneUp:Z

    if-eqz v4, :cond_4

    .line 220
    iput-boolean v6, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPointerTwoUp:Z

    .line 222
    :cond_4
    iput-boolean v6, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPointerOneUp:Z

    .line 224
    :sswitch_2
    const/16 v4, 0x106

    if-ne v0, v4, :cond_6

    .line 225
    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPointerTwoUp:Z

    if-eqz v4, :cond_5

    .line 226
    iput-boolean v6, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPointerOneUp:Z

    .line 228
    :cond_5
    iput-boolean v6, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPointerTwoUp:Z

    .line 231
    :cond_6
    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPointerOneUp:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPointerTwoUp:Z

    if-eqz v4, :cond_1

    .line 232
    :cond_7
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 235
    const v4, 0xff00

    and-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_8

    move v2, v6

    .line 236
    .local v2, id:I
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mFocusX:F

    .line 237
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mFocusY:F

    .line 239
    iget-object v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mListener:Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, p0, v7}, Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/ecareme/pixwe/media/ScaleGestureDetector;Z)V

    .line 240
    iput-boolean v7, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mGestureInProgress:Z

    .line 242
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->reset()V

    goto :goto_1

    .end local v2           #id:I
    :cond_8
    move v2, v7

    .line 235
    goto :goto_2

    .line 247
    :sswitch_3
    iget-object v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mListener:Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, p0, v6}, Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/ecareme/pixwe/media/ScaleGestureDetector;Z)V

    .line 248
    iput-boolean v7, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mGestureInProgress:Z

    .line 250
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->reset()V

    goto :goto_1

    .line 254
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 259
    iget v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mCurrPressure:F

    iget v5, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevPressure:F

    div-float/2addr v4, v5

    const v5, 0x3f2b851f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 260
    iget-object v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mListener:Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, p0}, Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/ecareme/pixwe/media/ScaleGestureDetector;)Z

    move-result v3

    .line 262
    .local v3, updatePrevious:Z
    if-eqz v3, :cond_1

    .line 263
    iget-object v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 264
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto :goto_1

    .line 214
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x6 -> :sswitch_1
        0x106 -> :sswitch_2
    .end sparse-switch
.end method
