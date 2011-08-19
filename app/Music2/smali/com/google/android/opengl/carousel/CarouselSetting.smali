.class public Lcom/google/android/opengl/carousel/CarouselSetting;
.super Ljava/lang/Object;
.source "CarouselSetting.java"


# static fields
.field static final DEFAULT_ACCELERATION_FACTOR:F = 0.3f

.field static final DEFAULT_ACCELERATION_FACTOR_PORTRAIT:F = 0.22f

.field public static final DEFAULT_AT:[F = null

.field public static final DEFAULT_AT_PORTRAIT:[F = null

.field private static final DEFAULT_CARD_GLOW_SCALE:F = 1.08f

.field private static final DEFAULT_DETAIL_ALIGNMENT:I = 0x202

.field static final DEFAULT_DETAIL_PROPORTION:F = 0.1f

.field private static final DEFAULT_DRAG_FACTOR:F = 0.2f

.field public static final DEFAULT_EYE:[F = null

.field public static final DEFAULT_EYE_PORTRAIT:[F = null

.field public static final DEFAULT_FOVY:F = 25.0f

.field public static final DEFAULT_FOVY_PORTRAIT:F = 40.0f

.field static final DEFAULT_MAX_DELTA_BIAS:F = 0.008f

.field private static final DEFAULT_PREFETCH_CARD_COUNT:I = 0x2

.field static final DEFAULT_RADIUS:F = 20.0f

.field static final DEFAULT_RADIUS_PORTRAIT:F = 80.0f

.field static final DEFAULT_SLOT_COUNT:I = 0x38

.field static final DEFAULT_SLOT_COUNT_PORTRAIT:I = 0xe0

.field static final DEFAULT_TEXTURE_VELOCITY_THRESHOLD:F = 1.0f

.field public static final DEFAULT_UP:[F = null

.field public static final DEFAULT_UP_PORTRAIT:[F = null

.field static final DEFAULT_VISIBLE_DETAIL_COUNT:I = 0x3

.field static final DEFAULT_VISIBLE_DETAIL_COUNT_PORTRAIT:I = 0x4

.field static final DEFAULT_VISIBLE_SLOT:I = 0x7

.field public static final OVERSCROLL_SLOTS:F = 1.0f

.field static final PAUSE_DELTA_THRESHOLD:F = 0.25132743f

.field static final PAUSE_DELTA_THRESHOLD_PORTRAIT:F = 0.12566371f

.field static TRAJECTORY_X_OFFSET:I = 0x0

.field public static final USE_DEPTH_BUFFER:Z = true


# instance fields
.field private final DEFAULT_FRICTION_COEFFICIENT:F

.field private final DEFAULT_SWAY_SENSITIVITY:F

.field public mAccelerationFactor:F

.field public mAccelerationRatio:F

.field public mAt:[F

.field public mBackgroundBitmap0:Landroid/graphics/Bitmap;

.field public mBackgroundBitmap1:Landroid/graphics/Bitmap;

.field public mBackgroundTransitionDuration:J

.field public mCardCount:I

.field public mCardFaceTangent:Z

.field public mCardGlowScale:F

.field public mCardRotation:F

.field public mCardXYScale:Lcom/google/android/opengl/carousel/Float2;

.field public mCarouselRotationAngle:F

.field public mDefaultBitmap:Landroid/graphics/Bitmap;

.field public mDefaultGeometry:Lcom/google/android/opengl/carousel/Mesh;

.field public mDefaultLineBitmap:Landroid/graphics/Bitmap;

.field public mDetailAlignment:I

.field public mDetailLineBitmap:Landroid/graphics/Bitmap;

.field public mDetailLoadingBitmap:Landroid/graphics/Bitmap;

.field public mDividAngle:F

.field public mDragFactor:F

.field public mDragModel:I

.field public mDrawCardsWithBlending:Z

.field public mDrawDetailBelowCard:Z

.field public mDrawRuler:Z

.field public mEnableBoostArea:Z

.field public mEnableFpsLog:Z

.field public mEye:[F

.field public mFadeAmount:F

.field public mFadeInDuration:J

.field mFillDirection:I

.field public mFirstCardTop:Z

.field public mFrictionCoeff:F

.field public mGlowingBitmap:Landroid/graphics/Bitmap;

.field public mInitialized:Z

.field public mLoadingBitmap:Landroid/graphics/Bitmap;

.field public mLoadingGeometry:Lcom/google/android/opengl/carousel/Mesh;

.field public mMaxDeltaBias:F

.field mPauseDeltaThreshold:F

.field public mPortriatRulerHeight:F

.field public mPrefetchCardCount:I

.field public mRadius:F

.field mRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

.field public mRezInCardCount:F

.field public mRowCount:I

.field public mScaleSelectedCard:Z

.field public mShowDetails:Z

.field public mSlotCount:I

.field public mStartAngle:F

.field public mSwaySensitivity:F

.field public mTextureVelocityThreshold:F

.field public mTrajectoryAngle:F

.field public mUp:[F

.field public mVisibleDetailCount:I

.field public mVisibleSlotCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 17
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_EYE:[F

    .line 18
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_AT:[F

    .line 19
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_UP:[F

    .line 21
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_EYE_PORTRAIT:[F

    .line 22
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_AT_PORTRAIT:[F

    .line 23
    new-array v0, v1, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_UP_PORTRAIT:[F

    .line 49
    const/16 v0, 0x64

    sput v0, Lcom/google/android/opengl/carousel/CarouselSetting;->TRAJECTORY_X_OFFSET:I

    return-void

    .line 17
    :array_0
    .array-data 0x4
        0x67t 0x44t 0xa6t 0x41t
        0xbt 0x98t 0x10t 0x40t
        0x86t 0xdat 0x87t 0x41t
    .end array-data

    .line 18
    :array_1
    .array-data 0x4
        0xc3t 0x64t 0x69t 0x41t
        0xf6t 0xeet 0x29t 0xc0t
        0xe9t 0x2bt 0xbct 0xbft
    .end array-data

    .line 19
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 21
    :array_3
    .array-data 0x4
        0x86t 0xa9t 0xa0t 0x42t
        0x74t 0x98t 0x81t 0x40t
        0xe1t 0x8bt 0x83t 0x41t
    .end array-data

    .line 22
    :array_4
    .array-data 0x4
        0x45t 0xa7t 0x94t 0x42t
        0xa5t 0x2ct 0x51t 0xc1t
        0x0t 0x6ft 0x75t 0xc1t
    .end array-data

    .line 23
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/high16 v5, 0x3f80

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_SWAY_SENSITIVITY:F

    .line 65
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_FRICTION_COEFFICIENT:F

    .line 78
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mTextureVelocityThreshold:F

    .line 80
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEnableBoostArea:Z

    .line 82
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationRatio:F

    .line 84
    const v0, 0x3f8a3d71

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardGlowScale:F

    .line 86
    const/high16 v0, 0x4348

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mPortriatRulerHeight:F

    .line 88
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDrawCardsWithBlending:Z

    .line 90
    iput-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mScaleSelectedCard:Z

    .line 91
    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardCount:I

    .line 92
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleSlotCount:I

    .line 93
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    .line 94
    iput-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDrawDetailBelowCard:Z

    .line 95
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDrawRuler:Z

    .line 97
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRadius:F

    .line 98
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardRotation:F

    .line 100
    iput-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEnableFpsLog:Z

    .line 103
    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    .line 105
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mShowDetails:Z

    .line 108
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFirstCardTop:Z

    .line 111
    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    .line 115
    new-instance v0, Lcom/google/android/opengl/carousel/Float2;

    invoke-direct {v0, v5, v5}, Lcom/google/android/opengl/carousel/Float2;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardXYScale:Lcom/google/android/opengl/carousel/Float2;

    .line 119
    iput-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardFaceTangent:Z

    .line 120
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mSwaySensitivity:F

    .line 121
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFrictionCoeff:F

    .line 122
    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    .line 126
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragFactor:F

    .line 127
    const/16 v0, 0x38

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    .line 131
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDividAngle:F

    .line 136
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mTrajectoryAngle:F

    .line 138
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_EYE:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEye:[F

    .line 139
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_AT:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAt:[F

    .line 140
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_UP:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mUp:[F

    .line 142
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRezInCardCount:F

    .line 143
    const-wide/16 v5, 0xfa

    iput-wide v5, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeInDuration:J

    .line 144
    const-wide/16 v5, 0xfa

    iput-wide v5, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mBackgroundTransitionDuration:J

    .line 150
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mPrefetchCardCount:I

    .line 155
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeAmount:F

    .line 157
    const v0, 0x3c03126f

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mMaxDeltaBias:F

    .line 159
    const v0, 0x3e99999a

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationFactor:F

    .line 164
    const v0, 0x3e80adfd

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mPauseDeltaThreshold:F

    .line 169
    const/16 v0, 0x202

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailAlignment:I

    .line 182
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v3, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    .line 185
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailLineBitmap:Landroid/graphics/Bitmap;

    .line 186
    new-array v0, v4, [I

    aput v1, v0, v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v2, v4

    move v3, v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailLoadingBitmap:Landroid/graphics/Bitmap;

    return-void

    .line 182
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public recycleIfRequired(ILandroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "type"
    .parameter "bitmap"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

    invoke-interface {v0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;->recycle(ILandroid/graphics/Bitmap;)V

    .line 208
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEyeLookatUp(Z)V
    .locals 1
    .parameter "isPortrait"

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_EYE_PORTRAIT:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEye:[F

    .line 219
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_AT_PORTRAIT:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAt:[F

    .line 220
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_UP_PORTRAIT:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mUp:[F

    .line 226
    :goto_0
    return-void

    .line 222
    :cond_0
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_EYE:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEye:[F

    .line 223
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_AT:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAt:[F

    .line 224
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_UP:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mUp:[F

    goto :goto_0
.end method
