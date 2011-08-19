.class public abstract Lcom/layar/core/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final TYPE_OPACITY:Ljava/lang/String; = "opacity"

.field public static final TYPE_ROTATION:Ljava/lang/String; = "rotate"

.field public static final TYPE_SCALE:Ljava/lang/String; = "scale"

.field public static final TYPE_TRANSLATION:Ljava/lang/String; = "translate"


# instance fields
.field protected axis:Lcom/layar/core/math/Vector3f;

.field protected delay:J

.field protected from:F

.field protected interpolation:Landroid/view/animation/Interpolator;

.field protected length:J

.field protected persist:Z

.field protected repeat:Z

.field protected running:Z

.field protected startTime:J

.field protected to:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/layar/core/math/Vector3f;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/layar/core/animation/Animation;->axis:Lcom/layar/core/math/Vector3f;

    .line 11
    return-void
.end method


# virtual methods
.method animTime(J)J
    .locals 4
    .parameter "time"

    .prologue
    const-wide/16 v2, 0x0

    .line 55
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    move-wide v0, v2

    .line 62
    :goto_0
    return-wide v0

    .line 57
    :cond_0
    iget-boolean v0, p0, Lcom/layar/core/animation/Animation;->repeat:Z

    if-eqz v0, :cond_1

    .line 58
    iget-wide v0, p0, Lcom/layar/core/animation/Animation;->length:J

    rem-long v0, p1, v0

    goto :goto_0

    .line 60
    :cond_1
    iget-wide v0, p0, Lcom/layar/core/animation/Animation;->length:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/core/animation/Animation;->running:Z

    .line 62
    :cond_2
    iget-wide v0, p0, Lcom/layar/core/animation/Animation;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    move-wide v0, p1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/layar/core/animation/Animation;->persist:Z

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/layar/core/animation/Animation;->length:J

    goto :goto_0

    :cond_4
    move-wide v0, v2

    goto :goto_0
.end method

.method public final apply(Lcom/layar/core/animation/TransformationState;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 71
    iget-boolean v1, p0, Lcom/layar/core/animation/Animation;->running:Z

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/layar/core/animation/Animation;->startTime:J

    sub-long/2addr v1, v3

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/layar/core/animation/Animation;->interpolate(J)F

    move-result v0

    .line 72
    .local v0, progress:F
    invoke-virtual {p0, p1, v0}, Lcom/layar/core/animation/Animation;->updateState(Lcom/layar/core/animation/TransformationState;F)V

    .line 73
    return-void

    .line 71
    .end local v0           #progress:F
    :cond_0
    iget-boolean v1, p0, Lcom/layar/core/animation/Animation;->persist:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/layar/core/animation/Animation;->length:J

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public calculateUpdate(Lcom/layar/data/BasePOI;Lcom/layar/data/BasePOI;)V
    .locals 0
    .parameter "old"
    .parameter "update"

    .prologue
    .line 84
    return-void
.end method

.method public clone()Lcom/layar/core/animation/Animation;
    .locals 2

    .prologue
    .line 91
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/layar/core/animation/Animation;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 92
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 93
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/layar/core/animation/Animation;->clone()Lcom/layar/core/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method interpolate(J)F
    .locals 6
    .parameter "time"

    .prologue
    .line 67
    iget v0, p0, Lcom/layar/core/animation/Animation;->from:F

    iget v1, p0, Lcom/layar/core/animation/Animation;->to:F

    iget v2, p0, Lcom/layar/core/animation/Animation;->from:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/layar/core/animation/Animation;->interpolation:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2}, Lcom/layar/core/animation/Animation;->animTime(J)J

    move-result-wide v3

    long-to-float v3, v3

    iget-wide v4, p0, Lcom/layar/core/animation/Animation;->length:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public isLooped()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/layar/core/animation/Animation;->repeat:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/layar/core/animation/Animation;->running:Z

    return v0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/layar/core/animation/Animation;->delay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/layar/core/animation/Animation;->startTime:J

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/core/animation/Animation;->running:Z

    .line 35
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/core/animation/Animation;->running:Z

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/layar/core/animation/Animation;->startTime:J

    .line 40
    return-void
.end method

.method public abstract updateState(Lcom/layar/core/animation/TransformationState;F)V
.end method
