.class public final Lcom/ecareme/pixwe/media/FloatAnim;
.super Ljava/lang/Object;
.source "FloatAnim.java"


# instance fields
.field private mDelta:F

.field private mDuration:F

.field private mStartTime:J

.field private mValue:F


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mValue:F

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mStartTime:J

    .line 30
    return-void
.end method

.method private getInterpolatedValue(J)F
    .locals 5
    .parameter "currentTime"

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f00

    .line 69
    iget-wide v1, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mStartTime:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    const v2, 0x3a83126f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mDuration:F

    div-float v0, v1, v2

    .line 70
    .local v0, ratio:F
    cmpl-float v1, v0, v4

    if-ltz v1, :cond_0

    .line 71
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mStartTime:J

    .line 72
    iget v1, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mValue:F

    .line 76
    :goto_0
    return v1

    .line 74
    :cond_0
    const v1, 0x40490fdb

    mul-float/2addr v1, v0

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    mul-float/2addr v1, v3

    sub-float v0, v3, v1

    .line 76
    iget v1, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mValue:F

    sub-float v2, v4, v0

    iget v3, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mDelta:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_0
.end method


# virtual methods
.method public animateValue(FFJ)V
    .locals 1
    .parameter "value"
    .parameter "duration"
    .parameter "currentTime"

    .prologue
    .line 53
    invoke-virtual {p0, p3, p4}, Lcom/ecareme/pixwe/media/FloatAnim;->getValue(J)F

    move-result v0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mDelta:F

    .line 54
    iput p1, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mValue:F

    .line 55
    iput p2, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mDuration:F

    .line 56
    iput-wide p3, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mStartTime:J

    .line 57
    return-void
.end method

.method public getTimeRemaining(J)F
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 37
    iget-wide v1, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mStartTime:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    const v2, 0x3a83126f

    mul-float v0, v1, v2

    .line 38
    .local v0, duration:F
    iget v1, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mDuration:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 39
    iget v1, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mDuration:F

    sub-float/2addr v1, v0

    .line 41
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue(J)F
    .locals 4
    .parameter "currentTime"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 46
    iget v0, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mValue:F

    .line 48
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ecareme/pixwe/media/FloatAnim;->getInterpolatedValue(J)F

    move-result v0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 4

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 60
    iput p1, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mValue:F

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mStartTime:J

    .line 62
    return-void
.end method

.method public skip()V
    .locals 2

    .prologue
    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ecareme/pixwe/media/FloatAnim;->mStartTime:J

    .line 66
    return-void
.end method
