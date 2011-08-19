.class public Lcom/google/android/street/Cube;
.super Lcom/google/android/street/GeometryDrawer;
.source "Cube.java"


# instance fields
.field private tempYawPitch:[F


# direct methods
.method public constructor <init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$PanoFetchListener;)V
    .locals 1
    .parameter "panoramaManager"
    .parameter "panoFetchListener"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/GeometryDrawer;-><init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$PanoFetchListener;)V

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/street/Cube;->tempYawPitch:[F

    .line 23
    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/Renderer$RenderStatus;Lcom/google/android/street/Renderer$Transition;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 12
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/street/GeometryDrawer;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/Renderer$RenderStatus;Lcom/google/android/street/Renderer$Transition;)V

    return-void
.end method

.method public genGrid(IIFFIFFFFZ)Lcom/google/android/street/Grid;
    .locals 24
    .parameter "gridWidthQuads"
    .parameter "gridHeightQuads"
    .parameter "xBase"
    .parameter "yBase"
    .parameter "face"
    .parameter "tileUnitWidth"
    .parameter "tileUnitHeight"
    .parameter "texcoordWidth"
    .parameter "texcoordHeight"
    .parameter "useDepthMap"

    .prologue
    .line 41
    if-ltz p5, :cond_0

    const/16 v21, 0x5

    move/from16 v0, p5

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 42
    :cond_0
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Invalid cube face."

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 47
    :cond_1
    if-nez p10, :cond_2

    .line 48
    const/16 p1, 0x1

    .line 49
    const/16 p2, 0x1

    .line 52
    :cond_2
    add-int/lit8 v14, p1, 0x1

    .line 53
    .local v14, gridWidthPoints:I
    add-int/lit8 v13, p2, 0x1

    .line 54
    .local v13, gridHeightPoints:I
    new-instance v4, Lcom/google/android/street/Grid;

    invoke-direct {v4, v14, v13}, Lcom/google/android/street/Grid;-><init>(II)V

    .line 55
    .local v4, grid:Lcom/google/android/street/Grid;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v14, :cond_6

    .line 56
    move v0, v5

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v17, v21, v22

    .line 57
    .local v17, u:F
    mul-float v10, v17, p8

    .line 58
    .local v10, tu:F
    mul-float v21, v17, p6

    add-float v21, v21, p3

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    invoke-static/range {v21 .. v23}, Lcom/google/android/street/StreetMath;->clamp(FFF)F

    move-result v19

    .line 60
    .local v19, w:F
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-ge v6, v13, :cond_5

    .line 61
    move v0, v6

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v18, v21, v22

    .line 62
    .local v18, v:F
    mul-float v11, v18, p9

    .line 63
    .local v11, tv:F
    mul-float v21, v18, p7

    add-float v21, v21, p4

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    invoke-static/range {v21 .. v23}, Lcom/google/android/street/StreetMath;->clamp(FFF)F

    move-result v15

    .line 67
    .local v15, h:F
    packed-switch p5, :pswitch_data_0

    .line 99
    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid cube face: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 69
    :pswitch_0
    const/high16 v21, 0x4000

    mul-float v21, v21, v19

    const/high16 v22, 0x3f80

    sub-float v7, v21, v22

    .line 70
    .local v7, x:F
    const/high16 v21, 0x3f80

    const/high16 v22, 0x4000

    mul-float v22, v22, v15

    sub-float v8, v21, v22

    .line 71
    .local v8, y:F
    const/high16 v9, -0x4080

    .line 103
    .local v9, z:F
    :goto_2
    if-eqz p10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Cube;->mConfig:Lcom/google/android/street/PanoramaConfig;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Cube;->tempYawPitch:[F

    move-object/from16 v21, v0

    move v0, v7

    move v1, v8

    move v2, v9

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/street/StreetMath;->rectangularToSphericalCoords(FFF[F)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Cube;->tempYawPitch:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v20, v21, v22

    .line 106
    .local v20, yaw:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Cube;->tempYawPitch:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v16, v21, v22

    .line 107
    .local v16, pitch:F
    const/high16 v21, 0x4348

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Cube;->mConfig:Lcom/google/android/street/PanoramaConfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v16

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/street/DepthMap;->computeDepthAndNormal(FF[F)F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 111
    .local v12, depth:F
    const/16 v21, 0x0

    cmpl-float v21, v12, v21

    if-nez v21, :cond_3

    .line 112
    const/high16 v12, 0x4348

    .line 117
    :cond_3
    mul-float/2addr v7, v12

    .line 118
    mul-float/2addr v8, v12

    .line 119
    mul-float/2addr v9, v12

    .line 122
    .end local v12           #depth:F
    .end local v16           #pitch:F
    .end local v20           #yaw:F
    :cond_4
    invoke-virtual/range {v4 .. v11}, Lcom/google/android/street/Grid;->set(IIFFFFF)V

    .line 60
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 74
    .end local v7           #x:F
    .end local v8           #y:F
    .end local v9           #z:F
    :pswitch_1
    const/high16 v7, -0x4080

    .line 75
    .restart local v7       #x:F
    const/high16 v21, 0x3f80

    const/high16 v22, 0x4000

    mul-float v22, v22, v15

    sub-float v8, v21, v22

    .line 76
    .restart local v8       #y:F
    const/high16 v21, 0x3f80

    const/high16 v22, 0x4000

    mul-float v22, v22, v19

    sub-float v9, v21, v22

    .line 77
    .restart local v9       #z:F
    goto :goto_2

    .line 79
    .end local v7           #x:F
    .end local v8           #y:F
    .end local v9           #z:F
    :pswitch_2
    const/high16 v21, 0x3f80

    const/high16 v22, 0x4000

    mul-float v22, v22, v19

    sub-float v7, v21, v22

    .line 80
    .restart local v7       #x:F
    const/high16 v21, 0x3f80

    const/high16 v22, 0x4000

    mul-float v22, v22, v15

    sub-float v8, v21, v22

    .line 81
    .restart local v8       #y:F
    const/high16 v9, 0x3f80

    .line 82
    .restart local v9       #z:F
    goto/16 :goto_2

    .line 84
    .end local v7           #x:F
    .end local v8           #y:F
    .end local v9           #z:F
    :pswitch_3
    const/high16 v7, 0x3f80

    .line 85
    .restart local v7       #x:F
    const/high16 v21, 0x3f80

    const/high16 v22, 0x4000

    mul-float v22, v22, v15

    sub-float v8, v21, v22

    .line 86
    .restart local v8       #y:F
    const/high16 v21, 0x4000

    mul-float v21, v21, v19

    const/high16 v22, 0x3f80

    sub-float v9, v21, v22

    .line 87
    .restart local v9       #z:F
    goto/16 :goto_2

    .line 89
    .end local v7           #x:F
    .end local v8           #y:F
    .end local v9           #z:F
    :pswitch_4
    const/high16 v21, 0x4000

    mul-float v21, v21, v19

    const/high16 v22, 0x3f80

    sub-float v7, v21, v22

    .line 90
    .restart local v7       #x:F
    const/high16 v8, 0x3f80

    .line 91
    .restart local v8       #y:F
    const/high16 v21, 0x3f80

    const/high16 v22, 0x4000

    mul-float v22, v22, v15

    sub-float v9, v21, v22

    .line 92
    .restart local v9       #z:F
    goto/16 :goto_2

    .line 94
    .end local v7           #x:F
    .end local v8           #y:F
    .end local v9           #z:F
    :pswitch_5
    const/high16 v21, 0x4000

    mul-float v21, v21, v19

    const/high16 v22, 0x3f80

    sub-float v7, v21, v22

    .line 95
    .restart local v7       #x:F
    const/high16 v8, -0x4080

    .line 96
    .restart local v8       #y:F
    const/high16 v21, 0x4000

    mul-float v21, v21, v15

    const/high16 v22, 0x3f80

    sub-float v9, v21, v22

    .line 97
    .restart local v9       #z:F
    goto/16 :goto_2

    .line 55
    .end local v7           #x:F
    .end local v8           #y:F
    .end local v9           #z:F
    .end local v11           #tv:F
    .end local v15           #h:F
    .end local v18           #v:F
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 125
    .end local v6           #j:I
    .end local v10           #tu:F
    .end local v17           #u:F
    .end local v19           #w:F
    :cond_6
    return-object v4

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getFaceEnumValue(I)I
    .locals 2
    .parameter "faceIndex"

    .prologue
    .line 130
    packed-switch p1, :pswitch_data_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid face index for cube."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :pswitch_0
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    .line 134
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 136
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 138
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 140
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 142
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public initialize(Lcom/google/android/street/PanoramaConfig;Lcom/google/android/street/TextureCache;II)V
    .locals 8
    .parameter "config"
    .parameter "textureCache"
    .parameter "viewWidth"
    .parameter "viewHeight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 29
    const/high16 v7, 0x3f80

    .line 30
    .local v7, geometryHeight:F
    const/high16 v5, 0x3f80

    const/4 v6, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/street/Cube;->initializeImpl(Lcom/google/android/street/PanoramaConfig;Lcom/google/android/street/TextureCache;IIFI)V

    .line 31
    return-void
.end method
