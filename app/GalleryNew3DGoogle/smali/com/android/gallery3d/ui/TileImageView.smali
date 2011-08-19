.class public Lcom/android/gallery3d/ui/TileImageView;
.super Lcom/android/gallery3d/ui/GLView;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/TileImageView$1;,
        Lcom/android/gallery3d/ui/TileImageView$Tile;,
        Lcom/android/gallery3d/ui/TileImageView$Uploader;,
        Lcom/android/gallery3d/ui/TileImageView$Model;
    }
.end annotation


# instance fields
.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/gallery3d/ui/TileImageView$Tile;",
            ">;"
        }
    .end annotation
.end field

.field protected mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

.field protected mCenterX:I

.field protected mCenterY:I

.field private mFullsizeEnabled:Z

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mIsTextureFreed:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRecycledHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private final mTileRange:Landroid/graphics/Rect;

.field private mUploadIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/gallery3d/ui/TileImageView$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadQuota:I

.field private final mUploader:Lcom/android/gallery3d/ui/TileImageView$Uploader;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 29
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 51
    iput v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    .line 67
    iput-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 70
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 71
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 82
    new-instance v0, Lcom/android/gallery3d/ui/TileImageView$Uploader;

    invoke-direct {v0, p0, v4}, Lcom/android/gallery3d/ui/TileImageView$Uploader;-><init>(Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploader:Lcom/android/gallery3d/ui/TileImageView$Uploader;

    .line 84
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mFullsizeEnabled:Z

    .line 483
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/TileImageView;)Ljava/util/Iterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadIter:Ljava/util/Iterator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/TileImageView;III)Lcom/android/gallery3d/ui/TileImageView$Tile;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView;->getTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    return-object v0
.end method

