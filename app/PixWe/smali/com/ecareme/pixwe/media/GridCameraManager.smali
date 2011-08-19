.class public final Lcom/ecareme/pixwe/media/GridCameraManager;
.super Ljava/lang/Object;
.source "GridCameraManager.java"


# static fields
.field private static final sPool:Lcom/ecareme/pixwe/media/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/Pool",
            "<",
            "Lcom/ecareme/pixwe/media/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCamera:Lcom/ecareme/pixwe/media/GridCamera;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    const/16 v3, 0x80

    new-array v2, v3, [Lcom/ecareme/pixwe/media/Vector3f;

    .line 26
    .local v2, vectorPool:[Lcom/ecareme/pixwe/media/Vector3f;
    array-length v1, v2

    .line 27
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 30
    new-instance v3, Lcom/ecareme/pixwe/media/Pool;

    invoke-direct {v3, v2}, Lcom/ecareme/pixwe/media/Pool;-><init>([Ljava/lang/Object;)V

    sput-object v3, Lcom/ecareme/pixwe/media/GridCameraManager;->sPool:Lcom/ecareme/pixwe/media/Pool;

    .line 21
    return-void

    .line 28
    :cond_0
    new-instance v3, Lcom/ecareme/pixwe/media/Vector3f;

    invoke-direct {v3}, Lcom/ecareme/pixwe/media/Vector3f;-><init>()V

    aput-object v3, v2, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/ecareme/pixwe/media/GridCamera;)V
    .locals 0
    .parameter "camera"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/ecareme/pixwe/media/GridCameraManager;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    .line 35
    return-void
.end method

.method public static final getFillScreenZoomValue(Lcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/Pool;FF)F
    .locals 8
    .parameter "camera"
    .parameter
    .parameter "currentFocusItemWidth"
    .parameter "currentFocusItemHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ecareme/pixwe/media/GridCamera;",
            "Lcom/ecareme/pixwe/media/Pool",
            "<",
            "Lcom/ecareme/pixwe/media/Vector3f;",
            ">;FF)F"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/Vector3f;

    .line 250
    .local v2, topLeft:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/Vector3f;

    .line 251
    .local v0, bottomRight:Lcom/ecareme/pixwe/media/Vector3f;
    const/high16 v1, 0x3f80

    .line 253
    .local v1, potentialZoomValue:F
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, v5, v6, v7, v2}, Lcom/ecareme/pixwe/media/GridCamera;->convertToCameraSpace(FFFLcom/ecareme/pixwe/media/Vector3f;)V

    .line 254
    iget v5, p0, Lcom/ecareme/pixwe/media/GridCamera;->mWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/ecareme/pixwe/media/GridCamera;->mHeight:I

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7, v0}, Lcom/ecareme/pixwe/media/GridCamera;->convertToCameraSpace(FFFLcom/ecareme/pixwe/media/Vector3f;)V

    .line 255
    iget v5, v2, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    iget v6, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v3, v5, p2

    .line 256
    .local v3, xExtent:F
    iget v5, v2, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    iget v6, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v4, v5, p3

    .line 257
    .local v4, yExtent:F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 259
    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 262
    return v1

    .line 258
    .end local v3           #xExtent:F
    .end local v4           #yExtent:F
    :catchall_0
    move-exception v5

    .line 259
    invoke-virtual {p1, v2}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 261
    throw v5
.end method

