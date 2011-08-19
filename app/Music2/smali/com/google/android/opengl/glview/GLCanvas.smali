.class public Lcom/google/android/opengl/glview/GLCanvas;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/GLCanvas$1;,
        Lcom/google/android/opengl/glview/GLCanvas$FlatShader;,
        Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;,
        Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;,
        Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;,
        Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;,
        Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;,
        Lcom/google/android/opengl/glview/GLCanvas$Shader;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static TAG:Ljava/lang/String; = null

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x18

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x4


# instance fields
.field private mAlpha:F

.field private mConfiguration:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

.field private mDebugFlatColor:[F

.field private mDebugQuadScale:[F

.field private mDebugQuadVerticesData:[F

.field private mDebugQuadVertsBuffer:Ljava/nio/FloatBuffer;

.field private mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEGLContextGeneration:I

.field private mExtensions:Ljava/lang/String;

.field mFadeTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;

.field private mFlatColor:[F

.field mFlatShader:Lcom/google/android/opengl/glview/GLCanvas$FlatShader;

.field private mFrameTime:J

.field private mHeight:F

.field private mMVPMatrix:[F

.field private mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

.field mMultiTextureRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;

.field mMultiTextureShader:Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;

.field private mNPOTMustClampToEdge:Z

.field private mProjMatrix:[F

.field private mQuadScale:[F

.field private mTemp:[F

.field mTexturedRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;

.field mTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;

.field private mVMatrix:[F

.field private mVertices:Ljava/nio/FloatBuffer;

.field private mWidth:F

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "GLCanvas"

    sput-object v0, Lcom/google/android/opengl/glview/GLCanvas;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;

    .line 487
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFadeTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;

    .line 488
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTexturedRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;

    .line 489
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMultiTextureShader:Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;

    .line 490
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMultiTextureRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;

    .line 491
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatShader:Lcom/google/android/opengl/glview/GLCanvas$FlatShader;

    .line 498
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMVPMatrix:[F

    .line 499
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mProjMatrix:[F

    .line 500
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVMatrix:[F

    .line 502
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    .line 503
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    .line 507
    new-instance v0, Lcom/google/android/opengl/glview/MatrixStack;

    invoke-direct {v0}, Lcom/google/android/opengl/glview/MatrixStack;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    .line 508
    const/16 v0, 0x30

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTemp:[F

    .line 531
    const/16 v0, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadVerticesData:[F

    .line 532
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadVertsBuffer:Ljava/nio/FloatBuffer;

    .line 534
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugFlatColor:[F

    .line 535
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadScale:[F

    .line 538
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mContext:Landroid/content/Context;

    .line 539
    return-void

    .line 535
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/opengl/glview/GLCanvas;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMVPMatrix:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/opengl/glview/GLCanvas;)Ljava/nio/FloatBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVertices:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/opengl/glview/GLCanvas;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/opengl/glview/GLCanvas;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    return-object v0
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .parameter "op"

    .prologue
    .line 783
    const/4 v1, 0x0

    .line 784
    .local v1, msg:Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_0

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 786
    sget-object v2, Lcom/google/android/opengl/glview/GLCanvas;->TAG:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 788
    :cond_0
    if-eqz v1, :cond_1

    .line 789
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 791
    :cond_1
    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter "amount"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 906
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    .line 907
    move p0, p1

    .line 911
    :cond_0
    :goto_0
    return p0

    .line 908
    :cond_1
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 909
    move p0, p2

    goto :goto_0
.end method

.method private static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 751
    const-string v4, "createProgram start"

    invoke-static {v4}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 752
    const v4, 0x8b31

    invoke-static {v4, p0}, Lcom/google/android/opengl/glview/GLCanvas;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 753
    .local v3, vertexShader:I
    if-nez v3, :cond_0

    .line 754
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not create vertex shader"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 757
    :cond_0
    const v4, 0x8b30

    invoke-static {v4, p1}, Lcom/google/android/opengl/glview/GLCanvas;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 758
    .local v0, fragmentShader:I
    if-nez v0, :cond_1

    .line 759
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not create fragment shader"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 762
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 763
    .local v2, program:I
    if-eqz v2, :cond_2

    .line 764
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 765
    const-string v4, "glAttachShader vertexShader"

    invoke-static {v4}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 766
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 767
    const-string v4, "glAttachShader fragmentShader"

    invoke-static {v4}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 768
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 769
    new-array v1, v6, [I

    .line 770
    .local v1, linkStatus:[I
    const v4, 0x8b82

    invoke-static {v2, v4, v1, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 771
    aget v4, v1, v5

    if-eq v4, v6, :cond_2

    .line 772
    sget-object v4, Lcom/google/android/opengl/glview/GLCanvas;->TAG:Ljava/lang/String;

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    sget-object v4, Lcom/google/android/opengl/glview/GLCanvas;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 775
    const/4 v2, 0x0

    .line 778
    .end local v1           #linkStatus:[I
    :cond_2
    return v2
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 5
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 734
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 735
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 736
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 737
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 738
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 739
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 740
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 741
    sget-object v2, Lcom/google/android/opengl/glview/GLCanvas;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    sget-object v2, Lcom/google/android/opengl/glview/GLCanvas;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 744
    const/4 v1, 0x0

    .line 747
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method

.method public static setDefaultNPOTTextureState()V
    .locals 4

    .prologue
    const v3, 0x812f

    const v2, 0x46180400

    const/16 v1, 0xde1

    .line 993
    const/16 v0, 0x2801

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 995
    const/16 v0, 0x2800

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1000
    const/16 v0, 0x2802

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1002
    const/16 v0, 0x2803

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1004
    return-void
.end method

.method private setMatrix([FI)V
    .locals 6
    .parameter "mmatrix"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 725
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVMatrix:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 726
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLCanvas;->mProjMatrix:[F

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMVPMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 727
    return-void
.end method

.method private setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V
    .locals 1
    .parameter "shader"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    if-eq p1, v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->unbind()V

    .line 673
    :cond_0
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    .line 674
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->bind()V

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLCanvas;->bindInputs()V

    .line 679
    return-void
.end method


# virtual methods
.method public adjustUIOffset(FF)V
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 846
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mX:F

    .line 847
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mY:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mY:F

    .line 848
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/opengl/glview/MatrixStack;->glTranslatef(FFF)V

    .line 849
    return-void
.end method

.method public bindInputs()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->bindInputs()V

    .line 685
    :cond_0
    return-void
.end method

.method public bindPose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 720
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTemp:[F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/MatrixStack;->getMatrix([FI)V

    .line 721
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTemp:[F

    invoke-direct {p0, v0, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setMatrix([FI)V

    .line 722
    return-void
.end method

.method public drawFlatRect(FFFF[FIZ)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "color"
    .parameter "colorOffset"
    .parameter "filled"

    .prologue
    .line 921
    if-eqz p7, :cond_0

    const/4 v8, 0x5

    move v3, v8

    .line 922
    .local v3, mode:I
    :goto_0
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadVerticesData:[F

    .line 923
    .local v0, f:[F
    const/4 v1, 0x0

    .line 924
    .local v1, i:I
    if-eqz p7, :cond_1

    .line 925
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aput p1, v0, v1

    .line 926
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput p2, v0, v2

    .line 928
    const/4 v1, 0x6

    .line 929
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    add-float v8, p1, p3

    aput v8, v0, v1

    .line 930
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput p2, v0, v2

    .line 932
    const/16 v1, 0xc

    .line 933
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    aput p1, v0, v1

    .line 934
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    add-float v8, p2, p4

    aput v8, v0, v2

    .line 936
    const/16 v1, 0x12

    .line 937
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    add-float v8, p1, p3

    aput v8, v0, v1

    .line 938
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    add-float v8, p2, p4

    aput v8, v0, v2

    .line 961
    :goto_1
    iget-object v8, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadVertsBuffer:Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadVerticesData:[F

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 962
    iget-object v7, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVertices:Ljava/nio/FloatBuffer;

    .line 964
    .local v7, oldVertices:Ljava/nio/FloatBuffer;
    iget-object v8, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadVertsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v8}, Lcom/google/android/opengl/glview/GLCanvas;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 966
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugFlatColor:[F

    .line 967
    const/4 v8, 0x0

    aget v9, p5, p6

    aput v9, v0, v8

    .line 968
    const/4 v8, 0x1

    add-int/lit8 v9, p6, 0x1

    aget v9, p5, v9

    aput v9, v0, v8

    .line 969
    const/4 v8, 0x2

    add-int/lit8 v9, p6, 0x2

    aget v9, p5, v9

    aput v9, v0, v8

    .line 970
    const/4 v8, 0x3

    add-int/lit8 v9, p6, 0x3

    aget v9, p5, v9

    aput v9, v0, v8

    .line 972
    iget-object v4, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    .line 973
    .local v4, oldFlatColor:[F
    iget-object v8, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugFlatColor:[F

    iput-object v8, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    .line 975
    iget-object v5, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    .line 976
    .local v5, oldQuadScale:[F
    iget-object v8, p0, Lcom/google/android/opengl/glview/GLCanvas;->mDebugQuadScale:[F

    iput-object v8, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    .line 978
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLCanvas;->bindPose()V

    .line 980
    iget-object v6, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    .line 981
    .local v6, oldShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLCanvas;->setFlatProgram()V

    .line 983
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v3, v8, v9}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 984
    const-string v8, "glDrawArrays"

    invoke-static {v8}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 986
    iput-object v5, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    .line 987
    iput-object v4, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    .line 988
    invoke-virtual {p0, v7}, Lcom/google/android/opengl/glview/GLCanvas;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 989
    invoke-direct {p0, v6}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 990
    return-void

    .line 921
    .end local v0           #f:[F
    .end local v1           #i:I
    .end local v3           #mode:I
    .end local v4           #oldFlatColor:[F
    .end local v5           #oldQuadScale:[F
    .end local v6           #oldShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;
    .end local v7           #oldVertices:Ljava/nio/FloatBuffer;
    :cond_0
    const/4 v8, 0x2

    move v3, v8

    goto/16 :goto_0

    .line 941
    .restart local v0       #f:[F
    .restart local v1       #i:I
    .restart local v3       #mode:I
    :cond_1
    const/high16 v8, 0x3f00

    add-float/2addr p1, v8

    .line 942
    const/high16 v8, 0x3f00

    add-float/2addr p2, v8

    .line 943
    const/high16 v8, 0x3f00

    sub-float/2addr p3, v8

    .line 944
    const/high16 v8, 0x3f00

    sub-float/2addr p4, v8

    .line 945
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    aput p1, v0, v1

    .line 946
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput p2, v0, v2

    .line 948
    const/4 v1, 0x6

    .line 949
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    add-float v8, p1, p3

    aput v8, v0, v1

    .line 950
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput p2, v0, v2

    .line 952
    const/16 v1, 0xc

    .line 953
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    add-float v8, p1, p3

    aput v8, v0, v1

    .line 954
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    add-float v8, p2, p4

    aput v8, v0, v2

    .line 956
    const/16 v1, 0x12

    .line 957
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    aput p1, v0, v1

    .line 958
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    add-float v8, p2, p4

    aput v8, v0, v2

    goto/16 :goto_1
.end method

.method public final getAlpha()F
    .locals 1

    .prologue
    .line 878
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mAlpha:F

    return v0
.end method

.method public getConfiguration()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mConfiguration:Ljava/lang/Object;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEGLConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method public getEGLContextGeneration()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mEGLContextGeneration:I

    return v0
.end method

.method public final getFrameTime()J
    .locals 2

    .prologue
    .line 1011
    iget-wide v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFrameTime:J

    return-wide v0
.end method

.method public getMatrix([FI)V
    .locals 1
    .parameter "dest"
    .parameter "offset"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/opengl/glview/MatrixStack;->getMatrix([FI)V

    .line 836
    return-void
.end method

.method public final height()F
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mHeight:F

    return v0
.end method

.method public loadMatrix([FI)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/opengl/glview/MatrixStack;->glLoadMatrixf([FI)V

    .line 828
    return-void
.end method

.method public multMatrix([FI)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/opengl/glview/MatrixStack;->glMultMatrixf([FI)V

    .line 832
    return-void
.end method

.method public npotTexturesMustClampToEdge()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mNPOTMustClampToEdge:Z

    return v0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 542
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mEGLContextGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mEGLContextGeneration:I

    .line 543
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1f03

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mExtensions:Ljava/lang/String;

    .line 546
    const-string v0, "GL_IMG_texture_npot"

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->supports(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mNPOTMustClampToEdge:Z

    .line 547
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->create()V

    .line 548
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFadeTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;->create()V

    .line 549
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTexturedRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->create()V

    .line 550
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMultiTextureShader:Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;->create()V

    .line 551
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMultiTextureRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->create()V

    .line 552
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatShader:Lcom/google/android/opengl/glview/GLCanvas$FlatShader;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->create()V

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    .line 554
    return-void
.end method

.method public popMatrix()V
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/MatrixStack;->glPopMatrix()V

    .line 808
    return-void
.end method

.method public pushMatrix()V
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/MatrixStack;->glPushMatrix()V

    .line 804
    return-void
.end method

.method public rotateAngleAxis(FFFF)V
    .locals 1
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/MatrixStack;->glRotatef(FFFF)V

    .line 820
    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/opengl/glview/MatrixStack;->glScalef(FFF)V

    .line 824
    return-void
.end method

.method public final setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 887
    iput p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mAlpha:F

    .line 888
    return-void
.end method

.method public setConfiguration(Ljava/lang/Object;)V
    .locals 0
    .parameter "configuration"

    .prologue
    .line 895
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mConfiguration:Ljava/lang/Object;

    .line 896
    return-void
.end method

.method public setExtent(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 869
    iput p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mWidth:F

    .line 870
    iput p2, p0, Lcom/google/android/opengl/glview/GLCanvas;->mHeight:F

    .line 871
    return-void
.end method

.method public setFade(FF)V
    .locals 2
    .parameter "yFade0"
    .parameter "yFade1"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    instance-of v0, v0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;

    if-eqz v0, :cond_0

    .line 630
    iget-object p0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    .end local p0
    check-cast p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->bindFade(FF)V

    .line 634
    return-void

    .line 632
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not TextureRezzingShader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFadeTexturedProgram()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFadeTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 650
    return-void
.end method

.method public setFlatColor(FFFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 582
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 583
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 584
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 585
    return-void
.end method

.method public setFlatColor([FI)V
    .locals 3
    .parameter "c"
    .parameter "offset"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    return-void
.end method

.method public setFlatProgram()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFlatShader:Lcom/google/android/opengl/glview/GLCanvas$FlatShader;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 666
    return-void
.end method

.method public final setFrameTime(J)V
    .locals 0
    .parameter "frameTime"

    .prologue
    .line 1015
    iput-wide p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mFrameTime:J

    .line 1016
    return-void
.end method

.method public setMix(F)V
    .locals 2
    .parameter "m"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    instance-of v0, v0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;

    if-eqz v0, :cond_0

    .line 622
    iget-object p0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    .end local p0
    check-cast p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;

    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->bindMix(F)V

    .line 626
    return-void

    .line 624
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not TexturedShader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMixAndFade(FFFF)V
    .locals 2
    .parameter "yMix0"
    .parameter "yMix1"
    .parameter "yFade0"
    .parameter "yFade1"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    instance-of v0, v0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;

    if-eqz v0, :cond_0

    .line 638
    iget-object p0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mCurrentShader:Lcom/google/android/opengl/glview/GLCanvas$Shader;

    .end local p0
    check-cast p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->bindMixAndFade(FFFF)V

    .line 642
    return-void

    .line 640
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not MultiTextureRezzingShader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMultiTextureProgram()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMultiTextureShader:Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 658
    return-void
.end method

.method public setMultiTextureRezzingProgram()V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mMultiTextureRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 662
    return-void
.end method

.method public setProjectionMatrix([FI)V
    .locals 3
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mProjMatrix:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    return-void
.end method

.method public setQuadScale(FFFF)V
    .locals 2
    .parameter "sx"
    .parameter "sy"
    .parameter "sdx"
    .parameter "sdy"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 609
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 610
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 611
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 612
    return-void
.end method

.method public setQuadScale([FI)V
    .locals 3
    .parameter "s"
    .parameter "offset"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 602
    return-void
.end method

.method public setTexture(II)V
    .locals 2
    .parameter "textureChannel"
    .parameter "textureId"

    .prologue
    const v1, 0x84c0

    .line 691
    if-eqz p1, :cond_0

    .line 692
    add-int v0, v1, p1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 694
    :cond_0
    const/16 v0, 0xde1

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 695
    if-eqz p1, :cond_1

    .line 696
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 698
    :cond_1
    return-void
.end method

.method public setTexture0(I)V
    .locals 1
    .parameter "textureId"

    .prologue
    .line 705
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 706
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 707
    return-void
.end method

.method public setTexture1(I)V
    .locals 1
    .parameter "textureId"

    .prologue
    .line 714
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 715
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 716
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 717
    return-void
.end method

.method public setTexturedProgram()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTexturedShader:Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 646
    return-void
.end method

.method public setTexturedRezzingProgram()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mTexturedRezzingShader:Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLCanvas;->setShader(Lcom/google/android/opengl/glview/GLCanvas$Shader;)V

    .line 654
    return-void
.end method

.method public setVertices(Ljava/nio/FloatBuffer;)V
    .locals 0
    .parameter "vertices"

    .prologue
    .line 730
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVertices:Ljava/nio/FloatBuffer;

    .line 731
    return-void
.end method

.method public setViewMatrix([FI)V
    .locals 3
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mVMatrix:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    return-void
.end method

.method public startDrawing()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 839
    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mX:F

    .line 840
    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mY:F

    .line 841
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mAlpha:F

    .line 842
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/MatrixStack;->reset()V

    .line 843
    return-void
.end method

.method public supports(Ljava/lang/String;)Z
    .locals 3
    .parameter "extension"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mExtensions:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public translate(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/opengl/glview/MatrixStack;->glTranslatef(FFF)V

    .line 812
    return-void
.end method

.method public translate([FI)V
    .locals 4
    .parameter "t"
    .parameter "offset"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mModelStack:Lcom/google/android/opengl/glview/MatrixStack;

    aget v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    add-int/lit8 v3, p2, 0x2

    aget v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/MatrixStack;->glTranslatef(FFF)V

    .line 816
    return-void
.end method

.method public final width()F
    .locals 1

    .prologue
    .line 862
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mWidth:F

    return v0
.end method

.method public final x()F
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mX:F

    return v0
.end method

.method public final y()F
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas;->mY:F

    return v0
.end method
