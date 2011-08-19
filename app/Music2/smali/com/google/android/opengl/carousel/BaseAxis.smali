.class public Lcom/google/android/opengl/carousel/BaseAxis;
.super Ljava/lang/Object;
.source "BaseAxis.java"


# instance fields
.field private mMMatrix:[F

.field private mMVPMatrix:[F

.field private mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field private mVertices:Ljava/nio/FloatBuffer;

.field private final mVerticesData:[F


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V
    .locals 2
    .parameter "renderer"

    .prologue
    const/16 v1, 0x10

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x12

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mVerticesData:[F

    .line 25
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mMVPMatrix:[F

    .line 26
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mMMatrix:[F

    .line 30
    iput-object p1, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 32
    iget-object v0, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mVerticesData:[F

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

    iput-object v0, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mVertices:Ljava/nio/FloatBuffer;

    .line 34
    iget-object v0, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    return-void

    .line 18
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method


# virtual methods
.method public draw()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mGLProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v1, v2}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 41
    const/4 v7, 0x2

    .line 42
    .local v7, colorHandle:I
    const/high16 v1, 0x40a0

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 44
    iget-object v1, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    const/4 v1, 0x3

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mVertices:Ljava/nio/FloatBuffer;

    move v3, v0

    move v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 48
    iget-object v1, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mMMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 50
    iget-object v1, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v3, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVPMatrix:[F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mMMatrix:[F

    move v2, v0

    move v4, v0

    move v6, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 51
    iget-object v1, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/BaseAxis;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setMVPUniform([F)V

    .line 53
    invoke-static {v7, v8, v9, v9, v8}, Landroid/opengl/GLES20;->glVertexAttrib4f(IFFFF)V

    .line 54
    invoke-static {v11, v0, v10}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 56
    invoke-static {v7, v9, v8, v9, v8}, Landroid/opengl/GLES20;->glVertexAttrib4f(IFFFF)V

    .line 57
    invoke-static {v11, v10, v10}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 59
    invoke-static {v7, v8, v8, v9, v8}, Landroid/opengl/GLES20;->glVertexAttrib4f(IFFFF)V

    .line 60
    const/4 v0, 0x4

    invoke-static {v11, v0, v10}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 61
    return-void
.end method
