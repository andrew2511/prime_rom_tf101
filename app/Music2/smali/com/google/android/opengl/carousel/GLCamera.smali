.class public Lcom/google/android/opengl/carousel/GLCamera;
.super Ljava/lang/Object;
.source "GLCamera.java"


# static fields
.field private static DEFAULT_EYE:[F

.field private static DEFAULT_LOOKAT:[F


# instance fields
.field public mEye:[F

.field public mFovy:F

.field public mLookat:[F

.field private mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field public mUp:[F

.field public mVMatrix:[F

.field public mWorldMatrix:[F

.field public moveStep:F

.field public rotStep:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 14
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/opengl/carousel/GLCamera;->DEFAULT_EYE:[F

    .line 15
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/opengl/carousel/GLCamera;->DEFAULT_LOOKAT:[F

    return-void

    .line 14
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data

    .line 15
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mVMatrix:[F

    .line 20
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mWorldMatrix:[F

    .line 23
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    .line 25
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    .line 27
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mUp:[F

    .line 29
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    .line 30
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->rotStep:F

    .line 33
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mFovy:F

    .line 39
    iput-object p1, p0, Lcom/google/android/opengl/carousel/GLCamera;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 40
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->reset()V

    .line 41
    return-void

    .line 27
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public backward()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 74
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 75
    return-void
.end method

.method public down()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 94
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 95
    return-void
.end method

.method public forward()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 69
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 70
    return-void
.end method

.method public left()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 79
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 80
    return-void
.end method

.method public lookDown()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 114
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 115
    return-void
.end method

.method public lookLeft()V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 99
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 100
    return-void
.end method

.method public lookRight()V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 104
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 105
    return-void
.end method

.method public lookUp()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 109
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 110
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/opengl/carousel/GLCamera;->DEFAULT_EYE:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    .line 62
    sget-object v0, Lcom/google/android/opengl/carousel/GLCamera;->DEFAULT_LOOKAT:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    .line 63
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mWorldMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 65
    return-void
.end method

.method public right()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 84
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 85
    return-void
.end method

.method public setCamera()V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mVMatrix:[F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    aget v5, v5, v1

    iget-object v6, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    aget v6, v6, v7

    iget-object v7, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    aget v7, v7, v9

    const/high16 v9, 0x3f80

    move v10, v8

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 56
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVPMatrix:[F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/GLCamera;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mProjMatrix:[F

    iget-object v4, p0, Lcom/google/android/opengl/carousel/GLCamera;->mVMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 57
    return-void
.end method

.method public setLookat(Lcom/google/android/opengl/carousel/CarouselSetting;)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 45
    iget-object v0, p1, Lcom/google/android/opengl/carousel/CarouselSetting;->mEye:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    .line 46
    iget-object v0, p1, Lcom/google/android/opengl/carousel/CarouselSetting;->mAt:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    .line 47
    iget-object v0, p1, Lcom/google/android/opengl/carousel/CarouselSetting;->mUp:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mUp:[F

    .line 48
    return-void
.end method

.method public up()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 89
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 90
    return-void
.end method

.method public worldRotateLeft()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mWorldMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/opengl/carousel/GLCamera;->rotStep:F

    neg-float v2, v2

    const/high16 v4, 0x3f80

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 120
    return-void
.end method

.method public worldRotateRight()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mWorldMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/opengl/carousel/GLCamera;->rotStep:F

    const/high16 v4, 0x3f80

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 125
    return-void
.end method
