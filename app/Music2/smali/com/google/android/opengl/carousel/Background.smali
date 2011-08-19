.class Lcom/google/android/opengl/carousel/Background;
.super Ljava/lang/Object;
.source "Background.java"


# static fields
.field private static final BACKGROUND_COLOR_ONLY:Z = false

.field private static final TAG:Ljava/lang/String; = "Background"

.field private static sProjection:[F

.field private static sVertices:[F


# instance fields
.field public mBitmap0:Landroid/graphics/Bitmap;

.field public mBitmap1:Landroid/graphics/Bitmap;

.field public mBitmapUploaded:Z

.field public mColor:Lcom/google/android/opengl/carousel/Float4;

.field private mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field private mScene:Lcom/google/android/opengl/carousel/CarouselScene;

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Background;->sProjection:[F

    .line 23
    const/16 v0, 0xc

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Background;->sVertices:[F

    return-void
.end method

.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselScene;)V
    .locals 3
    .parameter "carousel"

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/google/android/opengl/carousel/Float4;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/google/android/opengl/carousel/Float4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/carousel/Float4;

    .line 38
    iput-object p1, p0, Lcom/google/android/opengl/carousel/Background;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    .line 39
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 40
    return-void
.end method

.method private getAnimatedAlpha(JJ)F
    .locals 6
    .parameter "startTime"
    .parameter "currentTime"

    .prologue
    .line 50
    sub-long v4, p3, p1

    long-to-double v2, v4

    .line 51
    .local v2, timeElapsed:D
    iget-object v4, p0, Lcom/google/android/opengl/carousel/Background;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-wide v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mBackgroundTransitionDuration:J

    long-to-double v4, v4

    div-double v0, v2, v4

    .line 52
    .local v0, alpha:D
    const/high16 v4, 0x3f80

    double-to-float v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method


# virtual methods
.method public draw(J)Z
    .locals 22
    .parameter "currentTime"

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    .line 62
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    .line 64
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/carousel/Float4;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/opengl/carousel/Float4;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/carousel/Float4;

    move-object v6, v0

    iget v6, v6, Lcom/google/android/opengl/carousel/Float4;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/carousel/Float4;

    move-object v7, v0

    iget v7, v7, Lcom/google/android/opengl/carousel/Float4;->z:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/carousel/Float4;

    move-object v8, v0

    iget v8, v8, Lcom/google/android/opengl/carousel/Float4;->w:F

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 67
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/carousel/Background;->mBitmapUploaded:Z

    .line 68
    const/16 v5, 0x4000

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 70
    const/4 v5, 0x0

    .line 137
    :goto_0
    return v5

    .line 73
    :cond_2
    const/16 v20, 0x0

    .line 75
    .local v20, stillAnimating:Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/opengl/carousel/Background;->mTimeStamp:J

    move-wide v5, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    move-wide/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/carousel/Background;->getAnimatedAlpha(JJ)F

    move-result v18

    .line 76
    .local v18, animatedAlpha:F
    const v5, 0x3f7d70a4

    cmpl-float v5, v18, v5

    if-gtz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-nez v5, :cond_5

    .line 77
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v5, v6}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 78
    const v5, 0x84c0

    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 79
    const/16 v5, 0xde1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v6, v6, Lcom/google/android/opengl/carousel/CarouselTexture;->mBackgroundId0:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 80
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmapUploaded:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 81
    const/16 v5, 0xde1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 104
    :cond_4
    :goto_1
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/carousel/Background;->mBitmapUploaded:Z

    .line 106
    sget-object v5, Lcom/google/android/opengl/carousel/Background;->sProjection:[F

    const/4 v6, 0x0

    const/high16 v7, -0x4080

    const/high16 v8, 0x3f80

    const/high16 v9, -0x4080

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/high16 v12, 0x4000

    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v5, v0

    sget-object v6, Lcom/google/android/opengl/carousel/Background;->sProjection:[F

    invoke-virtual {v5, v6}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setMVPUniform([F)V

    .line 109
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoord:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 113
    const v8, -0x4080068e

    .line 114
    .local v8, z:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mVerticesData:[F

    move-object/from16 v21, v0

    .line 116
    .local v21, vData:[F
    sget-object v5, Lcom/google/android/opengl/carousel/Background;->sVertices:[F

    const/4 v6, 0x0

    aget v6, v21, v6

    const/4 v7, 0x1

    aget v7, v21, v7

    const/4 v9, 0x3

    aget v9, v21, v9

    const/4 v10, 0x4

    aget v10, v21, v10

    const/4 v11, 0x6

    aget v12, v21, v11

    const/4 v11, 0x7

    aget v13, v21, v11

    const/16 v11, 0x9

    aget v15, v21, v11

    const/16 v11, 0xa

    aget v16, v21, v11

    move v11, v8

    move v14, v8

    move/from16 v17, v8

    invoke-static/range {v5 .. v17}, Lcom/google/android/opengl/carousel/GL2Helper;->setVector12f([FFFFFFFFFFFFF)V

    .line 121
    sget-object v5, Lcom/google/android/opengl/carousel/Background;->sVertices:[F

    invoke-static {v5}, Lcom/google/android/opengl/carousel/GL2Helper;->drawQuad([F)Z

    .line 124
    :try_start_0
    const-string v5, "drawBackground"

    invoke-static {v5}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v5, v20

    .line 137
    goto/16 :goto_0

    .line 84
    .end local v8           #z:F
    .end local v21           #vData:[F
    :cond_5
    const/16 v20, 0x1

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v5, v6}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setFadeAmount(F)V

    .line 90
    const v5, 0x84c0

    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 91
    const/16 v5, 0xde1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v6, v6, Lcom/google/android/opengl/carousel/CarouselTexture;->mBackgroundId1:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 92
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmapUploaded:Z

    move v5, v0

    if-nez v5, :cond_6

    .line 93
    const/16 v5, 0xde1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 97
    :cond_6
    const v5, 0x84c1

    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 98
    const/16 v5, 0xde1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v6, v6, Lcom/google/android/opengl/carousel/CarouselTexture;->mBackgroundId0:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 99
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmapUploaded:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 100
    const/16 v5, 0xde1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto/16 :goto_1

    .line 125
    .restart local v8       #z:F
    .restart local v21       #vData:[F
    :catch_0
    move-exception v5

    move-object/from16 v19, v5

    .line 126
    .local v19, e:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_7

    .line 127
    const-string v5, "Background"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed while trying to allocate texture id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v7, v7, Lcom/google/android/opengl/carousel/CarouselTexture;->mBackgroundId0:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v5, "Background"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Texture size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " * "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_8

    .line 131
    const-string v5, "Background"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed while trying to allocate texture id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v7, v7, Lcom/google/android/opengl/carousel/CarouselTexture;->mBackgroundId1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v5, "Background"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Texture size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " * "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_8
    throw v19
.end method

.method public initialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    .line 45
    iput-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/Background;->mBitmapUploaded:Z

    .line 47
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/opengl/carousel/Background;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 142
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter "bitmap"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/opengl/carousel/CarouselSetting;->recycleIfRequired(ILandroid/graphics/Bitmap;)Z

    .line 148
    if-eqz p2, :cond_1

    .line 150
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/opengl/carousel/Background;->mTimeStamp:J

    .line 157
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    .line 158
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/Background;->mBitmapUploaded:Z

    .line 159
    return-void

    .line 153
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
