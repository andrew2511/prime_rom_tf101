.class Lcom/google/android/street/UserOrientation;
.super Ljava/lang/Object;
.source "UserOrientation.java"


# instance fields
.field private final mOrientation:[F

.field private final mRotationMatrix:[F

.field private final mTempMatrix:[F

.field private mTilt:F

.field private mUseRotationMatrix:Z

.field private mYaw:F

.field private mZoom:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/street/UserOrientation;->mRotationMatrix:[F

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/street/UserOrientation;->mTempMatrix:[F

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/street/UserOrientation;->mOrientation:[F

    .line 54
    return-void

    .line 31
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(FFF)V
    .locals 2
    .parameter "yaw"
    .parameter "tilt"
    .parameter "zoom"

    .prologue
    const/16 v1, 0x10

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/street/UserOrientation;->mRotationMatrix:[F

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/street/UserOrientation;->mTempMatrix:[F

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/street/UserOrientation;->mOrientation:[F

    .line 57
    iput p1, p0, Lcom/google/android/street/UserOrientation;->mYaw:F

    .line 58
    iput p2, p0, Lcom/google/android/street/UserOrientation;->mTilt:F

    .line 59
    iput p3, p0, Lcom/google/android/street/UserOrientation;->mZoom:F

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/UserOrientation;->mUseRotationMatrix:Z

    .line 61
    return-void

    .line 31
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/street/UserOrientation;)V
    .locals 4
    .parameter "other"

    .prologue
    const/16 v1, 0x10

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/street/UserOrientation;->mRotationMatrix:[F

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/street/UserOrientation;->mTempMatrix:[F

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/street/UserOrientation;->mOrientation:[F

    .line 64
    iget v0, p1, Lcom/google/android/street/UserOrientation;->mYaw:F

    iput v0, p0, Lcom/google/android/street/UserOrientation;->mYaw:F

    .line 65
    iget v0, p1, Lcom/google/android/street/UserOrientation;->mTilt:F

    iput v0, p0, Lcom/google/android/street/UserOrientation;->mTilt:F

    .line 66
    iget v0, p1, Lcom/google/android/street/UserOrientation;->mZoom:F

    iput v0, p0, Lcom/google/android/street/UserOrientation;->mZoom:F

    .line 67
    iget-object v0, p1, Lcom/google/android/street/UserOrientation;->mRotationMatrix:[F

    iget-object v1, p0, Lcom/google/android/street/UserOrientation;->mRotationMatrix:[F

    iget-object v2, p0, Lcom/google/android/street/UserOrientation;->mRotationMatrix:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget-boolean v0, p1, Lcom/google/android/street/UserOrientation;->mUseRotationMatrix:Z

    iput-boolean v0, p0, Lcom/google/android/street/UserOrientation;->mUseRotationMatrix:Z

    .line 70
    return-void

    .line 31
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public addZoom(FI)V
    .locals 4
    .parameter "deltaZoom"
    .parameter "maxZoom"

    .prologue
    .line 159
    iget v1, p0, Lcom/google/android/street/UserOrientation;->mZoom:F

    add-float/2addr v1, p1

    const/4 v2, 0x0

    int-to-float v3, p2

    invoke-static {v1, v2, v3}, Lcom/google/android/street/StreetMath;->clamp(FFF)F

    move-result v0

    .line 160
    .local v0, zoom:F
    const v1, 0x3d4ccccd

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :cond_0
    iput v0, p0, Lcom/google/android/street/UserOrientation;->mZoom:F

    .line 164
    return-void
.end method

.method public getPitchDegrees()F
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/google/android/street/UserOrientation;->mTilt:F

    const/high16 v1, 0x3f00

    sub-float/2addr v0, v1

    const/high16 v1, 0x4334

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRotationMatrix()[F
    .locals 11

    .prologue
    const/high16 v3, 0x3f80

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 73
    iget-boolean v0, p0, Lcom/google/android/street/UserOrientation;->mUseRotationMatrix:Z

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/street/UserOrientation;->mRotationMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 75
    iget-object v0, p0, Lcom/google/android/street/UserOrientation;->mRotationMatrix:[F

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/google/android/street/UserOrientation;->mTilt:F

    const/high16 v6, 0x4334

    mul-float/2addr v5, v6

    sub-float/2addr v2, v5

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 77
    iget-object v5, p0, Lcom/google/android/street/UserOrientation;->mRotationMatrix:[F

    iget v7, p0, Lcom/google/android/street/UserOrientation;->mYaw:F

    move v6, v1

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/UserOrientation;->mUseRotationMatrix:Z

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/UserOrientation;->mRotationMatrix:[F

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/google/android/street/UserOrientation;->mZoom:F

    neg-float v0, v0

    invoke-static {v0}, Lcom/google/android/street/StreetMath;->exp2(F)F

    move-result v0

    return v0
.end method

.method public getTilt()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/google/android/street/UserOrientation;->mTilt:F

    return v0
.end method

.method public getYaw()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/street/UserOrientation;->mYaw:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/google/android/street/UserOrientation;->mZoom:F

    return v0
.end method

.method public setRotationMatrix([F)V
    .locals 7
    .parameter "rotationMatrix"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 84
    iput-boolean v6, p0, Lcom/google/android/street/UserOrientation;->mUseRotationMatrix:Z

    .line 85
    iget-object v0, p0, Lcom/google/android/street/UserOrientation;->mRotationMatrix:[F

    iget-object v2, p0, Lcom/google/android/street/UserOrientation;->mRotationMatrix:[F

    array-length v2, v2

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget-object v0, p0, Lcom/google/android/street/UserOrientation;->mRotationMatrix:[F

    iget-object v2, p0, Lcom/google/android/street/UserOrientation;->mTempMatrix:[F

    iget-object v3, p0, Lcom/google/android/street/UserOrientation;->mTempMatrix:[F

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object v0, p0, Lcom/google/android/street/UserOrientation;->mTempMatrix:[F

    const/high16 v2, -0x3d4c

    const/high16 v3, 0x3f80

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 96
    iget-object v0, p0, Lcom/google/android/street/UserOrientation;->mTempMatrix:[F

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/street/UserOrientation;->mTempMatrix:[F

    invoke-static {v0, v6, v2, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 98
    iget-object v0, p0, Lcom/google/android/street/UserOrientation;->mTempMatrix:[F

    iget-object v2, p0, Lcom/google/android/street/UserOrientation;->mOrientation:[F

    invoke-static {v0, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 99
    iget-object v0, p0, Lcom/google/android/street/UserOrientation;->mOrientation:[F

    aget v0, v0, v1

    invoke-static {v0}, Lcom/google/android/street/StreetMath;->radiansToDegrees(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/street/UserOrientation;->mYaw:F

    .line 100
    iget-object v0, p0, Lcom/google/android/street/UserOrientation;->mOrientation:[F

    aget v0, v0, v6

    invoke-static {v0}, Lcom/google/android/street/StreetMath;->radiansToNormalizedTilt(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/street/UserOrientation;->mTilt:F

    .line 101
    return-void
.end method

.method public setTilt(F)V
    .locals 1
    .parameter "tilt"

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/street/UserOrientation;->mTilt:F

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/UserOrientation;->mUseRotationMatrix:Z

    .line 126
    return-void
.end method

.method public setYaw(F)V
    .locals 1
    .parameter "yaw"

    .prologue
    .line 110
    iput p1, p0, Lcom/google/android/street/UserOrientation;->mYaw:F

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/UserOrientation;->mUseRotationMatrix:Z

    .line 112
    return-void
.end method

.method public setZoom(F)V
    .locals 0
    .parameter "zoom"

    .prologue
    .line 146
    iput p1, p0, Lcom/google/android/street/UserOrientation;->mZoom:F

    .line 147
    return-void
.end method
