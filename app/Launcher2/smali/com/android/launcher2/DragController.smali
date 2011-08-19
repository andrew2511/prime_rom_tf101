.class public Lcom/android/launcher2/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragController$ScrollRunnable;,
        Lcom/android/launcher2/DragController$DragListener;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I

.field public static DRAG_ACTION_MOVE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoordinatesTemp:[I

.field private mDeleteRegion:Landroid/graphics/RectF;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDistanceSinceScroll:I

.field private mDragInfo:Ljava/lang/Object;

.field private mDragScroller:Lcom/android/launcher2/DragScroller;

.field private mDragSource:Lcom/android/launcher2/DragSource;

.field private mDragView:Lcom/android/launcher2/DragView;

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/android/launcher2/DropTarget;

.field private mLastTouch:[I

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:F

.field private mMotionDownY:F

.field private mMoveTarget:Landroid/view/View;

.field private mOriginator:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    .line 50
    const/4 v0, 0x1

    sput v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mVibrator:Landroid/os/Vibrator;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 70
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 82
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    .line 121
    iput v1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 122
    new-instance v0, Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/android/launcher2/DragController$ScrollRunnable;-><init>(Lcom/android/launcher2/DragController;)V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    .line 129
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    .line 130
    iput v1, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    .line 159
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mContext:Landroid/content/Context;

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/DragController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/DragController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    return p1
.end method

.method private static clamp(III)I
    .locals 1
    .parameter "val"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 642
    if-ge p0, p1, :cond_0

    move v0, p1

    .line 647
    :goto_0
    return v0

    .line 644
    :cond_0
    if-lt p0, p2, :cond_1

    .line 645
    const/4 v0, 0x1

    sub-int v0, p2, v0

    goto :goto_0

    :cond_1
    move v0, p0

    .line 647
    goto :goto_0
.end method

.method private drop(FF)V
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 578
    iget-object v9, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 579
    .local v9, coordinates:[I
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2, v9}, Lcom/android/launcher2/DragController;->findDropTarget(II[I)Lcom/android/launcher2/DropTarget;

    move-result-object v0

    .line 581
    .local v0, dropTarget:Lcom/android/launcher2/DropTarget;
    const/4 v8, 0x0

    .line 582
    .local v8, accepted:Z
    if-eqz v0, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    aget v2, v9, v10

    aget v3, v9, v11

    iget v4, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V

    .line 585
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    aget v2, v9, v10

    aget v3, v9, v11

    iget v4, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    aget v2, v9, v10

    aget v3, v9, v11

    iget v4, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V

    .line 589
    const/4 v8, 0x1

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/android/launcher2/DropTarget;
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v8}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 593
    return-void
.end method

.method private endDrag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 395
    iget-boolean v2, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v2, :cond_2

    .line 396
    iput-boolean v3, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    .line 397
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mOriginator:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragController$DragListener;

    .line 401
    .local v1, listener:Lcom/android/launcher2/DragController$DragListener;
    invoke-interface {v1}, Lcom/android/launcher2/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    .line 403
    .end local v1           #listener:Lcom/android/launcher2/DragController$DragListener;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    if-eqz v2, :cond_2

    .line 404
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v2}, Lcom/android/launcher2/DragView;->remove()V

    .line 405
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    .line 408
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private findDropTarget(II[I)Lcom/android/launcher2/DropTarget;
    .locals 16
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mRectTemp:Landroid/graphics/Rect;

    move-object v15, v0

    .line 598
    .local v15, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    move-object v13, v0

    .line 599
    .local v13, dropTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/DropTarget;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 600
    .local v11, count:I
    const/4 v4, 0x1

    sub-int v14, v11, v4

    .local v14, i:I
    :goto_0
    if-ltz v14, :cond_3

    .line 601
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DropTarget;

    .line 602
    .local v3, target:Lcom/android/launcher2/DropTarget;
    invoke-interface {v3}, Lcom/android/launcher2/DropTarget;->isDropEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 600
    :cond_0
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 605
    :cond_1
    invoke-interface {v3, v15}, Lcom/android/launcher2/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 608
    move-object v0, v3

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/launcher2/DropTarget;->getLocationOnScreen([I)V

    .line 609
    const/4 v4, 0x0

    aget v4, p3, v4

    invoke-interface {v3}, Lcom/android/launcher2/DropTarget;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    aget v5, p3, v5

    invoke-interface {v3}, Lcom/android/launcher2/DropTarget;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v15, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 611
    move-object v0, v15

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    move v5, v0

    float-to-int v7, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    move v5, v0

    float-to-int v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragInfo:Ljava/lang/Object;

    move-object v10, v0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-interface/range {v3 .. v10}, Lcom/android/launcher2/DropTarget;->getDropTargetDelegate(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)Lcom/android/launcher2/DropTarget;

    move-result-object v12

    .line 614
    .local v12, delegate:Lcom/android/launcher2/DropTarget;
    if-eqz v12, :cond_2

    .line 615
    move-object v3, v12

    .line 616
    move-object v0, v3

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/launcher2/DropTarget;->getLocationOnScreen([I)V

    .line 620
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, p3, v5

    sub-int v5, p1, v5

    aput v5, p3, v4

    .line 621
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, p3, v5

    sub-int v5, p2, v5

    aput v5, p3, v4

    move-object v4, v3

    .line 626
    .end local v3           #target:Lcom/android/launcher2/DropTarget;
    .end local v12           #delegate:Lcom/android/launcher2/DropTarget;
    :goto_1
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private handleMoveEvent(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/DragView;->move(II)V

    .line 465
    iget-object v9, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 466
    .local v9, coordinates:[I
    invoke-direct {p0, p1, p2, v9}, Lcom/android/launcher2/DragController;->findDropTarget(II[I)Lcom/android/launcher2/DropTarget;

    move-result-object v0

    .line 467
    .local v0, dropTarget:Lcom/android/launcher2/DropTarget;
    if-eqz v0, :cond_6

    .line 468
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    iget v4, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->getDropTargetDelegate(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)Lcom/android/launcher2/DropTarget;

    move-result-object v10

    .line 471
    .local v10, delegate:Lcom/android/launcher2/DropTarget;
    if-eqz v10, :cond_0

    .line 472
    move-object v0, v10

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eq v1, v0, :cond_2

    .line 476
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v8, p0, Lcom/android/launcher2/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v1 .. v8}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    iget v4, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V

    .line 483
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    iget v4, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V

    .line 491
    .end local v10           #delegate:Lcom/android/launcher2/DropTarget;
    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    .line 494
    const/4 v11, 0x0

    .line 495
    .local v11, inDeleteRegion:Z
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    if-eqz v1, :cond_4

    .line 496
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v11

    .line 501
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v12

    .line 502
    .local v12, slop:I
    iget v1, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v3, p1

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v5, p2

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    .line 504
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 505
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 507
    if-nez v11, :cond_7

    iget v1, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    if-ge p1, v1, :cond_7

    .line 508
    iget v1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    if-le v1, v12, :cond_5

    .line 509
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 510
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 511
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 512
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/launcher2/DragScroller;->onEnterScrollArea(I)V

    .line 529
    :cond_5
    :goto_1
    return-void

    .line 486
    .end local v11           #inDeleteRegion:Z
    .end local v12           #slop:I
    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v1, :cond_3

    .line 487
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v8, p0, Lcom/android/launcher2/DragController;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v1 .. v8}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 514
    .restart local v11       #inDeleteRegion:Z
    .restart local v12       #slop:I
    :cond_7
    if-nez v11, :cond_8

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_8

    .line 515
    iget v1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    if-le v1, v12, :cond_5

    .line 516
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 517
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 518
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 519
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/launcher2/DragScroller;->onEnterScrollArea(I)V

    goto :goto_1

    .line 522
    :cond_8
    iget v1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 523
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 524
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 525
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 526
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    invoke-interface {v1}, Lcom/android/launcher2/DragScroller;->onExitScrollArea()V

    goto :goto_1
.end method

.method private recordScreenSize()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 636
    return-void
.end method


# virtual methods
.method public addDragListener(Lcom/android/launcher2/DragController$DragListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    return-void
.end method

.method public addDropTarget(Lcom/android/launcher2/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    return-void
.end method

.method public cancelDrag()V
    .locals 4

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragInfo:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    .line 392
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dragging()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v0
.end method

.method getDragView()Lcom/android/launcher2/DragView;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    return-object v0
.end method

.method getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 331
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v4

    .line 334
    .local v4, willNotCache:Z
    invoke-virtual {p1, v5}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v3

    .line 339
    .local v3, color:I
    invoke-virtual {p1, v5}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 341
    .local v0, alpha:F
    const/high16 v5, 0x3f80

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 343
    if-eqz v3, :cond_0

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 346
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 348
    .local v2, cacheBitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 349
    const-string v5, "Launcher.DragController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed getViewBitmap("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    const/4 v5, 0x0

    .line 361
    :goto_0
    return-object v5

    .line 353
    :cond_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 356
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 357
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 358
    invoke-virtual {p1, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 359
    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    move-object v5, v1

    .line 361
    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 420
    .local v0, action:I
    if-nez v0, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->recordScreenSize()V

    .line 424
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v5, v4}, Lcom/android/launcher2/DragController;->clamp(III)I

    move-result v1

    .line 425
    .local v1, screenX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v5, v4}, Lcom/android/launcher2/DragController;->clamp(III)I

    move-result v2

    .line 427
    .local v2, screenY:I
    packed-switch v0, :pswitch_data_0

    .line 447
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v3

    .line 432
    :pswitch_1
    int-to-float v3, v1

    iput v3, p0, Lcom/android/launcher2/DragController;->mMotionDownX:F

    .line 433
    int-to-float v3, v2

    iput v3, p0, Lcom/android/launcher2/DragController;->mMotionDownY:F

    .line 434
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    goto :goto_0

    .line 437
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v3, :cond_1

    .line 438
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/DragController;->drop(FF)V

    .line 440
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    goto :goto_0

    .line 443
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 535
    iget-boolean v3, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-nez v3, :cond_0

    move v3, v5

    .line 574
    :goto_0
    return v3

    .line 539
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 540
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v5, v4}, Lcom/android/launcher2/DragController;->clamp(III)I

    move-result v1

    .line 541
    .local v1, screenX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v5, v4}, Lcom/android/launcher2/DragController;->clamp(III)I

    move-result v2

    .line 543
    .local v2, screenY:I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v3, v7

    .line 574
    goto :goto_0

    .line 546
    :pswitch_0
    int-to-float v3, v1

    iput v3, p0, Lcom/android/launcher2/DragController;->mMotionDownX:F

    .line 547
    int-to-float v3, v2

    iput v3, p0, Lcom/android/launcher2/DragController;->mMotionDownY:F

    .line 549
    iget v3, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    if-lt v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_2

    .line 550
    :cond_1
    iput v7, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 551
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const-wide/16 v5, 0x258

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 553
    :cond_2
    iput v5, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    goto :goto_1

    .line 557
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    goto :goto_1

    .line 561
    :pswitch_2
    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    .line 563
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 564
    iget-boolean v3, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v3, :cond_3

    .line 565
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/DragController;->drop(FF)V

    .line 567
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    goto :goto_1

    .line 570
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    goto :goto_1

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDropTarget(Lcom/android/launcher2/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 685
    return-void
.end method

.method setDeleteRegion(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    .line 701
    return-void
.end method

.method public setDragScoller(Lcom/android/launcher2/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    .line 653
    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    .line 455
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    .line 692
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 657
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 8
    .parameter "b"
    .parameter "screenX"
    .parameter "screenY"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 258
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V

    .line 259
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V
    .locals 18
    .parameter "b"
    .parameter "screenX"
    .parameter "screenY"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "dragRegion"

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v5, v0

    if-nez v5, :cond_0

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 286
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/DragController$DragListener;

    .line 289
    .local v17, listener:Lcom/android/launcher2/DragController$DragListener;
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher2/DragController$DragListener;->onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V

    goto :goto_0

    .line 292
    .end local v17           #listener:Lcom/android/launcher2/DragController$DragListener;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mMotionDownX:F

    move v5, v0

    float-to-int v5, v5

    sub-int v7, v5, p2

    .line 293
    .local v7, registrationX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mMotionDownY:F

    move v5, v0

    float-to-int v5, v5

    sub-int v8, v5, p3

    .line 295
    .local v8, registrationY:I
    if-nez p7, :cond_3

    const/4 v5, 0x0

    move v13, v5

    .line 296
    .local v13, dragRegionLeft:I
    :goto_1
    if-nez p7, :cond_4

    const/4 v5, 0x0

    move v14, v5

    .line 297
    .local v14, dragRegionTop:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mMotionDownX:F

    move v5, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, v13

    sub-float/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mMotionDownY:F

    move v5, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, v14

    sub-float/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    .line 300
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/DragController;->mDragging:Z

    .line 301
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    .line 302
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragController;->mDragInfo:Ljava/lang/Object;

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mVibrator:Landroid/os/Vibrator;

    move-object v5, v0

    const-wide/16 v9, 0x23

    invoke-virtual {v5, v9, v10}, Landroid/os/Vibrator;->vibrate(J)V

    .line 306
    new-instance v4, Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v12}, Lcom/android/launcher2/DragView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    .line 309
    .local v4, dragView:Lcom/android/launcher2/DragView;
    move-object/from16 v15, p4

    .line 310
    .local v15, dragSource:Lcom/android/launcher2/DragSource;
    new-instance v5, Lcom/android/launcher2/DragController$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/DragController$1;-><init>(Lcom/android/launcher2/DragController;Lcom/android/launcher2/DragSource;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragView;->setOnDrawRunnable(Ljava/lang/Runnable;)V

    .line 316
    if-eqz p7, :cond_2

    .line 317
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    sub-int/2addr v6, v13

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    .end local v7           #registrationX:I
    sub-int/2addr v7, v14

    invoke-virtual {v4, v13, v5, v6, v7}, Lcom/android/launcher2/DragView;->setDragRegion(IIII)V

    .line 321
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mMotionDownX:F

    move v6, v0

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mMotionDownY:F

    move v7, v0

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher2/DragView;->show(Landroid/os/IBinder;II)V

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mMotionDownX:F

    move v5, v0

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mMotionDownY:F

    move v6, v0

    float-to-int v6, v6

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    .line 324
    return-void

    .line 295
    .end local v4           #dragView:Lcom/android/launcher2/DragView;
    .end local v13           #dragRegionLeft:I
    .end local v14           #dragRegionTop:I
    .end local v15           #dragSource:Lcom/android/launcher2/DragSource;
    .restart local v7       #registrationX:I
    :cond_3
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move v13, v5

    goto/16 :goto_1

    .line 296
    .restart local v13       #dragRegionLeft:I
    :cond_4
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move v14, v5

    goto/16 :goto_2
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V
    .locals 9
    .parameter "v"
    .parameter "bmp"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "dragRegion"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mOriginator:Landroid/view/View;

    .line 232
    iget-object v8, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 233
    .local v8, loc:[I
    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 234
    const/4 v0, 0x0

    aget v2, v8, v0

    .line 235
    .local v2, screenX:I
    const/4 v0, 0x1

    aget v3, v8, v0

    .local v3, screenY:I
    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 237
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V

    .line 239
    sget v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    if-ne p5, v0, :cond_0

    .line 240
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_0
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 6
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 178
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V

    .line 179
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V
    .locals 9
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "dragRegion"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mOriginator:Landroid/view/View;

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/launcher2/DragController;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 198
    .local v1, b:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 204
    .local v8, loc:[I
    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 205
    const/4 v0, 0x0

    aget v2, v8, v0

    .line 206
    .local v2, screenX:I
    const/4 v0, 0x1

    aget v3, v8, v0

    .local v3, screenY:I
    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 208
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V

    .line 209
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    sget v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    if-ne p4, v0, :cond_0

    .line 212
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
