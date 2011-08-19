.class public Lcom/layar/ui/drag/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Lcom/layar/ui/drag/DragController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/drag/DragLayer$ScrollRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATION_SCALE_UP_DURATION:I = 0x6e

.field private static final ANIMATION_STATE_DONE:I = 0x3

.field private static final ANIMATION_STATE_RUNNING:I = 0x2

.field private static final ANIMATION_STATE_STARTING:I = 0x1

.field private static final ANIMATION_TYPE_SCALE:I = 0x1

.field private static final DRAG_SCALE:F = 24.0f

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field private static final SCROLL_DELAY:I = 0x258

.field private static final SCROLL_LEFT:I = 0x0

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field private static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final SCROLL_ZONE:I = 0x14


# instance fields
.field private mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mAnimationType:I

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragCenter:[F

.field private mDragInfo:Ljava/lang/Object;

.field private mDragPaint:Landroid/graphics/Paint;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragRegion:Landroid/graphics/RectF;

.field private mDragScroller:Lcom/layar/ui/drag/DragScroller;

.field private mDragSource:Lcom/layar/ui/drag/DragSource;

.field private mDragging:Z

.field private final mDropCoordinates:[I

.field private mEnteredRegion:Z

.field private mIgnoredDropTarget:Landroid/view/View;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/layar/ui/drag/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mListener:Lcom/layar/ui/drag/DragController$DragListener;

.field private mOriginator:Landroid/view/View;

.field private final mRect:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/layar/ui/drag/DragLayer$ScrollRunnable;

.field private mScrollState:I

.field private mShouldDrop:Z

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private final mTrashPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v1, p0, Lcom/layar/ui/drag/DragLayer;->mDragging:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mRect:Landroid/graphics/Rect;

    .line 88
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mDropCoordinates:[I

    .line 100
    iput v1, p0, Lcom/layar/ui/drag/DragLayer;->mScrollState:I

    .line 102
    new-instance v0, Lcom/layar/ui/drag/DragLayer$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/layar/ui/drag/DragLayer$ScrollRunnable;-><init>(Lcom/layar/ui/drag/DragLayer;)V

    iput-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mScrollRunnable:Lcom/layar/ui/drag/DragLayer$ScrollRunnable;

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    .line 120
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mDragCenter:[F

    .line 140
    const/4 v0, 0x3

    iput v0, p0, Lcom/layar/ui/drag/DragLayer;->mAnimationState:I

    .line 152
    return-void
.end method

.method static synthetic access$0(Lcom/layar/ui/drag/DragLayer;)Lcom/layar/ui/drag/DragScroller;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mDragScroller:Lcom/layar/ui/drag/DragScroller;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/ui/drag/DragLayer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput p1, p0, Lcom/layar/ui/drag/DragLayer;->mScrollState:I

    return-void
.end method

.method private drop(FF)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 500
    invoke-virtual {p0}, Lcom/layar/ui/drag/DragLayer;->invalidate()V

    .line 502
    iget-object v7, p0, Lcom/layar/ui/drag/DragLayer;->mDropCoordinates:[I

    .line 503
    .local v7, coordinates:[I
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {p0, v1, v2, v7}, Lcom/layar/ui/drag/DragLayer;->findDropTarget(II[I)Lcom/layar/ui/drag/DropTarget;

    move-result-object v0

    .line 505
    .local v0, dropTarget:Lcom/layar/ui/drag/DropTarget;
    if-eqz v0, :cond_1

    .line 506
    iget-object v1, p0, Lcom/layar/ui/drag/DragLayer;->mDragSource:Lcom/layar/ui/drag/DragSource;

    aget v2, v7, v9

    aget v3, v7, v8

    .line 507
    iget v4, p0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/layar/ui/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    .line 506
    invoke-interface/range {v0 .. v6}, Lcom/layar/ui/drag/DropTarget;->onDragExit(Lcom/layar/ui/drag/DragSource;IIIILjava/lang/Object;)V

    .line 508
    iget-object v1, p0, Lcom/layar/ui/drag/DragLayer;->mDragSource:Lcom/layar/ui/drag/DragSource;

    aget v2, v7, v9

    aget v3, v7, v8

    .line 509
    iget v4, p0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/layar/ui/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    .line 508
    invoke-interface/range {v0 .. v6}, Lcom/layar/ui/drag/DropTarget;->acceptDrop(Lcom/layar/ui/drag/DragSource;IIIILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/layar/ui/drag/DragLayer;->mDragSource:Lcom/layar/ui/drag/DragSource;

    aget v2, v7, v9

    aget v3, v7, v8

    .line 511
    iget v4, p0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/layar/ui/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    .line 510
    invoke-interface/range {v0 .. v6}, Lcom/layar/ui/drag/DropTarget;->onDrop(Lcom/layar/ui/drag/DragSource;IIIILjava/lang/Object;)V

    .line 512
    iget-object v1, p0, Lcom/layar/ui/drag/DragLayer;->mDragSource:Lcom/layar/ui/drag/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/layar/ui/drag/DropTarget;
    invoke-interface {v1, v0, v8}, Lcom/layar/ui/drag/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v8

    .line 519
    :goto_0
    return v1

    .line 515
    .restart local v0       #dropTarget:Lcom/layar/ui/drag/DropTarget;
    :cond_0
    iget-object v1, p0, Lcom/layar/ui/drag/DragLayer;->mDragSource:Lcom/layar/ui/drag/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/layar/ui/drag/DropTarget;
    invoke-interface {v1, v0, v9}, Lcom/layar/ui/drag/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v8

    .line 516
    goto :goto_0

    .restart local v0       #dropTarget:Lcom/layar/ui/drag/DropTarget;
    :cond_1
    move v1, v9

    .line 519
    goto :goto_0
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-boolean v0, p0, Lcom/layar/ui/drag/DragLayer;->mDragging:Z

    if-eqz v0, :cond_2

    .line 291
    iput-boolean v1, p0, Lcom/layar/ui/drag/DragLayer;->mDragging:Z

    .line 292
    iget-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mListener:Lcom/layar/ui/drag/DragController$DragListener;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mListener:Lcom/layar/ui/drag/DragController$DragListener;

    invoke-interface {v0}, Lcom/layar/ui/drag/DragController$DragListener;->onDragEnd()V

    .line 302
    :cond_2
    return-void
.end method

.method private findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/layar/ui/drag/DropTarget;
    .locals 20
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 528
    .local v16, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 529
    .local v13, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    add-int v17, p2, v6

    .line 530
    .local v17, scrolledX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    add-int v18, p3, v6

    .line 531
    .local v18, scrolledY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    move-object v15, v0

    .line 533
    .local v15, ignoredDropTarget:Landroid/view/View;
    const/4 v6, 0x1

    sub-int v14, v13, v6

    .end local v13           #count:I
    .local v14, i:I
    :goto_0
    if-gez v14, :cond_0

    .line 563
    const/4 v6, 0x0

    :goto_1
    return-object v6

    .line 534
    :cond_0
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 535
    .local v12, child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    if-eq v12, v15, :cond_4

    .line 536
    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 537
    invoke-virtual/range {v16 .. v18}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 538
    const/16 v19, 0x0

    .line 539
    .local v19, target:Lcom/layar/ui/drag/DropTarget;
    instance-of v6, v12, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 540
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int p2, v17, v6

    .line 541
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int p3, v18, v6

    .line 542
    move-object v0, v12

    check-cast v0, Landroid/view/ViewGroup;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/ui/drag/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/layar/ui/drag/DropTarget;

    move-result-object v19

    .line 544
    :cond_1
    if-nez v19, :cond_3

    .line 545
    instance-of v6, v12, Lcom/layar/ui/drag/DropTarget;

    if-eqz v6, :cond_4

    .line 547
    move-object v0, v12

    check-cast v0, Lcom/layar/ui/drag/DropTarget;

    move-object v5, v0

    .line 548
    .local v5, childTarget:Lcom/layar/ui/drag/DropTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragSource:Lcom/layar/ui/drag/DragSource;

    move-object v6, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-interface/range {v5 .. v11}, Lcom/layar/ui/drag/DropTarget;->acceptDrop(Lcom/layar/ui/drag/DragSource;IIIILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 549
    const/4 v6, 0x0

    aput p2, p4, v6

    .line 550
    const/4 v6, 0x1

    aput p3, p4, v6

    .line 551
    check-cast v12, Lcom/layar/ui/drag/DropTarget;

    .end local v12           #child:Landroid/view/View;
    move-object v6, v12

    goto :goto_1

    .line 553
    .restart local v12       #child:Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .end local v5           #childTarget:Lcom/layar/ui/drag/DropTarget;
    :cond_3
    move-object/from16 v6, v19

    .line 557
    goto :goto_1

    .line 533
    .end local v19           #target:Lcom/layar/ui/drag/DropTarget;
    :cond_4
    add-int/lit8 v14, v14, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v5, 0x2

    const/high16 v9, 0x4000

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 242
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 244
    iget-boolean v3, p0, Lcom/layar/ui/drag/DragLayer;->mDragging:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/layar/ui/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 245
    iget v3, p0, Lcom/layar/ui/drag/DragLayer;->mAnimationState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/layar/ui/drag/DragLayer;->mAnimationStartTime:J

    .line 247
    iput v5, p0, Lcom/layar/ui/drag/DragLayer;->mAnimationState:I

    .line 250
    :cond_0
    iget v3, p0, Lcom/layar/ui/drag/DragLayer;->mAnimationState:I

    if-ne v3, v5, :cond_3

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/layar/ui/drag/DragLayer;->mAnimationStartTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    .line 252
    iget v4, p0, Lcom/layar/ui/drag/DragLayer;->mAnimationDuration:I

    int-to-float v4, v4

    .line 251
    div-float v1, v3, v4

    .line 253
    .local v1, normalized:F
    cmpl-float v3, v1, v7

    if-ltz v3, :cond_1

    .line 254
    const/4 v3, 0x3

    iput v3, p0, Lcom/layar/ui/drag/DragLayer;->mAnimationState:I

    .line 256
    :cond_1
    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 257
    iget v3, p0, Lcom/layar/ui/drag/DragLayer;->mAnimationFrom:F

    iget v4, p0, Lcom/layar/ui/drag/DragLayer;->mAnimationTo:F

    iget v5, p0, Lcom/layar/ui/drag/DragLayer;->mAnimationFrom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float v2, v3, v4

    .line 259
    .local v2, value:F
    iget v3, p0, Lcom/layar/ui/drag/DragLayer;->mAnimationType:I

    packed-switch v3, :pswitch_data_0

    .line 287
    .end local v1           #normalized:F
    .end local v2           #value:F
    :cond_2
    :goto_0
    return-void

    .line 261
    .restart local v1       #normalized:F
    .restart local v2       #value:F
    :pswitch_0
    iget-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 262
    .local v0, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 263
    iget v3, p0, Lcom/layar/ui/drag/DragLayer;->mLastMotionX:F

    iget v4, p0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/layar/ui/drag/DragLayer;->mBitmapOffsetX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 264
    iget v4, p0, Lcom/layar/ui/drag/DragLayer;->mLastMotionY:F

    iget v5, p0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/layar/ui/drag/DragLayer;->mBitmapOffsetY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 263
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 265
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v7, v2

    mul-float/2addr v3, v4

    div-float/2addr v3, v9

    .line 266
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v7, v2

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    .line 265
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 267
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 268
    iget-object v3, p0, Lcom/layar/ui/drag/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 269
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 282
    .end local v0           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v1           #normalized:F
    .end local v2           #value:F
    :cond_3
    iget-object v3, p0, Lcom/layar/ui/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 283
    iget v4, p0, Lcom/layar/ui/drag/DragLayer;->mLastMotionX:F

    iget v5, p0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/layar/ui/drag/DragLayer;->mBitmapOffsetX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 284
    iget v5, p0, Lcom/layar/ui/drag/DragLayer;->mLastMotionY:F

    iget v6, p0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/layar/ui/drag/DragLayer;->mBitmapOffsetY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/layar/ui/drag/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 282
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/layar/ui/drag/DragLayer;->mDragging:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method findDropTarget(II[I)Lcom/layar/ui/drag/DropTarget;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 523
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/layar/ui/drag/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/layar/ui/drag/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 308
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 309
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 311
    .local v2, y:F
    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/layar/ui/drag/DragLayer;->mDragging:Z

    return v3

    .line 317
    :pswitch_1
    iput v1, p0, Lcom/layar/ui/drag/DragLayer;->mLastMotionX:F

    .line 318
    iput v2, p0, Lcom/layar/ui/drag/DragLayer;->mLastMotionY:F

    .line 319
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/layar/ui/drag/DragLayer;->mLastDropTarget:Lcom/layar/ui/drag/DropTarget;

    goto :goto_0

    .line 324
    :pswitch_2
    iget-boolean v3, p0, Lcom/layar/ui/drag/DragLayer;->mShouldDrop:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/layar/ui/drag/DragLayer;->drop(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/layar/ui/drag/DragLayer;->mShouldDrop:Z

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/layar/ui/drag/DragLayer;->endDrag()V

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .parameter "ev"

    .prologue
    .line 336
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragging:Z

    move v6, v0

    if-nez v6, :cond_0

    .line 337
    const/4 v6, 0x0

    .line 496
    :goto_0
    return v6

    .line 340
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 341
    .local v13, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    .line 342
    .local v28, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v29

    .line 344
    .local v29, y:F
    packed-switch v13, :pswitch_data_0

    .line 496
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 348
    :pswitch_0
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mLastMotionX:F

    .line 349
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mLastMotionY:F

    .line 351
    const/high16 v6, 0x41a0

    cmpg-float v6, v28, v6

    if-ltz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/layar/ui/drag/DragLayer;->getWidth()I

    move-result v6

    const/16 v7, 0x14

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v28, v6

    if-lez v6, :cond_3

    .line 352
    :cond_2
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mScrollState:I

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mScrollRunnable:Lcom/layar/ui/drag/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/ui/drag/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 355
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mScrollState:I

    goto :goto_1

    .line 361
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetX:F

    move/from16 v25, v0

    .line 362
    .local v25, touchX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetY:F

    move/from16 v26, v0

    .line 364
    .local v26, touchY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mBitmapOffsetX:I

    move/from16 v20, v0

    .line 365
    .local v20, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mBitmapOffsetY:I

    move/from16 v21, v0

    .line 367
    .local v21, offsetY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mLastMotionX:F

    move v6, v0

    sub-float v6, v6, v25

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v19, v0

    .line 368
    .local v19, left:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mLastMotionY:F

    move v6, v0

    sub-float v6, v6, v26

    move/from16 v0, v21

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v24, v0

    .line 370
    .local v24, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v15, v0

    .line 371
    .local v15, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    .line 372
    .local v27, width:I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 374
    .local v16, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    .line 375
    .local v22, rect:Landroid/graphics/Rect;
    const/4 v6, 0x1

    sub-int v6, v19, v6

    const/4 v7, 0x1

    sub-int v7, v24, v7

    add-int v8, v19, v27

    add-int/lit8 v8, v8, 0x1

    add-int v9, v24, v16

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v22

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 377
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mLastMotionX:F

    .line 378
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mLastMotionY:F

    .line 380
    sub-float v6, v28, v25

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v19, v0

    .line 381
    sub-float v6, v29, v26

    move/from16 v0, v21

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v24, v0

    .line 384
    const/4 v6, 0x1

    sub-int v6, v19, v6

    const/4 v7, 0x1

    sub-int v7, v24, v7

    add-int v8, v19, v27

    add-int/lit8 v8, v8, 0x1

    add-int v9, v24, v16

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v22

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragCenter:[F

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    aput v8, v6, v7

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragCenter:[F

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    aput v8, v6, v7

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDropCoordinates:[I

    move-object v14, v0

    .line 397
    .local v14, coordinates:[I
    move/from16 v0, v28

    float-to-int v0, v0

    move v6, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move v7, v0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/ui/drag/DragLayer;->findDropTarget(II[I)Lcom/layar/ui/drag/DropTarget;

    move-result-object v5

    .line 398
    .local v5, dropTarget:Lcom/layar/ui/drag/DropTarget;
    if-eqz v5, :cond_8

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mLastDropTarget:Lcom/layar/ui/drag/DropTarget;

    move-object v6, v0

    if-ne v6, v5, :cond_6

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragSource:Lcom/layar/ui/drag/DragSource;

    move-object v6, v0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    .line 401
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetX:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetY:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    .line 400
    invoke-interface/range {v5 .. v11}, Lcom/layar/ui/drag/DropTarget;->onDragOver(Lcom/layar/ui/drag/DragSource;IIIILjava/lang/Object;)V

    .line 444
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/layar/ui/drag/DragLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 446
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ui/drag/DragLayer;->mLastDropTarget:Lcom/layar/ui/drag/DropTarget;

    .line 448
    const/16 v17, 0x0

    .line 449
    .local v17, inDragRegion:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    move-object v6, v0

    if-eqz v6, :cond_5

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    .line 451
    .local v23, region:Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    move-object/from16 v0, v23

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v18

    .line 452
    .local v18, inRegion:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/layar/ui/drag/DragLayer;->mEnteredRegion:Z

    move v6, v0

    if-nez v6, :cond_9

    if-eqz v18, :cond_9

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ui/drag/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 454
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/layar/ui/drag/DragLayer;->mEnteredRegion:Z

    .line 455
    const/16 v17, 0x1

    .line 462
    .end local v18           #inRegion:Z
    .end local v23           #region:Landroid/graphics/RectF;
    :cond_5
    :goto_3
    if-nez v17, :cond_a

    const/high16 v6, 0x41a0

    cmpg-float v6, v28, v6

    if-gez v6, :cond_a

    .line 463
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mScrollState:I

    move v6, v0

    if-nez v6, :cond_1

    .line 464
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mScrollState:I

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mScrollRunnable:Lcom/layar/ui/drag/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/layar/ui/drag/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mScrollRunnable:Lcom/layar/ui/drag/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/ui/drag/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 403
    .end local v17           #inDragRegion:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mLastDropTarget:Lcom/layar/ui/drag/DropTarget;

    move-object v6, v0

    if-eqz v6, :cond_7

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mLastDropTarget:Lcom/layar/ui/drag/DropTarget;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragSource:Lcom/layar/ui/drag/DragSource;

    move-object v7, v0

    const/4 v8, 0x0

    aget v8, v14, v8

    const/4 v9, 0x1

    aget v9, v14, v9

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetX:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetY:F

    move v11, v0

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v12, v0

    .line 404
    invoke-interface/range {v6 .. v12}, Lcom/layar/ui/drag/DropTarget;->onDragExit(Lcom/layar/ui/drag/DragSource;IIIILjava/lang/Object;)V

    .line 407
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragSource:Lcom/layar/ui/drag/DragSource;

    move-object v6, v0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    .line 408
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetX:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetY:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    .line 407
    invoke-interface/range {v5 .. v11}, Lcom/layar/ui/drag/DropTarget;->onDragEnter(Lcom/layar/ui/drag/DragSource;IIIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 411
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mLastDropTarget:Lcom/layar/ui/drag/DropTarget;

    move-object v6, v0

    if-eqz v6, :cond_4

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mLastDropTarget:Lcom/layar/ui/drag/DropTarget;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragSource:Lcom/layar/ui/drag/DragSource;

    move-object v7, v0

    const/4 v8, 0x0

    aget v8, v14, v8

    const/4 v9, 0x1

    aget v9, v14, v9

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetX:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetY:F

    move v11, v0

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v12, v0

    .line 412
    invoke-interface/range {v6 .. v12}, Lcom/layar/ui/drag/DropTarget;->onDragExit(Lcom/layar/ui/drag/DragSource;IIIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 456
    .restart local v17       #inDragRegion:Z
    .restart local v18       #inRegion:Z
    .restart local v23       #region:Landroid/graphics/RectF;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/layar/ui/drag/DragLayer;->mEnteredRegion:Z

    move v6, v0

    if-eqz v6, :cond_5

    if-nez v18, :cond_5

    .line 457
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ui/drag/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 458
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/layar/ui/drag/DragLayer;->mEnteredRegion:Z

    goto/16 :goto_3

    .line 468
    .end local v18           #inRegion:Z
    .end local v23           #region:Landroid/graphics/RectF;
    :cond_a
    if-nez v17, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/layar/ui/drag/DragLayer;->getWidth()I

    move-result v6

    const/16 v7, 0x14

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v28, v6

    if-lez v6, :cond_b

    .line 469
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mScrollState:I

    move v6, v0

    if-nez v6, :cond_1

    .line 470
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mScrollState:I

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mScrollRunnable:Lcom/layar/ui/drag/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/layar/ui/drag/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mScrollRunnable:Lcom/layar/ui/drag/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/ui/drag/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 475
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mScrollState:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 476
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mScrollState:I

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mScrollRunnable:Lcom/layar/ui/drag/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/layar/ui/drag/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mScrollRunnable:Lcom/layar/ui/drag/DragLayer$ScrollRunnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/layar/ui/drag/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 484
    .end local v5           #dropTarget:Lcom/layar/ui/drag/DropTarget;
    .end local v14           #coordinates:[I
    .end local v15           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v16           #height:I
    .end local v17           #inDragRegion:Z
    .end local v19           #left:I
    .end local v20           #offsetX:I
    .end local v21           #offsetY:I
    .end local v22           #rect:Landroid/graphics/Rect;
    .end local v24           #top:I
    .end local v25           #touchX:F
    .end local v26           #touchY:F
    .end local v27           #width:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mScrollRunnable:Lcom/layar/ui/drag/DragLayer$ScrollRunnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/layar/ui/drag/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 485
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/layar/ui/drag/DragLayer;->mShouldDrop:Z

    move v6, v0

    if-eqz v6, :cond_c

    .line 486
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/layar/ui/drag/DragLayer;->drop(FF)Z

    .line 487
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/layar/ui/drag/DragLayer;->mShouldDrop:Z

    .line 489
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/layar/ui/drag/DragLayer;->endDrag()V

    goto/16 :goto_1

    .line 493
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/layar/ui/drag/DragLayer;->endDrag()V

    goto/16 :goto_1

    .line 344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDragListener(Lcom/layar/ui/drag/DragController$DragListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/ui/drag/DragLayer;->mListener:Lcom/layar/ui/drag/DragController$DragListener;

    .line 576
    return-void
.end method

.method setDeleteRegion(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 594
    iput-object p1, p0, Lcom/layar/ui/drag/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    .line 595
    return-void
.end method

.method public setDragListener(Lcom/layar/ui/drag/DragController$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/layar/ui/drag/DragLayer;->mListener:Lcom/layar/ui/drag/DragController$DragListener;

    .line 572
    return-void
.end method

.method public setDragScoller(Lcom/layar/ui/drag/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 567
    iput-object p1, p0, Lcom/layar/ui/drag/DragLayer;->mDragScroller:Lcom/layar/ui/drag/DragScroller;

    .line 568
    return-void
.end method

.method setIgnoredDropTarget(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/layar/ui/drag/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    .line 586
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/layar/ui/drag/DragSource;Ljava/lang/Object;I)V
    .locals 17
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v6, v0

    if-nez v6, :cond_0

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/layar/ui/drag/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 161
    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ui/drag/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/layar/ui/drag/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mListener:Lcom/layar/ui/drag/DragController$DragListener;

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mListener:Lcom/layar/ui/drag/DragController$DragListener;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/layar/ui/drag/DragController$DragListener;->onDragStart(Landroid/view/View;Lcom/layar/ui/drag/DragSource;Ljava/lang/Object;I)V

    .line 170
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragRect:Landroid/graphics/Rect;

    move-object v14, v0

    .line 171
    .local v14, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v14, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 173
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/layar/ui/drag/DragLayer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mLastMotionX:F

    move v6, v0

    iget v7, v14, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetX:F

    .line 175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/drag/DragLayer;->mLastMotionY:F

    move v6, v0

    iget v7, v14, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mTouchOffsetY:F

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 178
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v16

    .line 181
    .local v16, willNotCache:Z
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v12

    .line 186
    .local v12, color:I
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 188
    if-eqz v12, :cond_2

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 191
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->buildDrawingCache()V

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 193
    .local v5, viewBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 194
    .local v8, width:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 199
    .local v9, height:I
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 200
    .local v10, scale:Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v15, v6

    .line 201
    .local v15, scaleFactor:F
    const/high16 v6, 0x41c0

    add-float/2addr v6, v15

    div-float v15, v6, v15

    .line 202
    invoke-virtual {v10, v15, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 204
    const/high16 v6, 0x3f80

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mAnimationTo:F

    .line 205
    const/high16 v6, 0x3f80

    div-float/2addr v6, v15

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mAnimationFrom:F

    .line 206
    const/16 v6, 0x6e

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mAnimationDuration:I

    .line 207
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mAnimationState:I

    .line 208
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mAnimationType:I

    .line 210
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ui/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 212
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 213
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/drag/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v13, v0

    .line 216
    .local v13, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mBitmapOffsetX:I

    .line 217
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x2

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/ui/drag/DragLayer;->mBitmapOffsetY:I

    .line 219
    if-nez p4, :cond_3

    .line 220
    const/16 v6, 0x8

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ui/drag/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 224
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/layar/ui/drag/DragLayer;->mDragging:Z

    .line 225
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/layar/ui/drag/DragLayer;->mShouldDrop:Z

    .line 226
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ui/drag/DragLayer;->mOriginator:Landroid/view/View;

    .line 227
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ui/drag/DragLayer;->mDragSource:Lcom/layar/ui/drag/DragSource;

    .line 228
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ui/drag/DragLayer;->mDragInfo:Ljava/lang/Object;

    .line 230
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/layar/ui/drag/DragLayer;->mEnteredRegion:Z

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/layar/ui/drag/DragLayer;->invalidate()V

    .line 233
    return-void
.end method
