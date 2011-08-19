.class public Lcom/google/android/opengl/carousel/Card;
.super Ljava/lang/Object;
.source "Card.java"


# static fields
.field private static final CACHE_TEXTURE:Z = true

.field private static FADE_THRESHOLD:F = 0.0f

.field public static final STATE_INVALID:I = 0x0

.field public static final STATE_LOADED:I = 0x2

.field public static final STATE_LOADING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Card"

.field public static final mVerticesData:[F

.field private static sGlowMatrix:[F

.field private static sMatrix:[F

.field private static sOneVertex:[F

.field private static sOtherScreenLeft:[F

.field private static sOtherScreenRight:[F

.field private static sScreenCoord:[F

.field private static sScreenCoordLeft:[F

.field private static sScreenCoordRight:[F

.field private static sVertices:[F


# instance fields
.field private mCarousel:Lcom/google/android/opengl/carousel/CarouselScene;

.field public mColor:[F

.field public mDetailLineOffset:Lcom/google/android/opengl/carousel/Float2;

.field public mDetailTexture:Landroid/graphics/Bitmap;

.field private mDetailTextureHeight:I

.field public mDetailTextureOffset:Lcom/google/android/opengl/carousel/Float2;

.field public mDetailTexturePosition:[Lcom/google/android/opengl/carousel/Float2;

.field public mDetailTextureState:I

.field public mDetailTextureTimeStamp:J

.field private mDetailTextureWidth:I

.field mDetailUploaded:Z

.field public mDetailVisible:Z

.field public mGeometryState:I

.field public mId:I

.field public mMMatrix:[F

.field private mMVPMatrix:[F

.field public mOldId:I

.field public mPrefetchTexture:Z

.field private mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field private mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

.field mTexUploaded:Z

.field public mTexture:Landroid/graphics/Bitmap;

.field public mTextureState:I

.field public mTextureTimeStamp:J

.field public mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0xc

    const/4 v1, 0x4

    .line 26
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->mVerticesData:[F

    .line 67
    const v0, 0x3f333333

    sput v0, Lcom/google/android/opengl/carousel/Card;->FADE_THRESHOLD:F

    .line 72
    new-array v0, v3, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sMatrix:[F

    .line 73
    new-array v0, v2, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sVertices:[F

    .line 74
    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sScreenCoord:[F

    .line 75
    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sScreenCoordLeft:[F

    .line 76
    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sScreenCoordRight:[F

    .line 77
    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sOtherScreenLeft:[F

    .line 78
    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sOtherScreenRight:[F

    .line 79
    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sOneVertex:[F

    .line 80
    new-array v0, v3, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sGlowMatrix:[F

    return-void

    .line 26
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/opengl/carousel/CarouselScene;I)V
    .locals 5
    .parameter "carousel"
    .parameter "id"

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mMMatrix:[F

    .line 33
    iput-boolean v3, p0, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    .line 35
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/Card;->mDetailVisible:Z

    .line 36
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/Card;->mPrefetchTexture:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/opengl/carousel/Card;->mOldId:I

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mColor:[F

    .line 56
    new-instance v0, Lcom/google/android/opengl/carousel/Float2;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/Float2;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureOffset:Lcom/google/android/opengl/carousel/Float2;

    .line 58
    new-instance v0, Lcom/google/android/opengl/carousel/Float2;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/Float2;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/carousel/Float2;

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/opengl/carousel/Float2;

    new-instance v1, Lcom/google/android/opengl/carousel/Float2;

    invoke-direct {v1}, Lcom/google/android/opengl/carousel/Float2;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/opengl/carousel/Float2;

    invoke-direct {v1}, Lcom/google/android/opengl/carousel/Float2;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/carousel/Float2;

    .line 69
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mMVPMatrix:[F

    .line 83
    iput-object p1, p0, Lcom/google/android/opengl/carousel/Card;->mCarousel:Lcom/google/android/opengl/carousel/CarouselScene;

    .line 84
    iget-object v0, p1, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 85
    iget-object v0, p1, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    .line 86
    iput p2, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    .line 87
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mColor:[F

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->getRandomVector([F)V

    .line 88
    return-void
.end method

.method private drawRuler([F)V
    .locals 20
    .parameter "screenCoord"

    .prologue
    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    move-object v1, v0

    iget v14, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailAlignment:I

    .line 332
    .local v14, detailTextureAlignment:I
    const/high16 v19, 0x40a0

    .line 334
    .local v19, yPadding:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move v0, v1

    int-to-float v0, v0

    move/from16 v16, v0

    .line 339
    .local v16, lineWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v1, :cond_0

    .line 340
    const/4 v1, 0x1

    aget v1, p1, v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    move-object v2, v0

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mPortriatRulerHeight:F

    add-float v18, v1, v2

    .line 341
    .local v18, rulerTop:F
    const/4 v1, 0x1

    aget v17, p1, v1

    .line 349
    .local v17, rulerBottom:F
    :goto_0
    const/high16 v1, 0x3f00

    mul-float v15, v16, v1

    .line 350
    .local v15, halfWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/carousel/Float2;

    move-object v1, v0

    iget v1, v1, Lcom/google/android/opengl/carousel/Float2;->x:F

    const/4 v2, 0x0

    aget v2, p1, v2

    add-float/2addr v1, v2

    sub-float v2, v1, v15

    .line 351
    .local v2, x0:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/carousel/Float2;

    move-object v1, v0

    iget v1, v1, Lcom/google/android/opengl/carousel/Float2;->x:F

    const/4 v3, 0x0

    aget v3, p1, v3

    add-float/2addr v1, v3

    add-float v5, v1, v15

    .line 352
    .local v5, x1:F
    add-float v3, v17, v19

    .line 353
    .local v3, y0:F
    sub-float v1, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/carousel/Float2;

    move-object v4, v0

    iget v4, v4, Lcom/google/android/opengl/carousel/Float2;->y:F

    sub-float v9, v1, v4

    .line 355
    .local v9, y1:F
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    if-ne v1, v4, :cond_2

    .line 357
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselTexture;->mDefaultLineId:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 364
    :goto_1
    sget-object v1, Lcom/google/android/opengl/carousel/Card;->sVertices:[F

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v6, 0x2

    aget v7, p1, v6

    const/4 v6, 0x2

    aget v10, p1, v6

    const/4 v6, 0x2

    aget v13, p1, v6

    move v6, v3

    move v8, v5

    move v11, v2

    move v12, v9

    invoke-static/range {v1 .. v13}, Lcom/google/android/opengl/carousel/GL2Helper;->setVector12f([FFFFFFFFFFFFF)V

    .line 367
    sget-object v1, Lcom/google/android/opengl/carousel/Card;->sVertices:[F

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->drawQuad([F)Z

    .line 368
    return-void

    .line 342
    .end local v2           #x0:F
    .end local v3           #y0:F
    .end local v5           #x1:F
    .end local v9           #y1:F
    .end local v15           #halfWidth:F
    .end local v17           #rulerBottom:F
    .end local v18           #rulerTop:F
    :cond_0
    and-int/lit8 v1, v14, 0x10

    if-lez v1, :cond_1

    .line 343
    const/4 v1, 0x1

    aget v18, p1, v1

    .line 344
    .restart local v18       #rulerTop:F
    const/16 v17, 0x0

    .restart local v17       #rulerBottom:F
    goto :goto_0

    .line 346
    .end local v17           #rulerBottom:F
    .end local v18           #rulerTop:F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v1, v0

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    move v0, v1

    int-to-float v0, v0

    move/from16 v18, v0

    .line 347
    .restart local v18       #rulerTop:F
    const/4 v1, 0x1

    aget v17, p1, v1

    .restart local v17       #rulerBottom:F
    goto/16 :goto_0

    .line 359
    .restart local v2       #x0:F
    .restart local v3       #y0:F
    .restart local v5       #x1:F
    .restart local v9       #y1:F
    .restart local v15       #halfWidth:F
    :cond_2
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselTexture;->mDetailLoadingId:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 360
    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 361
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselTexture;->mDefaultLineId:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_1
.end method

.method private getBlendedAlpha(F)F
    .locals 8
    .parameter "animatedAlpha"

    .prologue
    const/high16 v7, 0x3f80

    .line 302
    iget-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/opengl/carousel/Card;->mCarousel:Lcom/google/android/opengl/carousel/CarouselScene;

    iget v6, v6, Lcom/google/android/opengl/carousel/CarouselScene;->mWedgeAngle:F

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 304
    .local v3, startDetailFadeAngle:F
    iget-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mCarousel:Lcom/google/android/opengl/carousel/CarouselScene;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselScene;->mDetailFadeRate:F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/Card;->mCarousel:Lcom/google/android/opengl/carousel/CarouselScene;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselScene;->mWedgeAngle:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 306
    .local v1, endDetailFadeAngle:F
    iget-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mCarousel:Lcom/google/android/opengl/carousel/CarouselScene;

    iget v5, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/google/android/opengl/carousel/CarouselScene;->cardAngle(F)F

    move-result v4

    sub-float v4, v1, v4

    sub-float v5, v1, v3

    div-float v2, v4, v5

    .line 308
    .local v2, positionAlpha:F
    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 309
    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 311
    mul-float v4, p1, v2

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 313
    .local v0, blendedAlpha:F
    const v4, 0x3f7d70a4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    .line 314
    iget-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v5, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v5, v5, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v4, v5}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 321
    :goto_0
    return v0

    .line 316
    :cond_0
    iget-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v5, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v5, v5, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v4, v5}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 318
    iget-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v4, v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setFadeAmount(F)V

    goto :goto_0
.end method

.method private removeTexture(JZ)V
    .locals 5
    .parameter "currentTime"
    .parameter "shouldInvalidate"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 414
    iget v0, p0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v1, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselTexture;->removeCardTexturePair(I)V

    .line 416
    if-eqz p3, :cond_0

    .line 417
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mCarousel:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    iget v1, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-interface {v0, v1}, Lcom/google/android/opengl/carousel/CarouselCallback;->onInvalidateTexture(I)V

    .line 420
    :cond_0
    iput v3, p0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    .line 421
    iput-boolean v3, p0, Lcom/google/android/opengl/carousel/Card;->mTexUploaded:Z

    .line 424
    iput-wide p1, p0, Lcom/google/android/opengl/carousel/Card;->mTextureTimeStamp:J

    .line 425
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/CarouselSetting;->recycleIfRequired(ILandroid/graphics/Bitmap;)Z

    .line 428
    iput-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mTexture:Landroid/graphics/Bitmap;

    .line 432
    :cond_1
    iget v0, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    if-eqz v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v1, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselTexture;->removeCardDetailPair(I)V

    .line 434
    if-eqz p3, :cond_2

    .line 435
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mCarousel:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    iget v1, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-interface {v0, v1}, Lcom/google/android/opengl/carousel/CarouselCallback;->onInvalidateDetailTexture(I)V

    .line 438
    :cond_2
    iput v3, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    .line 439
    iput-boolean v3, p0, Lcom/google/android/opengl/carousel/Card;->mDetailUploaded:Z

    .line 441
    iput-wide p1, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureTimeStamp:J

    .line 442
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 443
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/CarouselSetting;->recycleIfRequired(ILandroid/graphics/Bitmap;)Z

    .line 445
    iput-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTexture:Landroid/graphics/Bitmap;

    .line 449
    :cond_3
    iget v0, p0, Lcom/google/android/opengl/carousel/Card;->mGeometryState:I

    if-eqz v0, :cond_4

    .line 450
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mCarousel:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    iget v1, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-interface {v0, v1}, Lcom/google/android/opengl/carousel/CarouselCallback;->onInvalidateGeometry(I)V

    .line 451
    iput v3, p0, Lcom/google/android/opengl/carousel/Card;->mGeometryState:I

    .line 453
    :cond_4
    return-void
.end method


# virtual methods
.method createGlDetail()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 503
    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    .line 505
    .local v1, texClass:Lcom/google/android/opengl/carousel/CarouselTexture;
    iget v2, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-virtual {v1, v2}, Lcom/google/android/opengl/carousel/CarouselTexture;->cardIdToDetailId(I)I

    move-result v0

    .line 506
    .local v0, tId:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 507
    iget v2, v1, Lcom/google/android/opengl/carousel/CarouselTexture;->mDetailLoadingId:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v2, v1, Lcom/google/android/opengl/carousel/CarouselTexture;->mCachedDetailIds:[I

    aget v2, v2, v0

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 511
    iget-boolean v2, p0, Lcom/google/android/opengl/carousel/Card;->mDetailUploaded:Z

    if-nez v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTexture:Landroid/graphics/Bitmap;

    invoke-static {v3, v4, v2, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 513
    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureWidth:I

    .line 514
    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureHeight:I

    .line 515
    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/opengl/carousel/CarouselSetting;->recycleIfRequired(ILandroid/graphics/Bitmap;)Z

    .line 517
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTexture:Landroid/graphics/Bitmap;

    .line 518
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/Card;->mDetailUploaded:Z

    goto :goto_0
.end method

.method createGlTexture()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 459
    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    .line 461
    .local v1, texClass:Lcom/google/android/opengl/carousel/CarouselTexture;
    iget v2, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-virtual {v1, v2}, Lcom/google/android/opengl/carousel/CarouselTexture;->cardIdToTextureId(I)I

    move-result v0

    .line 462
    .local v0, tId:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 463
    iget v2, v1, Lcom/google/android/opengl/carousel/CarouselTexture;->mLoadingId:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v2, v1, Lcom/google/android/opengl/carousel/CarouselTexture;->mCachedIds:[I

    aget v2, v2, v0

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 468
    iget-boolean v2, p0, Lcom/google/android/opengl/carousel/Card;->mTexUploaded:Z

    if-nez v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mTexture:Landroid/graphics/Bitmap;

    invoke-static {v3, v4, v2, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 470
    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v3, p0, Lcom/google/android/opengl/carousel/Card;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5, v3}, Lcom/google/android/opengl/carousel/CarouselSetting;->recycleIfRequired(ILandroid/graphics/Bitmap;)Z

    .line 472
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mTexture:Landroid/graphics/Bitmap;

    .line 473
    iput-boolean v5, p0, Lcom/google/android/opengl/carousel/Card;->mTexUploaded:Z

    goto :goto_0
.end method

.method public draw(F)V
    .locals 7
    .parameter "fadeAmount"

    .prologue
    const v4, 0x84c0

    const/16 v3, 0xde1

    const/4 v1, 0x0

    .line 103
    iget v0, p0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    move v6, v0

    .line 104
    .local v6, loaded:Z
    :goto_0
    sget v0, Lcom/google/android/opengl/carousel/Card;->FADE_THRESHOLD:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const v0, 0x3c23d70a

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    if-nez v6, :cond_3

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 108
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 111
    if-eqz v6, :cond_2

    sget v0, Lcom/google/android/opengl/carousel/Card;->FADE_THRESHOLD:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/Card;->createGlTexture()V

    .line 127
    :goto_1
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVPMatrix:[F

    iget-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mMMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 128
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mMVPMatrix:[F

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setMVPUniform([F)V

    .line 129
    const/4 v0, 0x6

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 131
    const-string v0, "Card.draw"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 132
    return-void

    .end local v6           #loaded:Z
    :cond_1
    move v6, v1

    .line 103
    goto :goto_0

    .line 114
    .restart local v6       #loaded:Z
    :cond_2
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselTexture;->mLoadingId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_1

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 119
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 120
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselTexture;->mLoadingId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 122
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 123
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setFadeAmount(F)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/Card;->createGlTexture()V

    goto :goto_1
.end method

.method public drawDetails(J[F)Z
    .locals 37
    .parameter "currentTime"
    .parameter "projection"

    .prologue
    .line 159
    const/16 v32, 0x0

    .line 160
    .local v32, stillAnimating:Z
    const/4 v10, 0x0

    move v0, v10

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/carousel/Card;->mDetailVisible:Z

    .line 163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    move v10, v0

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    .line 164
    const/4 v10, 0x0

    .line 293
    :goto_0
    return v10

    .line 169
    :cond_0
    sget-object v5, Lcom/google/android/opengl/carousel/Card;->sMatrix:[F

    .line 170
    .local v5, matrix:[F
    monitor-enter v5

    .line 171
    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v10, v0

    iget-object v7, v10, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVPMatrix:[F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mMMatrix:[F

    move-object v9, v0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 174
    sget-object v31, Lcom/google/android/opengl/carousel/Card;->sScreenCoord:[F

    .line 176
    .local v31, screenCoord:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    move-object v10, v0

    move-object v0, v10

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailAlignment:I

    move/from16 v25, v0

    .line 177
    .local v25, detailTextureAlignment:I
    and-int/lit8 v10, v25, 0x10

    if-lez v10, :cond_2

    .line 178
    const/16 v27, 0x0

    .line 179
    .local v27, indexLeft:I
    const/16 v28, 0x1

    .line 185
    .local v28, indexRight:I
    :goto_1
    sget-object v6, Lcom/google/android/opengl/carousel/Card;->sScreenCoordLeft:[F

    .line 186
    .local v6, screenCoordLeft:[F
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/Card;->getVertexCoord(I)[F

    move-result-object v10

    const/4 v11, 0x0

    move-object v8, v5

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 187
    sget-object v7, Lcom/google/android/opengl/carousel/Card;->sScreenCoordRight:[F

    .line 188
    .local v7, screenCoordRight:[F
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/Card;->getVertexCoord(I)[F

    move-result-object v11

    const/4 v12, 0x0

    move-object v9, v5

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 190
    const/4 v10, 0x3

    aget v10, v6, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_1

    const/4 v10, 0x3

    aget v10, v7, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    .line 192
    :cond_1
    const-string v10, "Card"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad transform: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v10, 0x0

    monitor-exit v5

    goto :goto_0

    .line 291
    .end local v6           #screenCoordLeft:[F
    .end local v7           #screenCoordRight:[F
    .end local v25           #detailTextureAlignment:I
    .end local v27           #indexLeft:I
    .end local v28           #indexRight:I
    .end local v31           #screenCoord:[F
    :catchall_0
    move-exception v10

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 181
    .restart local v25       #detailTextureAlignment:I
    .restart local v31       #screenCoord:[F
    :cond_2
    const/16 v27, 0x3

    .line 182
    .restart local v27       #indexLeft:I
    const/16 v28, 0x2

    .restart local v28       #indexRight:I
    goto :goto_1

    .line 196
    .restart local v6       #screenCoordLeft:[F
    .restart local v7       #screenCoordRight:[F
    :cond_3
    and-int/lit8 v10, v25, 0x1

    if-lez v10, :cond_4

    .line 198
    and-int/lit8 v10, v25, 0x10

    if-lez v10, :cond_9

    .line 199
    const/16 v27, 0x3

    .line 200
    const/16 v28, 0x2

    .line 205
    :goto_2
    :try_start_1
    sget-object v8, Lcom/google/android/opengl/carousel/Card;->sOtherScreenLeft:[F

    .line 206
    .local v8, otherScreenLeft:[F
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/Card;->getVertexCoord(I)[F

    move-result-object v12

    const/4 v13, 0x0

    move-object v10, v5

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 207
    sget-object v9, Lcom/google/android/opengl/carousel/Card;->sOtherScreenRight:[F

    .line 208
    .local v9, otherScreenRight:[F
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/Card;->getVertexCoord(I)[F

    move-result-object v13

    const/4 v14, 0x0

    move-object v11, v5

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 210
    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget v12, v6, v12

    const/4 v13, 0x1

    aget v13, v7, v13

    add-float/2addr v12, v13

    const/4 v13, 0x1

    aget v13, v8, v13

    add-float/2addr v12, v13

    const/4 v13, 0x1

    aget v13, v9, v13

    add-float/2addr v12, v13

    const/high16 v13, 0x4080

    div-float/2addr v12, v13

    aput v12, v6, v11

    aput v12, v7, v10

    .line 213
    .end local v8           #otherScreenLeft:[F
    .end local v9           #otherScreenRight:[F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v10, v0

    iget v10, v10, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    move v0, v10

    int-to-float v0, v0

    move/from16 v36, v0

    .line 214
    .local v36, width:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v10, v0

    iget v10, v10, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    move v0, v10

    int-to-float v0, v0

    move/from16 v26, v0

    .line 215
    .local v26, height:F
    move-object v0, v6

    move/from16 v1, v36

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/android/opengl/carousel/GL2Helper;->convertNormalizedToPixelCoordinates([FFF)Z

    .line 216
    move-object v0, v7

    move/from16 v1, v36

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/android/opengl/carousel/GL2Helper;->convertNormalizedToPixelCoordinates([FFF)Z

    .line 218
    move-object/from16 v31, v6

    .line 219
    and-int/lit8 v10, v25, 0x10

    if-lez v10, :cond_a

    .line 220
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v6, v11

    const/4 v12, 0x1

    aget v12, v7, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    aput v11, v31, v10

    .line 224
    :cond_5
    :goto_3
    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x100

    move v10, v0

    if-lez v10, :cond_6

    .line 225
    const/4 v10, 0x0

    aget v11, v31, v10

    const/4 v12, 0x0

    aget v12, v7, v12

    const/4 v13, 0x0

    aget v13, v6, v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureWidth:I

    move v13, v0

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v31, v10

    .line 229
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v10, :cond_7

    .line 230
    const v10, 0x3dcccccd

    invoke-static {v6, v7, v10}, Lcom/google/android/opengl/carousel/GL2Helper;->proportionPoint([F[FF)[F

    move-result-object v31

    .line 235
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mCarousel:Lcom/google/android/opengl/carousel/CarouselScene;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureTimeStamp:J

    move-wide v15, v0

    move-object v0, v10

    move-wide v1, v15

    move-wide/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/carousel/CarouselScene;->getAnimatedAlpha(JJ)F

    move-result v23

    .line 236
    .local v23, animatedAlpha:F
    const/high16 v10, 0x3f80

    cmpg-float v10, v23, v10

    if-gez v10, :cond_8

    .line 237
    const/16 v32, 0x1

    .line 240
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/opengl/carousel/Card;->getBlendedAlpha(F)F

    move-result v24

    .line 241
    .local v24, blendedAlpha:F
    const/4 v10, 0x0

    cmpl-float v10, v24, v10

    if-nez v10, :cond_b

    .line 242
    const/4 v10, 0x0

    monitor-exit v5

    goto/16 :goto_0

    .line 202
    .end local v23           #animatedAlpha:F
    .end local v24           #blendedAlpha:F
    .end local v26           #height:F
    .end local v36           #width:F
    :cond_9
    const/16 v27, 0x0

    .line 203
    const/16 v28, 0x1

    goto/16 :goto_2

    .line 221
    .restart local v26       #height:F
    .restart local v36       #width:F
    :cond_a
    and-int/lit8 v10, v25, 0x1

    if-lez v10, :cond_5

    .line 222
    const/4 v10, 0x1

    aget v11, v31, v10

    float-to-double v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureHeight:I

    move v11, v0

    move v0, v11

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    sub-double v15, v15, v17

    double-to-float v11, v15

    aput v11, v31, v10

    goto :goto_3

    .line 245
    .restart local v23       #animatedAlpha:F
    .restart local v24       #blendedAlpha:F
    :cond_b
    const/4 v10, 0x1

    move v0, v10

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/carousel/Card;->mDetailVisible:Z

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v10, v0

    move-object v0, v10

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setMVPUniform([F)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/android/opengl/carousel/CarouselSetting;->mDrawRuler:Z

    if-eqz v10, :cond_c

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/google/android/opengl/carousel/Card;->drawRuler([F)V

    .line 254
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureWidth:I

    move v10, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v35, v0

    .line 255
    .local v35, textureWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureHeight:I

    move v10, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v33, v0

    .line 256
    .local v33, textureHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureOffset:Lcom/google/android/opengl/carousel/Float2;

    move-object v10, v0

    move-object v0, v10

    iget v0, v0, Lcom/google/android/opengl/carousel/Float2;->x:F

    move/from16 v29, v0

    .line 257
    .local v29, offx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureOffset:Lcom/google/android/opengl/carousel/Float2;

    move-object v10, v0

    iget v10, v10, Lcom/google/android/opengl/carousel/Float2;->y:F

    move v0, v10

    neg-float v0, v0

    move/from16 v30, v0

    .line 259
    .local v30, offy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v10, :cond_d

    .line 260
    const/4 v10, 0x1

    aget v10, v31, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    move-object v11, v0

    iget v11, v11, Lcom/google/android/opengl/carousel/CarouselSetting;->mPortriatRulerHeight:F

    add-float v34, v10, v11

    .line 269
    .local v34, textureTop:F
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v10, :cond_f

    .line 270
    const/4 v10, 0x0

    aget v10, v31, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/carousel/Float2;

    move-object v11, v0

    iget v11, v11, Lcom/google/android/opengl/carousel/Float2;->x:F

    sub-float/2addr v10, v11

    sub-float v10, v10, v29

    sub-float v11, v10, v35

    .line 271
    .local v11, x0:F
    const/4 v10, 0x1

    aget v10, v31, v10

    add-float v10, v10, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/carousel/Float2;

    move-object v12, v0

    iget v12, v12, Lcom/google/android/opengl/carousel/Float2;->y:F

    sub-float/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    move-object v12, v0

    iget v12, v12, Lcom/google/android/opengl/carousel/CarouselSetting;->mPortriatRulerHeight:F

    add-float/2addr v10, v12

    sub-float v12, v10, v33

    .line 277
    .local v12, y0:F
    :goto_5
    add-float v14, v11, v35

    .line 278
    .local v14, x1:F
    add-float v18, v12, v33

    .line 280
    .local v18, y1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/carousel/Float2;

    move-object v10, v0

    const/4 v13, 0x0

    aget-object v10, v10, v13

    iput v11, v10, Lcom/google/android/opengl/carousel/Float2;->x:F

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/carousel/Float2;

    move-object v10, v0

    const/4 v13, 0x0

    aget-object v10, v10, v13

    sub-float v13, v26, v18

    iput v13, v10, Lcom/google/android/opengl/carousel/Float2;->y:F

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/carousel/Float2;

    move-object v10, v0

    const/4 v13, 0x1

    aget-object v10, v10, v13

    iput v14, v10, Lcom/google/android/opengl/carousel/Float2;->x:F

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/carousel/Float2;

    move-object v10, v0

    const/4 v13, 0x1

    aget-object v10, v10, v13

    sub-float v13, v26, v12

    iput v13, v10, Lcom/google/android/opengl/carousel/Float2;->y:F

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/carousel/Card;->setGlDetailTexture()V

    .line 287
    sget-object v10, Lcom/google/android/opengl/carousel/Card;->sVertices:[F

    const/4 v13, 0x2

    aget v13, v31, v13

    const/4 v15, 0x2

    aget v16, v31, v15

    const/4 v15, 0x2

    aget v19, v31, v15

    const/4 v15, 0x2

    aget v22, v31, v15

    move v15, v12

    move/from16 v17, v14

    move/from16 v20, v11

    move/from16 v21, v18

    invoke-static/range {v10 .. v22}, Lcom/google/android/opengl/carousel/GL2Helper;->setVector12f([FFFFFFFFFFFFF)V

    .line 290
    sget-object v10, Lcom/google/android/opengl/carousel/Card;->sVertices:[F

    invoke-static {v10}, Lcom/google/android/opengl/carousel/GL2Helper;->drawQuad([F)Z

    .line 291
    monitor-exit v5

    move/from16 v10, v32

    .line 293
    goto/16 :goto_0

    .line 261
    .end local v11           #x0:F
    .end local v12           #y0:F
    .end local v14           #x1:F
    .end local v18           #y1:F
    .end local v34           #textureTop:F
    :cond_d
    and-int/lit8 v10, v25, 0x2

    if-lez v10, :cond_e

    .line 262
    move/from16 v34, v26

    .restart local v34       #textureTop:F
    goto/16 :goto_4

    .line 264
    .end local v34           #textureTop:F
    :cond_e
    const/4 v10, 0x1

    aget v34, v31, v10

    .restart local v34       #textureTop:F
    goto/16 :goto_4

    .line 273
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/carousel/Float2;

    move-object v10, v0

    iget v10, v10, Lcom/google/android/opengl/carousel/Float2;->x:F

    const/4 v11, 0x0

    aget v11, v31, v11

    add-float/2addr v10, v11

    add-float v11, v10, v29

    .line 274
    .restart local v11       #x0:F
    add-float v10, v34, v30

    sub-float v10, v10, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/carousel/Float2;

    move-object v12, v0

    iget v12, v12, Lcom/google/android/opengl/carousel/Float2;->y:F

    sub-float v12, v10, v12

    .line 275
    .restart local v12       #y0:F
    add-float v10, v34, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/carousel/Float2;

    move-object v13, v0

    iget v13, v13, Lcom/google/android/opengl/carousel/Float2;->y:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-float/2addr v10, v13

    goto/16 :goto_5
.end method

.method public drawGlowing(F)V
    .locals 7
    .parameter "glowAlpha"

    .prologue
    const/4 v1, 0x0

    .line 138
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mGlowingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mMMatrix:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sGlowMatrix:[F

    .line 141
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v6, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardGlowScale:F

    .line 142
    .local v6, scale:F
    sget-object v0, Lcom/google/android/opengl/carousel/Card;->sGlowMatrix:[F

    invoke-static {v0, v1, v6, v6, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 143
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVPMatrix:[F

    sget-object v4, Lcom/google/android/opengl/carousel/Card;->sGlowMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 144
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mMVPMatrix:[F

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setMVPUniform([F)V

    .line 146
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 147
    const/16 v0, 0xde1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselTexture;->mGlowingId:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 148
    const/4 v0, 0x6

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_0
.end method

.method public getVertexCoord(I)[F
    .locals 5
    .parameter "vertex"

    .prologue
    const/4 v4, 0x3

    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 93
    sget-object v1, Lcom/google/android/opengl/carousel/Card;->sOneVertex:[F

    sget-object v2, Lcom/google/android/opengl/carousel/Card;->mVerticesData:[F

    mul-int/lit8 v3, p1, 0x3

    add-int/2addr v3, v0

    aget v2, v2, v3

    aput v2, v1, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    sget-object v1, Lcom/google/android/opengl/carousel/Card;->sOneVertex:[F

    const/high16 v2, 0x3f80

    aput v2, v1, v4

    .line 97
    sget-object v1, Lcom/google/android/opengl/carousel/Card;->sOneVertex:[F

    return-object v1
.end method

.method public initCardTexture()V
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/Card;->initCardTexture(Z)V

    .line 373
    return-void
.end method

.method public initCardTexture(Z)V
    .locals 3
    .parameter "shouldInvalidate"

    .prologue
    const/4 v2, 0x0

    .line 381
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/opengl/carousel/Card;->removeTexture(JZ)V

    .line 384
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/Card;->mTexUploaded:Z

    .line 385
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/Card;->mDetailUploaded:Z

    .line 386
    return-void
.end method

.method public requestTexture()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 393
    iget v0, p0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mCarousel:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    iget v1, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-interface {v0, v1}, Lcom/google/android/opengl/carousel/CarouselCallback;->onRequestTexture(I)V

    .line 395
    iput v2, p0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    .line 398
    :cond_0
    iget v0, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    if-nez v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mCarousel:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    iget v1, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-interface {v0, v1}, Lcom/google/android/opengl/carousel/CarouselCallback;->onRequestDetailTexture(I)V

    .line 400
    iput v2, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    .line 403
    :cond_1
    iget v0, p0, Lcom/google/android/opengl/carousel/Card;->mGeometryState:I

    if-nez v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mCarousel:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    iget v1, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-interface {v0, v1}, Lcom/google/android/opengl/carousel/CarouselCallback;->onRequestGeometry(I)V

    .line 405
    iput v2, p0, Lcom/google/android/opengl/carousel/Card;->mGeometryState:I

    .line 407
    :cond_2
    return-void
.end method

.method setGlDetailTexture()V
    .locals 4

    .prologue
    const v3, 0x84c0

    .line 486
    iget-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    .line 487
    .local v0, texClass:Lcom/google/android/opengl/carousel/CarouselTexture;
    iget-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    if-ne v1, v2, :cond_0

    .line 488
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 489
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/Card;->createGlDetail()V

    .line 496
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 492
    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselTexture;->mDetailLoadingId:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 493
    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 494
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/Card;->createGlDetail()V

    goto :goto_0
.end method
