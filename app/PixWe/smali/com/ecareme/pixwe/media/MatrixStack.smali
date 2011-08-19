.class public Lcom/ecareme/pixwe/media/MatrixStack;
.super Ljava/lang/Object;
.source "MatrixStack.java"


# static fields
.field private static final DEFAULT_MAX_DEPTH:I = 0x20

.field private static final MATRIX_SIZE:I = 0x10


# instance fields
.field private mMatrix:[F

.field private mTemp:[F

.field private mTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/MatrixStack;->commonInit(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "maxDepth"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/MatrixStack;->commonInit(I)V

    .line 34
    return-void
.end method

.method private adjust(I)V
    .locals 2
    .parameter "dir"

    .prologue
    .line 168
    iget v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    mul-int/lit8 v1, p1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    .line 169
    return-void
.end method

.method private commonInit(I)V
    .locals 1
    .parameter "maxDepth"

    .prologue
    .line 37
    mul-int/lit8 v0, p1, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    .line 38
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTemp:[F

    .line 39
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/MatrixStack;->glLoadIdentity()V

    .line 40
    return-void
.end method

.method private fixedToFloat(I)F
    .locals 2
    .parameter "x"

    .prologue
    .line 154
    int-to-float v0, p1

    const/high16 v1, 0x3780

    mul-float/2addr v0, v1

    return v0
.end method

.method private preflight_adjust(I)V
    .locals 3
    .parameter "dir"

    .prologue
    .line 158
    iget v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    mul-int/lit8 v2, p1, 0x10

    add-int v0, v1, v2

    .line 159
    .local v0, newTop:I
    if-gez v0, :cond_0

    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "stack underflow"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_0
    add-int/lit8 v1, v0, 0x10

    iget-object v2, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 163
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "stack overflow"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_1
    return-void
.end method


# virtual methods
.method public apply([F[F)V
    .locals 6
    .parameter "mCoordsIn"
    .parameter "mCoordsOut"

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v3, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    move-object v0, p2

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 44
    return-void
.end method

.method public getMatrix([FI)V
    .locals 3
    .parameter "dest"
    .parameter "offset"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 8
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 48
    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 7
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v1

    invoke-direct {p0, p2}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v2

    invoke-direct {p0, p3}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v3

    invoke-direct {p0, p4}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v4

    invoke-direct {p0, p5}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v5

    .line 52
    invoke-direct {p0, p6}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v6

    move-object v0, p0

    .line 51
    invoke-virtual/range {v0 .. v6}, Lcom/ecareme/pixwe/media/MatrixStack;->glFrustumf(FFFFFF)V

    .line 53
    return-void
.end method

.method public glLoadIdentity()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 57
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 65
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 3
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    const/16 v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 4
    .parameter "m"

    .prologue
    .line 74
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 77
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v2, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    add-int/2addr v2, v0

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v3

    aput v3, v1, v2

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public glLoadMatrixx([II)V
    .locals 4
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 71
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v2, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    add-int/2addr v2, v0

    add-int v3, p2, v0

    aget v3, p1, v3

    invoke-direct {p0, v3}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v3

    aput v3, v1, v2

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    const/16 v1, 0x10

    .line 85
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTemp:[F

    invoke-virtual {p1, v0, v1, v1}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 86
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTemp:[F

    invoke-virtual {p0, v0, v1}, Lcom/ecareme/pixwe/media/MatrixStack;->glMultMatrixf([FI)V

    .line 87
    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 6
    .parameter "m"
    .parameter "offset"

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    iget-object v2, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTemp:[F

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    iget-object v2, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTemp:[F

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 82
    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 5
    .parameter "m"

    .prologue
    const/16 v4, 0x10

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 100
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTemp:[F

    invoke-virtual {p0, v1, v4}, Lcom/ecareme/pixwe/media/MatrixStack;->glMultMatrixf([FI)V

    .line 101
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTemp:[F

    add-int/lit8 v2, v0, 0x10

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v3

    aput v3, v1, v2

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public glMultMatrixx([II)V
    .locals 5
    .parameter "m"
    .parameter "offset"

    .prologue
    const/16 v4, 0x10

    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 93
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTemp:[F

    invoke-virtual {p0, v1, v4}, Lcom/ecareme/pixwe/media/MatrixStack;->glMultMatrixf([FI)V

    .line 94
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTemp:[F

    add-int/lit8 v2, v0, 0x10

    add-int v3, p2, v0

    aget v3, p1, v3

    invoke-direct {p0, v3}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v3

    aput v3, v1, v2

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public glOrthof(FFFFFF)V
    .locals 8
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 105
    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 7
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v1

    invoke-direct {p0, p2}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v2

    invoke-direct {p0, p3}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v3

    invoke-direct {p0, p4}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v4

    invoke-direct {p0, p5}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v5

    .line 109
    invoke-direct {p0, p6}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v6

    move-object v0, p0

    .line 108
    invoke-virtual/range {v0 .. v6}, Lcom/ecareme/pixwe/media/MatrixStack;->glOrthof(FFFFFF)V

    .line 110
    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 113
    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/MatrixStack;->preflight_adjust(I)V

    .line 114
    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/MatrixStack;->adjust(I)V

    .line 115
    return-void
.end method

.method public glPushMatrix()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 118
    invoke-direct {p0, v5}, Lcom/ecareme/pixwe/media/MatrixStack;->preflight_adjust(I)V

    .line 119
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    iget-object v2, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v3, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    add-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    invoke-direct {p0, v5}, Lcom/ecareme/pixwe/media/MatrixStack;->adjust(I)V

    .line 121
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 8
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x10

    .line 124
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTemp:[F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 125
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v2, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    iget-object v3, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTemp:[F

    invoke-static {v0, v2, v3, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v3, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    iget-object v4, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTemp:[F

    iget-object v6, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTemp:[F

    move v5, v7

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 127
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 4
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 130
    int-to-float v0, p1

    invoke-direct {p0, p2}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v1

    invoke-direct {p0, p3}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v2

    invoke-direct {p0, p4}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/MatrixStack;->glRotatef(FFFF)V

    .line 131
    return-void
.end method

.method public glScalef(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 135
    return-void
.end method

.method public glScalex(III)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v1

    invoke-direct {p0, p3}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ecareme/pixwe/media/MatrixStack;->glScalef(FFF)V

    .line 139
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/ecareme/pixwe/media/MatrixStack;->mTop:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 143
    return-void
.end method

.method public glTranslatex(III)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v1

    invoke-direct {p0, p3}, Lcom/ecareme/pixwe/media/MatrixStack;->fixedToFloat(I)F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ecareme/pixwe/media/MatrixStack;->glTranslatef(FFF)V

    .line 147
    return-void
.end method
