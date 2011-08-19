.class public abstract Lcom/google/android/finsky/layout/DraggableHorizontalStrip;
.super Landroid/view/ViewGroup;
.source "DraggableHorizontalStrip.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mDeceleration:F

.field private mDistanceScrolledSinceLastDown:F

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mOriginalPixelOffsetOfFirstChild:F

.field private mPixelOffsetOfFirstChild:F

.field private mScrollAnimation:Landroid/animation/Animator;

.field private final mScrollThreshold:I

.field protected mTotalChildrenWidth:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attributeSet"
    .parameter "i"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    .line 30
    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollThreshold:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 57
    .local v0, ppi:F
    const v1, 0x4490c86e

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/DraggableHorizontalStrip;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->updateFirstChildOffset(F)V

    return-void
.end method

.method private onTouchEventDown(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 108
    iput p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionX:F

    .line 109
    iput p2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionY:F

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDistanceScrolledSinceLastDown:F

    .line 111
    return-void
.end method

.method private onTouchEventMove(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 114
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionX:F

    sub-float v1, v3, p1

    .line 115
    .local v1, scrollX:F
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionY:F

    sub-float v2, v3, p2

    .line 116
    .local v2, scrollY:F
    iput p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionX:F

    .line 117
    iput p2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionY:F

    .line 119
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 120
    .local v0, distTravelledInPixels:F
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDistanceScrolledSinceLastDown:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDistanceScrolledSinceLastDown:F

    .line 122
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 123
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->requestDisallowInterceptTouchEvent(Z)V

    .line 126
    :cond_0
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 128
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    sub-float/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->updateFirstChildOffset(F)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->requestLayout()V

    .line 131
    :cond_1
    return-void
.end method

.method private onTouchEventUp(FF)V
    .locals 19
    .parameter "x"
    .parameter "velocity"

    .prologue
    .line 134
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 137
    .local v3, absVelocity:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v16, v3, v16

    if-lez v16, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_4

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v16, v0

    div-float v10, v3, v16

    .line 140
    .local v10, duration:F
    mul-float v16, v3, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v17, v0

    mul-float v17, v17, v10

    mul-float v17, v17, v10

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    sub-float v15, v16, v17

    .line 142
    .local v15, totalDistance:F
    const/16 v16, 0x0

    cmpg-float v16, p2, v16

    if-gez v16, :cond_1

    const/16 v16, 0x1

    move/from16 v12, v16

    .line 143
    .local v12, movingToLeft:Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    move/from16 v16, v0

    if-eqz v12, :cond_2

    move v0, v15

    neg-float v0, v0

    move/from16 v17, v0

    :goto_1
    add-float v16, v16, v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v13

    .line 147
    .local v13, offsetAtStop:F
    if-eqz v12, :cond_3

    .line 151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    move/from16 v16, v0

    sub-float v16, v16, v13

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getLeftEdgeOfChildOnRight(F)F

    move-result v14

    .line 157
    .local v14, target:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    move/from16 v16, v0

    sub-float v16, v16, v13

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v16

    sub-float v16, v14, v16

    add-float v15, v15, v16

    .line 159
    const/high16 v16, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    mul-float v16, v16, v15

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 p2, v0

    .line 174
    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 176
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v16, v0

    div-float v10, v3, v16

    .line 178
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->runScrollAnimation(FF)V

    .line 212
    .end local v10           #duration:F
    .end local v12           #movingToLeft:Z
    .end local v13           #offsetAtStop:F
    .end local v14           #target:F
    .end local v15           #totalDistance:F
    :cond_0
    :goto_3
    return-void

    .line 142
    .restart local v10       #duration:F
    .restart local v15       #totalDistance:F
    :cond_1
    const/16 v16, 0x0

    move/from16 v12, v16

    goto :goto_0

    .restart local v12       #movingToLeft:Z
    :cond_2
    move/from16 v17, v15

    .line 143
    goto :goto_1

    .line 164
    .restart local v13       #offsetAtStop:F
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    move/from16 v16, v0

    sub-float v16, v16, v13

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getLeftEdgeOfChildOnLeft(F)F

    move-result v14

    .line 170
    .restart local v14       #target:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    move/from16 v16, v0

    sub-float v16, v16, v13

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v16

    sub-float v16, v16, v14

    add-float v15, v15, v16

    .line 172
    const/high16 v16, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    mul-float v16, v16, v15

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 p2, v0

    goto :goto_2

    .line 181
    .end local v10           #duration:F
    .end local v12           #movingToLeft:Z
    .end local v13           #offsetAtStop:F
    .end local v14           #target:F
    .end local v15           #totalDistance:F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDistanceScrolledSinceLastDown:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollThreshold:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v16, v16, v17

    if-gtz v16, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventTriggeredTap(F)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 183
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    .line 184
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    goto :goto_3

    .line 187
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_0

    .line 189
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v6

    .line 191
    .local v6, currPos:F
    const/4 v15, 0x0

    .line 192
    .restart local v15       #totalDistance:F
    const/4 v5, 0x0

    .line 193
    .local v5, currLeft:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildCount()I

    move-result v16

    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 194
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 195
    .local v4, childView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v16

    add-int v7, v5, v16

    .line 196
    .local v7, currRight:I
    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v16, v16, v6

    if-ltz v16, :cond_8

    .line 197
    move v0, v5

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v8, v6, v16

    .line 198
    .local v8, distToLeftEdge:F
    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v9, v16, v6

    .line 199
    .local v9, distToRightEdge:F
    cmpl-float v16, v9, v8

    if-lez v16, :cond_7

    move v15, v8

    .line 206
    .end local v4           #childView:Landroid/view/View;
    .end local v7           #currRight:I
    .end local v8           #distToLeftEdge:F
    .end local v9           #distToRightEdge:F
    :cond_6
    :goto_5
    const/high16 v16, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    mul-float v16, v16, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move v3, v0

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v16, v0

    div-float v10, v3, v16

    .line 209
    .restart local v10       #duration:F
    const/16 v16, 0x0

    cmpg-float v16, v15, v16

    if-gez v16, :cond_9

    move v0, v3

    neg-float v0, v0

    move/from16 v16, v0

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->runScrollAnimation(FF)V

    goto/16 :goto_3

    .line 199
    .end local v10           #duration:F
    .restart local v4       #childView:Landroid/view/View;
    .restart local v7       #currRight:I
    .restart local v8       #distToLeftEdge:F
    .restart local v9       #distToRightEdge:F
    :cond_7
    move v0, v9

    neg-float v0, v0

    move/from16 v16, v0

    move/from16 v15, v16

    goto :goto_5

    .line 203
    .end local v8           #distToLeftEdge:F
    .end local v9           #distToRightEdge:F
    :cond_8
    move v5, v7

    .line 193
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .end local v4           #childView:Landroid/view/View;
    .end local v7           #currRight:I
    .restart local v10       #duration:F
    :cond_9
    move/from16 v16, v3

    .line 209
    goto :goto_6
.end method

.method private updateFirstChildOffset(F)V
    .locals 1
    .parameter "targetValue"

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->limitScrollPosition(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    .line 245
    return-void
.end method


# virtual methods
.method protected cancelScrolling()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 267
    :cond_0
    return-void
.end method

.method protected clampToTotalStripWidth(F)F
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 95
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move v0, p1

    .line 104
    .end local p1
    .local v0, value:F
    :goto_0
    return v0

    .line 98
    .end local v0           #value:F
    .restart local p1
    :cond_0
    :goto_1
    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    .line 99
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    add-float/2addr p1, v1

    goto :goto_1

    .line 101
    :cond_1
    :goto_2
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    .line 102
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr p1, v1

    goto :goto_2

    :cond_2
    move v0, p1

    .line 104
    .end local p1
    .restart local v0       #value:F
    goto :goto_0
.end method

.method protected createScrollAnimation(FJ)Landroid/animation/Animator;
    .locals 4
    .parameter "velocity"
    .parameter "scrollDurationMs"

    .prologue
    .line 73
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    .line 75
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    long-to-float v3, p2

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 77
    .local v0, scrolling:Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;-><init>(Lcom/google/android/finsky/layout/DraggableHorizontalStrip;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 90
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 91
    return-object v0
.end method

.method abstract getLeftEdgeOfChildOnLeft(F)F
.end method

.method abstract getLeftEdgeOfChildOnRight(F)F
.end method

.method protected getScrollPosition()F
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    return v0
.end method

.method protected limitScrollPosition(F)F
    .locals 3
    .parameter "targetValue"

    .prologue
    .line 303
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 305
    const/4 p1, 0x0

    .line 307
    :cond_0
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 308
    .local v0, maxFromRight:I
    neg-float v1, p1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 309
    neg-int v1, v0

    int-to-float p1, v1

    .line 311
    :cond_1
    return p1
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 217
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 219
    .local v0, x:F
    iget-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 220
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 240
    :goto_0
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 226
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventDown(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    .end local v0           #x:F
    .end local v1           #y:F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 230
    .restart local v0       #x:F
    .restart local v1       #y:F
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventMove(FF)V

    goto :goto_0

    .line 234
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    const v4, 0x449c4000

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 235
    iget-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventUp(FF)V

    .line 236
    iget-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 237
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onTouchEventTriggeredTap(F)Z
    .locals 1
    .parameter "x"

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method protected runScrollAnimation(FF)V
    .locals 2
    .parameter "velocity"
    .parameter "duration"

    .prologue
    .line 256
    const/high16 v0, 0x447a

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->createScrollAnimation(FJ)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollAnimation:Landroid/animation/Animator;

    .line 257
    iget-object v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 258
    return-void
.end method
