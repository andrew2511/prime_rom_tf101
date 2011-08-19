.class public Lcom/google/android/opengl/carousel/CarouselScene;
.super Ljava/lang/Object;
.source "CarouselScene.java"


# static fields
.field private static final ANIMATION_SCALE_TIME:I = 0xc8

.field private static final ANTI_JITTER_THRESHOLD:F = 2.0E-4f

.field private static final DBG:Z = false

.field private static final DBG_SHUFFLE:Z = true

.field private static final FLOAT_MAX:F = 1.0E37f

.field private static final G:F = 9.8f

.field private static final MAX_SIMULATION_STEPS:I = 0x5

.field private static final PORTRAIT_CULL_OFFSET:F = 0.3f

.field public static final RENDER_MODE_TEXTURE:I = 0x0

.field private static final SELECTED_SCALE_FACTOR:Lcom/google/android/opengl/carousel/Float3; = null

.field private static final SpringConstant:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "CarouselScene"

.field private static final TOTAL_RENDER_MODE:I = 0x1

.field private static final TOUCH_BOOST_AREA_X:I = 0x78

.field private static final TOUCH_BOOST_AREA_Y:I = 0x12c

.field private static VELOCITY_UP_LIMIT:F

.field private static sProjection:[F


# instance fields
.field private mAnimatedSelection:I

.field private mAnimating:Z

.field public mBackground:Lcom/google/android/opengl/carousel/Background;

.field private mBias:F

.field public mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

.field public mCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/opengl/carousel/Card;",
            ">;"
        }
    .end annotation
.end field

.field mCarouselCylinder:Lcom/google/android/opengl/carousel/Cylinder;

.field mCarouselPlane:Lcom/google/android/opengl/carousel/Plane;

.field public mCarouselRotationAngle:F

.field mDetailFadeRate:F

.field private mEnableSelection:Z

.field mEndAngle:F

.field public mFirstVisibleCard:I

.field private mHitAngle:F

.field private mIsDragging:Z

.field private mLastAngle:F

.field private mLastPosition:Landroid/graphics/PointF;

.field private mLastStopTime:J

.field private mLastTime:J

.field private mMass:F

.field private mOverscroll:Z

.field public mRenderMode:I

.field public mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field public mRotationAngle:F

