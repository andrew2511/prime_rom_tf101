.class abstract Lcom/google/android/street/GeometryDrawer;
.super Ljava/lang/Object;
.source "GeometryDrawer.java"

# interfaces
.implements Lcom/google/android/street/LevelInfo$GridGenerator;
.implements Lcom/google/android/street/Renderer$PanoramaDrawable;


# instance fields
.field protected mAspectRatio:F

.field protected mConfig:Lcom/google/android/street/PanoramaConfig;

.field private mFineVisibilityResults:[I

.field private mImageHeight:I

.field private mImageNaturalZoomLevels:I

.field private mImageYawDeg:F

.field private mLevels:[Lcom/google/android/street/LevelInfo;

.field private final mPanoFetchListener:Lcom/google/android/street/PanoramaManager$PanoFetchListener;

.field private final mPanoramaManager:Lcom/google/android/street/PanoramaManager;

.field private mRenderStatus:Lcom/google/android/street/Renderer$RenderStatus;

.field private mTextureCache:Lcom/google/android/street/TextureCache;

.field private mTileHeight:I

.field private mTileWidth:I

.field protected mViewHeight:I

.field private mVisibilityResults:[I

.field private final mVisibilityTester:Lcom/google/android/street/VisibilityTester;


# direct methods
.method public constructor <init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$PanoFetchListener;)V
    .locals 1
    .parameter "panoramaManager"
    .parameter "panoFetchListener"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/street/GeometryDrawer;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    .line 72
    iput-object p2, p0, Lcom/google/android/street/GeometryDrawer;->mPanoFetchListener:Lcom/google/android/street/PanoramaManager$PanoFetchListener;

    .line 73
    new-instance v0, Lcom/google/android/street/VisibilityTester;

    invoke-direct {v0}, Lcom/google/android/street/VisibilityTester;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/GeometryDrawer;->mVisibilityTester:Lcom/google/android/street/VisibilityTester;

    .line 74
    return-void
.end method

.method private bindImage(Ljavax/microedition/khronos/opengles/GL10;IIII)Z
    .locals 11
    .parameter "gl"
    .parameter "tileX"
    .parameter "tileY"
    .parameter "tileFace"
    .parameter "zoomLevel"

    .prologue
    .line 195
    move/from16 v5, p5

    .line 196
    .local v5, tryZoom:I
    move v2, p2

    .line 197
    .local v2, tryTileX:I
    move v3, p3

    .line 198
    .local v3, tryTileY:I
    const/high16 v6, 0x3f80

    .line 199
    .local v6, scale:F
    const/4 v9, 0x0

    .line 200
    .local v9, transX:F
    const/4 v10, 0x0

    .line 201
    .local v10, transY:F
    const/4 v8, 0x0

    .line 203
    .local v8, textureRequested:Z
    :goto_0
    if-ltz v5, :cond_2

    .line 204
    new-instance v0, Lcom/google/android/street/PanoramaImageKey;

    iget-object v1, p0, Lcom/google/android/street/GeometryDrawer;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v1, v1, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/street/PanoramaImageKey;-><init>(Ljava/lang/String;IIII)V

    .line 206
    .local v0, key:Lcom/google/android/street/PanoramaImageKey;
    iget-object v1, p0, Lcom/google/android/street/GeometryDrawer;->mTextureCache:Lcom/google/android/street/TextureCache;

    invoke-virtual {v1, v0}, Lcom/google/android/street/TextureCache;->getTextureId(Lcom/google/android/street/PanoramaImageKey;)I

    move-result v7

    .line 208
    .local v7, textureId:I
    if-eqz v7, :cond_0

    .line 209
    const/16 v1, 0xde1

    invoke-interface {p1, v1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 210
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 211
    const/4 v1, 0x0

    invoke-interface {p1, v9, v10, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 212
    const/high16 v1, 0x3f80

    invoke-interface {p1, v6, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 213
    iget-object v1, p0, Lcom/google/android/street/GeometryDrawer;->mRenderStatus:Lcom/google/android/street/Renderer$RenderStatus;

    invoke-virtual {v1, v6}, Lcom/google/android/street/Renderer$RenderStatus;->incAvailableTextures(F)V

    .line 214
    const/4 v1, 0x1

    .line 233
    .end local v0           #key:Lcom/google/android/street/PanoramaImageKey;
    .end local v2           #tryTileX:I
    .end local v7           #textureId:I
    :goto_1
    return v1

    .line 219
    .restart local v0       #key:Lcom/google/android/street/PanoramaImageKey;
    .restart local v2       #tryTileX:I
    .restart local v7       #textureId:I
    :cond_0
    if-nez v8, :cond_1

    invoke-static {}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->getInstance()Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 220
    invoke-direct {p0, v0}, Lcom/google/android/street/GeometryDrawer;->requestTile(Lcom/google/android/street/PanoramaImageKey;)V

    .line 221
    const/4 v8, 0x1

    .line 224
    :cond_1
    const/high16 v1, 0x4000

    div-float v1, v9, v1

    const/high16 v4, 0x3f00

    and-int/lit8 v7, v2, 0x1

    int-to-float v7, v7

    mul-float/2addr v4, v7

    add-float v9, v1, v4

    .line 225
    const/high16 v1, 0x4000

    div-float v1, v10, v1

    const/high16 v4, 0x3f00

    and-int/lit8 v7, v3, 0x1

    int-to-float v7, v7

    mul-float/2addr v4, v7

    add-float v10, v1, v4

    .line 226
    shr-int/lit8 v2, v2, 0x1

    .line 227
    shr-int/lit8 v3, v3, 0x1

    .line 228
    add-int/lit8 v5, v5, -0x1

    .line 229
    const/high16 v1, 0x3f00

    mul-float/2addr v6, v1

    .line 230
    goto :goto_0

    .line 232
    .end local v0           #key:Lcom/google/android/street/PanoramaImageKey;
    .end local v7           #textureId:I
    :cond_2
    iget-object v1, p0, Lcom/google/android/street/GeometryDrawer;->mRenderStatus:Lcom/google/android/street/Renderer$RenderStatus;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/street/Renderer$RenderStatus;->incAvailableTextures(F)V

    .line 233
    .end local v2           #tryTileX:I
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private drawTile(Ljavax/microedition/khronos/opengles/GL10;IIIIIZ)V
    .locals 12
    .parameter "gl"
    .parameter "zoomLevel"
    .parameter "tileIndex"
    .parameter "tileX"
    .parameter "tileY"
    .parameter "tileFace"
    .parameter "isTransition"

    .prologue
    .line 414
    iget-object v3, p0, Lcom/google/android/street/GeometryDrawer;->mLevels:[Lcom/google/android/street/LevelInfo;

    aget-object v10, v3, p2

    .line 415
    .local v10, level:Lcom/google/android/street/LevelInfo;
    const/16 v3, 0x1702

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 416
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    move-object v3, p0

    move-object v4, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move v8, p2

    .line 417
    invoke-direct/range {v3 .. v8}, Lcom/google/android/street/GeometryDrawer;->bindImage(Ljavax/microedition/khronos/opengles/GL10;IIII)Z

    move-result v11

    .line 418
    .local v11, useTexture:Z
    move-object v0, v10

    move v1, p3

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/LevelInfo;->getGrid(IZ)Lcom/google/android/street/Grid;

    move-result-object v9

    .line 419
    .local v9, grid:Lcom/google/android/street/Grid;
    invoke-virtual {v9, p1, v11}, Lcom/google/android/street/Grid;->draw(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 420
    const/16 v3, 0x1702

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 421
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 422
    return-void
.end method

.method private requestTile(Lcom/google/android/street/PanoramaImageKey;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/android/street/GeometryDrawer;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v1, p0, Lcom/google/android/street/GeometryDrawer;->mPanoFetchListener:Lcom/google/android/street/PanoramaManager$PanoFetchListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Lcom/google/android/street/PanoramaImageKey;Z)Z

    .line 426
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/Renderer$RenderStatus;Lcom/google/android/street/Renderer$Transition;)V
    .locals 20
    .parameter "gl"
    .parameter "userOrientation"
    .parameter "status"
    .parameter "transition"

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mConfig:Lcom/google/android/street/PanoramaConfig;

    move-object v5, v0

    if-nez v5, :cond_0

    .line 176
    :goto_0
    return-void

    .line 142
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/street/GeometryDrawer;->mRenderStatus:Lcom/google/android/street/Renderer$RenderStatus;

    .line 144
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/street/UserOrientation;->getScale()F

    move-result v18

    .line 145
    .local v18, scale:F
    const/high16 v5, 0x3e00

    mul-float v8, v18, v5

    .line 146
    .local v8, cameraAngleY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/GeometryDrawer;->mAspectRatio:F

    move v5, v0

    mul-float v7, v8, v5

    .line 155
    .local v7, cameraAngleX:F
    const/16 v5, 0x1701

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 156
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/GeometryDrawer;->mAspectRatio:F

    move v5, v0

    invoke-static {v5}, Lcom/google/android/street/Renderer;->getUnzoomedVerticalFov(F)F

    move-result v5

    mul-float v15, v5, v18

    .line 159
    .local v15, fovYDeg:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/GeometryDrawer;->mAspectRatio:F

    move v5, v0

    const v6, 0x3dcccccd

    const/high16 v9, 0x43c8

    move-object/from16 v0, p1

    move v1, v15

    move v2, v5

    move v3, v6

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 161
    const/16 v5, 0x1700

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 162
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 163
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/street/UserOrientation;->getRotationMatrix()[F

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 164
    const/high16 v5, 0x4334

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mConfig:Lcom/google/android/street/PanoramaConfig;

    move-object v6, v0

    iget v6, v6, Lcom/google/android/street/PanoramaConfig;->mTiltYawDeg:F

    sub-float v16, v5, v6

    .line 165
    .local v16, groundTiltDeg:F
    invoke-static/range {v16 .. v16}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v17

    .line 166
    .local v17, groundTiltRad:F
    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->cos(F)F

    move-result v14

    .line 167
    .local v14, csT:F
    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sin(F)F

    move-result v19

    .line 168
    .local v19, snT:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mConfig:Lcom/google/android/street/PanoramaConfig;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/street/PanoramaConfig;->mTiltPitchDeg:F

    neg-float v5, v5

    const/4 v6, 0x0

    move/from16 v0, v19

    neg-float v0, v0

    move v9, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v14

    move v3, v6

    move v4, v9

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/GeometryDrawer;->mImageYawDeg:F

    move v5, v0

    const/4 v6, 0x0

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v9

    move v4, v10

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 172
    const/high16 v5, 0x4000

    mul-float v10, v8, v5

    .line 174
    .local v10, viewScale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/GeometryDrawer;->mViewHeight:I

    move v5, v0

    int-to-float v9, v5

    const/high16 v11, 0x4000

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v12

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v13, p4

    invoke-virtual/range {v5 .. v13}, Lcom/google/android/street/GeometryDrawer;->drawTiles(Ljavax/microedition/khronos/opengles/GL10;FFFFFFLcom/google/android/street/Renderer$Transition;)V

    goto/16 :goto_0
.end method

.method protected drawTiles(Ljavax/microedition/khronos/opengles/GL10;FFFFFFLcom/google/android/street/Renderer$Transition;)V
    .locals 37
    .parameter "gl"
    .parameter "cameraAngleX"
    .parameter "cameraAngleY"
    .parameter "viewportHeightPixels"
    .parameter "viewScale"
    .parameter "zoomLevelBias"
    .parameter "zoomLevel"
    .parameter "transition"

    .prologue
    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/GeometryDrawer;->mImageHeight:I

    move v5, v0

    int-to-float v5, v5

    mul-float v23, p5, v5

    .line 258
    .local v23, fullSizeTexels:F
    div-float v33, v23, p4

    .line 262
    .local v33, texelsPerPixel:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/GeometryDrawer;->mAspectRatio:F

    move v5, v0

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 263
    const/high16 v5, 0x3f80

    sub-float p6, p6, v5

    .line 265
    :cond_0
    invoke-static/range {v33 .. v33}, Lcom/google/android/street/StreetMath;->log2(F)F

    move-result v5

    add-float v5, v5, p6

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v31, v0

    .line 267
    .local v31, preferedTexelZoomLevel:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/GeometryDrawer;->mImageNaturalZoomLevels:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v30, v5, v6

    .line 268
    .local v30, maxNaturalZoomLevel:I
    sub-int v18, v30, v31

    .line 269
    .local v18, desiredZoomLevel:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mLevels:[Lcom/google/android/street/LevelInfo;

    move-object v6, v0

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/street/StreetMath;->clamp(III)I

    move-result v17

    .line 272
    .local v17, clampedImageZoomLevel:I
    const/4 v5, 0x0

    cmpl-float v5, p7, v5

    if-nez v5, :cond_1

    .line 273
    const/4 v5, 0x3

    move/from16 v0, v17

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 279
    :cond_1
    const/16 v5, 0x1700

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 280
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 281
    if-eqz p8, :cond_6

    .line 286
    const/4 v5, 0x0

    const v6, 0x3dcccccd

    const v7, 0x3f733333

    const/high16 v8, 0x3f80

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/street/Renderer$Transition;->getProgress()F

    move-result v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/android/street/StreetMath;->bezier(FFFFF)F

    move-result v32

    .line 288
    .local v32, t:F
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/street/Renderer$Transition;->getClippedX()F

    move-result v5

    neg-float v5, v5

    mul-float v5, v5, v32

    const/4 v6, 0x0

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/street/Renderer$Transition;->getClippedY()F

    move-result v7

    mul-float v7, v7, v32

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 293
    const/16 v5, 0xb71

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 294
    const/16 v5, 0x100

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 301
    .end local v32           #t:F
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mVisibilityTester:Lcom/google/android/street/VisibilityTester;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/street/VisibilityTester;->getCurrentState(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 311
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mLevels:[Lcom/google/android/street/LevelInfo;

    move-object v5, v0

    aget-object v29, v5, v17

    .line 313
    .local v29, level:Lcom/google/android/street/LevelInfo;
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/street/LevelInfo;->getTileCount()I

    move-result v8

    .line 315
    .local v8, tileCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mVisibilityResults:[I

    move-object v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mVisibilityResults:[I

    move-object v5, v0

    array-length v5, v5

    if-le v8, v5, :cond_3

    .line 317
    :cond_2
    new-array v5, v8, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/street/GeometryDrawer;->mVisibilityResults:[I

    .line 318
    new-array v5, v8, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/street/GeometryDrawer;->mFineVisibilityResults:[I

    .line 321
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mVisibilityTester:Lcom/google/android/street/VisibilityTester;

    move-object v5, v0

    if-eqz p8, :cond_7

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, v29

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/street/LevelInfo;->getBoundingSpheres(Z)[F

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mVisibilityResults:[I

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mVisibilityResults:[I

    move-object v11, v0

    array-length v11, v11

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/street/VisibilityTester;->frustumCullSpheres([FII[III)I

    move-result v25

    .line 325
    .local v25, hits:I
    const/16 v20, 0x0

    .line 326
    .local v20, fineHits:I
    const/16 v27, 0x0

    .local v27, k:I
    move/from16 v21, v20

    .end local v20           #fineHits:I
    .local v21, fineHits:I
    :goto_3
    move/from16 v0, v27

    move/from16 v1, v25

    if-ge v0, v1, :cond_10

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mVisibilityResults:[I

    move-object v5, v0

    aget v34, v5, v27

    .line 328
    .local v34, tileIndex:I
    if-eqz p8, :cond_8

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, v29

    move/from16 v1, v34

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/LevelInfo;->getGrid(IZ)Lcom/google/android/street/Grid;

    move-result-object v24

    .line 329
    .local v24, grid:Lcom/google/android/street/Grid;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mVisibilityTester:Lcom/google/android/street/VisibilityTester;

    move-object v5, v0

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/street/Grid;->testVisibility(Lcom/google/android/street/VisibilityTester;)I

    move-result v22

    .line 330
    .local v22, fineResult:I
    if-lez v22, :cond_9

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mFineVisibilityResults:[I

    move-object v5, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21           #fineHits:I
    .restart local v20       #fineHits:I
    aput v34, v5, v21

    .line 332
    const/16 v5, 0x10

    move/from16 v0, v20

    move v1, v5

    if-le v0, v1, :cond_a

    .line 337
    .end local v22           #fineResult:I
    .end local v24           #grid:Lcom/google/android/street/Grid;
    .end local v34           #tileIndex:I
    :goto_5
    const/16 v5, 0x10

    move/from16 v0, v20

    move v1, v5

    if-le v0, v1, :cond_4

    if-gtz v17, :cond_b

    .line 345
    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 347
    .end local v8           #tileCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mRenderStatus:Lcom/google/android/street/Renderer$RenderStatus;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/Renderer$RenderStatus;->clear()V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mConfig:Lcom/google/android/street/PanoramaConfig;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/street/PanoramaConfig;->mRootImageKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, i$:Ljava/util/Iterator;
    :cond_5
    :goto_6
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/android/street/PanoramaImageKey;

    .line 351
    .local v28, key:Lcom/google/android/street/PanoramaImageKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mTextureCache:Lcom/google/android/street/TextureCache;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/street/TextureCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 355
    invoke-static {}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->getInstance()Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 356
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/google/android/street/GeometryDrawer;->requestTile(Lcom/google/android/street/PanoramaImageKey;)V

    goto :goto_6

    .line 298
    .end local v20           #fineHits:I
    .end local v25           #hits:I
    .end local v26           #i$:Ljava/util/Iterator;
    .end local v27           #k:I
    .end local v28           #key:Lcom/google/android/street/PanoramaImageKey;
    .end local v29           #level:Lcom/google/android/street/LevelInfo;
    :cond_6
    const/16 v5, 0xb71

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_0

    .line 321
    .restart local v8       #tileCount:I
    .restart local v29       #level:Lcom/google/android/street/LevelInfo;
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 328
    .restart local v21       #fineHits:I
    .restart local v25       #hits:I
    .restart local v27       #k:I
    .restart local v34       #tileIndex:I
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_4

    .restart local v22       #fineResult:I
    .restart local v24       #grid:Lcom/google/android/street/Grid;
    :cond_9
    move/from16 v20, v21

    .line 326
    .end local v21           #fineHits:I
    .restart local v20       #fineHits:I
    :cond_a
    add-int/lit8 v27, v27, 0x1

    move/from16 v21, v20

    .end local v20           #fineHits:I
    .restart local v21       #fineHits:I
    goto/16 :goto_3

    .line 341
    .end local v21           #fineHits:I
    .end local v22           #fineResult:I
    .end local v24           #grid:Lcom/google/android/street/Grid;
    .end local v34           #tileIndex:I
    .restart local v20       #fineHits:I
    :cond_b
    add-int/lit8 v17, v17, -0x1

    .line 342
    goto/16 :goto_1

    .line 361
    .end local v8           #tileCount:I
    .restart local v26       #i$:Ljava/util/Iterator;
    :cond_c
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/street/LevelInfo;->getTileXCount()I

    move-result v35

    .line 362
    .local v35, tileXCount:I
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/street/LevelInfo;->getTileYCount()I

    move-result v36

    .line 363
    .local v36, tileYCount:I
    const/16 v27, 0x0

    :goto_7
    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mFineVisibilityResults:[I

    move-object v5, v0

    aget v34, v5, v27

    .line 367
    .restart local v34       #tileIndex:I
    mul-int v5, v35, v36

    div-int v19, v34, v5

    .line 368
    .local v19, faceIndex:I
    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/street/LevelInfo;->getFaceEnumValue(I)I

    move-result v15

    .line 369
    .local v15, tileFaceEnumValue:I
    mul-int v5, v35, v36

    rem-int v34, v34, v5

    .line 370
    div-int v14, v34, v35

    .line 371
    .local v14, tileY:I
    rem-int v34, v34, v35

    .line 372
    move/from16 v13, v34

    .line 373
    .local v13, tileX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mFineVisibilityResults:[I

    move-object v5, v0

    aget v5, v5, v27

    int-to-long v5, v5

    move-object/from16 v0, v29

    move v1, v13

    move v2, v14

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/street/LevelInfo;->getTileIndex(III)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Lcom/google/mobile/common/util/Assert;->assertEquals(JJ)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mFineVisibilityResults:[I

    move-object v5, v0

    aget v12, v5, v27

    if-eqz p8, :cond_d

    const/4 v5, 0x1

    move/from16 v16, v5

    :goto_8
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, v17

    invoke-direct/range {v9 .. v16}, Lcom/google/android/street/GeometryDrawer;->drawTile(Ljavax/microedition/khronos/opengles/GL10;IIIIIZ)V

    .line 363
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 376
    :cond_d
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_8

    .line 379
    .end local v13           #tileX:I
    .end local v14           #tileY:I
    .end local v15           #tileFaceEnumValue:I
    .end local v19           #faceIndex:I
    .end local v34           #tileIndex:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mRenderStatus:Lcom/google/android/street/Renderer$RenderStatus;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/Renderer$RenderStatus;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/GeometryDrawer;->mConfig:Lcom/google/android/street/PanoramaConfig;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/street/Street;->logEndFrame(Lcom/google/android/street/PanoramaConfig;)V

    .line 384
    :cond_f
    const/16 v5, 0x1700

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 385
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 386
    return-void

    .end local v20           #fineHits:I
    .end local v26           #i$:Ljava/util/Iterator;
    .end local v35           #tileXCount:I
    .end local v36           #tileYCount:I
    .restart local v8       #tileCount:I
    .restart local v21       #fineHits:I
    :cond_10
    move/from16 v20, v21

    .end local v21           #fineHits:I
    .restart local v20       #fineHits:I
    goto/16 :goto_5
.end method

.method protected initializeImpl(Lcom/google/android/street/PanoramaConfig;Lcom/google/android/street/TextureCache;IIFI)V
    .locals 11
    .parameter "config"
    .parameter "textureCache"
    .parameter "viewWidth"
    .parameter "viewHeight"
    .parameter "geometryHeight"
    .parameter "tileFaceCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/street/GeometryDrawer;->mConfig:Lcom/google/android/street/PanoramaConfig;

    .line 94
    iput-object p2, p0, Lcom/google/android/street/GeometryDrawer;->mTextureCache:Lcom/google/android/street/TextureCache;

    .line 95
    iput p4, p0, Lcom/google/android/street/GeometryDrawer;->mViewHeight:I

    .line 96
    int-to-float v3, p3

    int-to-float v4, p4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/street/GeometryDrawer;->mAspectRatio:F

    .line 98
    iget v3, p1, Lcom/google/android/street/PanoramaConfig;->mImageHeight:I

    iput v3, p0, Lcom/google/android/street/GeometryDrawer;->mImageHeight:I

    .line 99
    iget v3, p1, Lcom/google/android/street/PanoramaConfig;->mTileWidth:I

    iput v3, p0, Lcom/google/android/street/GeometryDrawer;->mTileWidth:I

    .line 100
    iget v3, p1, Lcom/google/android/street/PanoramaConfig;->mTileHeight:I

    iput v3, p0, Lcom/google/android/street/GeometryDrawer;->mTileHeight:I

    .line 102
    iget v3, p1, Lcom/google/android/street/PanoramaConfig;->mImageWidth:I

    iget v4, p1, Lcom/google/android/street/PanoramaConfig;->mImageHeight:I

    iget v5, p1, Lcom/google/android/street/PanoramaConfig;->mTileWidth:I

    iget v6, p1, Lcom/google/android/street/PanoramaConfig;->mTileHeight:I

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/street/StreetMath;->naturalZoomLevels(IIII)I

    move-result v3

    iput v3, p0, Lcom/google/android/street/GeometryDrawer;->mImageNaturalZoomLevels:I

    .line 107
    iget v3, p1, Lcom/google/android/street/PanoramaConfig;->mOriginalZoomLevel:I

    iget v4, p0, Lcom/google/android/street/GeometryDrawer;->mImageNaturalZoomLevels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 110
    .local v10, zoomLevels:I
    new-array v3, v10, [Lcom/google/android/street/LevelInfo;

    iput-object v3, p0, Lcom/google/android/street/GeometryDrawer;->mLevels:[Lcom/google/android/street/LevelInfo;

    .line 111
    const/4 v1, 0x0

    .local v1, z:I
    :goto_0
    if-ge v1, v10, :cond_0

    .line 112
    iget v3, p0, Lcom/google/android/street/GeometryDrawer;->mImageNaturalZoomLevels:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 113
    .local v2, zoomShift:I
    new-instance v0, Lcom/google/android/street/LevelInfo;

    iget v4, p1, Lcom/google/android/street/PanoramaConfig;->mImageWidth:I

    iget v5, p1, Lcom/google/android/street/PanoramaConfig;->mImageHeight:I

    iget v6, p0, Lcom/google/android/street/GeometryDrawer;->mTileWidth:I

    iget v7, p0, Lcom/google/android/street/GeometryDrawer;->mTileHeight:I

    move-object v3, p0

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/street/LevelInfo;-><init>(IILcom/google/android/street/LevelInfo$GridGenerator;IIIIFI)V

    .line 116
    .local v0, levelInfo:Lcom/google/android/street/LevelInfo;
    iget-object v3, p0, Lcom/google/android/street/GeometryDrawer;->mLevels:[Lcom/google/android/street/LevelInfo;

    aput-object v0, v3, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v0           #levelInfo:Lcom/google/android/street/LevelInfo;
    .end local v2           #zoomShift:I
    :cond_0
    iget-object v3, p0, Lcom/google/android/street/GeometryDrawer;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget v3, v3, Lcom/google/android/street/PanoramaConfig;->mPanoYawDeg:F

    neg-float v3, v3

    const/high16 v4, 0x43b4

    invoke-static {v3, v4}, Lcom/google/android/street/StreetMath;->wrap(FF)F

    move-result v3

    iput v3, p0, Lcom/google/android/street/GeometryDrawer;->mImageYawDeg:F

    .line 121
    return-void
.end method
