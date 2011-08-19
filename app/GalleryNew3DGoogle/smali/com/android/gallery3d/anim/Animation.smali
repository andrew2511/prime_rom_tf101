.class public abstract Lcom/android/gallery3d/anim/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# instance fields
.field private mDuration:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    return-void
.end method


# virtual methods
.method public calculate(J)Z
    .locals 10
    .parameter "currentTimeMillis"

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, -0x2

    .line 81
    iget-wide v3, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_0

    move v3, v9

    .line 88
    :goto_0
    return v3

    .line 82
    :cond_0
    iget-wide v3, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iput-wide p1, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    .line 83
    :cond_1
    iget-wide v3, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    sub-long v3, p1, v3

    long-to-int v0, v3

    .line 84
    .local v0, elapse:I
    int-to-float v3, v0

    iget v4, p0, Lcom/android/gallery3d/anim/Animation;->mDuration:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v2

    .line 85
    .local v2, x:F
    iget-object v1, p0, Lcom/android/gallery3d/anim/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 86
    .local v1, i:Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/anim/Animation;->onCalculate(F)V

    .line 87
    iget v3, p0, Lcom/android/gallery3d/anim/Animation;->mDuration:I

    if-lt v0, v3, :cond_2

    iput-wide v7, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    .line 88
    :cond_2
    iget-wide v3, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v2

    .line 86
    goto :goto_1

    :cond_4
    move v3, v9

    .line 88
    goto :goto_0
.end method

.method public forceStop()V
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    .line 78
    return-void
.end method

.method protected abstract onCalculate(F)V
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/gallery3d/anim/Animation;->mDuration:I

    .line 62
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/anim/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 58
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    .line 70
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/anim/Animation;->mStartTime:J

    .line 66
    return-void
.end method
