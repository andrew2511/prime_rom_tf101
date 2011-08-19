.class abstract Lcom/google/android/opengl/glview/GLCanvas$Shader;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Shader"
.end annotation


# instance fields
.field protected mProgram:I

.field protected maPositionHandle:I

.field protected muMVPMatrixHandle:I

.field private muQuadScaleHandle:I

.field final synthetic this$0:Lcom/google/android/opengl/glview/GLCanvas;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas$Shader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    .prologue
    .line 65
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 66
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 67
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 68
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 71
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public bindInputs()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 78
    const-string v0, "bindInputs start"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->muMVPMatrixHandle:I

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->access$000(Lcom/google/android/opengl/glview/GLCanvas;)[F

    move-result-object v1

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 80
    const-string v0, "glUniformMatrix4fv muMVPMatrixHandle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->access$100(Lcom/google/android/opengl/glview/GLCanvas;)Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 82
    .local v5, vertices:Ljava/nio/FloatBuffer;
    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->maPositionHandle:I

    const/4 v1, 0x4

    const/16 v2, 0x1406

    const/16 v4, 0x18

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 85
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->muQuadScaleHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 88
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->muQuadScaleHandle:I

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->access$200(Lcom/google/android/opengl/glview/GLCanvas;)[F

    move-result-object v1

    invoke-static {v0, v6, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 89
    const-string v0, "glUniform4fv muQuadScaleHandle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public create()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->createShaderProgram()V

    .line 39
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->mProgram:I

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get a valid program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 45
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 47
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->maPositionHandle:I

    .line 48
    const-string v0, "glGetAttribLocation aPosition"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->maPositionHandle:I

    if-ne v0, v2, :cond_1

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->muMVPMatrixHandle:I

    .line 53
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 54
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->muMVPMatrixHandle:I

    if-ne v0, v2, :cond_2

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->mProgram:I

    const-string v1, "uQuadScale"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->muQuadScaleHandle:I

    .line 59
    const-string v0, "glGetUniformLocation muQuadScaleHandle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected abstract createShaderProgram()V
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 98
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 99
    const-string v0, "glDisableVertexAttribArray maPositionHandle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 100
    return-void
.end method
