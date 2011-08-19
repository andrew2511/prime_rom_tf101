.class public Lcom/google/android/opengl/carousel/CarouselConfig;
.super Ljava/lang/Object;
.source "CarouselConfig.java"


# instance fields
.field public mAccelerationFactor:F

.field public mAt:[F

.field public mEye:[F

.field public mFirstCardSlot:I

.field public mFovy:F

.field public mMaxDeltaBias:F

.field public mPauseDeltaThreshold:F

.field public mRadius:F

.field public mRowCount:I

.field public mShowDetails:Z

.field public mSlotCount:I

.field public mStartAngle:F

.field public mTextureVelocityThreshold:F

.field public mUp:[F

.field public mVisibleDetailCount:I

.field public mVisibleSlotCount:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x38

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mSlotCount:I

    .line 11
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mVisibleSlotCount:I

    .line 12
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mRadius:F

    .line 13
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mFovy:F

    .line 14
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mVisibleDetailCount:I

    .line 15
    const v0, 0x3e80adfd

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mPauseDeltaThreshold:F

    .line 16
    const v0, 0x3e99999a

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mAccelerationFactor:F

    .line 17
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_EYE:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mEye:[F

    .line 18
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_AT:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mAt:[F

    .line 19
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_UP:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mUp:[F

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mFirstCardSlot:I

    .line 21
    const-wide v0, 0x401921fb54442d18L

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mFirstCardSlot:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mSlotCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    neg-double v0, v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mStartAngle:F

    .line 22
    const v0, 0x3c03126f

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mMaxDeltaBias:F

    .line 23
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mTextureVelocityThreshold:F

    .line 24
    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mRowCount:I

    .line 25
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mShowDetails:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5
    .parameter "portrait"

    .prologue
    const/4 v4, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x38

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mSlotCount:I

    .line 11
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mVisibleSlotCount:I

    .line 12
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mRadius:F

    .line 13
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mFovy:F

    .line 14
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mVisibleDetailCount:I

    .line 15
    const v0, 0x3e80adfd

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mPauseDeltaThreshold:F

    .line 16
    const v0, 0x3e99999a

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mAccelerationFactor:F

    .line 17
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_EYE:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mEye:[F

    .line 18
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_AT:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mAt:[F

    .line 19
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_UP:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mUp:[F

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mFirstCardSlot:I

    .line 21
    const-wide v0, 0x401921fb54442d18L

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mFirstCardSlot:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mSlotCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    neg-double v0, v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mStartAngle:F

    .line 22
    const v0, 0x3c03126f

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mMaxDeltaBias:F

    .line 23
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mTextureVelocityThreshold:F

    .line 24
    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mRowCount:I

    .line 25
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mShowDetails:Z

    .line 38
    if-eqz p1, :cond_0

    .line 39
    const/16 v0, 0xe0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mSlotCount:I

    .line 40
    const/high16 v0, 0x42a0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mRadius:F

    .line 41
    const/high16 v0, 0x4220

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mFovy:F

    .line 42
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mVisibleDetailCount:I

    .line 43
    const v0, 0x3e00adfd

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mPauseDeltaThreshold:F

    .line 44
    const v0, 0x3e6147ae

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mAccelerationFactor:F

    .line 45
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_EYE_PORTRAIT:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mEye:[F

    .line 46
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_AT_PORTRAIT:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mAt:[F

    .line 47
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_UP_PORTRAIT:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mUp:[F

    .line 48
    const-wide v0, 0x403f6a7a2955385eL

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mSlotCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    neg-double v0, v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselConfig;->mStartAngle:F

    .line 50
    :cond_0
    return-void
.end method
