.class Lcom/google/android/opengl/glview/GLCanvas$FlatShader;
.super Lcom/google/android/opengl/glview/GLCanvas$Shader;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlatShader"
.end annotation


# static fields
.field private static final mFragmentShader:Ljava/lang/String; = "precision mediump float;\nuniform vec4 uvFlatColor;\nvoid main() {\n  gl_FragColor = uvFlatColor;\n}\n"

.field private static final mVertexShader:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform vec4 uQuadScale;\nattribute vec4 aPosition;\nvoid main() {\n  vec4 p = aPosition * uQuadScale;\n  p.x = p.x + p.z;\n  p.y = p.y + p.w;\n  p.z = 0.0;\n  p.w = 1.0;\n  gl_Position = uMVPMatrix * p;\n}\n"


# instance fields
.field private muFlatColorHandle:I

.field final synthetic this$0:Lcom/google/android/opengl/glview/GLCanvas;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 1
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    return-void
.end method


# virtual methods
.method public bindInputs()V
    .locals 4

    .prologue
    .line 479
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->bindInputs()V

    .line 481
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->muFlatColorHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-static {v2}, Lcom/google/android/opengl/glview/GLCanvas;->access$600(Lcom/google/android/opengl/glview/GLCanvas;)[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 482
    const-string v0, "glUniform4fv muFlatColorHandle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public create()V
    .locals 2

    .prologue
    .line 468
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->create()V

    .line 470
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->mProgram:I

    const-string v1, "uvFlatColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->muFlatColorHandle:I

    .line 471
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 472
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->muFlatColorHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 473
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uvFlatColor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_0
    return-void
.end method

.method protected createShaderProgram()V
    .locals 2

    .prologue
    .line 462
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform vec4 uQuadScale;\nattribute vec4 aPosition;\nvoid main() {\n  vec4 p = aPosition * uQuadScale;\n  p.x = p.x + p.z;\n  p.y = p.y + p.w;\n  p.z = 0.0;\n  p.w = 1.0;\n  gl_Position = uMVPMatrix * p;\n}\n"

    const-string v1, "precision mediump float;\nuniform vec4 uvFlatColor;\nvoid main() {\n  gl_FragColor = uvFlatColor;\n}\n"

    invoke-static {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->access$400(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->mProgram:I

    .line 463
    const-string v0, "createProgram"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 464
    return-void
.end method
