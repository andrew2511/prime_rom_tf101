.class public final Lcom/ecareme/pixwe/media/GridInputProcessor;
.super Ljava/lang/Object;
.source "GridInputProcessor.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field private mActionCode:I

.field private mCamera:Lcom/ecareme/pixwe/media/GridCamera;

.field private mContext:Landroid/content/Context;

.field private mCurrentFocusIsPressed:Z

.field private mCurrentFocusSlot:I

.field private mCurrentScaleSlot:I

.field private mCurrentSelectedSlot:I

.field private mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

.field private mDpadIgnoreTime:F

.field private mFirstTouchPosX:F

.field private mFirstTouchPosY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLayer:Lcom/ecareme/pixwe/media/GridLayer;

.field private mPool:Lcom/ecareme/pixwe/media/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/Pool",
            "<",
            "Lcom/ecareme/pixwe/media/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevHitEdge:Z

.field private mPrevShakeValueHighPass:F

.field private mPrevTiltValueLowPass:F

.field private mPrevTouchPosX:F

.field private mPrevTouchPosY:F

.field private mPrevTouchTime:J

.field private mProcessTouch:Z

.field private mScale:F

.field private mScaleGestureDetector:Lcom/ecareme/pixwe/media/ScaleGestureDetector;

.field private mShakeValue:F

.field private mTouchFeedbackDelivered:Z

.field private mTouchMoved:Z

.field private mTouchPosX:I

.field private mTouchPosY:I

.field private mTouchVelX:F

.field private mTouchVelY:F