.method public static final getSlotPositionForSlotIndex(ILcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)V
    .locals 2
    .parameter "slotIndex"
    .parameter "camera"
    .parameter "layout"
    .parameter "deltaAnchorPosition"
    .parameter "outVal"

    .prologue
    .line 243
    iget v0, p1, Lcom/ecareme/pixwe/media/GridCamera;->mItemWidth:I

    iget v1, p1, Lcom/ecareme/pixwe/media/GridCamera;->mItemHeight:I

    invoke-virtual {p2, p0, v0, v1, p4}, Lcom/ecareme/pixwe/media/LayoutInterface;->getPositionForSlotIndex(IIILcom/ecareme/pixwe/media/Vector3f;)V

    .line 244
    invoke-virtual {p4, p3}, Lcom/ecareme/pixwe/media/Vector3f;->subtract(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 245
    return-void
.end method


# virtual methods
.method public centerCameraForSlot(Lcom/ecareme/pixwe/media/LayoutInterface;IFLcom/ecareme/pixwe/media/Vector3f;IFFI)V
    .locals 20
    .parameter "layout"
    .parameter "slotIndex"
    .parameter "baseConvergence"
    .parameter "deltaAnchorPositionIn"
    .parameter "selectedSlotIndex"
    .parameter "zoomValue"
    .parameter "imageTheta"
    .parameter "state"

    .prologue
    .line 39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridCameraManager;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v5, v0

    .line 40
    .local v5, camera:Lcom/ecareme/pixwe/media/GridCamera;
    sget-object v9, Lcom/ecareme/pixwe/media/GridCameraManager;->sPool:Lcom/ecareme/pixwe/media/Pool;

    .line 41
    .local v9, pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    monitor-enter v5

    .line 42
    const/16 v16, -0x1

    move/from16 v0, p5

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    const/16 v16, 0x1

    move/from16 v15, v16

    .line 43
    .local v15, zoomin:Z
    :goto_0
    move/from16 v0, p7

    float-to-int v0, v0

    move v13, v0

    .line 44
    .local v13, theta:I
    :try_start_0
    div-int/lit8 v16, v13, 0x5a

    rem-int/lit8 v10, v16, 0x2

    .line 45
    .local v10, portrait:I
    move/from16 v0, p2

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    .line 46
    if-eqz v15, :cond_5

    const/high16 v16, 0x4000

    :goto_1
    mul-float v16, v16, p3

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/ecareme/pixwe/media/GridCamera;->mConvergenceSpeed:F

    .line 47
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/ecareme/pixwe/media/GridCamera;->mFriction:F

    .line 49
    :cond_0
    const/high16 v16, 0x3f80

    div-float v8, v16, p6

    .line 50
    .local v8, oneByZoom:F
    if-ltz p2, :cond_9

    .line 51
    invoke-virtual {v9}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ecareme/pixwe/media/Vector3f;

    .line 52
    .local v11, position:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual {v9}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ecareme/pixwe/media/Vector3f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    .local v6, deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    :try_start_1
    move-object v0, v6

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 55
    move/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 56
    const/high16 v16, 0x3f80

    cmpl-float v16, p6, v16

    if-nez v16, :cond_6

    move-object v0, v11

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move/from16 v16, v0

    move-object v0, v5

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mOneByScale:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    :goto_2
    move/from16 v0, v16

    move-object v1, v11

    iput v0, v1, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 57
    const/high16 v16, 0x3f80

    cmpl-float v16, p6, v16

    if-nez v16, :cond_7

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move-object v1, v11

    iput v0, v1, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 58
    if-eqz p8, :cond_1

    const/16 v16, 0x3

    move/from16 v0, p8

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 59
    :cond_1
    const v16, -0x42333333

    move/from16 v0, v16

    move-object v1, v11

    iput v0, v1, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 61
    :cond_2
    move-object v0, v5

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mItemWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v14, v0

    .line 62
    .local v14, width:F
    move-object v0, v5

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mItemHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v7, v0

    .line 63
    .local v7, height:F
    if-eqz v10, :cond_3

    .line 64
    move v12, v14

    .line 65
    .local v12, temp:F
    move v14, v7

    .line 66
    move v7, v12

    .line 68
    .end local v12           #temp:F
    :cond_3
    move-object v0, v11

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move/from16 v16, v0

    move-object v0, v11

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    move/from16 v17, v0

    if-eqz v15, :cond_8

    mul-float v18, v14, v8

    .line 69
    mul-float v19, v7, v8

    .line 68
    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/GridCamera;->getDistanceToFitRect(FF)F

    move-result v18

    :goto_4
    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/GridCamera;->moveTo(FFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-virtual {v9, v11}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v9, v6}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 41
    .end local v6           #deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v7           #height:F
    .end local v11           #position:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v14           #width:F
    :goto_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    return-void

    .line 42
    .end local v8           #oneByZoom:F
    .end local v10           #portrait:I
    .end local v13           #theta:I
    .end local v15           #zoomin:Z
    :cond_4
    const/16 v16, 0x0

    move/from16 v15, v16

    goto/16 :goto_0

    .line 46
    .restart local v10       #portrait:I
    .restart local v13       #theta:I
    .restart local v15       #zoomin:Z
    :cond_5
    const/high16 v16, 0x4000

    goto/16 :goto_1

    .line 56
    .restart local v6       #deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .restart local v8       #oneByZoom:F
    .restart local v11       #position:Lcom/ecareme/pixwe/media/Vector3f;
    :cond_6
    :try_start_3
    move-object v0, v5

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mLookAtX:F

    move/from16 v16, v0

    goto :goto_2

    .line 57
    :cond_7
    move-object v0, v5

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mLookAtY:F

    move/from16 v16, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 69
    .restart local v7       #height:F
    .restart local v14       #width:F
    :cond_8
    const/16 v18, 0x0

    goto :goto_4

    .line 70
    .end local v7           #height:F
    .end local v14           #width:F
    :catchall_0
    move-exception v16

    .line 71
    :try_start_4
    invoke-virtual {v9, v11}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v9, v6}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 73
    throw v16

    .line 41
    .end local v6           #deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v8           #oneByZoom:F
    .end local v10           #portrait:I
    .end local v11           #position:Lcom/ecareme/pixwe/media/Vector3f;
    :catchall_1
    move-exception v16

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v16

    .line 75
    .restart local v8       #oneByZoom:F
    .restart local v10       #portrait:I
    :cond_9
    const/16 v16, 0x0

    :try_start_5
    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridCamera;->moveYTo(F)V

    .line 76
    const/16 v16, 0x0

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridCamera;->moveZTo(F)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5
.end method

