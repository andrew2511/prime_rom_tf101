.class public Lcom/layar/core/animation/TransformationState;
.super Ljava/lang/Object;
.source "TransformationState.java"


# instance fields
.field private fRotation:[F

.field private fScale:[F

.field private fTranslation:[F

.field private pRotation:[F

.field private pScale:[F

.field private pTranslation:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/layar/core/animation/TransformationState;->pTranslation:[F

    .line 17
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/layar/core/animation/TransformationState;->pScale:[F

    .line 18
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    .line 22
    iput-object v0, p0, Lcom/layar/core/animation/TransformationState;->pRotation:[F

    .line 26
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/layar/core/animation/TransformationState;->fTranslation:[F

    .line 27
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/layar/core/animation/TransformationState;->fScale:[F

    .line 28
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/layar/core/animation/TransformationState;->fRotation:[F

    .line 14
    return-void

    .line 16
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 17
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 18
    :array_2
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
.method public addPersistedRotation(FFFF)V
    .locals 1
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pRotation:[F

    invoke-static {v0, p1, p2, p3, p4}, Lcom/layar/util/MathUtil;->matrixRotate([FFFFF)V

    .line 79
    return-void
.end method

.method public addPersistedScale(FFF)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pScale:[F

    aget v1, v0, v2

    mul-float/2addr v1, p1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pScale:[F

    aget v1, v0, v2

    mul-float/2addr v1, p2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pScale:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    .line 70
    return-void
.end method

.method public addPersistedTranslation(FFF)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pTranslation:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pTranslation:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pTranslation:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    add-float/2addr v2, p3

    aput v2, v0, v1

    .line 62
    return-void
.end method

.method public apply(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->fTranslation:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/layar/core/animation/TransformationState;->fTranslation:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/layar/core/animation/TransformationState;->fTranslation:[F

    aget v2, v2, v5

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 42
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->fRotation:[F

    invoke-interface {p1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 43
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->fScale:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/layar/core/animation/TransformationState;->fScale:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/layar/core/animation/TransformationState;->fScale:[F

    aget v2, v2, v5

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 44
    return-void
.end method

.method public apply([F)V
    .locals 8
    .parameter "matrix"

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    iget-object v1, p0, Lcom/layar/core/animation/TransformationState;->fTranslation:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/layar/core/animation/TransformationState;->fTranslation:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/layar/core/animation/TransformationState;->fTranslation:[F

    aget v3, v3, v6

    invoke-static {p1, v1, v2, v3}, Lcom/layar/util/MathUtil;->matrixTranslate([FFFF)V

    .line 49
    new-array v0, v7, [F

    .line 50
    .local v0, tmp:[F
    iget-object v1, p0, Lcom/layar/core/animation/TransformationState;->fRotation:[F

    invoke-static {p1, v1, v0}, Lcom/layar/util/MathUtil;->matrixMatrixMultiply([F[F[F)V

    .line 51
    invoke-static {v0, v4, p1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object v1, p0, Lcom/layar/core/animation/TransformationState;->fScale:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/layar/core/animation/TransformationState;->fScale:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/layar/core/animation/TransformationState;->fScale:[F

    aget v3, v3, v6

    invoke-static {p1, v1, v2, v3}, Lcom/layar/util/MathUtil;->matrixScale([FFFF)V

    .line 54
    return-void
.end method

.method public getTranslation()[F
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->fTranslation:[F

    return-object v0
.end method

.method public initFrame()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 31
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pTranslation:[F

    iget-object v1, p0, Lcom/layar/core/animation/TransformationState;->fTranslation:[F

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pScale:[F

    iget-object v1, p0, Lcom/layar/core/animation/TransformationState;->fScale:[F

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pRotation:[F

    iget-object v1, p0, Lcom/layar/core/animation/TransformationState;->fRotation:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    return-void
.end method

.method public rotate(FFFF)V
    .locals 1
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->fRotation:[F

    invoke-static {v0, p1, p2, p3, p4}, Lcom/layar/util/MathUtil;->matrixRotate([FFFFF)V

    .line 83
    return-void
.end method

.method public scale(FFF)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->fScale:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->fScale:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    .line 94
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->fScale:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    .line 95
    return-void
.end method

.method public setPersistedRotation(FFFF)V
    .locals 1
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pRotation:[F

    invoke-static {v0}, Lcom/layar/util/MathUtil;->matrixIdentity([F)V

    .line 74
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pRotation:[F

    invoke-static {v0, p1, p2, p3, p4}, Lcom/layar/util/MathUtil;->matrixRotate([FFFFF)V

    .line 75
    return-void
.end method

.method public setPersistedScale(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pScale:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pScale:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pScale:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 66
    return-void
.end method

.method public setPersistedTranslation(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pTranslation:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pTranslation:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->pTranslation:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 58
    return-void
.end method

.method public translate(FFF)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->fTranslation:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 87
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->fTranslation:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 88
    iget-object v0, p0, Lcom/layar/core/animation/TransformationState;->fTranslation:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    add-float/2addr v2, p3

    aput v2, v0, v1

    .line 89
    return-void
.end method