.field private mZoomGesture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/GridLayer;Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/Pool;[Lcom/ecareme/pixwe/media/DisplayItem;)V
    .locals 2
    .parameter "context"
    .parameter "camera"
    .parameter "layer"
    .parameter "view"
    .parameter
    .parameter "displayItems"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ecareme/pixwe/media/GridCamera;",
            "Lcom/ecareme/pixwe/media/GridLayer;",
            "Lcom/ecareme/pixwe/media/RenderView;",
            "Lcom/ecareme/pixwe/media/Pool",
            "<",
            "Lcom/ecareme/pixwe/media/Vector3f;",
            ">;[",
            "Lcom/ecareme/pixwe/media/DisplayItem;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    const/4 v1, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mDpadIgnoreTime:F

    .line 74
    iput-object p5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPool:Lcom/ecareme/pixwe/media/Pool;

    .line 75
    iput-object p2, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    .line 76
    iput-object p3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 77
    iput v1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 78
    iput v1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    .line 79
    iput v1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentScaleSlot:I

    .line 80
    iput-object p1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mContext:Landroid/content/Context;

    .line 81
    iput-object p6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    .line 82
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mGestureDetector:Landroid/view/GestureDetector;

    .line 83
    new-instance v0, Lcom/ecareme/pixwe/media/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/ecareme/pixwe/media/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mScaleGestureDetector:Lcom/ecareme/pixwe/media/ScaleGestureDetector;

    .line 84
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mZoomGesture:Z

    .line 86
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mScale:F

    .line 87
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/GridInputProcessor;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private constrainCamera(Z)V
    .locals 14
    .parameter "b"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 470
    iget-object v8, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPool:Lcom/ecareme/pixwe/media/Pool;

    .line 471
    .local v8, pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    iget-object v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 472
    .local v6, layer:Lcom/ecareme/pixwe/media/GridLayer;
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/Vector3f;

    .line 473
    .local v3, firstPosition:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ecareme/pixwe/media/Vector3f;

    .line 474
    .local v4, lastPosition:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/Vector3f;

    .line 476
    .local v2, deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    :try_start_0
    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/GridLayer;->getDeltaAnchorPosition()Lcom/ecareme/pixwe/media/Vector3f;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 477
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    .line 478
    .local v0, camera:Lcom/ecareme/pixwe/media/GridCamera;
    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/GridLayer;->getLayoutInterface()Lcom/ecareme/pixwe/media/GridLayoutInterface;

    move-result-object v7

    .line 479
    .local v7, layout:Lcom/ecareme/pixwe/media/LayoutInterface;
    const/4 v9, 0x0

    invoke-static {v9, v0, v7, v2, v3}, Lcom/ecareme/pixwe/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 480
    const/4 v5, 0x0

    .line 481
    .local v5, lastSlotIndex:I
    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/GridLayer;->getCompleteRange()Lcom/ecareme/pixwe/media/IndexRange;

    move-result-object v1

    .line 482
    .local v1, completeRange:Lcom/ecareme/pixwe/media/IndexRange;
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 483
    :try_start_1
    iget v5, v1, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    .line 482
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    :try_start_2
    invoke-static {v5, v0, v7, v2, v4}, Lcom/ecareme/pixwe/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 486
    const/4 v9, 0x1

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    move v10, v13

    :goto_0
    invoke-virtual {v0, v9, v10, v3, v4}, Lcom/ecareme/pixwe/media/GridCamera;->computeConstraints(ZZLcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 488
    invoke-virtual {v8, v3}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 489
    invoke-virtual {v8, v4}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 490
    invoke-virtual {v8, v2}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 492
    return-void

    .line 482
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 487
    .end local v0           #camera:Lcom/ecareme/pixwe/media/GridCamera;
    .end local v1           #completeRange:Lcom/ecareme/pixwe/media/IndexRange;
    .end local v5           #lastSlotIndex:I
    .end local v7           #layout:Lcom/ecareme/pixwe/media/LayoutInterface;
    :catchall_1
    move-exception v9

    .line 488
    invoke-virtual {v8, v3}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 489
    invoke-virtual {v8, v4}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 490
    invoke-virtual {v8, v2}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 491
    throw v9

    .restart local v0       #camera:Lcom/ecareme/pixwe/media/GridCamera;
    .restart local v1       #completeRange:Lcom/ecareme/pixwe/media/IndexRange;
    .restart local v5       #lastSlotIndex:I
    .restart local v7       #layout:Lcom/ecareme/pixwe/media/LayoutInterface;
    :cond_0
    move v10, v12

    .line 486
    goto :goto_0
.end method

.method private selectSlot(I)V
    .locals 7
    .parameter "slotId"

    .prologue
    const/4 v6, 0x1

    .line 710
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 711
    .local v2, layer:Lcom/ecareme/pixwe/media/GridLayer;
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 712
    invoke-virtual {v2, p1}, Lcom/ecareme/pixwe/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v0

    .line 713
    .local v0, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v0, :cond_1

    .line 714
    iget-object v1, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    .line 715
    .local v1, item:Lcom/ecareme/pixwe/media/MediaItem;
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->getPickIntent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 717
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ecareme/pixwe/app/App;->get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ecareme/pixwe/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/ecareme/pixwe/media/GridInputProcessor$1;

    invoke-direct {v4, p0, v1}, Lcom/ecareme/pixwe/media/GridInputProcessor$1;-><init>(Lcom/ecareme/pixwe/media/GridInputProcessor;Lcom/ecareme/pixwe/media/MediaItem;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 767
    .end local v0           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v1           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :goto_0
    return-void

    .line 724
    .restart local v0       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v1       #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_0
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 725
    sget-boolean v3, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    if-eqz v3, :cond_2

    .line 726
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/ecareme/pixwe/media/Utils;->playVideo(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 766
    .end local v0           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v1           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_1
    :goto_1
    invoke-direct {p0, v6}, Lcom/ecareme/pixwe/media/GridInputProcessor;->constrainCamera(Z)V

    goto :goto_0

    .line 729
    .restart local v0       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v1       #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_2
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/ecareme/pixwe/media/GridInputProcessor$2;

    invoke-direct {v4, p0, v1}, Lcom/ecareme/pixwe/media/GridInputProcessor$2;-><init>(Lcom/ecareme/pixwe/media/GridInputProcessor;Lcom/ecareme/pixwe/media/MediaItem;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 754
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 757
    :cond_3
    iput p1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    .line 758
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->endSlideshow()V

    .line 759
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    .line 760
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    const/high16 v4, 0x4000

    iput v4, v3, Lcom/ecareme/pixwe/media/GridCamera;->mConvergenceSpeed:F

    .line 761
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    const/4 v4, 0x0

    iput v4, v3, Lcom/ecareme/pixwe/media/GridCamera;->mFriction:F

    .line 762
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v3

    iget v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->getCompleteRange()Lcom/ecareme/pixwe/media/IndexRange;

    move-result-object v5

    iget v5, v5, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/ecareme/pixwe/media/HudLayer;->fullscreenSelectionChanged(Lcom/ecareme/pixwe/media/MediaItem;II)V

    goto :goto_1
.end method

.method private touchBegan(II)V
    .locals 8
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 286
    int-to-float v3, p1

    iput v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevTouchPosX:F

    .line 287
    int-to-float v3, p2

    iput v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevTouchPosY:F

    .line 288
    int-to-float v3, p1

    iput v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mFirstTouchPosX:F

    .line 289
    int-to-float v3, p2

    iput v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mFirstTouchPosY:F

    .line 290
    iput v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchVelX:F

    .line 291
    iput v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchVelY:F

    .line 292
    iput-boolean v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mProcessTouch:Z

    .line 293
    iput-boolean v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mZoomGesture:Z

    .line 294
    iput-boolean v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchMoved:Z

    .line 295
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridCamera;->stopMovementInX()V

    .line 296
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 297
    .local v1, layer:Lcom/ecareme/pixwe/media/GridLayer;
    invoke-virtual {v1, p1, p2}, Lcom/ecareme/pixwe/media/GridLayer;->getSlotIndexForScreenPosition(II)I

    move-result v3

    iput v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 298
    iput-boolean v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusIsPressed:Z

    .line 299
    iput-boolean v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchFeedbackDelivered:Z

    .line 300
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v0

    .line 301
    .local v0, hud:Lcom/ecareme/pixwe/media/HudLayer;
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->closeSelectionMenu()V

    .line 303
    :cond_0
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v3

    if-ne v3, v7, :cond_1

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 304
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->deselectAll()V

    .line 305
    const/high16 v3, 0x3f80

    invoke-virtual {v0, v3}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 307
    :cond_1
    invoke-virtual {v1, p1, p2}, Lcom/ecareme/pixwe/media/GridLayer;->getSlotIndexForScreenPosition(II)I

    move-result v2

    .line 308
    .local v2, slotId:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v3

    if-eq v3, v7, :cond_2

    .line 309
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->vibrateShort()V

    .line 311
    :cond_2
    return-void
.end method

.method private touchEnded(IIF)V
    .locals 12
    .parameter "posX"
    .parameter "posY"
    .parameter "timeElapsedx"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/high16 v8, 0x3f80

    .line 398
    iget-boolean v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mProcessTouch:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mZoomGesture:Z

    if-eqz v6, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v6, v6, Lcom/ecareme/pixwe/media/GridCamera;->mWidth:I

    div-int/lit8 v5, v6, 0x8

    .line 402
    .local v5, maxPixelsBeforeSwitch:I
    iget-object v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    const/high16 v7, 0x4000

    iput v7, v6, Lcom/ecareme/pixwe/media/GridCamera;->mConvergenceSpeed:F

    .line 403
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 404
    .local v4, layer:Lcom/ecareme/pixwe/media/GridLayer;
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->getExpandedSlot()I

    move-result v6

    if-ne v6, v10, :cond_2

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->feedAboutToChange()Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mZoomGesture:Z

    if-nez v6, :cond_2

    .line 405
    iget v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    if-eq v6, v10, :cond_a

    .line 406
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 407
    iget-boolean v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchMoved:Z

    if-nez v6, :cond_3

    .line 409
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->getZoomValue()F

    move-result v6

    cmpl-float v6, v6, v8

    if-nez v6, :cond_2

    .line 410
    iget v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    invoke-virtual {v4, v6, v8}, Lcom/ecareme/pixwe/media/GridLayer;->changeFocusToSlot(IF)Z

    .line 462
    :cond_2
    :goto_1
    iput v10, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 463
    iput-boolean v11, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusIsPressed:Z

    .line 464
    int-to-float v6, p1

    iput v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevTouchPosX:F

    .line 465
    int-to-float v6, p2

    iput v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevTouchPosY:F

    .line 466
    iput-boolean v11, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mProcessTouch:Z

    goto :goto_0

    .line 411
    :cond_3
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->getZoomValue()F

    move-result v6

    cmpl-float v6, v6, v8

    if-nez v6, :cond_6

    .line 414
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->inSlideShowMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 415
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->endSlideshow()V

    .line 417
    :cond_4
    int-to-float v6, p1

    iget v7, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mFirstTouchPosX:F

    sub-float v0, v6, v7

    .line 418
    .local v0, deltaX:F
    int-to-float v6, p2

    iget v7, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mFirstTouchPosY:F

    sub-float v1, v6, v7

    .line 422
    .local v1, deltaY:F
    iget v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    invoke-virtual {v4, v6, v8}, Lcom/ecareme/pixwe/media/GridLayer;->changeFocusToSlot(IF)Z

    .line 423
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v3

    .line 424
    .local v3, hud:Lcom/ecareme/pixwe/media/HudLayer;
    int-to-float v6, v5

    cmpl-float v6, v0, v6

    if-lez v6, :cond_5

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v6

    if-eq v6, v9, :cond_5

    .line 425
    invoke-virtual {v4, v8}, Lcom/ecareme/pixwe/media/GridLayer;->changeFocusToPreviousSlot(F)Z

    goto :goto_1

    .line 426
    :cond_5
    neg-int v6, v5

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_2

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v6

    if-eq v6, v9, :cond_2

    .line 427
    invoke-virtual {v4, v8}, Lcom/ecareme/pixwe/media/GridLayer;->changeFocusToNextSlot(F)Z

    goto :goto_1

    .line 433
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v3           #hud:Lcom/ecareme/pixwe/media/HudLayer;
    :cond_6
    iget v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    invoke-virtual {v4, v6}, Lcom/ecareme/pixwe/media/GridLayer;->constrainCameraForSlot(I)Z

    move-result v2

    .line 435
    .local v2, hitEdge:Z
    if-eqz v2, :cond_9

    iget-boolean v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevHitEdge:Z

    if-eqz v6, :cond_9

    .line 436
    int-to-float v6, p1

    iget v7, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mFirstTouchPosX:F

    sub-float v0, v6, v7

    .line 437
    .restart local v0       #deltaX:F
    int-to-float v6, p2

    iget v7, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mFirstTouchPosY:F

    sub-float v1, v6, v7

    .line 438
    .restart local v1       #deltaY:F
    mul-int/lit8 v5, v5, 0x4

    .line 442
    iput-boolean v11, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevHitEdge:Z

    .line 443
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v3

    .line 444
    .restart local v3       #hud:Lcom/ecareme/pixwe/media/HudLayer;
    int-to-float v6, v5

    cmpl-float v6, v0, v6

    if-lez v6, :cond_7

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v6

    if-eq v6, v9, :cond_7

    .line 445
    invoke-virtual {v4, v8}, Lcom/ecareme/pixwe/media/GridLayer;->changeFocusToPreviousSlot(F)Z

    goto :goto_1

    .line 446
    :cond_7
    neg-int v6, v5

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_8

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v6

    if-eq v6, v9, :cond_8

    .line 447
    invoke-virtual {v4, v8}, Lcom/ecareme/pixwe/media/GridLayer;->changeFocusToNextSlot(F)Z

    goto/16 :goto_1

    .line 449
    :cond_8
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevHitEdge:Z

    goto/16 :goto_1

    .line 452
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v3           #hud:Lcom/ecareme/pixwe/media/HudLayer;
    :cond_9
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevHitEdge:Z

    goto/16 :goto_1

    .line 457
    .end local v2           #hitEdge:Z
    :cond_a
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->feedAboutToChange()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->getZoomValue()F

    move-result v6

    cmpl-float v6, v6, v8

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchMoved:Z

    if-eqz v6, :cond_2

    .line 458
    invoke-direct {p0, v9}, Lcom/ecareme/pixwe/media/GridInputProcessor;->constrainCamera(Z)V

    goto/16 :goto_1
.end method

.method private touchMoved(IIF)V
    .locals 28
    .parameter "posX"
    .parameter "posY"
    .parameter "timeElapsedx"

    .prologue
    .line 314
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mProcessTouch:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mZoomGesture:Z

    move/from16 v25, v0

    if-nez v25, :cond_5

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object/from16 v19, v0

    .line 316
    .local v19, layer:Lcom/ecareme/pixwe/media/GridLayer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v7, v0

    .line 317
    .local v7, camera:Lcom/ecareme/pixwe/media/GridCamera;
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevTouchPosX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    neg-float v0, v0

    move v10, v0

    .line 321
    .local v10, deltaX:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevTouchPosY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    neg-float v0, v0

    move v11, v0

    .line 322
    .local v11, deltaY:F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x4120

    cmpl-float v25, v25, v26

    if-gez v25, :cond_0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x4120

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_1

    .line 323
    :cond_0
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchMoved:Z

    .line 325
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPool:Lcom/ecareme/pixwe/media/Pool;

    move-object/from16 v23, v0

    .line 326
    .local v23, pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    invoke-virtual/range {v23 .. v23}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ecareme/pixwe/media/Vector3f;

    .line 327
    .local v14, firstPosition:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual/range {v23 .. v23}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/ecareme/pixwe/media/Vector3f;

    .line 328
    .local v17, lastPosition:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual/range {v23 .. v23}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ecareme/pixwe/media/Vector3f;

    .line 329
    .local v9, deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual/range {v23 .. v23}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/ecareme/pixwe/media/Vector3f;

    .line 331
    .local v24, worldPosDelta:Lcom/ecareme/pixwe/media/Vector3f;
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/GridLayer;->getDeltaAnchorPosition()Lcom/ecareme/pixwe/media/Vector3f;

    move-result-object v25

    move-object v0, v9

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 332
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/GridLayer;->getLayoutInterface()Lcom/ecareme/pixwe/media/GridLayoutInterface;

    move-result-object v20

    .line 333
    .local v20, layout:Lcom/ecareme/pixwe/media/LayoutInterface;
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object v1, v7

    move-object/from16 v2, v20

    move-object v3, v9

    move-object v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 334
    const/16 v18, 0x0

    .line 335
    .local v18, lastSlotIndex:I
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/GridLayer;->getCompleteRange()Lcom/ecareme/pixwe/media/IndexRange;

    move-result-object v8

    .line 336
    .local v8, completeRange:Lcom/ecareme/pixwe/media/IndexRange;
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 337
    :try_start_1
    move-object v0, v8

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v18, v0

    .line 336
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :try_start_2
    move/from16 v0, v18

    move-object v1, v7

    move-object/from16 v2, v20

    move-object v3, v9

    move-object/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 341
    const/16 v25, 0x0

    move-object v0, v7

    move v1, v10

    move v2, v11

    move/from16 v3, v25

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/GridCamera;->convertToRelativeCameraSpace(FFFLcom/ecareme/pixwe/media/Vector3f;)V

    .line 342
    move-object/from16 v0, v24

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move v10, v0

    .line 343
    move-object/from16 v0, v24

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    move v11, v0

    .line 344
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/GridLayer;->getZoomValue()F

    move-result v25

    const/high16 v26, 0x3f80

    cmpl-float v25, v25, v26

    if-nez v25, :cond_6

    const/16 v25, 0x0

    :goto_0
    const/16 v26, 0x0

    move-object v0, v7

    move v1, v10

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/GridCamera;->moveBy(FFF)V

    .line 345
    move-object v0, v7

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mScale:F

    move/from16 v25, v0

    mul-float v10, v10, v25

    .line 346
    move-object v0, v7

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mScale:F

    move/from16 v25, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    mul-float v11, v11, v25

    .line 348
    move-object/from16 v0, v23

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 349
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 350
    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 351
    invoke-virtual/range {v23 .. v24}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 353
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/GridLayer;->getZoomValue()F

    move-result v25

    const/high16 v26, 0x3f80

    cmpl-float v25, v25, v26

    if-nez v25, :cond_2

    .line 355
    const/16 v25, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    const/16 v26, 0x1

    :goto_1
    move-object v0, v7

    move/from16 v1, v25

    move/from16 v2, v26

    move-object v3, v14

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/GridCamera;->computeConstraints(ZZLcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 356
    const/4 v10, 0x0

    .line 358
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchFeedbackDelivered:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    .line 359
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchFeedbackDelivered:Z

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->vibrateLong()V

    .line 364
    :cond_2
    mul-float v25, v10, p3

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchVelX:F

    .line 365
    mul-float v25, v11, p3

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchVelY:F

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3f00

    mul-float v21, v25, v26

    .line 367
    .local v21, maxVelXx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v22, v0

    .line 368
    .local v22, maxVelYx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchVelX:F

    move/from16 v25, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/media/FloatUtils;->clamp(FFF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchVelX:F

    .line 369
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchVelY:F

    move/from16 v25, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/media/FloatUtils;->clamp(FFF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchVelY:F

    .line 370
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevTouchPosX:F

    .line 371
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevTouchPosY:F

    .line 373
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchMoved:Z

    move/from16 v25, v0

    if-nez v25, :cond_8

    .line 374
    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/GridLayer;->getSlotIndexForScreenPosition(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 377
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/ecareme/pixwe/media/GridCamera;->isZAnimating()Z

    move-result v25

    if-nez v25, :cond_3

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/ecareme/pixwe/media/GridCamera;->commitMoveInX()V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/ecareme/pixwe/media/GridCamera;->commitMoveInY()V

    .line 381
    :cond_3
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v5

    .line 382
    .local v5, anchorSlotIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    move-object v12, v0

    .line 383
    .local v12, displayItems:[Lcom/ecareme/pixwe/media/DisplayItem;
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/GridLayer;->getBufferedVisibleRange()Lcom/ecareme/pixwe/media/IndexRange;

    move-result-object v6

    .line 384
    .local v6, bufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;
    iget v13, v6, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    .line 385
    .local v13, firstBufferedVisibleSlot:I
    move-object v0, v6

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v16, v0

    .line 386
    .local v16, lastBufferedVisibleSlot:I
    monitor-enter v12

    .line 387
    if-lt v5, v13, :cond_4

    move v0, v5

    move/from16 v1, v16

    if-gt v0, v1, :cond_4

    .line 388
    sub-int v25, v5, v13

    mul-int/lit8 v25, v25, 0x20

    :try_start_3
    aget-object v15, v12, v25

    .line 389
    .local v15, item:Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v15, :cond_4

    .line 390
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v25

    move-object v0, v15

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Lcom/ecareme/pixwe/media/HudLayer;->setTimeBarTime(J)V

    .line 386
    .end local v15           #item:Lcom/ecareme/pixwe/media/DisplayItem;
    :cond_4
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 395
    .end local v5           #anchorSlotIndex:I
    .end local v6           #bufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;
    .end local v7           #camera:Lcom/ecareme/pixwe/media/GridCamera;
    .end local v8           #completeRange:Lcom/ecareme/pixwe/media/IndexRange;
    .end local v9           #deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v10           #deltaX:F
    .end local v11           #deltaY:F
    .end local v12           #displayItems:[Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v13           #firstBufferedVisibleSlot:I
    .end local v14           #firstPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v16           #lastBufferedVisibleSlot:I
    .end local v17           #lastPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v18           #lastSlotIndex:I
    .end local v19           #layer:Lcom/ecareme/pixwe/media/GridLayer;
    .end local v20           #layout:Lcom/ecareme/pixwe/media/LayoutInterface;
    .end local v21           #maxVelXx:F
    .end local v22           #maxVelYx:F
    .end local v23           #pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    .end local v24           #worldPosDelta:Lcom/ecareme/pixwe/media/Vector3f;
    :cond_5
    return-void

    .line 336
    .restart local v7       #camera:Lcom/ecareme/pixwe/media/GridCamera;
    .restart local v8       #completeRange:Lcom/ecareme/pixwe/media/IndexRange;
    .restart local v9       #deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .restart local v10       #deltaX:F
    .restart local v11       #deltaY:F
    .restart local v14       #firstPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .restart local v17       #lastPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .restart local v18       #lastSlotIndex:I
    .restart local v19       #layer:Lcom/ecareme/pixwe/media/GridLayer;
    .restart local v20       #layout:Lcom/ecareme/pixwe/media/LayoutInterface;
    .restart local v23       #pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    .restart local v24       #worldPosDelta:Lcom/ecareme/pixwe/media/Vector3f;
    :catchall_0
    move-exception v25

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 347
    .end local v8           #completeRange:Lcom/ecareme/pixwe/media/IndexRange;
    .end local v18           #lastSlotIndex:I
    .end local v20           #layout:Lcom/ecareme/pixwe/media/LayoutInterface;
    :catchall_1
    move-exception v25

    .line 348
    move-object/from16 v0, v23

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 349
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 350
    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 351
    invoke-virtual/range {v23 .. v24}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 352
    throw v25

    .restart local v8       #completeRange:Lcom/ecareme/pixwe/media/IndexRange;
    .restart local v18       #lastSlotIndex:I
    .restart local v20       #layout:Lcom/ecareme/pixwe/media/LayoutInterface;
    :cond_6
    move/from16 v25, v11

    .line 344
    goto/16 :goto_0

    .line 355
    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 376
    .restart local v21       #maxVelXx:F
    .restart local v22       #maxVelYx:F
    :cond_8
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    goto/16 :goto_2

    .line 386
    .restart local v5       #anchorSlotIndex:I
    .restart local v6       #bufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;
    .restart local v12       #displayItems:[Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v13       #firstBufferedVisibleSlot:I
    .restart local v16       #lastBufferedVisibleSlot:I
    :catchall_2
    move-exception v25

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v25
.end method

.method private vibrateLong()V
    .locals 0

    .prologue
    .line 813
    return-void
.end method

.method private vibrateShort()V
    .locals 0

    .prologue
    .line 809
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 1

    .prologue
    .line 499
    const/4 v0, -0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 500
    return-void
.end method

.method public clearSelection()V
    .locals 1

    .prologue
    .line 495
    const/4 v0, -0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    .line 496
    return-void
.end method

.method public getCurrentFocusSlot()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    return v0
.end method

.method public getCurrentScaledSlot()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentScaleSlot:I

    return v0
.end method

.method public getCurrentSelectedSlot()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mScale:F

    return v0
.end method

.method public getScaleGestureDetector()Lcom/ecareme/pixwe/media/ScaleGestureDetector;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mScaleGestureDetector:Lcom/ecareme/pixwe/media/ScaleGestureDetector;

    return-object v0
.end method

.method public isFocusItemPressed()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusIsPressed:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "e"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    .line 770
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 771
    .local v0, layer:Lcom/ecareme/pixwe/media/GridLayer;
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridCamera;->isZAnimating()Z

    move-result v4

    if-nez v4, :cond_1

    .line 772
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 773
    .local v1, posX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 774
    .local v2, posY:F
    new-instance v3, Lcom/ecareme/pixwe/media/Vector3f;

    invoke-direct {v3}, Lcom/ecareme/pixwe/media/Vector3f;-><init>()V

    .line 775
    .local v3, retVal:Lcom/ecareme/pixwe/media/Vector3f;
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v4, v4, Lcom/ecareme/pixwe/media/GridCamera;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v1, v4

    .line 776
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v4, v4, Lcom/ecareme/pixwe/media/GridCamera;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 777
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    invoke-virtual {v4, v1, v2, v7, v3}, Lcom/ecareme/pixwe/media/GridCamera;->convertToRelativeCameraSpace(FFFLcom/ecareme/pixwe/media/Vector3f;)V

    .line 778
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridLayer;->getZoomValue()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    .line 779
    const/high16 v4, 0x4040

    invoke-virtual {v0, v4}, Lcom/ecareme/pixwe/media/GridLayer;->setZoomValue(F)V

    .line 780
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    const v5, 0x3a83126f

    invoke-virtual {v4, v5}, Lcom/ecareme/pixwe/media/GridCamera;->update(F)V

    .line 781
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v5, v3, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    iget v6, v3, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    invoke-virtual {v4, v5, v6, v7}, Lcom/ecareme/pixwe/media/GridCamera;->moveBy(FFF)V

    .line 782
    iget v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    invoke-virtual {v0, v4}, Lcom/ecareme/pixwe/media/GridLayer;->constrainCameraForSlot(I)Z

    .line 786
    :goto_0
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    const/high16 v5, 0x4000

    iput v5, v4, Lcom/ecareme/pixwe/media/GridCamera;->mConvergenceSpeed:F

    .line 787
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iput v7, v4, Lcom/ecareme/pixwe/media/GridCamera;->mFriction:F

    .line 791
    const/4 v4, 0x1

    .end local v1           #posX:F
    .end local v2           #posY:F
    .end local v3           #retVal:Lcom/ecareme/pixwe/media/Vector3f;
    :goto_1
    return v4

    .line 784
    .restart local v1       #posX:F
    .restart local v2       #posY:F
    .restart local v3       #retVal:Lcom/ecareme/pixwe/media/Vector3f;
    :cond_0
    invoke-virtual {v0, v6}, Lcom/ecareme/pixwe/media/GridLayer;->setZoomValue(F)V

    goto :goto_0

    .line 789
    .end local v1           #posX:F
    .end local v2           #posY:F
    .end local v3           #retVal:Lcom/ecareme/pixwe/media/Vector3f;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 519
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 523
    iget v8, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    .line 524
    iget-object v8, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/ecareme/pixwe/media/GridCamera;->moveYTo(F)V

    .line 525
    iget-object v8, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/ecareme/pixwe/media/GridCamera;->moveZTo(F)V

    .line 526
    iget-object v8, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    const/high16 v9, 0x3f80

    iput v9, v8, Lcom/ecareme/pixwe/media/GridCamera;->mConvergenceSpeed:F

    .line 527
    iget-object v8, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    const/4 v9, 0x0

    iput v9, v8, Lcom/ecareme/pixwe/media/GridCamera;->mFriction:F

    .line 528
    iget-object v8, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v8, v8, Lcom/ecareme/pixwe/media/GridCamera;->mOneByScale:F

    mul-float v3, p3, v8

    .line 531
    .local v3, normalizedVelocity:F
    iget-object v8, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->getVisibleRange()Lcom/ecareme/pixwe/media/IndexRange;

    move-result-object v7

    .line 532
    .local v7, visibleRange:Lcom/ecareme/pixwe/media/IndexRange;
    iget v8, v7, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    iget v9, v7, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    sub-int v4, v8, v9

    .line 533
    .local v4, numVisibleSlots:I
    if-lez v4, :cond_5

    .line 534
    const/high16 v0, 0x4120

    .line 535
    .local v0, fastFlingVelocity:F
    int-to-float v8, v4

    neg-float v9, v3

    div-float/2addr v9, v0

    mul-float/2addr v8, v9

    float-to-int v6, v8

    .line 536
    .local v6, slotsToSkip:I
    move v2, v4

    .line 537
    .local v2, maxSlots:I
    if-le v6, v2, :cond_0

    .line 538
    move v6, v2

    .line 539
    :cond_0
    neg-int v8, v2

    if-ge v6, v8, :cond_1

    .line 540
    neg-int v6, v2

    .line 541
    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_2

    .line 542
    const/4 v8, 0x0

    cmpl-float v8, p3, v8

    if-lez v8, :cond_6

    .line 543
    const/4 v6, -0x2

    .line 547
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/ecareme/pixwe/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v8

    add-int v5, v8, v6

    .line 548
    .local v5, slotToGetTo:I
    if-gez v5, :cond_3

    .line 549
    const/4 v5, 0x0

    .line 550
    :cond_3
    iget-object v8, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->getCompleteRange()Lcom/ecareme/pixwe/media/IndexRange;

    move-result-object v8

    iget v1, v8, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    .line 551
    .local v1, lastSlot:I
    if-le v5, v1, :cond_4

    .line 552
    move v5, v1

    .line 553
    :cond_4
    iget-object v8, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    const/high16 v9, 0x3f80

    invoke-virtual {v8, v5, v9}, Lcom/ecareme/pixwe/media/GridLayer;->centerCameraForSlot(IF)V

    .line 555
    .end local v0           #fastFlingVelocity:F
    .end local v1           #lastSlot:I
    .end local v2           #maxSlots:I
    .end local v5           #slotToGetTo:I
    .end local v6           #slotsToSkip:I
    :cond_5
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/ecareme/pixwe/media/GridInputProcessor;->constrainCamera(Z)V

    .line 556
    const/4 v8, 0x1

    .line 558
    .end local v3           #normalizedVelocity:F
    .end local v4           #numVisibleSlots:I
    .end local v7           #visibleRange:Lcom/ecareme/pixwe/media/IndexRange;
    :goto_1
    return v8

    .line 544
    .restart local v0       #fastFlingVelocity:F
    .restart local v2       #maxSlots:I
    .restart local v3       #normalizedVelocity:F
    .restart local v4       #numVisibleSlots:I
    .restart local v6       #slotsToSkip:I
    .restart local v7       #visibleRange:Lcom/ecareme/pixwe/media/IndexRange;
    :cond_6
    const/4 v8, 0x0

    cmpg-float v8, p3, v8

    if-gez v8, :cond_2

    .line 545
    const/4 v6, 0x2

    goto :goto_0

    .line 558
    .end local v0           #fastFlingVelocity:F
    .end local v2           #maxSlots:I
    .end local v3           #normalizedVelocity:F
    .end local v4           #numVisibleSlots:I
    .end local v6           #slotsToSkip:I
    .end local v7           #visibleRange:Lcom/ecareme/pixwe/media/IndexRange;
    :cond_7
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;I)Z
    .locals 16
    .parameter "keyCode"
    .parameter "event"
    .parameter "state"

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object v8, v0

    .line 173
    .local v8, layer:Lcom/ecareme/pixwe/media/GridLayer;
    const/4 v13, 0x4

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_5

    .line 174
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->getViewIntent()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 175
    const/4 v13, 0x0

    .line 282
    :goto_0
    return v13

    .line 176
    :cond_0
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 177
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->deselectAll()V

    .line 178
    const/4 v13, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->inSlideShowMode()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 181
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->endSlideshow()V

    .line 182
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v13

    const/high16 v14, 0x3f80

    invoke-virtual {v13, v14}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 183
    const/4 v13, 0x1

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->getZoomValue()F

    move-result v12

    .line 186
    .local v12, zoomValue:F
    const/high16 v13, 0x3f80

    cmpl-float v13, v12, v13

    if-eqz v13, :cond_3

    .line 187
    const/high16 v13, 0x3f80

    invoke-virtual {v8, v13}, Lcom/ecareme/pixwe/media/GridLayer;->setZoomValue(F)V

    .line 188
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    move v13, v0

    const/high16 v14, 0x3f80

    invoke-virtual {v8, v13, v14}, Lcom/ecareme/pixwe/media/GridLayer;->centerCameraForSlot(IF)V

    .line 189
    const/4 v13, 0x1

    goto :goto_0

    .line 191
    :cond_3
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->goBack()Z

    .line 192
    if-nez p3, :cond_4

    .line 193
    const/4 v13, 0x0

    goto :goto_0

    .line 194
    :cond_4
    const/4 v13, 0x1

    goto :goto_0

    .line 196
    .end local v12           #zoomValue:F
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mDpadIgnoreTime:F

    move v13, v0

    const v14, 0x3dcccccd

    cmpg-float v13, v13, v14

    if-gez v13, :cond_6

    .line 197
    const/4 v13, 0x1

    goto :goto_0

    .line 198
    :cond_6
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mDpadIgnoreTime:F

    .line 199
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->getBufferedVisibleRange()Lcom/ecareme/pixwe/media/IndexRange;

    move-result-object v3

    .line 200
    .local v3, bufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;
    iget v6, v3, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    .line 201
    .local v6, firstBufferedVisibleSlot:I
    iget v7, v3, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    .line 202
    .local v7, lastBufferedVisibleSlot:I
    const/4 v13, 0x2

    invoke-virtual {v8, v13}, Lcom/ecareme/pixwe/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v2

    .line 203
    .local v2, anchorSlot:I
    const/4 v13, 0x2

    move/from16 v0, p3

    move v1, v13

    if-ne v0, v1, :cond_10

    .line 204
    const/16 v13, 0x18

    move/from16 v0, p1

    move v1, v13

    if-eq v0, v1, :cond_7

    const/16 v13, 0x19

    move/from16 v0, p1

    move v1, v13

    if-eq v0, v1, :cond_7

    const/16 v13, 0x5b

    move/from16 v0, p1

    move v1, v13

    if-eq v0, v1, :cond_7

    const/16 v13, 0x4f

    move/from16 v0, p1

    move v1, v13

    if-eq v0, v1, :cond_7

    const/16 v13, 0x53

    move/from16 v0, p1

    move v1, v13

    if-eq v0, v1, :cond_7

    .line 205
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->endSlideshow()V

    .line 207
    :cond_7
    const/4 v9, 0x0

    .line 208
    .local v9, needsVibrate:Z
    const/4 v5, 0x0

    .line 209
    .local v5, directionalKeyPressed:Z
    const/16 v13, 0x16

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_8

    .line 210
    const/high16 v13, 0x3f80

    invoke-virtual {v8, v13}, Lcom/ecareme/pixwe/media/GridLayer;->changeFocusToNextSlot(F)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x0

    move v9, v13

    .line 211
    :goto_1
    const/4 v5, 0x1

    .line 213
    :cond_8
    const/16 v13, 0x15

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_9

    .line 214
    const/high16 v13, 0x3f80

    invoke-virtual {v8, v13}, Lcom/ecareme/pixwe/media/GridLayer;->changeFocusToPreviousSlot(F)Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v13, 0x0

    move v9, v13

    .line 215
    :goto_2
    const/4 v5, 0x1

    .line 217
    :cond_9
    if-eqz v5, :cond_a

    .line 218
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 219
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->deselectAll()V

    .line 220
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->enterSelectionMode()V

    .line 223
    :cond_a
    if-eqz v9, :cond_b

    .line 224
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->vibrateShort()V

    .line 226
    :cond_b
    const/16 v13, 0x17

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/GridCamera;->isAnimating()Z

    move-result v13

    if-nez v13, :cond_c

    .line 227
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->getZoomValue()F

    move-result v13

    const/high16 v14, 0x3f80

    cmpl-float v13, v13, v14

    if-nez v13, :cond_f

    .line 228
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->zoomInToSelectedItem()V

    .line 282
    .end local v5           #directionalKeyPressed:Z
    .end local v9           #needsVibrate:Z
    :cond_c
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 210
    .restart local v5       #directionalKeyPressed:Z
    .restart local v9       #needsVibrate:Z
    :cond_d
    const/4 v13, 0x1

    move v9, v13

    goto :goto_1

    .line 214
    :cond_e
    const/4 v13, 0x1

    move v9, v13

    goto :goto_2

    .line 230
    :cond_f
    const/high16 v13, 0x3f80

    invoke-virtual {v8, v13}, Lcom/ecareme/pixwe/media/GridLayer;->setZoomValue(F)V

    goto :goto_3

    .line 242
    .end local v5           #directionalKeyPressed:Z
    .end local v9           #needsVibrate:Z
    :cond_10
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusIsPressed:Z

    .line 243
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->getLayoutInterface()Lcom/ecareme/pixwe/media/GridLayoutInterface;

    move-result-object v13

    iget v10, v13, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mNumRows:I

    .line 244
    .local v10, numRows:I
    const/16 v13, 0x17

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    move v13, v0

    const/4 v14, -0x1

    if-eq v13, v14, :cond_16

    .line 245
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_12

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    move v13, v0

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Lcom/ecareme/pixwe/media/GridLayer;->tapGesture(IZ)Z

    move-result v4

    .line 247
    .local v4, centerCamera:Z
    if-eqz v4, :cond_11

    .line 248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    move v11, v0

    .line 249
    .local v11, slotId:I
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->selectSlot(I)V

    .line 251
    .end local v11           #slotId:I
    :cond_11
    const/4 v13, -0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 252
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 254
    .end local v4           #centerCamera:Z
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    move v13, v0

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v8, v13, v14, v15}, Lcom/ecareme/pixwe/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 256
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusIsPressed:Z

    .line 273
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    move v13, v0

    if-le v13, v7, :cond_14

    .line 274
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 276
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    move v13, v0

    if-ge v13, v6, :cond_15

    .line 277
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 278
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    move v13, v0

    const/4 v14, -0x1

    if-eq v13, v14, :cond_c

    .line 279
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    move v13, v0

    const/high16 v14, 0x3f80

    invoke-virtual {v8, v13, v14}, Lcom/ecareme/pixwe/media/GridLayer;->centerCameraForSlot(IF)V

    goto/16 :goto_3

    .line 262
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    move v13, v0

    const/4 v14, -0x1

    if-ne v13, v14, :cond_17

    .line 263
    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    goto :goto_4

    .line 264
    :cond_17
    const/16 v13, 0x16

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_18

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    move v13, v0

    add-int/2addr v13, v10

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    goto :goto_4

    .line 266
    :cond_18
    const/16 v13, 0x15

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_19

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    move v13, v0

    sub-int/2addr v13, v10

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    goto :goto_4

    .line 268
    :cond_19
    const/16 v13, 0x13

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_1a

    .line 269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    move v13, v0

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    goto :goto_4

    .line 270
    :cond_1a
    const/16 v13, 0x14

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_13

    .line 271
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    move v13, v0

    add-int/lit8 v13, v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    goto/16 :goto_4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "e"

    .prologue
    const/4 v7, 0x1

    .line 563
    iget-boolean v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mZoomGesture:Z

    if-eqz v3, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridLayer;->getFeed()Lcom/ecareme/pixwe/media/MediaFeed;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridLayer;->getFeed()Lcom/ecareme/pixwe/media/MediaFeed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/MediaFeed;->isSingleImageMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 566
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v0

    .line 567
    .local v0, hud:Lcom/ecareme/pixwe/media/HudLayer;
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/ecareme/pixwe/media/PathBarLayer;->setHidden(Z)V

    .line 568
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getMenuBar()Lcom/ecareme/pixwe/media/Layer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/ecareme/pixwe/media/Layer;->setHidden(Z)V

    .line 569
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/ecareme/pixwe/media/HudLayer;->setMode(I)V

    .line 572
    .end local v0           #hud:Lcom/ecareme/pixwe/media/HudLayer;
    :cond_2
    iget v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->vibrateLong()V

    .line 574
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 575
    .local v1, layer:Lcom/ecareme/pixwe/media/GridLayer;
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 576
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->deselectAll()V

    .line 578
    :cond_3
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v0

    .line 579
    .restart local v0       #hud:Lcom/ecareme/pixwe/media/HudLayer;
    sget-boolean v3, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 581
    :cond_4
    const/4 v2, 0x0

    .line 582
    .local v2, set:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v3

    if-nez v3, :cond_5

    .line 583
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridLayer;->getFeed()Lcom/ecareme/pixwe/media/MediaFeed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #set:Lcom/ecareme/pixwe/media/MediaSet;
    check-cast v2, Lcom/ecareme/pixwe/media/MediaSet;

    .line 584
    .restart local v2       #set:Lcom/ecareme/pixwe/media/MediaSet;
    iget-wide v3, v2, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 585
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->enterSelectionMode()V

    .line 586
    iget v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {v1, v3, v7, v7}, Lcom/ecareme/pixwe/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_0

    .line 589
    :cond_5
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 590
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridLayer;->getFeed()Lcom/ecareme/pixwe/media/MediaFeed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/MediaFeed;->getCurrentSet()Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v2

    .line 591
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->enterSelectionMode()V

    .line 592
    iget v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {v1, v3, v7, v7}, Lcom/ecareme/pixwe/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_0
.end method

.method public onScale(Lcom/ecareme/pixwe/media/ScaleGestureDetector;)Z
    .locals 14
    .parameter "detector"

    .prologue
    const/4 v13, -0x1

    const v12, 0x3a83126f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x3f80

    .line 816
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 817
    .local v1, layer:Lcom/ecareme/pixwe/media/GridLayer;
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    .line 818
    .local v6, scale:F
    invoke-static {v6}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v7, v10

    .line 851
    :goto_0
    return v7

    .line 820
    :cond_1
    iget v7, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mScale:F

    mul-float/2addr v7, v6

    iput v7, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mScale:F

    .line 821
    sub-float v7, v6, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v12

    if-gez v7, :cond_8

    const/4 v7, 0x0

    move v2, v7

    .line 822
    .local v2, performTranslation:Z
    :goto_1
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 823
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getZoomValue()F

    move-result v0

    .line 824
    .local v0, currentScale:F
    cmpg-float v7, v0, v9

    if-gtz v7, :cond_2

    .line 825
    const/4 v2, 0x0

    .line 826
    :cond_2
    new-instance v5, Lcom/ecareme/pixwe/media/Vector3f;

    invoke-direct {v5}, Lcom/ecareme/pixwe/media/Vector3f;-><init>()V

    .line 827
    .local v5, retVal:Lcom/ecareme/pixwe/media/Vector3f;
    if-eqz v2, :cond_3

    .line 828
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->getFocusX()F

    move-result v3

    .line 829
    .local v3, posX:F
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->getFocusY()F

    move-result v4

    .line 830
    .local v4, posY:F
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v7, v7, Lcom/ecareme/pixwe/media/GridCamera;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v3, v7

    .line 831
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v7, v7, Lcom/ecareme/pixwe/media/GridCamera;->mHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v4, v7

    .line 832
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    invoke-virtual {v7, v3, v4, v11, v5}, Lcom/ecareme/pixwe/media/GridCamera;->convertToRelativeCameraSpace(FFFLcom/ecareme/pixwe/media/Vector3f;)V

    .line 834
    .end local v3           #posX:F
    .end local v4           #posY:F
    :cond_3
    const v7, 0x3f333333

    cmpg-float v7, v0, v7

    if-gez v7, :cond_4

    cmpg-float v7, v6, v9

    if-gez v7, :cond_4

    .line 835
    const/high16 v6, 0x3f80

    .line 837
    :cond_4
    const/high16 v7, 0x4100

    cmpl-float v7, v0, v7

    if-lez v7, :cond_5

    cmpl-float v7, v6, v9

    if-lez v7, :cond_5

    .line 838
    const/high16 v6, 0x3f80

    .line 840
    :cond_5
    mul-float v7, v0, v6

    invoke-virtual {v1, v7}, Lcom/ecareme/pixwe/media/GridLayer;->setZoomValue(F)V

    .line 841
    if-eqz v2, :cond_6

    .line 842
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    invoke-virtual {v7, v12}, Lcom/ecareme/pixwe/media/GridCamera;->update(F)V

    .line 843
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v8, v5, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    iget v9, v5, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    invoke-virtual {v7, v8, v9, v11}, Lcom/ecareme/pixwe/media/GridCamera;->moveBy(FFF)V

    .line 844
    iget v7, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    invoke-virtual {v1, v7}, Lcom/ecareme/pixwe/media/GridLayer;->constrainCameraForSlot(I)Z

    .line 847
    .end local v0           #currentScale:F
    .end local v5           #retVal:Lcom/ecareme/pixwe/media/Vector3f;
    :cond_6
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v7

    if-ne v7, v10, :cond_7

    .line 848
    iput v13, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentScaleSlot:I

    .line 849
    iput v13, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    :cond_7
    move v7, v10

    .line 851
    goto/16 :goto_0

    .end local v2           #performTranslation:Z
    :cond_8
    move v2, v10

    .line 821
    goto :goto_1
.end method

.method public onScaleBegin(Lcom/ecareme/pixwe/media/ScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 855
    iput-boolean v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mZoomGesture:Z

    .line 856
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mScale:F

    .line 857
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/ecareme/pixwe/media/HudLayer;->hideZoomButtons(Z)V

    .line 858
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->getFocusX()F

    move-result v3

    float-to-int v0, v3

    .line 859
    .local v0, posX:I
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->getFocusY()F

    move-result v3

    float-to-int v1, v3

    .line 860
    .local v1, posY:I
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v3, v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->getSlotIndexForScreenPosition(II)I

    move-result v2

    .line 861
    .local v2, slotId:I
    if-ne v2, v6, :cond_0

    .line 862
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/ecareme/pixwe/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v2

    .line 864
    :cond_0
    if-eq v2, v6, :cond_1

    .line 865
    iput v2, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentScaleSlot:I

    .line 866
    iput v2, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 868
    :cond_1
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 869
    iput v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentScaleSlot:I

    .line 870
    iput v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 872
    :cond_2
    invoke-direct {p0, v5}, Lcom/ecareme/pixwe/media/GridInputProcessor;->constrainCamera(Z)V

    .line 873
    return v5
.end method

.method public onScaleEnd(Lcom/ecareme/pixwe/media/ScaleGestureDetector;Z)V
    .locals 6
    .parameter "detector"
    .parameter "cancel"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 877
    if-nez p2, :cond_5

    .line 878
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 879
    .local v1, layer:Lcom/ecareme/pixwe/media/GridLayer;
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 880
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getZoomValue()F

    move-result v0

    .line 881
    .local v0, currentScale:F
    cmpg-float v2, v0, v3

    if-gez v2, :cond_3

    .line 882
    const/high16 v0, 0x3f80

    .line 886
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getZoomValue()F

    move-result v2

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    .line 887
    invoke-virtual {v1, v0}, Lcom/ecareme/pixwe/media/GridLayer;->setZoomValue(F)V

    .line 889
    :cond_1
    iget v2, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/GridLayer;->constrainCameraForSlot(I)Z

    .line 890
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ecareme/pixwe/media/HudLayer;->hideZoomButtons(Z)V

    .line 923
    .end local v0           #currentScale:F
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->resetScale()V

    .line 924
    return-void

    .line 883
    .restart local v0       #currentScale:F
    :cond_3
    const/high16 v2, 0x40c0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 884
    const/high16 v0, 0x40c0

    goto :goto_0

    .line 908
    .end local v0           #currentScale:F
    :cond_4
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 917
    .end local v1           #layer:Lcom/ecareme/pixwe/media/GridLayer;
    :cond_5
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 918
    .restart local v1       #layer:Lcom/ecareme/pixwe/media/GridLayer;
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 919
    invoke-virtual {v1, v3}, Lcom/ecareme/pixwe/media/GridLayer;->setZoomValue(F)V

    .line 920
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ecareme/pixwe/media/HudLayer;->hideZoomButtons(Z)V

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method public onSensorChanged(Lcom/ecareme/pixwe/media/RenderView;Landroid/hardware/SensorEvent;I)V
    .locals 10
    .parameter "view"
    .parameter "event"
    .parameter "state"

    .prologue
    const/high16 v9, 0x4348

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 115
    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mZoomGesture:Z

    if-eqz v4, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v4, p2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    iget-object v3, p2, Landroid/hardware/SensorEvent;->values:[F

    .line 120
    .local v3, values:[F
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v4, v4, Lcom/ecareme/pixwe/media/GridCamera;->mWidth:I

    iget-object v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v5, v5, Lcom/ecareme/pixwe/media/GridCamera;->mHeight:I

    if-ge v4, v5, :cond_5

    const/4 v4, 0x0

    aget v4, v3, v4

    move v2, v4

    .line 121
    .local v2, valueToUse:F
    :goto_1
    const v4, 0x3f4ccccd

    iget v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevTiltValueLowPass:F

    mul-float/2addr v4, v5

    const v5, 0x3e4ccccd

    mul-float/2addr v5, v2

    add-float v1, v4, v5

    .line 122
    .local v1, tiltValue:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f00

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 123
    const/4 v1, 0x0

    .line 124
    :cond_2
    if-ne p3, v7, :cond_3

    .line 125
    const/4 v1, 0x0

    .line 126
    :cond_3
    cmpl-float v4, v1, v8

    if-eqz v4, :cond_4

    .line 127
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    .line 128
    :cond_4
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    const/high16 v5, -0x3fc0

    mul-float/2addr v5, v1

    iput v5, v4, Lcom/ecareme/pixwe/media/GridCamera;->mEyeOffsetX:F

    .line 129
    aget v4, v3, v6

    aget v5, v3, v6

    mul-float/2addr v4, v5

    aget v5, v3, v7

    aget v6, v3, v7

    mul-float/2addr v5, v6

    add-float v0, v4, v5

    .line 130
    .local v0, shakeValue:F
    iget v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevShakeValueHighPass:F

    sub-float v4, v0, v4

    iput v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mShakeValue:F

    .line 131
    iput v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevShakeValueHighPass:F

    .line 132
    iget v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mShakeValue:F

    const/high16 v5, 0x4180

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    .line 133
    iput v8, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mShakeValue:F

    goto :goto_0

    .line 120
    .end local v0           #shakeValue:F
    .end local v1           #tiltValue:F
    .end local v2           #valueToUse:F
    :cond_5
    aget v4, v3, v6

    neg-float v4, v4

    move v2, v4

    goto :goto_1

    .line 135
    .restart local v0       #shakeValue:F
    .restart local v1       #tiltValue:F
    .restart local v2       #valueToUse:F
    :cond_6
    iget v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mShakeValue:F

    const/high16 v5, 0x4080

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mShakeValue:F

    .line 136
    iget v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mShakeValue:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_0

    .line 137
    iput v9, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mShakeValue:F

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 606
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "e"

    .prologue
    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object v7, v0

    .line 611
    .local v7, layer:Lcom/ecareme/pixwe/media/GridLayer;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v8, v14

    .line 612
    .local v8, posX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v9, v14

    .line 614
    .local v9, posY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    move v14, v0

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v14, v0

    const/high16 v15, 0x4000

    iput v15, v14, Lcom/ecareme/pixwe/media/GridCamera;->mConvergenceSpeed:F

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v14, v0

    const/4 v15, 0x0

    iput v15, v14, Lcom/ecareme/pixwe/media/GridCamera;->mFriction:F

    .line 618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    move v12, v0

    .line 619
    .local v12, slotId:I
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/GridLayer;->getZoomValue()F

    move-result v14

    const/high16 v15, 0x3f80

    cmpl-float v14, v14, v15

    if-nez v14, :cond_1

    .line 620
    const/high16 v14, 0x3f80

    invoke-virtual {v7, v12, v14}, Lcom/ecareme/pixwe/media/GridLayer;->centerCameraForSlot(IF)V

    .line 624
    :goto_0
    invoke-virtual {v7, v12}, Lcom/ecareme/pixwe/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v3

    .line 625
    .local v3, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v3, :cond_0

    .line 626
    iget-object v6, v3, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    .line 627
    .local v6, item:Lcom/ecareme/pixwe/media/MediaItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v14, v0

    iget v14, v14, Lcom/ecareme/pixwe/media/GridCamera;->mHeight:I

    div-int/lit8 v4, v14, 0x2

    .line 628
    .local v4, heightBy2:I
    sub-int v14, v9, v4

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/16 v15, 0x40

    if-ge v14, v15, :cond_2

    const/4 v14, 0x1

    move v10, v14

    .line 629
    .local v10, posYInBounds:Z
    :goto_1
    const/16 v14, 0x20

    if-ge v8, v14, :cond_3

    if-eqz v10, :cond_3

    .line 630
    const/high16 v14, 0x3f80

    invoke-virtual {v7, v14}, Lcom/ecareme/pixwe/media/GridLayer;->changeFocusToPreviousSlot(F)Z

    .line 706
    .end local v3           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v4           #heightBy2:I
    .end local v6           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v10           #posYInBounds:Z
    :cond_0
    :goto_2
    const/4 v14, 0x1

    return v14

    .line 622
    :cond_1
    invoke-virtual {v7, v12}, Lcom/ecareme/pixwe/media/GridLayer;->constrainCameraForSlot(I)Z

    goto :goto_0

    .line 628
    .restart local v3       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v4       #heightBy2:I
    .restart local v6       #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_2
    const/4 v14, 0x0

    move v10, v14

    goto :goto_1

    .line 631
    .restart local v10       #posYInBounds:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v14, v0

    iget v14, v14, Lcom/ecareme/pixwe/media/GridCamera;->mWidth:I

    const/16 v15, 0x20

    sub-int/2addr v14, v15

    if-le v8, v14, :cond_4

    if-eqz v10, :cond_4

    .line 632
    const/high16 v14, 0x3f80

    invoke-virtual {v7, v14}, Lcom/ecareme/pixwe/media/GridLayer;->changeFocusToNextSlot(F)Z

    goto :goto_2

    .line 633
    :cond_4
    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-static {v14, v6}, Lcom/ecareme/pixwe/media/Utils;->playVideo(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItem;)V

    goto :goto_2

    .line 637
    :cond_5
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v5

    .line 638
    .local v5, hud:Lcom/ecareme/pixwe/media/HudLayer;
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/GridLayer;->inSlideShowMode()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 639
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/GridLayer;->endSlideshow()V

    .line 657
    :goto_3
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 658
    const/high16 v14, 0x3f80

    invoke-virtual {v5, v14}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    goto :goto_2

    .line 641
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v13

    .line 642
    .local v13, state:I
    sget-boolean v14, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    if-nez v14, :cond_8

    .line 643
    const/4 v14, 0x2

    if-eq v13, v14, :cond_7

    .line 644
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/HudLayer;->showHint()V

    goto :goto_3

    .line 647
    :cond_7
    const/high16 v14, 0x3f80

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/HudLayer;->getAlpha()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v5, v14}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    goto :goto_3

    .line 650
    :cond_8
    if-nez v13, :cond_9

    .line 651
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/HudLayer;->showHint()V

    goto :goto_3

    .line 654
    :cond_9
    const/high16 v14, 0x3f80

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/HudLayer;->getAlpha()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v5, v14}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    goto :goto_3

    .line 663
    .end local v3           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v4           #heightBy2:I
    .end local v5           #hud:Lcom/ecareme/pixwe/media/HudLayer;
    .end local v6           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v10           #posYInBounds:Z
    .end local v12           #slotId:I
    .end local v13           #state:I
    :cond_a
    invoke-virtual {v7, v8, v9}, Lcom/ecareme/pixwe/media/GridLayer;->getSlotIndexForScreenPosition(II)I

    move-result v12

    .line 665
    .restart local v12       #slotId:I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_e

    .line 666
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v5

    .line 668
    .restart local v5       #hud:Lcom/ecareme/pixwe/media/HudLayer;
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    .line 669
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v14

    if-nez v14, :cond_b

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/GridLayer;->getFeed()Lcom/ecareme/pixwe/media/MediaFeed;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ecareme/pixwe/media/MediaSet;

    .line 671
    .local v11, set:Lcom/ecareme/pixwe/media/MediaSet;
    iget-wide v14, v11, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_0

    .line 672
    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v7, v12, v14, v15}, Lcom/ecareme/pixwe/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_2

    .line 676
    .end local v11           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_b
    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v7, v12, v14, v15}, Lcom/ecareme/pixwe/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_2

    .line 680
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    move v14, v0

    const/4 v15, -0x1

    if-ne v14, v15, :cond_d

    const/4 v14, 0x0

    invoke-virtual {v7, v12, v14}, Lcom/ecareme/pixwe/media/GridLayer;->tapGesture(IZ)Z

    move-result v14

    move v2, v14

    .line 681
    .local v2, centerCamera:Z
    :goto_4
    if-eqz v2, :cond_0

    .line 683
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->selectSlot(I)V

    goto/16 :goto_2

    .line 680
    .end local v2           #centerCamera:Z
    :cond_d
    const/4 v14, 0x1

    move v2, v14

    goto :goto_4

    .line 687
    .end local v5           #hud:Lcom/ecareme/pixwe/media/HudLayer;
    :cond_e
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/GridLayer;->getState()I

    move-result v13

    .line 688
    .restart local v13       #state:I
    const/4 v14, 0x2

    if-eq v13, v14, :cond_10

    const/4 v14, 0x1

    if-eq v13, v14, :cond_10

    .line 689
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_10

    .line 690
    invoke-virtual {v7, v8, v9}, Lcom/ecareme/pixwe/media/GridLayer;->getMetadataSlotIndexForScreenPosition(II)I

    move-result v12

    .line 691
    const/4 v14, -0x1

    if-eq v12, v14, :cond_f

    .line 692
    const/4 v14, 0x1

    invoke-virtual {v7, v12, v14}, Lcom/ecareme/pixwe/media/GridLayer;->tapGesture(IZ)Z

    .line 694
    :cond_f
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v5

    .line 696
    .restart local v5       #hud:Lcom/ecareme/pixwe/media/HudLayer;
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/HudLayer;->showHint()V

    goto/16 :goto_2

    .line 698
    .end local v5           #hud:Lcom/ecareme/pixwe/media/HudLayer;
    :cond_10
    const/4 v14, 0x1

    if-eq v13, v14, :cond_11

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 699
    :cond_11
    sget-boolean v14, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    if-nez v14, :cond_0

    .line 700
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/HudLayer;->showHint()V

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchPosX:I

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchPosY:I

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    iput v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mActionCode:I

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 149
    .local v3, timestamp:J
    iget-wide v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevTouchTime:J

    sub-long v0, v3, v5

    .line 150
    .local v0, delta:J
    iput-wide v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevTouchTime:J

    .line 151
    long-to-float v2, v0

    .line 152
    .local v2, timeElapsed:F
    const v5, 0x3a83126f

    mul-float/2addr v2, v5

    .line 153
    iget v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mActionCode:I

    packed-switch v5, :pswitch_data_0

    .line 165
    :goto_0
    iget-boolean v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mZoomGesture:Z

    if-nez v5, :cond_0

    .line 166
    iget-object v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 167
    :cond_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mScaleGestureDetector:Lcom/ecareme/pixwe/media/ScaleGestureDetector;

    invoke-virtual {v5, p1}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 168
    const/4 v5, 0x1

    return v5

    .line 155
    :pswitch_0
    iget v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchPosX:I

    iget v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchPosY:I

    invoke-direct {p0, v5, v6, v2}, Lcom/ecareme/pixwe/media/GridInputProcessor;->touchEnded(IIF)V

    goto :goto_0

    .line 158
    :pswitch_1
    iput-wide v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mPrevTouchTime:J

    .line 159
    iget v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchPosX:I

    iget v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchPosY:I

    invoke-direct {p0, v5, v6}, Lcom/ecareme/pixwe/media/GridInputProcessor;->touchBegan(II)V

    goto :goto_0

    .line 162
    :pswitch_2
    iget v5, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchPosX:I

    iget v6, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mTouchPosY:I

    invoke-direct {p0, v5, v6, v2}, Lcom/ecareme/pixwe/media/GridInputProcessor;->touchMoved(IIF)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public resetScale()V
    .locals 1

    .prologue
    .line 931
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mScale:F

    .line 932
    const/4 v0, -0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentScaleSlot:I

    .line 933
    return-void
.end method

.method public setCurrentFocusSlot(I)V
    .locals 0
    .parameter "slotId"

    .prologue
    .line 514
    iput p1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    .line 515
    return-void
.end method

.method public setCurrentSelectedSlot(I)V
    .locals 6
    .parameter "slot"

    .prologue
    .line 102
    iput p1, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    .line 103
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 104
    .local v2, layer:Lcom/ecareme/pixwe/media/GridLayer;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    .line 105
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    const/high16 v4, 0x4000

    iput v4, v3, Lcom/ecareme/pixwe/media/GridCamera;->mConvergenceSpeed:F

    .line 106
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    const/4 v4, 0x0

    iput v4, v3, Lcom/ecareme/pixwe/media/GridCamera;->mFriction:F

    .line 107
    invoke-virtual {v2, p1}, Lcom/ecareme/pixwe/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v0

    .line 108
    .local v0, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    const/4 v1, 0x0

    .line 109
    .local v1, item:Lcom/ecareme/pixwe/media/MediaItem;
    if-eqz v0, :cond_0

    .line 110
    iget-object v1, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    .line 111
    :cond_0
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v3

    iget v4, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCurrentSelectedSlot:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->getCompleteRange()Lcom/ecareme/pixwe/media/IndexRange;

    move-result-object v5

    iget v5, v5, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/ecareme/pixwe/media/HudLayer;->fullscreenSelectionChanged(Lcom/ecareme/pixwe/media/MediaItem;II)V

    .line 112
    return-void
.end method

.method public touchPressed()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mProcessTouch:Z

    return v0
.end method

.method public update(F)V
    .locals 2
    .parameter "timeElapsed"

    .prologue
    .line 507
    iget v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mDpadIgnoreTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mDpadIgnoreTime:F

    .line 508
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridInputProcessor;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mFriction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->constrainCamera(Z)V

    .line 511
    :cond_0
    return-void
.end method
