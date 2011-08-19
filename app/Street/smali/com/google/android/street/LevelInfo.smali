.class Lcom/google/android/street/LevelInfo;
.super Ljava/lang/Object;
.source "LevelInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/LevelInfo$GridGenerator;
    }
.end annotation


# instance fields
.field private mBoundingSpheres:[F

.field private final mFullTileUnitHeight:F

.field private final mFullTileUnitWidth:F

.field private final mFullTilesX:I

.field private final mFullTilesY:I

.field private final mGridGenerator:Lcom/google/android/street/LevelInfo$GridGenerator;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mLastTileHeight:I

.field private final mLastTileUnitHeight:F

.field private final mLastTileUnitWidth:F

.field private final mLastTileWidth:I

.field final mTileFaceCount:I

.field private final mTileHeight:I

.field private final mTileWidth:I

.field final mTileXCount:I

.field final mTileYCount:I

.field private mTiles:[Lcom/google/android/street/Grid;

.field private mUsedDepthMap:Z

.field private final mZoomLevel:I


# direct methods
.method public constructor <init>(IILcom/google/android/street/LevelInfo$GridGenerator;IIIIFI)V
    .locals 5
    .parameter "zoomLevel"
    .parameter "zoomShift"
    .parameter "gridGenerator"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "tileWidth"
    .parameter "tileHeight"
    .parameter "geometryHeight"
    .parameter "tileFaceCount"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v3, p0, Lcom/google/android/street/LevelInfo;->mUsedDepthMap:Z

    .line 116
    if-gez p2, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "zoomShift"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput-object p3, p0, Lcom/google/android/street/LevelInfo;->mGridGenerator:Lcom/google/android/street/LevelInfo$GridGenerator;

    .line 120
    iput p1, p0, Lcom/google/android/street/LevelInfo;->mZoomLevel:I

    .line 121
    shr-int v0, p4, p2

    iput v0, p0, Lcom/google/android/street/LevelInfo;->mImageWidth:I

    .line 122
    shr-int v0, p5, p2

    iput v0, p0, Lcom/google/android/street/LevelInfo;->mImageHeight:I

    .line 123
    iput p6, p0, Lcom/google/android/street/LevelInfo;->mTileWidth:I

    .line 124
    iput p7, p0, Lcom/google/android/street/LevelInfo;->mTileHeight:I

    .line 125
    iget v0, p0, Lcom/google/android/street/LevelInfo;->mImageWidth:I

    iget v1, p0, Lcom/google/android/street/LevelInfo;->mTileWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/street/LevelInfo;->mFullTilesX:I

    .line 126
    iget v0, p0, Lcom/google/android/street/LevelInfo;->mImageWidth:I

    iget v1, p0, Lcom/google/android/street/LevelInfo;->mFullTilesX:I

    iget v2, p0, Lcom/google/android/street/LevelInfo;->mTileWidth:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/street/LevelInfo;->mLastTileWidth:I

    .line 127
    iget v0, p0, Lcom/google/android/street/LevelInfo;->mImageHeight:I

    iget v1, p0, Lcom/google/android/street/LevelInfo;->mTileHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/street/LevelInfo;->mFullTilesY:I

    .line 128
    iget v0, p0, Lcom/google/android/street/LevelInfo;->mImageHeight:I

    iget v1, p0, Lcom/google/android/street/LevelInfo;->mFullTilesY:I

    iget v2, p0, Lcom/google/android/street/LevelInfo;->mTileHeight:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/street/LevelInfo;->mLastTileHeight:I

    .line 129
    iput p9, p0, Lcom/google/android/street/LevelInfo;->mTileFaceCount:I

    .line 131
    iget v0, p0, Lcom/google/android/street/LevelInfo;->mFullTilesX:I

    iget v1, p0, Lcom/google/android/street/LevelInfo;->mLastTileWidth:I

    if-lez v1, :cond_1

    move v1, v4

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/street/LevelInfo;->mTileXCount:I

    .line 132
    iget v0, p0, Lcom/google/android/street/LevelInfo;->mFullTilesY:I

    iget v1, p0, Lcom/google/android/street/LevelInfo;->mLastTileHeight:I

    if-lez v1, :cond_2

    move v1, v4

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/street/LevelInfo;->mTileYCount:I

    .line 134
    iget v0, p0, Lcom/google/android/street/LevelInfo;->mTileWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/street/LevelInfo;->mImageWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/street/LevelInfo;->mFullTileUnitWidth:F

    .line 135
    iget v0, p0, Lcom/google/android/street/LevelInfo;->mLastTileWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/street/LevelInfo;->mImageWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/street/LevelInfo;->mLastTileUnitWidth:F

    .line 137
    iget v0, p0, Lcom/google/android/street/LevelInfo;->mTileHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/street/LevelInfo;->mImageHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p8

    iput v0, p0, Lcom/google/android/street/LevelInfo;->mFullTileUnitHeight:F

    .line 139
    iget v0, p0, Lcom/google/android/street/LevelInfo;->mLastTileHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/street/LevelInfo;->mImageHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p8

    iput v0, p0, Lcom/google/android/street/LevelInfo;->mLastTileUnitHeight:F

    .line 141
    return-void

    :cond_1
    move v1, v3

    .line 131
    goto :goto_0

    :cond_2
    move v1, v3

    .line 132
    goto :goto_1
.end method

.method private computeBoundingSpheres()V
    .locals 5

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/android/street/LevelInfo;->getTileCount()I

    move-result v1

    .line 203
    .local v1, numTiles:I
    mul-int/lit8 v2, v1, 0x4

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/google/android/street/LevelInfo;->mBoundingSpheres:[F

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 205
    iget-object v2, p0, Lcom/google/android/street/LevelInfo;->mTiles:[Lcom/google/android/street/Grid;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/android/street/LevelInfo;->mBoundingSpheres:[F

    mul-int/lit8 v4, v0, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/street/Grid;->getBoundingSphere([FI)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method private genGridsAndBoundingSpheres(Z)V
    .locals 38
    .parameter "useDepthMap"

    .prologue
    .line 213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    .line 215
    .local v34, startTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mFullTileUnitWidth:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mTileFaceCount:I

    move v5, v0

    move v0, v4

    move/from16 v1, p1

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/street/LevelInfo;->numGridQuads(FZI)I

    move-result v5

    .line 216
    .local v5, fullTileWidthQuads:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mLastTileUnitWidth:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mTileFaceCount:I

    move v6, v0

    move v0, v4

    move/from16 v1, p1

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/street/LevelInfo;->numGridQuads(FZI)I

    move-result v33

    .line 217
    .local v33, lastTileWidthQuads:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mFullTileUnitHeight:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mTileFaceCount:I

    move v6, v0

    move v0, v4

    move/from16 v1, p1

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/street/LevelInfo;->numGridQuads(FZI)I

    move-result v6

    .line 219
    .local v6, fullTileHeightQuads:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mLastTileUnitHeight:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mTileFaceCount:I

    move v7, v0

    move v0, v4

    move/from16 v1, p1

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/street/LevelInfo;->numGridQuads(FZI)I

    move-result v21

    .line 222
    .local v21, lastTileHeightQuads:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mLastTileWidth:I

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mTileWidth:I

    move v7, v0

    int-to-float v7, v7

    div-float v18, v4, v7

    .line 223
    .local v18, lastTileTexCoordWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mLastTileHeight:I

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mTileHeight:I

    move v7, v0

    int-to-float v7, v7

    div-float v28, v4, v7

    .line 226
    .local v28, lastTileTexCoordHeight:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/street/LevelInfo;->getTileCount()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/street/Grid;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/street/LevelInfo;->mTiles:[Lcom/google/android/street/Grid;

    .line 228
    const/4 v9, 0x0

    .local v9, face:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mTileFaceCount:I

    move v4, v0

    if-ge v9, v4, :cond_5

    .line 229
    const/4 v8, 0x0

    .line 230
    .local v8, yBase:F
    const/16 v37, 0x0

    .local v37, y:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mTileYCount:I

    move v4, v0

    move/from16 v0, v37

    move v1, v4

    if-ge v0, v1, :cond_4

    .line 231
    const/4 v7, 0x0

    .line 232
    .local v7, xBase:F
    const/16 v36, 0x0

    .local v36, x:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mTileXCount:I

    move v4, v0

    move/from16 v0, v36

    move v1, v4

    if-ge v0, v1, :cond_3

    .line 237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mFullTilesY:I

    move v4, v0

    move/from16 v0, v37

    move v1, v4

    if-ge v0, v1, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mFullTilesX:I

    move v4, v0

    move/from16 v0, v36

    move v1, v4

    if-ge v0, v1, :cond_0

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/LevelInfo;->mGridGenerator:Lcom/google/android/street/LevelInfo$GridGenerator;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mFullTileUnitWidth:F

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mFullTileUnitHeight:F

    move v11, v0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    move/from16 v14, p1

    invoke-interface/range {v4 .. v14}, Lcom/google/android/street/LevelInfo$GridGenerator;->genGrid(IIFFIFFFFZ)Lcom/google/android/street/Grid;

    move-result-object v32

    .line 262
    .local v32, grid:Lcom/google/android/street/Grid;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/LevelInfo;->mTiles:[Lcom/google/android/street/Grid;

    move-object v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/street/LevelInfo;->getTileIndex(III)I

    move-result v10

    aput-object v32, v4, v10

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mFullTileUnitWidth:F

    move v4, v0

    add-float/2addr v7, v4

    .line 232
    add-int/lit8 v36, v36, 0x1

    goto :goto_2

    .line 245
    .end local v32           #grid:Lcom/google/android/street/Grid;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/LevelInfo;->mGridGenerator:Lcom/google/android/street/LevelInfo$GridGenerator;

    move-object v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mLastTileUnitWidth:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mFullTileUnitHeight:F

    move/from16 v17, v0

    const/high16 v19, 0x3f80

    move/from16 v11, v33

    move v12, v6

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v20, p1

    invoke-interface/range {v10 .. v20}, Lcom/google/android/street/LevelInfo$GridGenerator;->genGrid(IIFFIFFFFZ)Lcom/google/android/street/Grid;

    move-result-object v32

    .restart local v32       #grid:Lcom/google/android/street/Grid;
    goto :goto_3

    .line 250
    .end local v32           #grid:Lcom/google/android/street/Grid;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mFullTilesX:I

    move v4, v0

    move/from16 v0, v36

    move v1, v4

    if-ge v0, v1, :cond_2

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/LevelInfo;->mGridGenerator:Lcom/google/android/street/LevelInfo$GridGenerator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mFullTileUnitWidth:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mLastTileUnitHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x3f80

    move/from16 v20, v5

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v29, p1

    invoke-interface/range {v19 .. v29}, Lcom/google/android/street/LevelInfo$GridGenerator;->genGrid(IIFFIFFFFZ)Lcom/google/android/street/Grid;

    move-result-object v32

    .restart local v32       #grid:Lcom/google/android/street/Grid;
    goto :goto_3

    .line 257
    .end local v32           #grid:Lcom/google/android/street/Grid;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/LevelInfo;->mGridGenerator:Lcom/google/android/street/LevelInfo$GridGenerator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mLastTileUnitWidth:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mLastTileUnitHeight:F

    move/from16 v26, v0

    move/from16 v20, v33

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v27, v18

    move/from16 v29, p1

    invoke-interface/range {v19 .. v29}, Lcom/google/android/street/LevelInfo$GridGenerator;->genGrid(IIFFIFFFFZ)Lcom/google/android/street/Grid;

    move-result-object v32

    .restart local v32       #grid:Lcom/google/android/street/Grid;
    goto/16 :goto_3

    .line 265
    .end local v32           #grid:Lcom/google/android/street/Grid;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mFullTileUnitHeight:F

    move v4, v0

    add-float/2addr v8, v4

    .line 230
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_1

    .line 228
    .end local v7           #xBase:F
    .end local v36           #x:I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 269
    .end local v8           #yBase:F
    .end local v37           #y:I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/street/LevelInfo;->computeBoundingSpheres()V

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    .line 272
    .local v30, endTime:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LevelInfo.genGridsAndBoundingSpheres "

    .end local v5           #fullTileWidthQuads:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mTileXCount:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mTileYCount:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LevelInfo;->mZoomLevel:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v10, v30, v34

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method private static numGridQuads(FZI)I
    .locals 3
    .parameter "tileUnitSize"
    .parameter "useDepthMap"
    .parameter "tileFaceCount"

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    const/high16 v1, 0x3d00

    div-float v0, p0, v1

    .line 195
    .local v0, r:F
    :goto_0
    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 197
    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 191
    .end local v0           #r:F
    :cond_0
    const/high16 v1, 0x3c80

    div-float v0, p0, v1

    .restart local v0       #r:F
    goto :goto_0
.end method


# virtual methods
.method public getBoundingSpheres(Z)[F
    .locals 1
    .parameter "useDepthMap"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/street/LevelInfo;->mBoundingSpheres:[F

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/street/LevelInfo;->mUsedDepthMap:Z

    if-eq p1, v0, :cond_1

    .line 289
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/street/LevelInfo;->genGridsAndBoundingSpheres(Z)V

    .line 290
    iput-boolean p1, p0, Lcom/google/android/street/LevelInfo;->mUsedDepthMap:Z

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/google/android/street/LevelInfo;->mBoundingSpheres:[F

    return-object v0
.end method

.method public getFaceEnumValue(I)I
    .locals 1
    .parameter "faceIndex"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/street/LevelInfo;->mGridGenerator:Lcom/google/android/street/LevelInfo$GridGenerator;

    invoke-interface {v0, p1}, Lcom/google/android/street/LevelInfo$GridGenerator;->getFaceEnumValue(I)I

    move-result v0

    return v0
.end method

.method public getGrid(IZ)Lcom/google/android/street/Grid;
    .locals 1
    .parameter "index"
    .parameter "useDepthMap"

    .prologue
    .line 280
    invoke-virtual {p0, p2}, Lcom/google/android/street/LevelInfo;->getBoundingSpheres(Z)[F

    .line 281
    iget-object v0, p0, Lcom/google/android/street/LevelInfo;->mTiles:[Lcom/google/android/street/Grid;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTileCount()I
    .locals 2

    .prologue
    .line 156
    iget v0, p0, Lcom/google/android/street/LevelInfo;->mTileXCount:I

    iget v1, p0, Lcom/google/android/street/LevelInfo;->mTileYCount:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/street/LevelInfo;->mTileFaceCount:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getTileIndex(III)I
    .locals 3
    .parameter "tileX"
    .parameter "tileY"
    .parameter "tileFace"

    .prologue
    .line 160
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/street/LevelInfo;->mTileXCount:I

    if-lt p1, v0, :cond_1

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tileX"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    if-ltz p2, :cond_2

    iget v0, p0, Lcom/google/android/street/LevelInfo;->mTileYCount:I

    if-lt p2, v0, :cond_3

    .line 164
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tileY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_3
    if-ltz p3, :cond_4

    iget v0, p0, Lcom/google/android/street/LevelInfo;->mTileFaceCount:I

    if-lt p3, v0, :cond_5

    .line 167
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tileFace"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_5
    iget v0, p0, Lcom/google/android/street/LevelInfo;->mTileXCount:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/street/LevelInfo;->mTileXCount:I

    mul-int/2addr v1, p3

    iget v2, p0, Lcom/google/android/street/LevelInfo;->mTileYCount:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getTileXCount()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/google/android/street/LevelInfo;->mTileXCount:I

    return v0
.end method

.method public getTileYCount()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/google/android/street/LevelInfo;->mTileYCount:I

    return v0
.end method
