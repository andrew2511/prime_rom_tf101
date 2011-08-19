.class public Lcom/google/android/opengl/glview/MatrixStack;
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
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/MatrixStack;->commonInit(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "maxDepth"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/MatrixStack;->commonInit(I)V

    .line 35
    return-void
.end method

.method private adjust(I)V
    .locals 2
    .parameter "dir"

    .prologue
    .line 121
    iget v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    mul-int/lit8 v1, p1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    .line 122
    return-void
.end method

.method private commonInit(I)V
    .locals 1
    .parameter "maxDepth"

    .prologue
    .line 38
    mul-int/lit8 v0, p1, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    .line 39
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTemp:[F

    .line 40
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/MatrixStack;->glLoadIdentity()V

    .line 41
    return-void
.end method

.method private preflight_adjust(I)V
    .locals 3
    .parameter "dir"

    .prologue
    .line 111
    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    mul-int/lit8 v2, p1, 0x10

    add-int v0, v1, v2

    .line 112
    .local v0, newTop:I
    if-gez v0, :cond_0

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "stack underflow"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    add-int/lit8 v1, v0, 0x10

    iget-object v2, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "stack overflow"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_1
    return-void
.end method


# virtual methods
.method public getMatrix([FI)V
    .locals 3
    .parameter "dest"
    .parameter "offset"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
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
    .line 50
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 51
    return-void
.end method

.method public glLoadIdentity()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 55
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 63
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 3
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    const/16 v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    const/16 v1, 0x10

    .line 71
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTemp:[F

    invoke-virtual {p1, v0, v1, v1}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 72
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTemp:[F

    invoke-virtual {p0, v0, v1}, Lcom/google/android/opengl/glview/MatrixStack;->glMultMatrixf([FI)V

    .line 73
    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 6
    .parameter "m"
    .parameter "offset"

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    iget-object v2, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTemp:[F

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    iget-object v2, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTemp:[F

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 68
    return-void
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
    .line 77
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 78
    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 81
    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/MatrixStack;->preflight_adjust(I)V

    .line 82
    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/MatrixStack;->adjust(I)V

    .line 83
    return-void
.end method

.method public glPushMatrix()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 86
    invoke-direct {p0, v5}, Lcom/google/android/opengl/glview/MatrixStack;->preflight_adjust(I)V

    .line 87
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    iget-object v2, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v3, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    add-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    invoke-direct {p0, v5}, Lcom/google/android/opengl/glview/MatrixStack;->adjust(I)V

    .line 90
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

    .line 93
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTemp:[F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 94
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v2, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    iget-object v3, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTemp:[F

    invoke-static {v0, v2, v3, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object v2, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v3, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    iget-object v4, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTemp:[F

    iget-object v6, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTemp:[F

    move v5, v7

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 96
    return-void
.end method

.method public glScalef(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 100
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 104
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    .line 45
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/MatrixStack;->glLoadIdentity()V

    .line 46
    return-void
.end method