.method public computeVisibleRange(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/IndexRange;Lcom/ecareme/pixwe/media/IndexRange;Lcom/ecareme/pixwe/media/IndexRange;I)V
    .locals 25
    .parameter "feed"
    .parameter "layout"
    .parameter "deltaAnchorPositionIn"
    .parameter "outVisibleRange"
    .parameter "outBufferedVisibleRange"
    .parameter "outCompleteRange"
    .parameter "state"

    .prologue
    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridCameraManager;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v12, v0

    .line 146
    .local v12, camera:Lcom/ecareme/pixwe/media/GridCamera;
    sget-object v22, Lcom/ecareme/pixwe/media/GridCameraManager;->sPool:Lcom/ecareme/pixwe/media/Pool;

    .line 147
    .local v22, pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    iget v9, v12, Lcom/ecareme/pixwe/media/GridCamera;->mLookAtX:F

    iget v10, v12, Lcom/ecareme/pixwe/media/GridCamera;->mScale:F

    mul-float v21, v9, v10

    .line 148
    .local v21, offset:F
    move-object v0, v12

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mItemWidth:I

    move/from16 v16, v0

    .line 149
    .local v16, itemWidth:I
    iget v9, v12, Lcom/ecareme/pixwe/media/GridCamera;->mWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    mul-float/2addr v9, v10

    move/from16 v0, v16

    int-to-float v0, v0

    move v10, v0

    add-float v19, v9, v10

    .line 150
    .local v19, maxIncrement:F
    move/from16 v0, v19

    neg-float v0, v0

    move v9, v0

    add-float v5, v9, v21

    .line 151
    .local v5, left:F
    const/high16 v9, 0x4000

    mul-float v9, v9, v19

    add-float v6, v5, v9

    .line 152
    .local v6, right:F
    if-eqz p7, :cond_0

    const/4 v9, 0x3

    move/from16 v0, p7

    move v1, v9

    if-ne v0, v1, :cond_1

    .line 153
    :cond_0
    move/from16 v0, v16

    int-to-float v0, v0

    move v9, v0

    const/high16 v10, 0x3f00

    mul-float/2addr v9, v10

    add-float/2addr v6, v9

    .line 155
    :cond_1
    move/from16 v0, v19

    neg-float v0, v0

    move v7, v0

    .line 156
    .local v7, top:F
    iget v9, v12, Lcom/ecareme/pixwe/media/GridCamera;->mHeight:I

    int-to-float v9, v9

    add-float v8, v9, v19

    .line 158
    .local v8, bottom:F
    const/16 v20, 0x0

    .line 159
    .local v20, numSlots:I
    if-eqz p1, :cond_2

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/MediaFeed;->getNumSlots()I

    move-result v20

    .line 162
    :cond_2
    monitor-enter p6

    .line 163
    const/4 v9, 0x0

    const/4 v10, 0x1

    sub-int v10, v20, v10

    :try_start_0
    move-object/from16 v0, p6

    move v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/IndexRange;->set(II)V

    .line 162
    monitor-exit p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual/range {v22 .. v22}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/ecareme/pixwe/media/Vector3f;

    .line 167
    .local v23, position:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual/range {v22 .. v22}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/ecareme/pixwe/media/Vector3f;

    .line 169
    .local v13, deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    const/4 v14, 0x0

    .line 170
    .local v14, firstVisibleSlotIndex:I
    const/4 v9, 0x1

    sub-int v17, v20, v9

    .line 171
    .local v17, lastVisibleSlotIndex:I
    move/from16 v18, v14

    .line 172
    .local v18, leftEdge:I
    move/from16 v24, v17

    .line 173
    .local v24, rightEdge:I
    add-int/lit8 v9, v24, 0x0

    :try_start_1
    div-int/lit8 v15, v9, 0x2

    .line 174
    .local v15, index:I
    move/from16 v17, v14

    .line 175
    move-object v0, v13

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 176
    :goto_0
    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 193
    :goto_1
    if-ltz v14, :cond_3

    move v0, v14

    move/from16 v1, v20

    if-lt v0, v1, :cond_d

    .line 203
    :cond_3
    :goto_2
    if-ltz v17, :cond_4

    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_f

    .line 212
    :cond_4
    :goto_3
    if-gez v14, :cond_5

    .line 213
    const/4 v14, 0x0

    .line 214
    :cond_5
    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 215
    const/4 v9, 0x1

    sub-int v17, v20, v9

    .line 216
    :cond_6
    monitor-enter p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 217
    :try_start_2
    move-object/from16 v0, p4

    move v1, v14

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/IndexRange;->set(II)V

    .line 216
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 219
    if-eqz p1, :cond_7

    .line 220
    :try_start_3
    move-object/from16 v0, p1

    move v1, v14

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/MediaFeed;->setVisibleRange(II)V

    .line 222
    :cond_7
    const/16 v11, 0x18

    .line 223
    .local v11, buffer:I
    const/16 v9, 0x18

    sub-int v9, v14, v9

    div-int/lit8 v9, v9, 0x18

    mul-int/lit8 v14, v9, 0x18

    .line 224
    add-int/lit8 v17, v17, 0x18

    .line 225
    div-int/lit8 v9, v17, 0x18

    mul-int/lit8 v17, v9, 0x18

    .line 226
    if-gez v14, :cond_8

    .line 227
    const/4 v14, 0x0

    .line 229
    :cond_8
    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    .line 230
    const/4 v9, 0x1

    sub-int v17, v20, v9

    .line 232
    :cond_9
    monitor-enter p5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 233
    :try_start_4
    move-object/from16 v0, p5

    move v1, v14

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/IndexRange;->set(II)V

    .line 232
    monitor-exit p5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 236
    invoke-virtual/range {v22 .. v23}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 237
    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 239
    return-void

    .line 162
    .end local v11           #buffer:I
    .end local v13           #deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v14           #firstVisibleSlotIndex:I
    .end local v15           #index:I
    .end local v17           #lastVisibleSlotIndex:I
    .end local v18           #leftEdge:I
    .end local v23           #position:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v24           #rightEdge:I
    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit p6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v9

    .line 177
    .restart local v13       #deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .restart local v14       #firstVisibleSlotIndex:I
    .restart local v15       #index:I
    .restart local v17       #lastVisibleSlotIndex:I
    .restart local v18       #leftEdge:I
    .restart local v23       #position:Lcom/ecareme/pixwe/media/Vector3f;
    .restart local v24       #rightEdge:I
    :cond_a
    :try_start_6
    move v0, v15

    move-object v1, v12

    move-object/from16 v2, p2

    move-object v3, v13

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 178
    move-object/from16 v0, v23

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move v9, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    move v10, v0

    invoke-static/range {v5 .. v10}, Lcom/ecareme/pixwe/media/FloatUtils;->boundsContainsPoint(FFFFFF)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 180
    move v14, v15

    .line 181
    move/from16 v17, v15

    .line 182
    goto :goto_1

    .line 184
    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move v9, v0

    cmpl-float v9, v9, v5

    if-lez v9, :cond_c

    .line 185
    move/from16 v24, v15

    .line 189
    :goto_4
    add-int v9, v18, v24

    div-int/lit8 v15, v9, 0x2

    goto/16 :goto_0

    .line 187
    :cond_c
    move/from16 v18, v15

    goto :goto_4

    .line 194
    :cond_d
    move v0, v14

    move-object v1, v12

    move-object/from16 v2, p2

    move-object v3, v13

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 196
    move-object/from16 v0, v23

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move v9, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    move v10, v0

    invoke-static/range {v5 .. v10}, Lcom/ecareme/pixwe/media/FloatUtils;->boundsContainsPoint(FFFFFF)Z

    move-result v9

    if-nez v9, :cond_e

    .line 197
    add-int/lit8 v14, v14, 0x1

    .line 198
    goto/16 :goto_2

    .line 200
    :cond_e
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_1

    .line 204
    :cond_f
    move/from16 v0, v17

    move-object v1, v12

    move-object/from16 v2, p2

    move-object v3, v13

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 205
    move-object/from16 v0, v23

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move v9, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    move v10, v0

    invoke-static/range {v5 .. v10}, Lcom/ecareme/pixwe/media/FloatUtils;->boundsContainsPoint(FFFFFF)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v9

    if-nez v9, :cond_10

    .line 206
    add-int/lit8 v17, v17, -0x1

    .line 207
    goto/16 :goto_3

    .line 209
    :cond_10
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 216
    :catchall_1
    move-exception v9

    :try_start_7
    monitor-exit p4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 235
    .end local v15           #index:I
    :catchall_2
    move-exception v9

    .line 236
    invoke-virtual/range {v22 .. v23}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 237
    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 238
    throw v9

    .line 232
    .restart local v11       #buffer:I
    .restart local v15       #index:I
    :catchall_3
    move-exception v9

    :try_start_9
    monitor-exit p5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
