.class public Lcom/layar/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = null

.field public static final W:I = 0x3

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/layar/util/MathUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/util/MathUtil;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final distPointToSegment([F[F[F)F
    .locals 8
    .parameter "p"
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v7, 0x3

    .line 130
    new-array v4, v7, [F

    .line 131
    .local v4, v:[F
    new-array v5, v7, [F

    .line 133
    .local v5, w:[F
    invoke-static {p2, p1, v4}, Lcom/layar/util/MathUtil;->vectorSubstract([F[F[F)V

    .line 134
    invoke-static {p0, p1, v5}, Lcom/layar/util/MathUtil;->vectorSubstract([F[F[F)V

    .line 136
    invoke-static {v5, v4}, Lcom/layar/util/MathUtil;->vectorDotProduct([F[F)F

    move-result v1

    .line 137
    .local v1, c1:F
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_0

    .line 138
    const v6, 0x7f7fffff

    .line 150
    :goto_0
    return v6

    .line 141
    :cond_0
    invoke-static {v4, v4}, Lcom/layar/util/MathUtil;->vectorDotProduct([F[F)F

    move-result v2

    .line 142
    .local v2, c2:F
    cmpg-float v6, v2, v1

    if-gtz v6, :cond_1

    .line 143
    invoke-static {p0, p2}, Lcom/layar/util/MathUtil;->vectorDistance([F[F)F

    move-result v6

    goto :goto_0

    .line 146
    :cond_1
    div-float v0, v1, v2

    .line 147
    .local v0, b:F
    new-array v3, v7, [F

    .line 148
    .local v3, pb:[F
    invoke-static {v4, v0, v3}, Lcom/layar/util/MathUtil;->vectorMultiply([FF[F)V

    .line 149
    invoke-static {v3, p1, v3}, Lcom/layar/util/MathUtil;->vectorAdd([F[F[F)V

    .line 150
    invoke-static {p0, v3}, Lcom/layar/util/MathUtil;->vectorDistance([F[F)F

    move-result v6

    goto :goto_0
.end method

.method public static final matrixFromQuaternion([F[F)V
    .locals 10
    .parameter "matrix"
    .parameter "quaternion"

    .prologue
    const/4 v9, 0x3

    const/high16 v8, 0x4000

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 92
    :cond_0
    const/high16 v0, 0x3f80

    aget v1, p1, v6

    aget v2, p1, v6

    mul-float/2addr v1, v2

    aget v2, p1, v7

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v8

    sub-float/2addr v0, v1

    aput v0, p0, v5

    .line 93
    aget v0, p1, v5

    aget v1, p1, v6

    mul-float/2addr v0, v1

    aget v1, p1, v7

    aget v2, p1, v9

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, v8

    aput v0, p0, v6

    .line 94
    aget v0, p1, v5

    aget v1, p1, v7

    mul-float/2addr v0, v1

    aget v1, p1, v6

    aget v2, p1, v9

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, v8

    aput v0, p0, v7

    .line 95
    const/4 v0, 0x0

    aput v0, p0, v9

    .line 98
    const/4 v0, 0x4

    aget v1, p1, v5

    aget v2, p1, v6

    mul-float/2addr v1, v2

    aget v2, p1, v7

    aget v3, p1, v9

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    aput v1, p0, v0

    .line 99
    const/4 v0, 0x5

    const/high16 v1, 0x3f80

    aget v2, p1, v5

    aget v3, p1, v5

    mul-float/2addr v2, v3

    aget v3, p1, v7

    aget v4, p1, v7

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v2, v8

    sub-float/2addr v1, v2

    aput v1, p0, v0

    .line 100
    const/4 v0, 0x6

    aget v1, p1, v7

    aget v2, p1, v6

    mul-float/2addr v1, v2

    aget v2, p1, v5

    aget v3, p1, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v8

    aput v1, p0, v0

    .line 101
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 104
    const/16 v0, 0x8

    aget v1, p1, v5

    aget v2, p1, v7

    mul-float/2addr v1, v2

    aget v2, p1, v6

    aget v3, p1, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v8

    aput v1, p0, v0

    .line 105
    const/16 v0, 0x9

    aget v1, p1, v6

    aget v2, p1, v7

    mul-float/2addr v1, v2

    aget v2, p1, v5

    aget v3, p1, v9

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    aput v1, p0, v0

    .line 106
    const/16 v0, 0xa

    const/high16 v1, 0x3f80

    aget v2, p1, v5

    aget v3, p1, v5

    mul-float/2addr v2, v3

    aget v3, p1, v6

    aget v4, p1, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v2, v8

    sub-float/2addr v1, v2

    aput v1, p0, v0

    .line 107
    const/16 v0, 0xb

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 110
    const/16 v0, 0xc

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 111
    const/16 v0, 0xd

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 112
    const/16 v0, 0xe

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 113
    const/16 v0, 0xf

    const/high16 v1, 0x3f80

    aput v1, p0, v0

    goto/16 :goto_0
.end method

.method public static final matrixIdentity([F)V
    .locals 1
    .parameter "matrix"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 118
    return-void
.end method

.method public static final matrixMatrixMultiply([F[F[F)V
    .locals 6
    .parameter "lhs"
    .parameter "rhs"
    .parameter "output"

    .prologue
    const/4 v1, 0x0

    .line 60
    move-object v0, p2

    move-object v2, p0

    move v3, v1

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 61
    return-void
.end method

.method public static final matrixRotate([FFFFF)V
    .locals 10
    .parameter "matrix"
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/16 v9, 0x10

    const/4 v1, 0x0

    .line 68
    new-array v0, v9, [F

    .line 69
    .local v0, temp:[F
    new-array v8, v9, [F

    .local v8, output:[F
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 71
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    move-object v2, v8

    move v3, v1

    move-object v4, p0

    move v5, v1

    move-object v6, v0

    move v7, v1

    .line 72
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 73
    invoke-static {v8, v1, p0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-void
.end method

.method public static final matrixScale([FFFF)V
    .locals 1
    .parameter "matrix"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 122
    return-void
.end method

.method public static final matrixTranslate([FFFF)V
    .locals 1
    .parameter "matrix"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 126
    return-void
.end method

.method public static final matrixVectorMultiply([F[F[F)V
    .locals 6
    .parameter "matrix"
    .parameter "vector"
    .parameter "output"

    .prologue
    const/4 v1, 0x0

    .line 64
    move-object v0, p2

    move-object v2, p0

    move v3, v1

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 65
    return-void
.end method

.method public static final quaternionFromMatrix([F[F)V
    .locals 8
    .parameter "quaternion"
    .parameter "matrix"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    array-length v1, p0

    if-eq v1, v7, :cond_0

    .line 86
    :goto_0
    return-void

    .line 79
    :cond_0
    const/high16 v1, 0x3f80

    aget v2, p1, v3

    add-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    aput v1, p0, v6

    .line 81
    const/high16 v1, 0x4080

    aget v2, p0, v6

    mul-float v0, v1, v2

    .line 83
    .local v0, w4:F
    const/16 v1, 0x9

    aget v1, p1, v1

    const/4 v2, 0x6

    aget v2, p1, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    aput v1, p0, v3

    .line 84
    aget v1, p1, v5

    const/16 v2, 0x8

    aget v2, p1, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    aput v1, p0, v4

    .line 85
    aget v1, p1, v7

    aget v2, p1, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    aput v1, p0, v5

    goto :goto_0
.end method

.method public static final vectorAdd([F[F[F)V
    .locals 5
    .parameter "lhs"
    .parameter "rhs"
    .parameter "output"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    aget v0, p0, v2

    aget v1, p1, v2

    add-float/2addr v0, v1

    aput v0, p2, v2

    .line 22
    aget v0, p0, v3

    aget v1, p1, v3

    add-float/2addr v0, v1

    aput v0, p2, v3

    .line 23
    aget v0, p0, v4

    aget v1, p1, v4

    add-float/2addr v0, v1

    aput v0, p2, v4

    .line 24
    return-void
.end method

.method public static final vectorDistance([F[F)F
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 43
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 44
    .local v0, c:[F
    invoke-static {p0, p1, v0}, Lcom/layar/util/MathUtil;->vectorSubstract([F[F[F)V

    .line 45
    invoke-static {v0}, Lcom/layar/util/MathUtil;->vectorLength([F)F

    move-result v1

    return v1
.end method

.method public static final vectorDotProduct([F[F)F
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    aget v0, p0, v1

    aget v1, p1, v1

    mul-float/2addr v0, v1

    aget v1, p0, v2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p0, v3

    aget v2, p1, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static final vectorLength([F)F
    .locals 2
    .parameter "a"

    .prologue
    .line 49
    invoke-static {p0, p0}, Lcom/layar/util/MathUtil;->vectorDotProduct([F[F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static final vectorMultiply([FF[F)V
    .locals 4
    .parameter "a"
    .parameter "s"
    .parameter "output"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    aget v0, p0, v1

    mul-float/2addr v0, p1

    aput v0, p2, v1

    .line 34
    aget v0, p0, v2

    mul-float/2addr v0, p1

    aput v0, p2, v2

    .line 35
    aget v0, p0, v3

    mul-float/2addr v0, p1

    aput v0, p2, v3

    .line 36
    return-void
.end method

.method public static final vectorNormalize([F)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-static {p0}, Lcom/layar/util/MathUtil;->vectorLength([F)F

    move-result v0

    .line 54
    .local v0, length:F
    aget v1, p0, v2

    div-float/2addr v1, v0

    aput v1, p0, v2

    .line 55
    aget v1, p0, v3

    div-float/2addr v1, v0

    aput v1, p0, v3

    .line 56
    aget v1, p0, v4

    div-float/2addr v1, v0

    aput v1, p0, v4

    .line 57
    return-void
.end method

.method public static final vectorSubstract([F[F[F)V
    .locals 5
    .parameter "lhs"
    .parameter "rhs"
    .parameter "output"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    aget v0, p0, v2

    aget v1, p1, v2

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 28
    aget v0, p0, v3

    aget v1, p1, v3

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 29
    aget v0, p0, v4

    aget v1, p1, v4

    sub-float/2addr v0, v1

    aput v0, p2, v4

    .line 30
    return-void
.end method
