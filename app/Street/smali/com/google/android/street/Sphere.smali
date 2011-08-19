.class Lcom/google/android/street/Sphere;
.super Lcom/google/android/street/GeometryDrawer;
.source "Sphere.java"


# instance fields
.field private final mTempV:[F


# direct methods
.method public constructor <init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$PanoFetchListener;)V
    .locals 1
    .parameter "panoramaManager"
    .parameter "panoFetchListener"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/GeometryDrawer;-><init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$PanoFetchListener;)V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/street/Sphere;->mTempV:[F

    .line 38
    return-void
.end method


# virtual methods
.method public genGrid(IIFFIFFFFZ)Lcom/google/android/street/Grid;
    .locals 18
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
    .line 83
    if-eqz p5, :cond_0

    .line 84
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid sphere face."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    :cond_0
    add-int/lit8 v14, p1, 0x1

    .line 88
    .local v14, gridWidthPoints:I
    add-int/lit8 v13, p2, 0x1

    .line 89
    .local v13, gridHeightPoints:I
    const/high16 v4, 0x3f80

    sub-float v4, v4, p4

    sub-float v11, v4, p7

    .line 90
    .local v11, angleYBase:F
    new-instance v1, Lcom/google/android/street/Grid;

    invoke-direct {v1, v14, v13}, Lcom/google/android/street/Grid;-><init>(II)V

    .line 91
    .local v1, grid:Lcom/google/android/street/Grid;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v14, :cond_4

    .line 92
    int-to-float v4, v2

    move/from16 v0, p1

    int-to-float v0, v0

    move v5, v0

    div-float v16, v4, v5

    .line 93
    .local v16, u:F
    mul-float v7, v16, p8

    .line 94
    .local v7, tu:F
    mul-float v4, v16, p6

    add-float v4, v4, p3

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-static {v4, v5, v6}, Lcom/google/android/street/StreetMath;->clamp(FFF)F

    move-result v9

    .line 97
    .local v9, angleX:F
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v13, :cond_3

    .line 98
    int-to-float v4, v3

    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    div-float v17, v4, v5

    .line 99
    .local v17, v:F
    const/high16 v4, 0x3f80

    sub-float v4, v4, v17

    mul-float v8, v4, p9

    .line 100
    .local v8, tv:F
    mul-float v4, v17, p7

    add-float/2addr v4, v11

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    invoke-static {v4, v5, v6}, Lcom/google/android/street/StreetMath;->clamp(FFF)F

    move-result v10

    .line 103
    .local v10, angleY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Sphere;->mTempV:[F

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v9, v10, v4, v5}, Lcom/google/android/street/StreetMath;->sphericalToRectangularCoords(FF[FI)V

    .line 107
    if-eqz p10, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Sphere;->mConfig:Lcom/google/android/street/PanoramaConfig;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-eqz v4, :cond_2

    .line 108
    const/high16 v4, 0x4348

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Sphere;->mConfig:Lcom/google/android/street/PanoramaConfig;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v10, v6}, Lcom/google/android/street/DepthMap;->computeDepthAndNormal(FF[F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 111
    .local v12, depth:F
    const/4 v4, 0x0

    cmpl-float v4, v12, v4

    if-nez v4, :cond_1

    .line 114
    const/high16 v12, 0x4348

    .line 116
    :cond_1
    const/4 v15, 0x0

    .local v15, k:I
    :goto_2
    const/4 v4, 0x3

    if-ge v15, v4, :cond_2

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Sphere;->mTempV:[F

    move-object v4, v0

    aget v5, v4, v15

    mul-float/2addr v5, v12

    aput v5, v4, v15

    .line 116
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 121
    .end local v12           #depth:F
    .end local v15           #k:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Sphere;->mTempV:[F

    move-object v4, v0

    const/4 v5, 0x3

    const/high16 v6, 0x3f80

    aput v6, v4, v5

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Sphere;->mTempV:[F

    move-object v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Sphere;->mTempV:[F

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Sphere;->mTempV:[F

    move-object v6, v0

    const/4 v10, 0x2

    aget v6, v6, v10

    .end local v10           #angleY:F
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/street/Grid;->set(IIFFFFF)V

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 91
    .end local v8           #tv:F
    .end local v17           #v:F
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 125
    .end local v3           #j:I
    .end local v7           #tu:F
    .end local v9           #angleX:F
    .end local v16           #u:F
    :cond_4
    return-object v1
.end method

.method public getFaceEnumValue(I)I
    .locals 4
    .parameter "faceIndex"

    .prologue
    .line 131
    const-wide/16 v0, 0x0

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/google/mobile/common/util/Assert;->assertEquals(JJ)V

    .line 132
    const/4 v0, -0x1

    return v0
.end method

.method public initialize(Lcom/google/android/street/PanoramaConfig;Lcom/google/android/street/TextureCache;II)V
    .locals 7
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
    .line 53
    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/street/Sphere;->initializeImpl(Lcom/google/android/street/PanoramaConfig;Lcom/google/android/street/TextureCache;IIFI)V

    .line 54
    return-void
.end method