.end method

.method public constrainCameraForSlot(Lcom/ecareme/pixwe/media/LayoutInterface;ILcom/ecareme/pixwe/media/Vector3f;FF)Z
    .locals 23
    .parameter "layout"
    .parameter "slotIndex"
    .parameter "deltaAnchorPositionIn"
    .parameter "currentFocusItemWidth"
    .parameter "currentFocusItemHeight"

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridCameraManager;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v7, v0

    .line 88
    .local v7, camera:Lcom/ecareme/pixwe/media/GridCamera;
    sget-object v13, Lcom/ecareme/pixwe/media/GridCameraManager;->sPool:Lcom/ecareme/pixwe/media/Pool;

    .line 89
    .local v13, pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    const/4 v15, 0x0

    .line 90
    .local v15, retVal:Z
    monitor-enter v7

    .line 91
    :try_start_0
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ecareme/pixwe/media/Vector3f;

    .line 92
    .local v14, position:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ecareme/pixwe/media/Vector3f;

    .line 93
    .local v8, deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/ecareme/pixwe/media/Vector3f;

    .line 94
    .local v18, topLeft:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ecareme/pixwe/media/Vector3f;

    .line 95
    .local v6, bottomRight:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ecareme/pixwe/media/Vector3f;

    .line 96
    .local v11, imgTopLeft:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ecareme/pixwe/media/Vector3f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    .local v10, imgBottomRight:Lcom/ecareme/pixwe/media/Vector3f;
    if-ltz p2, :cond_3

    .line 100
    :try_start_1
    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 101
    move/from16 v0, p2

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 102
    move-object v0, v14

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move/from16 v20, v0

    move-object v0, v7

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mOneByScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object v1, v14

    iput v0, v1, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 103
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v14

    iput v0, v1, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 104
    const/high16 v20, 0x4000

    div-float v19, p4, v20

    .line 105
    .local v19, width:F
    const/high16 v20, 0x4000

    div-float v9, p5, v20

    .line 106
    .local v9, height:F
    move-object v0, v14

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move/from16 v20, v0

    sub-float v20, v20, v19

    move-object v0, v14

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    move/from16 v21, v0

    sub-float v21, v21, v9

    const/16 v22, 0x0

    move-object v0, v11

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/Vector3f;->set(FFF)V

    .line 107
    move-object v0, v14

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move/from16 v20, v0

    add-float v20, v20, v19

    move-object v0, v14

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    move/from16 v21, v0

    add-float v21, v21, v9

    const/16 v22, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/Vector3f;->set(FFF)V

    .line 108
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v7

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/GridCamera;->convertToCameraSpace(FFFLcom/ecareme/pixwe/media/Vector3f;)V

    .line 109
    move-object v0, v7

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object v0, v7

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object v0, v7

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/GridCamera;->convertToCameraSpace(FFFLcom/ecareme/pixwe/media/Vector3f;)V

    .line 110
    move-object/from16 v0, v18

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move/from16 v20, v0

    move-object v0, v11

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move/from16 v21, v0

    sub-float v12, v20, v21

    .line 111
    .local v12, leftExtent:F
    move-object v0, v6

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move/from16 v20, v0

    move-object v0, v10

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move/from16 v21, v0

    sub-float v16, v20, v21

    .line 112
    .local v16, rightExtent:F
    const/high16 v20, 0x4000

    move/from16 v0, v20

    move-object v1, v7

    iput v0, v1, Lcom/ecareme/pixwe/media/GridCamera;->mConvergenceSpeed:F

    .line 113
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v7

    iput v0, v1, Lcom/ecareme/pixwe/media/GridCamera;->mFriction:F

    .line 114
    const/16 v20, 0x0

    cmpg-float v20, v12, v20

    if-gez v20, :cond_0

    .line 115
    const/4 v15, 0x1

    .line 116
    move v0, v12

    neg-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v7

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/GridCamera;->moveBy(FFF)V

    .line 118
    :cond_0
    const/16 v20, 0x0

    cmpl-float v20, v16, v20

    if-lez v20, :cond_1

    .line 119
    const/4 v15, 0x1

    .line 120
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v7

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/GridCamera;->moveBy(FFF)V

    .line 122
    :cond_1
    move-object/from16 v0, v18

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    move/from16 v20, v0

    move-object v0, v11

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    move/from16 v21, v0

    sub-float v17, v20, v21

    .line 123
    .local v17, topExtent:F
    move-object v0, v6

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    move/from16 v20, v0

    move-object v0, v10

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    move/from16 v21, v0

    sub-float v5, v20, v21

    .line 124
    .local v5, bottomExtent:F
    const/16 v20, 0x0

    cmpg-float v20, v17, v20

    if-gez v20, :cond_2

    .line 125
    const/16 v20, 0x0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object v0, v7

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/GridCamera;->moveBy(FFF)V

    .line 127
    :cond_2
    const/16 v20, 0x0

    cmpl-float v20, v5, v20

    if-lez v20, :cond_3

    .line 128
    const/16 v20, 0x0

    move v0, v5

    neg-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object v0, v7

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/GridCamera;->moveBy(FFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .end local v5           #bottomExtent:F
    .end local v9           #height:F
    .end local v12           #leftExtent:F
    .end local v16           #rightExtent:F
    .end local v17           #topExtent:F
    .end local v19           #width:F
    :cond_3
    :try_start_2
    invoke-virtual {v13, v14}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v13, v8}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 134
    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v13, v6}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v13, v11}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v13, v10}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 90
    monitor-exit v7

    .line 140
    return v15

    .line 131
    :catchall_0
    move-exception v20

    .line 132
    invoke-virtual {v13, v14}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v13, v8}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 134
    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v13, v6}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v13, v11}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v13, v10}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 138
    throw v20

    .line 90
    .end local v6           #bottomRight:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v8           #deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v10           #imgBottomRight:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v11           #imgTopLeft:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v14           #position:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v18           #topLeft:Lcom/ecareme/pixwe/media/Vector3f;
    :catchall_1
    move-exception v20

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v20
.end method
