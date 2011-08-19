.class public Lcom/google/android/street/DepthMap$DepthMapPlane;
.super Ljava/lang/Object;
.source "DepthMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/DepthMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DepthMapPlane"
.end annotation


# instance fields
.field public final d:F

.field public final nx:F

.field public final ny:F

.field public final nz:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "nx"
    .parameter "ny"
    .parameter "nz"
    .parameter "d"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lcom/google/android/street/DepthMap$DepthMapPlane;->nx:F

    .line 101
    iput p2, p0, Lcom/google/android/street/DepthMap$DepthMapPlane;->ny:F

    .line 102
    iput p3, p0, Lcom/google/android/street/DepthMap$DepthMapPlane;->nz:F

    .line 103
    iput p4, p0, Lcom/google/android/street/DepthMap$DepthMapPlane;->d:F

    .line 104
    return-void
.end method


# virtual methods
.method public directionDepth(FFF)F
    .locals 3
    .parameter "dx"
    .parameter "dy"
    .parameter "dz"

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/street/DepthMap$DepthMapPlane;->d:F

    iget v1, p0, Lcom/google/android/street/DepthMap$DepthMapPlane;->nx:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/google/android/street/DepthMap$DepthMapPlane;->ny:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/street/DepthMap$DepthMapPlane;->nz:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public isGround()Z
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/street/DepthMap$DepthMapPlane;->nz:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f666666

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