.method private activateTile(III)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 379
    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView;->makeTileKey(III)Ljava/lang/Long;

    move-result-object v0

    .line 380
    .local v0, key:Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 381
    .local v1, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    if-eqz v1, :cond_0

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView;->obtainTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v1

    .line 383
    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static drawTile(Lcom/android/gallery3d/ui/TileImageView$Tile;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 6
    .parameter "tile"
    .parameter "canvas"
    .parameter "source"
    .parameter "target"

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, 0x437e

    const/high16 v3, 0x4000

    .line 455
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/TileImageView$Tile;->isContentValid(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {p2, v5, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 458
    invoke-interface {p1, p0, p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 459
    const/4 v1, 0x1

    .line 464
    :goto_1
    return v1

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView$Tile;->getParentTile()Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    .line 464
    .local v0, parent:Lcom/android/gallery3d/ui/TileImageView$Tile;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 465
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    iget v2, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    if-ne v1, v2, :cond_2

    .line 466
    iget v1, p2, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 467
    iget v1, p2, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 472
    :goto_2
    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    iget v2, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    if-ne v1, v2, :cond_3

    .line 473
    iget v1, p2, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 474
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 479
    :goto_3
    move-object p0, v0

    .line 480
    goto :goto_0

    .line 469
    :cond_2
    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 470
    iget v1, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 476
    :cond_3
    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 477
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_3
.end method

.method private freeRecycledTile()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 371
    .local v0, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :goto_0
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView$Tile;->recycle()V

    .line 373
    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mNextFree:Lcom/android/gallery3d/ui/TileImageView$Tile;

    goto :goto_0

    .line 375
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 376
    return-void
.end method

.method private getRange(Landroid/graphics/Rect;IIIFI)V
    .locals 28
    .parameter "out"
    .parameter "cX"
    .parameter "cY"
    .parameter "level"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 246
    move/from16 v0, p6

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 247
    .local v12, radians:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v19, v0

    .line 248
    .local v19, w:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide v8, v0

    .line 250
    .local v8, h:D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 251
    .local v6, cos:D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    .line 252
    .local v15, sin:D
    mul-double v22, v6, v19

    mul-double v24, v15, v8

    sub-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    mul-double v24, v6, v19

    mul-double v26, v15, v8

    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    .line 254
    .local v21, width:I
    mul-double v22, v15, v19

    mul-double v24, v6, v8

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    mul-double v24, v15, v19

    mul-double v26, v6, v8

    sub-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v10, v0

    .line 257
    .local v10, height:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    mul-float v24, v24, p5

    div-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v11, v0

    .line 258
    .local v11, left:I
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v22, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    mul-float v24, v24, p5

    div-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v18, v0

    .line 259
    .local v18, top:I
    move v0, v11

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, p5

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v14, v0

    .line 260
    .local v14, right:I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, p5

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v5, v0

    .line 263
    .local v5, bottom:I
    const/16 v22, 0xfe

    shl-int v17, v22, p4

    .line 264
    .local v17, size:I
    const/16 v22, 0x0

    div-int v23, v11, v17

    mul-int v23, v23, v17

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 265
    const/16 v22, 0x0

    div-int v23, v18, v17

    mul-int v23, v23, v17

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    move v1, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 269
    move-object/from16 v0, p1

    move v1, v11

    move/from16 v2, v18

    move v3, v14

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 270
    return-void
.end method

.method private getRange(Landroid/graphics/Rect;IIII)V
    .locals 7
    .parameter "out"
    .parameter "cX"
    .parameter "cY"
    .parameter "level"
    .parameter "rotation"

    .prologue
    .line 234
    const/high16 v0, 0x3f80

    const/4 v1, 0x1

    add-int/lit8 v2, p4, 0x1

    shl-int/2addr v1, v2

    int-to-float v1, v1

    div-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 235
    return-void
.end method

.method private getTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView;->makeTileKey(III)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/ui/TileImageView$Tile;

    return-object p0
.end method

.method private layoutTiles(IIFI)V
    .locals 25
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getWidth()I

    move-result v22

    .line 157
    .local v22, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getHeight()I

    move-result v15

    .line 165
    .local v15, height:I
    const/high16 v4, 0x3f80

    div-float v4, v4, p3

    invoke-static {v4}, Lcom/android/gallery3d/util/Utils;->floorLog2(F)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    move v6, v0

    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    .line 168
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mFullsizeEnabled:Z

    move v4, v0

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    .line 173
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    move v5, v0

    if-eq v4, v5, :cond_2

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    move-object v5, v0

    .line 175
    .local v5, range:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    move v8, v0

    move-object/from16 v4, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 176
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int v6, v6, p1

    int-to-float v6, v6

    mul-float v6, v6, p3

    add-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/TileImageView;->mOffsetX:I

    .line 177
    int-to-float v4, v15

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .end local v5           #range:Landroid/graphics/Rect;
    sub-int v5, v5, p2

    int-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/TileImageView;->mOffsetY:I

    .line 178
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    move v5, v0

    shl-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, p3

    const/high16 v5, 0x3fc0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v14, v4

    .line 188
    .local v14, fromLevel:I
    :goto_0
    const/4 v4, 0x0

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 189
    add-int/lit8 v4, v14, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    move v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 190
    .local v13, endLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    move-object v5, v0

    .line 191
    .local v5, range:[Landroid/graphics/Rect;
    move v10, v14

    .local v10, i:I
    :goto_1
    if-ge v10, v13, :cond_4

    .line 192
    sub-int v4, v10, v14

    aget-object v7, v5, v4

    move-object/from16 v6, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lcom/android/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIII)V

    .line 191
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 178
    .end local v5           #range:[Landroid/graphics/Rect;
    .end local v10           #i:I
    .end local v13           #endLevel:I
    .end local v14           #fromLevel:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    move v4, v0

    move v14, v4

    goto :goto_0

    .line 183
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mFullsizeEnabled:Z

    move v4, v0

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    move v4, v0

    move v14, v4

    .line 184
    .restart local v14       #fromLevel:I
    :goto_2
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/TileImageView;->mOffsetX:I

    .line 185
    int-to-float v4, v15

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/TileImageView;->mOffsetY:I

    goto :goto_0

    .line 183
    .end local v14           #fromLevel:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    move v14, v4

    goto :goto_2

    .line 196
    .restart local v5       #range:[Landroid/graphics/Rect;
    .restart local v10       #i:I
    .restart local v13       #endLevel:I
    .restart local v14       #fromLevel:I
    :cond_4
    rem-int/lit8 v4, p4, 0x5a

    if-eqz v4, :cond_5

    .line 222
    .end local p1
    :goto_3
    return-void

    .line 201
    .restart local p1
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 202
    .end local p1
    .local v16, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/gallery3d/ui/TileImageView$Tile;>;>;"
    :cond_6
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 203
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 204
    .local v21, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    move/from16 v17, v0

    .line 205
    .local v17, level:I
    move/from16 v0, v17

    move v1, v14

    if-lt v0, v1, :cond_7

    move/from16 v0, v17

    move v1, v13

    if-ge v0, v1, :cond_7

    sub-int v4, v17, v14

    aget-object v4, v5, v4

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    move v6, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    move v7, v0

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_6

    .line 207
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/TileImageView;->recycleTile(Lcom/android/gallery3d/ui/TileImageView$Tile;)V

    goto :goto_4

    .line 212
    .end local v17           #level:I
    .end local v21           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_8
    move v10, v14

    :goto_5
    if-ge v10, v13, :cond_b

    .line 213
    const/16 v4, 0xfe

    shl-int v20, v4, v10

    .line 214
    .local v20, size:I
    sub-int v4, v10, v14

    aget-object v18, v5, v4

    .line 215
    .local v18, r:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .local v24, y:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v12, v0

    .local v12, bottom:I
    :goto_6
    move/from16 v0, v24

    move v1, v12

    if-ge v0, v1, :cond_a

    .line 216
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    .local v23, x:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    .local v19, right:I
    :goto_7
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 217
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/TileImageView;->activateTile(III)V

    .line 216
    add-int v23, v23, v20

    goto :goto_7

    .line 215
    :cond_9
    add-int v24, v24, v20

    goto :goto_6

    .line 212
    .end local v19           #right:I
    .end local v23           #x:I
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 221
    .end local v12           #bottom:I
    .end local v18           #r:Landroid/graphics/Rect;
    .end local v20           #size:I
    .end local v24           #y:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/ui/TileImageView;->mUploadIter:Ljava/util/Iterator;

    goto/16 :goto_3
.end method

.method public static makeTileKey(III)Ljava/lang/Long;
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    const/16 v6, 0x10

    .line 391
    int-to-long v0, p0

    .line 392
    .local v0, result:J
    shl-long v2, v0, v6

    int-to-long v4, p1

    or-long v0, v2, v4

    .line 393
    shl-long v2, v0, v6

    int-to-long v4, p2

    or-long v0, v2, v4

    .line 394
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method private obtainTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

    if-eqz v1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 356
    .local v0, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    iget-object v1, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mNextFree:Lcom/android/gallery3d/ui/TileImageView$Tile;

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 357
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView$Tile;->update(III)V

    .line 361
    :goto_0
    return-object v0

    .line 359
    .end local v0           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/TileImageView$Tile;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView$Tile;-><init>(Lcom/android/gallery3d/ui/TileImageView;III)V

    .restart local v0       #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    goto :goto_0
.end method

.method private recycleTile(Lcom/android/gallery3d/ui/TileImageView$Tile;)V
    .locals 1
    .parameter "tile"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

    iput-object v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mNextFree:Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 366
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledHead:Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 367
    return-void
.end method

.method private updateBackupTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "backup"

    .prologue
    .line 108
    if-nez p1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 115
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    goto :goto_0

    .line 118
    :cond_3
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    goto :goto_0
.end method


# virtual methods
.method public drawTile(Lcom/android/gallery3d/ui/GLCanvas;IIIFFF)V
    .locals 16
    .parameter "canvas"
    .parameter "tx"
    .parameter "ty"
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "length"

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    move-object v9, v0

    .line 424
    .local v9, source:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    move-object v10, v0

    .line 425
    .local v10, target:Landroid/graphics/RectF;
    add-float v12, p5, p7

    add-float v13, p6, p7

    move-object v0, v10

    move/from16 v1, p5

    move/from16 v2, p6

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 426
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x437e

    const/high16 v15, 0x437e

    invoke-virtual {v9, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 428
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/TileImageView;->getTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v11

    .line 429
    .local v11, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    if-eqz v11, :cond_3

    .line 430
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/TileImageView$Tile;->isContentValid(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 431
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    move v12, v0

    if-lez v12, :cond_2

    .line 432
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    move v12, v0

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    .line 433
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/TileImageView$Tile;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 438
    :cond_0
    :goto_0
    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v10

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/TileImageView;->drawTile(Lcom/android/gallery3d/ui/TileImageView$Tile;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 449
    :cond_1
    :goto_1
    return-void

    .line 435
    :cond_2
    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    goto :goto_0

    .line 440
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object v12, v0

    if-eqz v12, :cond_1

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object v5, v0

    .line 442
    .local v5, backup:Lcom/android/gallery3d/ui/BasicTexture;
    const/16 v12, 0xfe

    shl-int v8, v12, p4

    .line 443
    .local v8, size:I
    invoke-virtual {v5}, Lcom/android/gallery3d/ui/BitmapTexture;->getWidth()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    move v13, v0

    int-to-float v13, v13

    div-float v6, v12, v13

    .line 444
    .local v6, scaleX:F
    invoke-virtual {v5}, Lcom/android/gallery3d/ui/BitmapTexture;->getHeight()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    move v13, v0

    int-to-float v13, v13

    div-float v7, v12, v13

    .line 445
    .local v7, scaleY:F
    move/from16 v0, p2

    int-to-float v0, v0

    move v12, v0

    mul-float/2addr v12, v6

    move/from16 v0, p3

    int-to-float v0, v0

    move v13, v0

    mul-float/2addr v13, v7

    add-int v14, p2, v8

    int-to-float v14, v14

    mul-float/2addr v14, v6

    add-int v15, p3, v8

    int-to-float v15, v15

    mul-float/2addr v15, v7

    invoke-virtual {v9, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 447
    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v9

    move-object v3, v10

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method public freeTextures()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 285
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    .line 286
    iput-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadIter:Ljava/util/Iterator;

    .line 287
    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 288
    .local v1, texture:Lcom/android/gallery3d/ui/TileImageView$Tile;
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageView$Tile;->recycle()V

    goto :goto_0

    .line 290
    .end local v1           #texture:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 291
    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 292
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageView;->freeRecycledTile()V

    .line 293
    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/TileImageView;->updateBackupTexture(Landroid/graphics/Bitmap;)V

    .line 294
    return-void
.end method

.method protected invalidateTiles()V
    .locals 3

    .prologue
    .line 225
    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 226
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/gallery3d/ui/TileImageView$Tile;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 228
    .local v1, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/TileImageView;->recycleTile(Lcom/android/gallery3d/ui/TileImageView$Tile;)V

    goto :goto_0

    .line 230
    .end local v1           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 231
    return-void
.end method

.method public notifyModelInvalidated()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidateTiles()V

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 127
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 128
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 129
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    .line 136
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 137
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    .line 138
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getBackupImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/TileImageView;->updateBackupTexture(Landroid/graphics/Bitmap;)V

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getLevelCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 143
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/GLView;->onLayout(ZIIII)V

    .line 144
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 145
    :cond_0
    return-void
.end method

.method public prepareTextures()V
    .locals 4

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    if-eqz v0, :cond_0

    .line 298
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    .line 300
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getBackupImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/TileImageView;->updateBackupTexture(Landroid/graphics/Bitmap;)V

    .line 302
    :cond_0
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 306
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    .line 307
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    move v9, v0

    .line 310
    .local v9, level:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    move/from16 v24, v0

    .line 312
    .local v24, rotation:I
    if-eqz v24, :cond_0

    .line 313
    const/4 v5, 0x4

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)I

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getWidth()I

    move-result v5

    div-int/lit8 v19, v5, 0x2

    .local v19, centerX:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getHeight()I

    move-result v5

    div-int/lit8 v20, v5, 0x2

    .line 315
    .local v20, centerY:I
    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    .line 316
    move/from16 v0, v24

    int-to-float v0, v0

    move v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 317
    move/from16 v0, v19

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    move/from16 v0, v20

    neg-int v0, v0

    move v6, v0

    int-to-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    .line 320
    .end local v19           #centerX:I
    .end local v20           #centerY:I
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    move v5, v0

    if-eq v9, v5, :cond_2

    .line 321
    const/16 v5, 0xfe

    shl-int v25, v5, v9

    .line 322
    .local v25, size:I
    move/from16 v0, v25

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    move v6, v0

    mul-float v12, v5, v6

    .line 323
    .local v12, length:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 325
    .local v23, r:Landroid/graphics/Rect;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    .local v8, ty:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    if-ge v8, v5, :cond_3

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetY:I

    move v5, v0

    int-to-float v5, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v6, v0

    mul-float/2addr v6, v12

    add-float v11, v5, v6

    .line 327
    .local v11, y:F
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    .local v7, tx:I
    const/16 v22, 0x0

    .local v22, j:I
    :goto_1
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    if-ge v7, v5, :cond_1

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetX:I

    move v5, v0

    int-to-float v5, v5

    move/from16 v0, v22

    int-to-float v0, v0

    move v6, v0

    mul-float/2addr v6, v12

    add-float v10, v5, v6

    .local v10, x:F
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 329
    invoke-virtual/range {v5 .. v12}, Lcom/android/gallery3d/ui/TileImageView;->drawTile(Lcom/android/gallery3d/ui/GLCanvas;IIIFFF)V

    .line 327
    add-int v7, v7, v25

    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 325
    .end local v10           #x:F
    :cond_1
    add-int v8, v8, v25

    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 332
    .end local v7           #tx:I
    .end local v8           #ty:I
    .end local v11           #y:F
    .end local v12           #length:F
    .end local v21           #i:I
    .end local v22           #j:I
    .end local v23           #r:Landroid/graphics/Rect;
    .end local v25           #size:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetX:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    move v6, v0

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    move v6, v0

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v14, p1

    invoke-virtual/range {v13 .. v18}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :cond_3
    if-eqz v24, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 341
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    move v5, v0

    if-eqz v5, :cond_7

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mUploadIter:Ljava/util/Iterator;

    move-object v5, v0

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mUploadIter:Ljava/util/Iterator;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mUploader:Lcom/android/gallery3d/ui/TileImageView$Uploader;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/gallery3d/ui/TileImageView$Uploader;->mActive:Z

    if-nez v5, :cond_5

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mUploader:Lcom/android/gallery3d/ui/TileImageView$Uploader;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/gallery3d/ui/TileImageView$Uploader;->mActive:Z

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mUploader:Lcom/android/gallery3d/ui/TileImageView$Uploader;

    move-object v6, v0

    invoke-interface {v5, v6}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 350
    :cond_5
    :goto_2
    return-void

    .line 338
    :catchall_0
    move-exception v5

    if-eqz v24, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    :cond_6
    throw v5

    .line 348
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    goto :goto_2
.end method

.method public setFullsizeEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mFullsizeEnabled:Z

    if-ne v0, p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/TileImageView;->mFullsizeEnabled:Z

    .line 103
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 104
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/ui/TileImageView$Model;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    .line 98
    :cond_0
    return-void
.end method

.method public setPosition(IIFI)Z
    .locals 1
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 273
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0

    .line 275
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    .line 276
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    .line 277
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    .line 278
    iput p4, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    .line 279
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 280
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    .line 281
    const/4 v0, 0x1

    goto :goto_0
.end method