.field private mRotationTemp:[F

.field private mSelectionRadius:F

.field private mSelectionVelocityThreshold:F

.field public mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

.field private mStopTimeThreshold:J

.field mTexCoord:Ljava/nio/FloatBuffer;

.field private mTexCoordData:[F

.field private mTouchBias:F

.field private mTouchPosition:Landroid/graphics/PointF;

.field private mTouchTime:J

.field private mVelocity:F

.field private mVelocityThreshold:F

.field private mVelocityTracker:F

.field private mVelocityTrackerCount:I

.field private mVertices:Ljava/nio/FloatBuffer;

.field mVerticesData:[F

.field public mVisibleCardCount:I

.field mWedgeAngle:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x3e4ccccd

    .line 35
    new-instance v0, Lcom/google/android/opengl/carousel/Float3;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/opengl/carousel/Float3;-><init>(FFF)V

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselScene;->SELECTED_SCALE_FACTOR:Lcom/google/android/opengl/carousel/Float3;

    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselScene;->sProjection:[F

    .line 97
    const v0, 0x40c90fdb

    sput v0, Lcom/google/android/opengl/carousel/CarouselScene;->VELOCITY_UP_LIMIT:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/opengl/carousel/CarouselRenderer;Lcom/google/android/opengl/carousel/CarouselSetting;)V
    .locals 6
    .parameter "renderer"
    .parameter "setting"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    .line 55
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderMode:I

    .line 64
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVerticesData:[F

    .line 68
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoordData:[F

    .line 71
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsDragging:Z

    .line 72
    iput-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    .line 73
    iput-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastStopTime:J

    .line 75
    const-wide/16 v0, 0x4b

    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mStopTimeThreshold:J

    .line 76
    iput-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchTime:J

    .line 77
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchBias:F

    .line 78
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchPosition:Landroid/graphics/PointF;

    .line 79
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    .line 81
    const/high16 v0, 0x4248

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSelectionRadius:F

    .line 83
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimatedSelection:I

    .line 86
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    .line 87
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 88
    const v0, 0x3ae4c389

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityThreshold:F

    .line 90
    const v0, 0x3db2b8c3

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSelectionVelocityThreshold:F

    .line 98
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTracker:F

    .line 99
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTrackerCount:I

    .line 101
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mMass:F

    .line 105
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mDetailFadeRate:F

    .line 107
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRotationAngle:F

    .line 109
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselRotationAngle:F

    .line 110
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 116
    new-instance v0, Lcom/google/android/opengl/carousel/Plane;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/Plane;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselPlane:Lcom/google/android/opengl/carousel/Plane;

    .line 118
    new-instance v0, Lcom/google/android/opengl/carousel/Cylinder;

    const/high16 v1, 0x41a0

    invoke-direct {v0, v1}, Lcom/google/android/opengl/carousel/Cylinder;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselCylinder:Lcom/google/android/opengl/carousel/Cylinder;

    .line 119
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastAngle:F

    .line 123
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRotationTemp:[F

    .line 126
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 127
    iput-object p2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    .line 129
    new-instance v0, Lcom/google/android/opengl/carousel/Background;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/Background;-><init>(Lcom/google/android/opengl/carousel/CarouselScene;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBackground:Lcom/google/android/opengl/carousel/Background;

    .line 131
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVertices:Ljava/nio/FloatBuffer;

    .line 133
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoordData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoord:Ljava/nio/FloatBuffer;

    .line 137
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoord:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoordData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    return-void

    .line 64
    nop

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

    .line 68
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private cardIndex(F)I
    .locals 2
    .parameter "angle"

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDividAngle:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private carouselRotationAngleToRadians(F)F
    .locals 1
    .parameter "carouselRotationAngle"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method private cullCards()I
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 303
    iget-object v10, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v10, v10, Lcom/google/android/opengl/carousel/CarouselSetting;->mPrefetchCardCount:I

    div-int/lit8 v5, v10, 0x2

    .line 304
    .local v5, prefetchCardCountPerSide:I
    const/4 v4, 0x0

    .line 305
    .local v4, portraitCullOffset:F
    iget-object v10, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-boolean v10, v10, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v10, :cond_0

    .line 306
    const v10, 0x3e99999a

    add-float/2addr v4, v10

    .line 310
    :cond_0
    const/high16 v10, -0x4080

    sub-float/2addr v10, v4

    invoke-direct {p0, v10}, Lcom/google/android/opengl/carousel/CarouselScene;->slotAngle(F)F

    move-result v8

    .line 311
    .local v8, thetaFirst:F
    neg-int v10, v5

    int-to-float v10, v10

    sub-float/2addr v10, v4

    invoke-direct {p0, v10}, Lcom/google/android/opengl/carousel/CarouselScene;->slotAngle(F)F

    move-result v6

    .line 312
    .local v6, textureFirst:F
    iget-object v10, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v10, v10, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleSlotCount:I

    int-to-float v10, v10

    invoke-direct {p0, v10}, Lcom/google/android/opengl/carousel/CarouselScene;->slotAngle(F)F

    move-result v9

    .line 313
    .local v9, thetaLast:F
    iget-object v10, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v10, v10, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleSlotCount:I

    sub-int/2addr v10, v11

    add-int/2addr v10, v5

    int-to-float v10, v10

    invoke-direct {p0, v10}, Lcom/google/android/opengl/carousel/CarouselScene;->slotAngle(F)F

    move-result v7

    .line 315
    .local v7, textureLast:F
    const/4 v1, 0x0

    .line 317
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v10, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_8

    .line 319
    iget-object v10, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 320
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    iget-object v10, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v10, v10, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleSlotCount:I

    if-lez v10, :cond_7

    .line 323
    int-to-float v10, v2

    invoke-virtual {p0, v10}, Lcom/google/android/opengl/carousel/CarouselScene;->cardAngle(F)F

    move-result v3

    .line 324
    .local v3, p:F
    cmpl-float v10, v3, v8

    if-ltz v10, :cond_1

    cmpg-float v10, v3, v9

    if-ltz v10, :cond_2

    :cond_1
    cmpg-float v10, v3, v8

    if-gtz v10, :cond_5

    cmpl-float v10, v3, v9

    if-lez v10, :cond_5

    .line 325
    :cond_2
    iput-boolean v11, v0, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    .line 326
    add-int/lit8 v1, v1, 0x1

    .line 330
    :goto_1
    cmpl-float v10, v3, v6

    if-ltz v10, :cond_3

    cmpg-float v10, v3, v7

    if-ltz v10, :cond_4

    :cond_3
    cmpg-float v10, v3, v6

    if-gtz v10, :cond_6

    cmpl-float v10, v3, v7

    if-lez v10, :cond_6

    .line 331
    :cond_4
    iput-boolean v11, v0, Lcom/google/android/opengl/carousel/Card;->mPrefetchTexture:Z

    .line 317
    .end local v3           #p:F
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    .restart local v3       #p:F
    :cond_5
    iput-boolean v12, v0, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    goto :goto_1

    .line 333
    :cond_6
    iput-boolean v12, v0, Lcom/google/android/opengl/carousel/Card;->mPrefetchTexture:Z

    goto :goto_2

    .line 337
    .end local v3           #p:F
    :cond_7
    iput-boolean v11, v0, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 342
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    :cond_8
    return v1
.end method

.method private deltaTimeInSeconds(J)F
    .locals 4
    .parameter "current"

    .prologue
    .line 792
    iget-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 793
    iget-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 795
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private describeShuffle(Ljava/lang/String;[I)V
    .locals 5
    .parameter "label"
    .parameter "comeFrom"

    .prologue
    .line 1183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1184
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1185
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 1186
    if-lez v0, :cond_0

    .line 1187
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    :cond_0
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1191
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1192
    const-string v2, "CarouselScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    return-void
.end method

.method private doPhysics(F)Z
    .locals 15
    .parameter "dt"

    .prologue
    .line 866
    const v7, 0x3c23d70a

    .line 867
    .local v7, minStepTime:F
    cmpl-float v13, p1, v7

    if-lez v13, :cond_0

    div-float v13, p1, v7

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    move v2, v13

    .line 869
    .local v2, N:I
    :goto_0
    const/4 v13, 0x5

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 870
    int-to-float v13, v2

    div-float p1, p1, v13

    .line 872
    iget v9, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 873
    .local v9, oldBias:F
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v2, :cond_2

    .line 875
    iget-object v13, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v13, v13, Lcom/google/android/opengl/carousel/CarouselSetting;->mFrictionCoeff:F

    neg-float v13, v13

    iget v14, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    mul-float v0, v13, v14

    .line 878
    .local v0, Ff:F
    iget-object v13, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v13, v13, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    iget v14, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    add-float v11, v13, v14

    .line 879
    .local v11, theta:F
    const v13, 0x40c90fdb

    iget-object v14, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v14, v14, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    int-to-float v14, v14

    div-float v4, v13, v14

    .line 880
    .local v4, dtheta:F
    div-float v10, v11, v4

    .line 883
    .local v10, position:F
    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-float v13, v13

    sub-float v5, v10, v13

    .line 885
    .local v5, fraction:F
    const/high16 v13, 0x3f00

    cmpl-float v13, v5, v13

    if-lez v13, :cond_1

    .line 886
    const/high16 v13, 0x3f80

    sub-float/2addr v13, v5

    neg-float v12, v13

    .line 890
    .local v12, x:F
    :goto_2
    const/high16 v13, -0x8000

    mul-float v1, v13, v12

    .line 893
    .local v1, Fr:F
    iget v13, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mMass:F

    iget v14, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    mul-float/2addr v13, v14

    add-float v14, v0, v1

    mul-float v14, v14, p1

    add-float v8, v13, v14

    .line 894
    .local v8, momentum:F
    iget v13, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mMass:F

    div-float v13, v8, v13

    iput v13, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 896
    iget v13, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    iget v14, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    mul-float v14, v14, p1

    add-float/2addr v13, v14

    iput v13, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 873
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 867
    .end local v0           #Ff:F
    .end local v1           #Fr:F
    .end local v2           #N:I
    .end local v4           #dtheta:F
    .end local v5           #fraction:F
    .end local v6           #i:I
    .end local v8           #momentum:F
    .end local v9           #oldBias:F
    .end local v10           #position:F
    .end local v11           #theta:F
    .end local v12           #x:F
    :cond_0
    const/4 v13, 0x1

    move v2, v13

    goto :goto_0

    .line 888
    .restart local v0       #Ff:F
    .restart local v2       #N:I
    .restart local v4       #dtheta:F
    .restart local v5       #fraction:F
    .restart local v6       #i:I
    .restart local v9       #oldBias:F
    .restart local v10       #position:F
    .restart local v11       #theta:F
    :cond_1
    move v12, v5

    .restart local v12       #x:F
    goto :goto_2

    .line 899
    .end local v0           #Ff:F
    .end local v4           #dtheta:F
    .end local v5           #fraction:F
    .end local v10           #position:F
    .end local v11           #theta:F
    .end local v12           #x:F
    :cond_2
    iget v13, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    sub-float/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 911
    .local v3, deltaBias:F
    iget v13, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityThreshold:F

    invoke-direct {p0, v13}, Lcom/google/android/opengl/carousel/CarouselScene;->isInMotion(F)Z

    move-result v13

    return v13
.end method

.method private doSelection(FF)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 552
    new-instance v0, Lcom/google/android/opengl/carousel/Ray;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-direct {v0, v2}, Lcom/google/android/opengl/carousel/Ray;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V

    .line 553
    .local v0, ray:Lcom/google/android/opengl/carousel/Ray;
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/opengl/carousel/Ray;->makeRayForPixelAt(Lcom/google/android/opengl/carousel/GLCamera;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    const v2, 0x7cf0bdc2

    iput v2, v0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    .line 555
    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->intersectGeometry(Lcom/google/android/opengl/carousel/Ray;)I

    move-result v1

    .local v1, selected:I
    move v2, v1

    .line 559
    .end local v1           #selected:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private dragFunction(FF)F
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide v6, 0x401921fb54442d18L

    .line 800
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->hitAngle(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 801
    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastAngle:F

    sub-float v1, v2, v3

    .line 803
    .local v1, result:F
    float-to-double v2, v1

    const-wide v4, -0x3ff6de04abbbd2e8L

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 804
    float-to-double v2, v1

    add-double/2addr v2, v6

    double-to-float v1, v2

    .line 808
    :cond_0
    :goto_0
    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastAngle:F

    .line 824
    :goto_1
    return v1

    .line 805
    :cond_1
    float-to-double v2, v1

    const-wide v4, 0x400921fb54442d18L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 806
    float-to-double v2, v1

    sub-double/2addr v2, v6

    double-to-float v1, v2

    goto :goto_0

    .line 811
    .end local v1           #result:F
    :cond_2
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragFactor:F

    .line 812
    .local v0, factor:F
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 813
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->projectedDelta(FF)F

    move-result v2

    mul-float/2addr v0, v2

    .line 822
    :goto_2
    const v2, 0x40490fdb

    mul-float v1, v0, v2

    .restart local v1       #result:F
    goto :goto_1

    .line 815
    .end local v1           #result:F
    :cond_3
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-boolean v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v2, :cond_4

    .line 816
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p2

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    goto :goto_2

    .line 818
    :cond_4
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v2

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    goto :goto_2
.end method

.method private drawCards(J)Z
    .locals 13
    .parameter "currentTime"

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x3f80

    .line 462
    const-wide v7, 0x401921fb54442d18L

    iget-object v9, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v9, v9, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    double-to-float v7, v7

    iput v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mWedgeAngle:F

    .line 463
    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v7, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    iget-object v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v8, v8, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleSlotCount:I

    int-to-float v8, v8

    iget v9, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mWedgeAngle:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEndAngle:F

    .line 464
    const/4 v6, 0x0

    .line 466
    .local v6, stillAnimating:Z
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->setCardPosition()V

    .line 468
    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v4, v7, v12

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_4

    .line 469
    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/opengl/carousel/Card;

    .line 470
    .local v1, card:Lcom/google/android/opengl/carousel/Card;
    iget-boolean v7, v1, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    if-nez v7, :cond_1

    .line 468
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 473
    :cond_1
    iget-wide v7, v1, Lcom/google/android/opengl/carousel/Card;->mTextureTimeStamp:J

    invoke-virtual {p0, v7, v8, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->getAnimatedAlpha(JJ)F

    move-result v0

    .line 474
    .local v0, animatedAlpha:F
    cmpg-float v7, v0, v11

    if-gez v7, :cond_2

    .line 475
    const/4 v6, 0x1

    .line 480
    :cond_2
    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v7, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mRezInCardCount:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 481
    iget v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEndAngle:F

    int-to-float v8, v4

    invoke-virtual {p0, v8}, Lcom/google/android/opengl/carousel/CarouselScene;->cardAngle(F)F

    move-result v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mWedgeAngle:F

    div-float v5, v7, v8

    .line 482
    .local v5, positionAlpha:F
    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v7, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mRezInCardCount:F

    div-float v7, v5, v7

    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 488
    :goto_2
    mul-float v7, v0, v5

    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 490
    .local v2, fadeAmount:F
    iget-object v7, v1, Lcom/google/android/opengl/carousel/Card;->mMMatrix:[F

    iget v8, v1, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-direct {p0, v7, v8, v12}, Lcom/google/android/opengl/carousel/CarouselScene;->getMatrixForCard([FIZ)V

    .line 491
    invoke-virtual {v1, v2}, Lcom/google/android/opengl/carousel/Card;->draw(F)V

    .line 494
    iget v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimatedSelection:I

    if-ne v4, v7, :cond_0

    iget-boolean v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v7, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mScaleSelectedCard:Z

    if-nez v7, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getAnimatedGlowingForSelected()F

    move-result v3

    .line 496
    .local v3, glowAlpha:F
    invoke-virtual {v1, v3}, Lcom/google/android/opengl/carousel/Card;->drawGlowing(F)V

    goto :goto_1

    .line 484
    .end local v2           #fadeAmount:F
    .end local v3           #glowAlpha:F
    .end local v5           #positionAlpha:F
    :cond_3
    const/high16 v5, 0x3f80

    .restart local v5       #positionAlpha:F
    goto :goto_2

    .line 500
    .end local v0           #animatedAlpha:F
    .end local v1           #card:Lcom/google/android/opengl/carousel/Card;
    .end local v5           #positionAlpha:F
    :cond_4
    const-string v7, "drawCards"

    invoke-static {v7}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 501
    return v6
.end method

.method private drawDetails(J)Z
    .locals 11
    .parameter "currentTime"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 511
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mShowDetails:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 535
    :goto_0
    return v0

    .line 514
    :cond_0
    const/4 v10, 0x0

    .line 517
    .local v10, stillAnimating:Z
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselScene;->sProjection:[F

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-float v5, v4

    const/high16 v7, 0x41a0

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 520
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 521
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 522
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselTexture;->mDetailLoadingId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 524
    const/4 v8, 0x0

    .line 525
    .local v8, card:Lcom/google/android/opengl/carousel/Card;
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int v9, v0, v1

    .local v9, i:I
    :goto_1
    if-ltz v9, :cond_2

    .line 526
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    if-nez v0, :cond_1

    .line 525
    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #card:Lcom/google/android/opengl/carousel/Card;
    check-cast v8, Lcom/google/android/opengl/carousel/Card;

    .line 530
    .restart local v8       #card:Lcom/google/android/opengl/carousel/Card;
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselScene;->sProjection:[F

    invoke-virtual {v8, p1, p2, v0}, Lcom/google/android/opengl/carousel/Card;->drawDetails(J[F)Z

    move-result v0

    or-int/2addr v10, v0

    goto :goto_2

    .line 533
    :cond_2
    const-string v0, "drawDetails"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    move v0, v10

    .line 535
    goto :goto_0
.end method

.method private easeOut(F)F
    .locals 0
    .parameter "x"

    .prologue
    .line 859
    return p1
.end method

.method private getAnimatedGlowingForSelected()F
    .locals 7

    .prologue
    .line 770
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchTime:J

    sub-long v0, v3, v5

    .line 772
    .local v0, dt:J
    const-wide/16 v3, 0xc8

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 773
    long-to-float v3, v0

    const/high16 v4, 0x4348

    div-float v2, v3, v4

    .line 777
    .local v2, fraction:F
    :goto_0
    return v2

    .line 775
    .end local v2           #fraction:F
    :cond_0
    const/high16 v2, 0x3f80

    .restart local v2       #fraction:F
    goto :goto_0
.end method

.method private getAnimatedScaleForSelected()Lcom/google/android/opengl/carousel/Float3;
    .locals 8

    .prologue
    .line 755
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchTime:J

    sub-long v0, v4, v6

    .line 757
    .local v0, dt:J
    const-wide/16 v4, 0xc8

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 758
    long-to-float v4, v0

    const/high16 v5, 0x4348

    div-float v2, v4, v5

    .line 762
    .local v2, fraction:F
    :goto_0
    invoke-static {}, Lcom/google/android/opengl/carousel/Float3;->getUnit()Lcom/google/android/opengl/carousel/Float3;

    move-result-object v3

    .line 763
    .local v3, one:Lcom/google/android/opengl/carousel/Float3;
    sget-object v4, Lcom/google/android/opengl/carousel/CarouselScene;->SELECTED_SCALE_FACTOR:Lcom/google/android/opengl/carousel/Float3;

    invoke-static {v4, v2}, Lcom/google/android/opengl/carousel/Float3;->mupltiple(Lcom/google/android/opengl/carousel/Float3;F)Lcom/google/android/opengl/carousel/Float3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/opengl/carousel/Float3;->add(Lcom/google/android/opengl/carousel/Float3;)V

    .line 765
    return-object v3

    .line 760
    .end local v2           #fraction:F
    .end local v3           #one:Lcom/google/android/opengl/carousel/Float3;
    :cond_0
    const/high16 v2, 0x3f80

    .restart local v2       #fraction:F
    goto :goto_0
.end method

.method private getMatrixForCard([FIZ)V
    .locals 11
    .parameter "matrix"
    .parameter "i"
    .parameter "enableSway"

    .prologue
    .line 1017
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->cardAngle(F)F

    move-result v10

    .line 1019
    .local v10, theta:F
    const/4 v9, 0x0

    .line 1021
    .local v9, swayAngle:F
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1022
    const/4 v2, 0x0

    float-to-double v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/opengl/carousel/CarouselScene;->rotateM([FIFFFF)V

    .line 1023
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mRadius:F

    invoke-direct {p0, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->getVerticalOffsetForCard(I)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1024
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardRotation:F

    add-float v7, v0, v9

    .line 1025
    .local v7, rotation:F
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardFaceTangent:Z

    if-nez v0, :cond_0

    .line 1026
    sub-float/2addr v7, v10

    .line 1029
    :cond_0
    const/4 v2, 0x0

    float-to-double v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/opengl/carousel/CarouselScene;->rotateM([FIFFFF)V

    .line 1030
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v0, :cond_1

    .line 1033
    const/4 v1, 0x0

    const/high16 v2, -0x3eb0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1034
    const/4 v1, 0x0

    const/high16 v2, 0x4000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1037
    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardXYScale:Lcom/google/android/opengl/carousel/Float2;

    iget v1, v1, Lcom/google/android/opengl/carousel/Float2;->x:F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardXYScale:Lcom/google/android/opengl/carousel/Float2;

    iget v2, v2, Lcom/google/android/opengl/carousel/Float2;->y:F

    const/high16 v3, 0x3f80

    invoke-static {p1, v0, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1038
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimatedSelection:I

    if-ne p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    if-eqz v0, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mScaleSelectedCard:Z

    if-eqz v0, :cond_2

    .line 1040
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getAnimatedScaleForSelected()Lcom/google/android/opengl/carousel/Float3;

    move-result-object v8

    .line 1041
    .local v8, scale:Lcom/google/android/opengl/carousel/Float3;
    const/4 v0, 0x0

    iget v1, v8, Lcom/google/android/opengl/carousel/Float3;->x:F

    iget v2, v8, Lcom/google/android/opengl/carousel/Float3;->y:F

    iget v3, v8, Lcom/google/android/opengl/carousel/Float3;->z:F

    invoke-static {p1, v0, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1044
    .end local v8           #scale:Lcom/google/android/opengl/carousel/Float3;
    :cond_2
    return-void
.end method

.method private getVerticalOffsetForCard(I)F
    .locals 9
    .parameter "i"

    .prologue
    const/4 v8, 0x1

    .line 1051
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v6, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    .line 1052
    .local v2, rowCount:I
    if-ne v2, v8, :cond_0

    .line 1054
    const/4 v6, 0x0

    .line 1068
    :goto_0
    return v6

    .line 1056
    :cond_0
    const v4, 0x3dcccccd

    .line 1057
    .local v4, rowSpacing:F
    const/4 v1, 0x1

    .line 1058
    .local v1, firstCardTop:Z
    sget-object v6, Lcom/google/android/opengl/carousel/Card;->mVerticesData:[F

    const/16 v7, 0xa

    aget v6, v6, v7

    sget-object v7, Lcom/google/android/opengl/carousel/Card;->mVerticesData:[F

    aget v7, v7, v8

    sub-float v0, v6, v7

    .line 1059
    .local v0, cardHeight:F
    int-to-float v6, v2

    add-float v7, v0, v4

    mul-float/2addr v6, v7

    sub-float v5, v6, v4

    .line 1060
    .local v5, totalHeight:F
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v6, v6, Lcom/google/android/opengl/carousel/CarouselSetting;->mFirstCardTop:Z

    if-eqz v6, :cond_1

    .line 1061
    rem-int v6, p1, v2

    sub-int v6, v2, v6

    sub-int p1, v6, v8

    .line 1066
    :goto_1
    int-to-float v6, p1

    add-float v7, v0, v4

    mul-float v3, v6, v7

    .line 1068
    .local v3, rowOffset:F
    sub-float v6, v0, v5

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v6, v3

    goto :goto_0

    .line 1063
    .end local v3           #rowOffset:F
    :cond_1
    rem-int/2addr p1, v2

    goto :goto_1
.end method

.method private hitAngle(FF)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x1

    .line 1098
    new-instance v2, Lcom/google/android/opengl/carousel/Ray;

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-direct {v2, v3}, Lcom/google/android/opengl/carousel/Ray;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V

    .line 1099
    .local v2, ray:Lcom/google/android/opengl/carousel/Ray;
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    invoke-virtual {v2, v3, p1, p2}, Lcom/google/android/opengl/carousel/Ray;->makeRayForPixelAt(Lcom/google/android/opengl/carousel/GLCamera;FF)Z

    .line 1101
    const v3, 0x7cf0bdc2

    iput v3, v2, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    .line 1102
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    if-ne v3, v7, :cond_0

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselPlane:Lcom/google/android/opengl/carousel/Plane;

    invoke-virtual {v2, v3}, Lcom/google/android/opengl/carousel/Ray;->rayPlaneIntersect(Lcom/google/android/opengl/carousel/Plane;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1104
    new-instance v1, Lcom/google/android/opengl/carousel/Float3;

    iget-object v3, v2, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/carousel/Float3;

    invoke-direct {v1, v3}, Lcom/google/android/opengl/carousel/Float3;-><init>(Lcom/google/android/opengl/carousel/Float3;)V

    .line 1105
    .local v1, point:Lcom/google/android/opengl/carousel/Float3;
    iget-object v3, v2, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/carousel/Float3;

    iget v4, v2, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    invoke-static {v3, v4}, Lcom/google/android/opengl/carousel/Float3;->mupltiple(Lcom/google/android/opengl/carousel/Float3;F)Lcom/google/android/opengl/carousel/Float3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/opengl/carousel/Float3;->add(Lcom/google/android/opengl/carousel/Float3;)V

    .line 1107
    new-instance v0, Lcom/google/android/opengl/carousel/Float3;

    invoke-direct {v0, v1}, Lcom/google/android/opengl/carousel/Float3;-><init>(Lcom/google/android/opengl/carousel/Float3;)V

    .line 1108
    .local v0, direction:Lcom/google/android/opengl/carousel/Float3;
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselPlane:Lcom/google/android/opengl/carousel/Plane;

    iget-object v3, v3, Lcom/google/android/opengl/carousel/Plane;->mPoint:Lcom/google/android/opengl/carousel/Float3;

    invoke-virtual {v0, v3}, Lcom/google/android/opengl/carousel/Float3;->minus(Lcom/google/android/opengl/carousel/Float3;)V

    .line 1110
    iget v3, v0, Lcom/google/android/opengl/carousel/Float3;->x:F

    float-to-double v3, v3

    iget v5, v0, Lcom/google/android/opengl/carousel/Float3;->z:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    move v3, v7

    .line 1124
    .end local v0           #direction:Lcom/google/android/opengl/carousel/Float3;
    .end local v1           #point:Lcom/google/android/opengl/carousel/Float3;
    :goto_0
    return v3

    .line 1112
    :cond_0
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselCylinder:Lcom/google/android/opengl/carousel/Cylinder;

    invoke-virtual {v2, v3}, Lcom/google/android/opengl/carousel/Ray;->rayCylinderIntersect(Lcom/google/android/opengl/carousel/Cylinder;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1115
    new-instance v1, Lcom/google/android/opengl/carousel/Float3;

    iget-object v3, v2, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/carousel/Float3;

    invoke-direct {v1, v3}, Lcom/google/android/opengl/carousel/Float3;-><init>(Lcom/google/android/opengl/carousel/Float3;)V

    .line 1116
    .restart local v1       #point:Lcom/google/android/opengl/carousel/Float3;
    iget-object v3, v2, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/carousel/Float3;

    iget v4, v2, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    invoke-static {v3, v4}, Lcom/google/android/opengl/carousel/Float3;->mupltiple(Lcom/google/android/opengl/carousel/Float3;F)Lcom/google/android/opengl/carousel/Float3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/opengl/carousel/Float3;->add(Lcom/google/android/opengl/carousel/Float3;)V

    .line 1118
    new-instance v0, Lcom/google/android/opengl/carousel/Float3;

    invoke-direct {v0, v1}, Lcom/google/android/opengl/carousel/Float3;-><init>(Lcom/google/android/opengl/carousel/Float3;)V

    .line 1119
    .restart local v0       #direction:Lcom/google/android/opengl/carousel/Float3;
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselCylinder:Lcom/google/android/opengl/carousel/Cylinder;

    iget-object v3, v3, Lcom/google/android/opengl/carousel/Cylinder;->mCenter:Lcom/google/android/opengl/carousel/Float3;

    invoke-virtual {v0, v3}, Lcom/google/android/opengl/carousel/Float3;->minus(Lcom/google/android/opengl/carousel/Float3;)V

    .line 1121
    iget v3, v0, Lcom/google/android/opengl/carousel/Float3;->x:F

    float-to-double v3, v3

    iget v5, v0, Lcom/google/android/opengl/carousel/Float3;->z:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    move v3, v7

    .line 1122
    goto :goto_0

    .line 1124
    .end local v0           #direction:Lcom/google/android/opengl/carousel/Float3;
    .end local v1           #point:Lcom/google/android/opengl/carousel/Float3;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private intersectDetailTexture(FFLcom/google/android/opengl/carousel/Float2;)I
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "tapCoordinates"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 574
    const/4 v1, 0x0

    .local v1, id:I
    :goto_0
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v6, v6, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardCount:I

    if-ge v1, v6, :cond_2

    .line 575
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 576
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    iget-boolean v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailVisible:Z

    if-nez v6, :cond_1

    .line 574
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    :cond_1
    iget-object v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/carousel/Float2;

    aget-object v6, v6, v7

    iget v2, v6, Lcom/google/android/opengl/carousel/Float2;->x:F

    .line 580
    .local v2, x0:F
    iget-object v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/carousel/Float2;

    aget-object v6, v6, v7

    iget v4, v6, Lcom/google/android/opengl/carousel/Float2;->y:F

    .line 581
    .local v4, y0:F
    iget-object v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/carousel/Float2;

    aget-object v6, v6, v8

    iget v3, v6, Lcom/google/android/opengl/carousel/Float2;->x:F

    .line 582
    .local v3, x1:F
    iget-object v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/carousel/Float2;

    aget-object v6, v6, v8

    iget v5, v6, Lcom/google/android/opengl/carousel/Float2;->y:F

    .line 583
    .local v5, y1:F
    cmpl-float v6, p1, v2

    if-ltz v6, :cond_0

    cmpg-float v6, p1, v3

    if-gtz v6, :cond_0

    cmpl-float v6, p2, v4

    if-ltz v6, :cond_0

    cmpg-float v6, p2, v5

    if-gtz v6, :cond_0

    .line 584
    sub-float v6, p1, v2

    sub-float v7, p2, v4

    invoke-virtual {p3, v6, v7}, Lcom/google/android/opengl/carousel/Float2;->set(FF)V

    move v6, v1

    .line 588
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    .end local v2           #x0:F
    .end local v3           #x1:F
    .end local v4           #y0:F
    .end local v5           #y1:F
    :goto_1
    return v6

    :cond_2
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private intersectGeometry(Lcom/google/android/opengl/carousel/Ray;)I
    .locals 13
    .parameter "ray"

    .prologue
    .line 592
    const/4 v7, -0x1

    .line 594
    .local v7, hit:I
    const/4 v8, 0x0

    .local v8, id:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 595
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    iget-boolean v1, v0, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    if-eqz v1, :cond_3

    .line 596
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/opengl/carousel/Card;

    .line 597
    .local v6, card:Lcom/google/android/opengl/carousel/Card;
    iget-object v2, v6, Lcom/google/android/opengl/carousel/Card;->mMMatrix:[F

    .line 598
    .local v2, matrix:[F
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/opengl/carousel/Float3;->getArray(I)[Lcom/google/android/opengl/carousel/Float3;

    move-result-object v11

    .line 601
    .local v11, p:[Lcom/google/android/opengl/carousel/Float3;
    const/4 v12, 0x0

    .local v12, vertex:I
    :goto_1
    const/4 v1, 0x4

    if-ge v12, v1, :cond_1

    .line 602
    invoke-virtual {v6, v12}, Lcom/google/android/opengl/carousel/Card;->getVertexCoord(I)[F

    move-result-object v4

    .line 603
    .local v4, cardVertices:[F
    const/4 v1, 0x4

    new-array v0, v1, [F

    .line 604
    .local v0, tmp:[F
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 606
    const/4 v1, 0x3

    aget v1, v0, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 607
    aget-object v1, v11, v12

    const/4 v3, 0x0

    aget v3, v0, v3

    iput v3, v1, Lcom/google/android/opengl/carousel/Float3;->x:F

    .line 608
    aget-object v1, v11, v12

    const/4 v3, 0x1

    aget v3, v0, v3

    iput v3, v1, Lcom/google/android/opengl/carousel/Float3;->y:F

    .line 609
    aget-object v1, v11, v12

    const/4 v3, 0x2

    aget v3, v0, v3

    iput v3, v1, Lcom/google/android/opengl/carousel/Float3;->z:F

    .line 610
    aget-object v1, v11, v12

    const/high16 v3, 0x3f80

    const/4 v4, 0x3

    aget v4, v0, v4

    .end local v4           #cardVertices:[F
    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/google/android/opengl/carousel/Float3;->times(F)V

    .line 601
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 612
    .restart local v4       #cardVertices:[F
    :cond_0
    const-string v1, "CarouselScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad w coord: "

    .end local v4           #cardVertices:[F
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 617
    .end local v0           #tmp:[F
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v11, v1

    const/4 v2, 0x1

    aget-object v2, v11, v2

    .end local v2           #matrix:[F
    const/4 v3, 0x2

    aget-object v3, v11, v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/opengl/carousel/Ray;->rayTriangleIntersect(Lcom/google/android/opengl/carousel/Float3;Lcom/google/android/opengl/carousel/Float3;Lcom/google/android/opengl/carousel/Float3;)Z

    move-result v9

    .line 618
    .local v9, is1:Z
    const/4 v1, 0x2

    aget-object v1, v11, v1

    const/4 v2, 0x3

    aget-object v2, v11, v2

    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/opengl/carousel/Ray;->rayTriangleIntersect(Lcom/google/android/opengl/carousel/Float3;Lcom/google/android/opengl/carousel/Float3;Lcom/google/android/opengl/carousel/Float3;)Z

    move-result v10

    .line 619
    .local v10, is2:Z
    if-nez v9, :cond_2

    if-eqz v10, :cond_3

    .line 620
    :cond_2
    move v7, v8

    .line 594
    .end local v6           #card:Lcom/google/android/opengl/carousel/Card;
    .end local v9           #is1:Z
    .end local v10           #is2:Z
    .end local v11           #p:[Lcom/google/android/opengl/carousel/Float3;
    .end local v12           #vertex:I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 625
    :cond_4
    return v7
.end method

.method private isInMotion(F)Z
    .locals 1
    .parameter "threshold"

    .prologue
    .line 916
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maximumBias()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 930
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardCount:I

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    div-int v0, v1, v2

    .line 931
    .local v0, totalSlots:I
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    if-lez v1, :cond_0

    invoke-direct {p0, v3}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0
.end method

.method private minimumBias()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 922
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardCount:I

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    div-int v0, v1, v2

    .line 923
    .local v0, totalSlots:I
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    neg-float v1, v1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v1

    goto :goto_0
.end method

.method private projectedDelta(FF)F
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v7, 0x4040

    .line 834
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, p2

    float-to-double v3, v3

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v5, p1, v5

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 835
    .local v1, screenAngle:F
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, p2

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, p1, v4

    invoke-static {v3, v4}, Landroid/graphics/PointF;->length(FF)F

    move-result v2

    .line 836
    .local v2, screenDelta:F
    float-to-double v3, v2

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mTrajectoryAngle:F

    sub-float v5, v1, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v0, v3

    .line 837
    .local v0, delta:F
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    div-float/2addr v0, v3

    .line 838
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-boolean v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v3, :cond_0

    .line 840
    div-float/2addr v0, v7

    .line 843
    :cond_0
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mEnableBoostArea:Z

    if-eqz v3, :cond_1

    .line 845
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    const/16 v4, 0x78

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    const/high16 v3, 0x4396

    cmpg-float v3, p2, v3

    if-gez v3, :cond_1

    .line 846
    mul-float/2addr v0, v7

    .line 850
    :cond_1
    return v0
.end method

.method private radiansToCarouselRotationAngle(F)F
    .locals 4
    .parameter "angle"

    .prologue
    .line 274
    neg-float v0, p1

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private rotateM([FIFFFF)V
    .locals 9
    .parameter "m"
    .parameter "mOffset"
    .parameter "a"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x10

    .line 1088
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRotationTemp:[F

    .local v0, temp:[F
    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1089
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    move-object v2, v0

    move v3, v8

    move-object v4, p1

    move v5, p2

    move-object v6, v0

    move v7, v1

    .line 1090
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1091
    invoke-static {v0, v8, p1, p2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1092
    return-void
.end method

.method private setCardPosition()V
    .locals 8

    .prologue
    const v3, 0x8892

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 279
    const/4 v6, 0x0

    .line 280
    .local v6, USE_VBO:Z
    if-nez v6, :cond_0

    .line 281
    const/4 v1, 0x3

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVertices:Ljava/nio/FloatBuffer;

    move v3, v0

    move v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 292
    :goto_0
    return-void

    .line 286
    :cond_0
    new-array v7, v1, [I

    .line 287
    .local v7, vboIds:[I
    invoke-static {v1, v7, v0}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 288
    aget v0, v7, v0

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 289
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVertices:Ljava/nio/FloatBuffer;

    const v2, 0x88e4

    invoke-static {v3, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    goto :goto_0
.end method

.method private slotAngle(F)F
    .locals 4
    .parameter "p"

    .prologue
    .line 1002
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    invoke-direct {p0, p1}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 1003
    .local v0, angle:F
    return v0
.end method

.method private updateCardResources(J)V
    .locals 4
    .parameter "currentTime"

    .prologue
    .line 354
    iget-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsDragging:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mTextureVelocityThreshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 368
    :cond_0
    return-void

    .line 360
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 361
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 362
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    iget-boolean v2, v0, Lcom/google/android/opengl/carousel/Card;->mPrefetchTexture:Z

    if-eqz v2, :cond_2

    .line 363
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/Card;->requestTexture()V

    .line 360
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/Card;->initCardTexture()V

    goto :goto_1
.end method

.method private updateNextPosition(J)Z
    .locals 12
    .parameter "currentTime"

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    const/high16 v10, 0x3f80

    const/4 v7, 0x0

    const/high16 v9, 0x4000

    .line 938
    const v0, 0x3a03126f

    .line 940
    .local v0, biasMin:F
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->deltaTimeInSeconds(J)F

    move-result v1

    .line 941
    .local v1, dt:F
    cmpg-float v6, v1, v7

    if-gtz v6, :cond_0

    move v6, v11

    .line 988
    :goto_0
    return v6

    .line 944
    :cond_0
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->maximumBias()F

    move-result v2

    .line 945
    .local v2, firstBias:F
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->minimumBias()F

    move-result v3

    .line 947
    .local v3, lastBias:F
    const/4 v5, 0x0

    .line 950
    .local v5, stillAnimating:Z
    iget-boolean v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    if-eqz v6, :cond_6

    .line 951
    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    cmpl-float v6, v6, v2

    if-lez v6, :cond_3

    .line 952
    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    mul-float v7, v9, v1

    iget v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    sub-float/2addr v8, v2

    mul-float/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/google/android/opengl/carousel/CarouselScene;->easeOut(F)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 953
    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v0

    if-gez v6, :cond_2

    .line 954
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 980
    :cond_1
    :goto_1
    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    invoke-direct {p0, v10}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v7

    sub-float v7, v3, v7

    invoke-direct {p0, v10}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v8

    add-float/2addr v8, v2

    invoke-static {v6, v7, v8}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v4

    .line 983
    .local v4, newbias:F
    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    move v6, v5

    .line 988
    goto :goto_0

    .line 956
    .end local v4           #newbias:F
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 958
    :cond_3
    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    cmpg-float v6, v6, v3

    if-gez v6, :cond_5

    .line 959
    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    mul-float v7, v9, v1

    iget v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    sub-float v8, v3, v8

    mul-float/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/google/android/opengl/carousel/CarouselScene;->easeOut(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 960
    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    sub-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v0

    if-gez v6, :cond_4

    .line 961
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    goto :goto_1

    .line 963
    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    .line 966
    :cond_5
    iput-boolean v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 967
    iput v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    goto :goto_1

    .line 970
    :cond_6
    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->doPhysics(F)Z

    move-result v5

    .line 971
    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    cmpl-float v6, v6, v2

    if-gtz v6, :cond_7

    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    cmpg-float v6, v6, v3

    if-gez v6, :cond_8

    :cond_7
    move v6, v11

    :goto_2
    iput-boolean v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 972
    iget-boolean v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    if-eqz v6, :cond_1

    .line 973
    iput v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 974
    const/4 v5, 0x1

    goto :goto_1

    :cond_8
    move v6, v8

    .line 971
    goto :goto_2
.end method

.method private wedgeAngle(F)F
    .locals 4
    .parameter "cards"

    .prologue
    .line 855
    const/high16 v0, 0x4000

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private withinTwoPi(F)F
    .locals 7
    .parameter "angle"

    .prologue
    const-wide v5, 0x401921fb54442d18L

    .line 782
    float-to-double v1, p1

    rem-double/2addr v1, v5

    double-to-float v0, v1

    .line 783
    .local v0, a:F
    float-to-double v1, v0

    const-wide v3, -0x3ff6de04abbbd2e8L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 784
    float-to-double v1, v0

    add-double/2addr v1, v5

    double-to-float v0, v1

    .line 788
    :cond_0
    :goto_0
    return v0

    .line 785
    :cond_1
    float-to-double v1, v0

    const-wide v3, 0x400921fb54442d18L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 786
    float-to-double v1, v0

    sub-double/2addr v1, v5

    double-to-float v0, v1

    goto :goto_0
.end method


# virtual methods
.method cardAngle(F)F
    .locals 3
    .parameter "p"

    .prologue
    .line 995
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    int-to-float v2, v2

    div-float v2, p1, v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->slotAngle(F)F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRotationAngle:F

    add-float v0, v1, v2

    .line 996
    .local v0, angle:F
    return v0
.end method

.method public createCards(I)V
    .locals 8
    .parameter "n"

    .prologue
    .line 150
    const-string v5, "CarouselScene"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating cards: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " old cards: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 153
    .local v3, oldCardSize:I
    if-ge v3, p1, :cond_0

    .line 154
    move v2, v3

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 155
    new-instance v1, Lcom/google/android/opengl/carousel/Card;

    invoke-direct {v1, p0, v2}, Lcom/google/android/opengl/carousel/Card;-><init>(Lcom/google/android/opengl/carousel/CarouselScene;I)V

    .line 156
    .local v1, disc:Lcom/google/android/opengl/carousel/Card;
    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v1           #disc:Lcom/google/android/opengl/carousel/Card;
    .end local v2           #i:I
    :cond_0
    if-le v3, p1, :cond_1

    .line 160
    sub-int v4, v3, p1

    .line 161
    .local v4, toRemove:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 162
    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    sub-int v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 163
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/Card;->initCardTexture()V

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    .end local v2           #i:I
    .end local v4           #toRemove:I
    :cond_1
    return-void
.end method

.method doLongPress()V
    .locals 5

    .prologue
    .line 690
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 693
    .local v0, currentTime:J
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4}, Lcom/google/android/opengl/carousel/CarouselScene;->doSelection(FF)I

    move-result v2

    .line 694
    .local v2, selection:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 695
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v3, v2}, Lcom/google/android/opengl/carousel/CarouselCallback;->onCardLongPress(I)V

    .line 697
    :cond_0
    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    .line 698
    return-void
.end method

.method public doMotion(FF)V
    .locals 18
    .parameter "x"
    .parameter "y"

    .prologue
    .line 701
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/carousel/CarouselScene;->maximumBias()F

    move-result v10

    .line 702
    .local v10, highBias:F
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/carousel/CarouselScene;->minimumBias()F

    move-result v12

    .line 704
    .local v12, lowBias:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 705
    .local v3, currentTime:J
    invoke-direct/range {p0 .. p2}, Lcom/google/android/opengl/carousel/CarouselScene;->dragFunction(FF)F

    move-result v7

    .line 707
    .local v7, deltaOmega:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    move-object v14, v0

    iget v14, v14, Lcom/google/android/opengl/carousel/CarouselSetting;->mMaxDeltaBias:F

    neg-float v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    move-object v15, v0

    iget v15, v15, Lcom/google/android/opengl/carousel/CarouselSetting;->mMaxDeltaBias:F

    invoke-static {v7, v14, v15}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v6

    .line 714
    .local v6, deltaBias:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    move v14, v0

    if-nez v14, :cond_0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3951b717

    cmpl-float v14, v14, v15

    if-lez v14, :cond_0

    .line 715
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    move v14, v0

    add-float/2addr v14, v6

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 716
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    move v14, v0

    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v15

    sub-float v15, v12, v15

    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v16

    add-float v16, v16, v10

    invoke-static/range {v14 .. v16}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 720
    :cond_0
    new-instance v5, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchPosition:Landroid/graphics/PointF;

    move-object v14, v0

    iget v14, v14, Landroid/graphics/PointF;->x:F

    sub-float v14, p1, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchPosition:Landroid/graphics/PointF;

    move-object v15, v0

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float v15, p2, v15

    invoke-direct {v5, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 721
    .local v5, delta:Landroid/graphics/PointF;
    iget v14, v5, Landroid/graphics/PointF;->x:F

    iget v15, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v14, v15

    iget v15, v5, Landroid/graphics/PointF;->y:F

    move-object v0, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v8, v14

    .line 722
    .local v8, distance:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSelectionRadius:F

    move v14, v0

    cmpg-float v14, v8, v14

    if-gez v14, :cond_2

    const/4 v14, 0x1

    move v11, v14

    .line 723
    .local v11, inside:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    move v14, v0

    and-int/2addr v14, v11

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 728
    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->deltaTimeInSeconds(J)F

    move-result v9

    .line 729
    .local v9, dt:F
    const/4 v14, 0x0

    cmpl-float v14, v9, v14

    if-lez v14, :cond_1

    .line 730
    div-float v14, v7, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    move-object v15, v0

    iget v15, v15, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationFactor:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    move-object v15, v0

    iget v15, v15, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationRatio:F

    mul-float v13, v14, v15

    .line 731
    .local v13, v:F
    sget v14, Lcom/google/android/opengl/carousel/CarouselScene;->VELOCITY_UP_LIMIT:F

    neg-float v14, v14

    sget v15, Lcom/google/android/opengl/carousel/CarouselScene;->VELOCITY_UP_LIMIT:F

    invoke-static {v13, v14, v15}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v13

    .line 732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTracker:F

    move v14, v0

    add-float/2addr v14, v13

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTracker:F

    .line 733
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTrackerCount:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTrackerCount:I

    .line 736
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    move-object v15, v0

    iget v15, v15, Lcom/google/android/opengl/carousel/CarouselSetting;->mPauseDeltaThreshold:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_3

    .line 737
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastStopTime:J

    move-wide v14, v0

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_1

    .line 738
    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/opengl/carousel/CarouselScene;->mLastStopTime:J

    .line 744
    .end local v13           #v:F
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTrackerCount:I

    move v14, v0

    if-lez v14, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTracker:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTrackerCount:I

    move v15, v0

    int-to-float v15, v15

    div-float/2addr v14, v15

    :goto_2
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 746
    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    .line 751
    return-void

    .line 722
    .end local v9           #dt:F
    .end local v11           #inside:Z
    :cond_2
    const/4 v14, 0x0

    move v11, v14

    goto/16 :goto_0

    .line 740
    .restart local v9       #dt:F
    .restart local v11       #inside:Z
    .restart local v13       #v:F
    :cond_3
    const-wide/16 v14, 0x0

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/opengl/carousel/CarouselScene;->mLastStopTime:J

    goto :goto_1

    .line 744
    .end local v13           #v:F
    :cond_4
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public doStart(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 629
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 630
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchPosition:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 632
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->hitAngle(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastAngle:F

    .line 639
    :goto_0
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSelectionVelocityThreshold:F

    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->isInMotion(F)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    .line 641
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 642
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTracker:F

    .line 643
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTrackerCount:I

    .line 644
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchTime:J

    .line 645
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchBias:F

    .line 647
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsDragging:Z

    .line 649
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->doSelection(FF)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimatedSelection:I

    .line 651
    iput-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 652
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 653
    return-void

    .line 635
    :cond_0
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastAngle:F

    goto :goto_0

    :cond_1
    move v0, v3

    .line 639
    goto :goto_1
.end method

.method public doStop(FF)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x1

    const/4 v5, -0x1

    const/4 v8, 0x0

    .line 657
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 659
    .local v0, currentTime:J
    iput-boolean v9, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    .line 660
    iget-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    if-eqz v4, :cond_3

    .line 661
    const/4 v3, -0x1

    .line 662
    .local v3, selection:I
    new-instance v2, Lcom/google/android/opengl/carousel/Float2;

    invoke-direct {v2}, Lcom/google/android/opengl/carousel/Float2;-><init>()V

    .line 663
    .local v2, point:Lcom/google/android/opengl/carousel/Float2;
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->intersectDetailTexture(FFLcom/google/android/opengl/carousel/Float2;)I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 665
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    iget v5, v2, Lcom/google/android/opengl/carousel/Float2;->x:F

    float-to-int v5, v5

    iget v6, v2, Lcom/google/android/opengl/carousel/Float2;->y:F

    float-to-int v6, v6

    invoke-interface {v4, v3, v5, v6}, Lcom/google/android/opengl/carousel/CarouselCallback;->onDetailSelected(III)V

    .line 672
    :cond_0
    :goto_0
    iput-boolean v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    .line 684
    .end local v2           #point:Lcom/google/android/opengl/carousel/Float2;
    .end local v3           #selection:I
    :cond_1
    :goto_1
    iput-boolean v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    .line 685
    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    .line 686
    iput-boolean v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsDragging:Z

    .line 687
    return-void

    .line 666
    .restart local v2       #point:Lcom/google/android/opengl/carousel/Float2;
    .restart local v3       #selection:I
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->doSelection(FF)I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->sendAnimationFinished()V

    .line 670
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v4, v3}, Lcom/google/android/opengl/carousel/CarouselCallback;->onCardSelected(I)V

    goto :goto_0

    .line 674
    .end local v2           #point:Lcom/google/android/opengl/carousel/Float2;
    .end local v3           #selection:I
    :cond_3
    iget-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastStopTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    iget-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastStopTime:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mStopTimeThreshold:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 675
    iput v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTrackerCount:I

    .line 677
    :cond_4
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTrackerCount:I

    if-lez v4, :cond_5

    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTracker:F

    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityTrackerCount:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    :goto_2
    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 679
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    sget v5, Lcom/google/android/opengl/carousel/CarouselScene;->VELOCITY_UP_LIMIT:F

    neg-float v5, v5

    sget v6, Lcom/google/android/opengl/carousel/CarouselScene;->VELOCITY_UP_LIMIT:F

    invoke-static {v4, v5, v6}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v4

    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 680
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 681
    iput-boolean v9, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    goto :goto_1

    .line 677
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public draw()Z
    .locals 10

    .prologue
    const/16 v9, 0xbe2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 182
    .local v6, currentTime:J
    iget-wide v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchTime:J

    sub-long v1, v6, v1

    const-wide/16 v4, 0xc8

    cmp-long v1, v1, v4

    if-gtz v1, :cond_0

    move v8, v0

    .line 184
    .local v8, stillAnimating:Z
    :goto_0
    invoke-static {v9}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 185
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBackground:Lcom/google/android/opengl/carousel/Background;

    invoke-virtual {v1, v6, v7}, Lcom/google/android/opengl/carousel/Background;->draw(J)Z

    .line 187
    invoke-static {v9}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 188
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardCount:I

    if-gtz v1, :cond_1

    move v0, v3

    .line 223
    :goto_1
    return v0

    .end local v8           #stillAnimating:Z
    :cond_0
    move v8, v3

    .line 182
    goto :goto_0

    .line 191
    .restart local v8       #stillAnimating:Z
    :cond_1
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mAutoRotation:Z

    if-eqz v1, :cond_2

    .line 192
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRotationAngle:F

    float-to-double v1, v1

    const-wide v4, 0x3f60624dd2f1a9fcL

    sub-double/2addr v1, v4

    double-to-float v1, v1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRotationAngle:F

    .line 195
    :cond_2
    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoord:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 199
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsDragging:Z

    if-nez v0, :cond_3

    .line 200
    invoke-direct {p0, v6, v7}, Lcom/google/android/opengl/carousel/CarouselScene;->updateNextPosition(J)Z

    move-result v8

    .line 203
    :cond_3
    iput-wide v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    .line 205
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->cullCards()I

    .line 206
    invoke-direct {p0, v6, v7}, Lcom/google/android/opengl/carousel/CarouselScene;->updateCardResources(J)V

    .line 208
    invoke-direct {p0, v6, v7}, Lcom/google/android/opengl/carousel/CarouselScene;->drawCards(J)Z

    move-result v0

    or-int/2addr v8, v0

    .line 209
    invoke-direct {p0, v6, v7}, Lcom/google/android/opengl/carousel/CarouselScene;->drawDetails(J)Z

    move-result v0

    or-int/2addr v8, v0

    .line 211
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    if-eq v8, v0, :cond_4

    .line 212
    if-eqz v8, :cond_5

    .line 214
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->sendAnimationStarted()V

    .line 219
    :goto_2
    iput-boolean v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    .line 222
    :cond_4
    const-string v0, "CarouselScene.draw"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 223
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    goto :goto_1

    .line 217
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->sendAnimationFinished()V

    goto :goto_2
.end method

.method getAnimatedAlpha(JJ)F
    .locals 6
    .parameter "startTime"
    .parameter "currentTime"

    .prologue
    .line 545
    sub-long v4, p3, p1

    long-to-double v2, v4

    .line 546
    .local v2, timeElapsed:D
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-wide v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeInDuration:J

    long-to-double v4, v4

    div-double v0, v2, v4

    .line 547
    .local v0, alpha:D
    const/high16 v4, 0x3f80

    double-to-float v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method

.method public getRealtimeCarouselRotationAngle()F
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->radiansToCarouselRotationAngle(F)F

    move-result v0

    return v0
.end method

.method public sendAnimationFinished()V
    .locals 2

    .prologue
    .line 251
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->radiansToCarouselRotationAngle(F)F

    move-result v0

    .line 254
    .local v0, angle:F
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v1, v0}, Lcom/google/android/opengl/carousel/CarouselCallback;->onAnimationFinished(F)V

    .line 255
    return-void
.end method

.method sendAnimationStarted()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v0}, Lcom/google/android/opengl/carousel/CarouselCallback;->onAnimationStarted()V

    .line 241
    return-void
.end method

.method setDetailTexture(IFFFFLandroid/graphics/Bitmap;)V
    .locals 6
    .parameter "n"
    .parameter "offx"
    .parameter "offy"
    .parameter "loffx"
    .parameter "loffy"
    .parameter "bitmap"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 414
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardCount:I

    if-le p1, v2, :cond_1

    .line 415
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Index out of bound"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_1
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 419
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    if-nez p6, :cond_2

    .line 420
    iput v4, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    .line 447
    :goto_0
    return-void

    .line 426
    :cond_2
    iget-object v2, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexture:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 427
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5, v3}, Lcom/google/android/opengl/carousel/CarouselSetting;->recycleIfRequired(ILandroid/graphics/Bitmap;)Z

    .line 430
    :cond_3
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v3, v0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-virtual {v2, v3}, Lcom/google/android/opengl/carousel/CarouselTexture;->removeCardDetailPair(I)V

    .line 431
    iput-object p6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexture:Landroid/graphics/Bitmap;

    .line 433
    iput-boolean v4, v0, Lcom/google/android/opengl/carousel/Card;->mDetailUploaded:Z

    .line 434
    iput v5, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    .line 435
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    invoke-virtual {v2}, Lcom/google/android/opengl/carousel/CarouselTexture;->getAvailableDetailId()I

    move-result v1

    .line 436
    .local v1, tId:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 437
    const-string v2, "CarouselScene"

    const-string v3, "No available detail id."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_1
    iget-object v2, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureOffset:Lcom/google/android/opengl/carousel/Float2;

    iput p2, v2, Lcom/google/android/opengl/carousel/Float2;->x:F

    .line 443
    iget-object v2, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureOffset:Lcom/google/android/opengl/carousel/Float2;

    iput p3, v2, Lcom/google/android/opengl/carousel/Float2;->y:F

    .line 444
    iget-object v2, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/carousel/Float2;

    iput p4, v2, Lcom/google/android/opengl/carousel/Float2;->x:F

    .line 445
    iget-object v2, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/carousel/Float2;

    iput p5, v2, Lcom/google/android/opengl/carousel/Float2;->y:F

    .line 446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureTimeStamp:J

    goto :goto_0

    .line 439
    :cond_4
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    invoke-virtual {v2, v1, p1}, Lcom/google/android/opengl/carousel/CarouselTexture;->addCardDetailPair(II)V

    goto :goto_1
.end method

.method public setGeometry(ILcom/google/android/opengl/carousel/Mesh;)V
    .locals 0
    .parameter "n"
    .parameter "geometry"

    .prologue
    .line 456
    return-void
.end method

.method public setTexture(ILandroid/graphics/Bitmap;)V
    .locals 6
    .parameter "n"
    .parameter "bitmap"

    .prologue
    const/4 v5, 0x0

    .line 377
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardCount:I

    if-le p1, v2, :cond_1

    .line 378
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Index out of bound"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    :cond_1
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 382
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    if-nez p2, :cond_2

    .line 383
    iput v5, v0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    .line 405
    :goto_0
    return-void

    .line 389
    :cond_2
    iget-object v2, v0, Lcom/google/android/opengl/carousel/Card;->mTexture:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 390
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/google/android/opengl/carousel/Card;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/opengl/carousel/CarouselSetting;->recycleIfRequired(ILandroid/graphics/Bitmap;)Z

    .line 394
    :cond_3
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v3, v0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-virtual {v2, v3}, Lcom/google/android/opengl/carousel/CarouselTexture;->removeCardTexturePair(I)V

    .line 395
    iput-object p2, v0, Lcom/google/android/opengl/carousel/Card;->mTexture:Landroid/graphics/Bitmap;

    .line 396
    iput-boolean v5, v0, Lcom/google/android/opengl/carousel/Card;->mTexUploaded:Z

    .line 397
    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    .line 398
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    invoke-virtual {v2}, Lcom/google/android/opengl/carousel/CarouselTexture;->getAvailableTextureId()I

    move-result v1

    .line 399
    .local v1, tId:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 400
    const-string v2, "CarouselScene"

    const-string v3, "No available texture id."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/opengl/carousel/Card;->mTextureTimeStamp:J

    goto :goto_0

    .line 402
    :cond_4
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    invoke-virtual {v2, v1, p1}, Lcom/google/android/opengl/carousel/CarouselTexture;->addCardTexturePair(II)V

    goto :goto_1
.end method

.method shuffle([I)V
    .locals 12
    .parameter "comeFrom"

    .prologue
    const/4 v11, -0x1

    .line 1136
    array-length v3, p1

    .line 1137
    .local v3, newCount:I
    iget-object v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v8, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardCount:I

    .line 1141
    .local v4, oldCount:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    .local v7, tmpCards:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/opengl/carousel/Card;>;"
    const/4 v5, 0x0

    .line 1143
    .local v5, oldIndex:I
    iget-object v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v6, v8, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    .line 1145
    .local v6, texture:Lcom/google/android/opengl/carousel/CarouselTexture;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1146
    aget v5, p1, v1

    .line 1148
    if-ge v5, v4, :cond_0

    if-ge v5, v11, :cond_1

    .line 1151
    :cond_0
    const-string v8, "CarouselScene"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In shuffle, card index maybe wrong, oldIndex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " oldCount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const-string v8, "comeFrom:+ "

    invoke-direct {p0, v8, p1}, Lcom/google/android/opengl/carousel/CarouselScene;->describeShuffle(Ljava/lang/String;[I)V

    .line 1153
    const/4 v5, -0x1

    .line 1157
    :cond_1
    if-ne v5, v11, :cond_2

    .line 1158
    new-instance v0, Lcom/google/android/opengl/carousel/Card;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/carousel/Card;-><init>(Lcom/google/android/opengl/carousel/CarouselScene;I)V

    .line 1165
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    :goto_1
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1160
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    :cond_2
    iget-object v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 1161
    .restart local v0       #card:Lcom/google/android/opengl/carousel/Card;
    iget v8, v0, Lcom/google/android/opengl/carousel/Card;->mId:I

    iput v8, v0, Lcom/google/android/opengl/carousel/Card;->mOldId:I

    .line 1162
    iput v1, v0, Lcom/google/android/opengl/carousel/Card;->mId:I

    goto :goto_1

    .line 1169
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    :cond_3
    iget-object v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 1170
    .restart local v0       #card:Lcom/google/android/opengl/carousel/Card;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1171
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/android/opengl/carousel/Card;->initCardTexture(Z)V

    goto :goto_2

    .line 1174
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    :cond_5
    invoke-virtual {v6, v7}, Lcom/google/android/opengl/carousel/CarouselTexture;->updateTextureCache(Ljava/util/ArrayList;)V

    .line 1176
    iput-object v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    .line 1177
    iget-object v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput v3, v8, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardCount:I

    .line 1178
    return-void
.end method

.method public toggleRenderMode()V
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderMode:I

    if-gez v0, :cond_0

    .line 171
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderMode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderMode:I

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderMode:I

    goto :goto_0
.end method

.method updateCarouselRotationAngle()V
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselRotationAngle:F

    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->carouselRotationAngleToRadians(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 234
    return-void
.end method
