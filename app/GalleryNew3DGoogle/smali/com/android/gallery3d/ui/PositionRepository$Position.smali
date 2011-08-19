.class public Lcom/android/gallery3d/ui/PositionRepository$Position;
.super Ljava/lang/Object;
.source "PositionRepository.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PositionRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field public alpha:F

.field public theta:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 40
    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/PositionRepository$Position;-><init>(FFFFF)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "ftheta"
    .parameter "alpha"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    .line 45
    iput p2, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    .line 46
    iput p3, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    .line 47
    iput p4, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->theta:F

    .line 48
    iput p5, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->alpha:F

    .line 49
    return-void
.end method

.method public static interpolate(Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/PositionRepository$Position;F)V
    .locals 6
    .parameter "source"
    .parameter "target"
    .parameter "output"
    .parameter "progress"

    .prologue
    .line 87
    const/high16 v0, 0x3f80

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 88
    iget v0, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    iget v1, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    invoke-static {v0, v1, p3}, Lcom/android/gallery3d/util/Utils;->interpolateScale(FFF)F

    move-result v1

    iget v0, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    iget v2, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    invoke-static {v0, v2, p3}, Lcom/android/gallery3d/util/Utils;->interpolateScale(FFF)F

    move-result v2

    iget v0, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    iget v3, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    invoke-static {v0, v3, p3}, Lcom/android/gallery3d/util/Utils;->interpolateScale(FFF)F

    move-result v3

    iget v0, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->theta:F

    iget v4, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;->theta:F

    invoke-static {v0, v4, p3}, Lcom/android/gallery3d/util/Utils;->interpolateAngle(FFF)F

    move-result v4

    iget v0, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->alpha:F

    iget v5, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;->alpha:F

    invoke-static {v0, v5, p3}, Lcom/android/gallery3d/util/Utils;->interpolateScale(FFF)F

    move-result v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/PositionRepository$Position;->set(FFFFF)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/gallery3d/ui/PositionRepository$Position;->set(Lcom/android/gallery3d/ui/PositionRepository$Position;)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/android/gallery3d/ui/PositionRepository$Position;
    .locals 2

    .prologue
    .line 54
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/ui/PositionRepository$Position;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 55
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 56
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
    .line 29
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionRepository$Position;->clone()Lcom/android/gallery3d/ui/PositionRepository$Position;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 78
    instance-of v2, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;

    if-nez v2, :cond_0

    move v2, v4

    .line 80
    :goto_0
    return v2

    .line 79
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/ui/PositionRepository$Position;

    move-object v1, v0

    .line 80
    .local v1, position:Lcom/android/gallery3d/ui/PositionRepository$Position;
    iget v2, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    iget v3, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    iget v3, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    iget v3, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->theta:F

    iget v3, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->theta:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->alpha:F

    iget v3, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->alpha:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public set(FFFFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "ftheta"
    .parameter "alpha"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    .line 70
    iput p2, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    .line 71
    iput p3, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    .line 72
    iput p4, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->theta:F

    .line 73
    iput p5, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->alpha:F

    .line 74
    return-void
.end method

.method public set(Lcom/android/gallery3d/ui/PositionRepository$Position;)V
    .locals 1
    .parameter "another"

    .prologue
    .line 61
    iget v0, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    iput v0, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    .line 62
    iget v0, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    iput v0, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    .line 63
    iget v0, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    iput v0, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    .line 64
    iget v0, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;->theta:F

    iput v0, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->theta:F

    .line 65
    iget v0, p1, Lcom/android/gallery3d/ui/PositionRepository$Position;->alpha:F

    iput v0, p0, Lcom/android/gallery3d/ui/PositionRepository$Position;->alpha:F

    .line 66
    return-void
.end method
