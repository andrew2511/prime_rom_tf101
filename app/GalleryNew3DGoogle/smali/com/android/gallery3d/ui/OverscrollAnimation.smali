.class Lcom/android/gallery3d/ui/OverscrollAnimation;
.super Ljava/lang/Object;
.source "Paper.java"


# instance fields
.field private mAnimationStartTime:J

.field private mCurrentValue:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mAnimationStartTime:J

    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 13
    .parameter "currentTimeMillis"

    .prologue
    const-wide/16 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 90
    iget-wide v3, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mAnimationStartTime:J

    cmp-long v3, v3, v11

    if-nez v3, :cond_0

    move v3, v9

    .line 106
    :goto_0
    return v3

    .line 91
    :cond_0
    iget-wide v3, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 92
    iput-wide p1, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mAnimationStartTime:J

    move v3, v10

    .line 93
    goto :goto_0

    .line 96
    :cond_1
    iget-wide v3, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mAnimationStartTime:J

    sub-long v0, p1, v3

    .line 97
    .local v0, deltaTime:J
    long-to-float v3, v0

    const/high16 v4, 0x42c8

    div-float v2, v3, v4

    .line 98
    .local v2, t:F
    iget v3, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mCurrentValue:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    float-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mCurrentValue:F

    .line 99
    iput-wide p1, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mAnimationStartTime:J

    .line 101
    iget v3, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mCurrentValue:F

    const/high16 v4, 0x3f80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 102
    iput-wide v11, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mAnimationStartTime:J

    .line 103
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mCurrentValue:F

    move v3, v9

    .line 104
    goto :goto_0

    :cond_2
    move v3, v10

    .line 106
    goto :goto_0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mCurrentValue:F

    return v0
.end method

.method public scroll(F)V
    .locals 2
    .parameter "distance"

    .prologue
    .line 85
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mAnimationStartTime:J

    .line 86
    iget v0, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mCurrentValue:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/OverscrollAnimation;->mCurrentValue:F

    .line 87
    return-void
.end method
