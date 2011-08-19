.class Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;
.super Lcom/google/android/opengl/glview/GLCanvas$Shader;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TexturedShader"
.end annotation


# static fields
.field protected static final mFragmentShader:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field protected static final mVertexShader:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform vec4 uQuadScale;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 p = aPosition * uQuadScale;\n  p.x = p.x + p.z;\n  p.y = p.y + p.w;\n  p.z = 0.0;\n  p.w = 1.0;\n  gl_Position = uMVPMatrix * p;\n  vTextureCoord = aTextureCoord;\n}\n"


# instance fields
.field private mMixHandle:I

.field protected maTextureHandle:I

.field final synthetic this$0:Lcom/google/android/opengl/glview/GLCanvas;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->bind()V

    .line 167
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 168
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public bindInputs()V
    .locals 6

    .prologue
    .line 181
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->bindInputs()V

    .line 183
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->access$100(Lcom/google/android/opengl/glview/GLCanvas;)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x18

    iget-object v5, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-static {v5}, Lcom/google/android/opengl/glview/GLCanvas;->access$100(Lcom/google/android/opengl/glview/GLCanvas;)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 186
    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public bindMix(F)V
    .locals 2
    .parameter "mix"

    .prologue
    .line 190
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->mMixHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 191
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->mMixHandle:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 192
    const-string v0, "glUniform1f mMixHandle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method public create()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 143
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->create()V

    .line 144
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->mProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->maTextureHandle:I

    .line 145
    const-string v1, "glGetAttribLocation aTextureCoord"

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 146
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->maTextureHandle:I

    if-ne v1, v3, :cond_0

    .line 147
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get attrib location for aTextureCoord"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_0
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->mProgram:I

    const-string v2, "sTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 151
    .local v0, sampleLoc:I
    const-string v1, "glGetUniformLocation sTexture"

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 152
    if-eq v0, v3, :cond_1

    .line 154
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 155
    const-string v1, "glUniform1i sTexture"

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 158
    :cond_1
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->mProgram:I

    const-string v2, "uMix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->mMixHandle:I

    .line 159
    const-string v1, "glGetUniformLocation uMix"

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method protected createShaderProgram()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform vec4 uQuadScale;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 p = aPosition * uQuadScale;\n  p.x = p.x + p.z;\n  p.y = p.y + p.w;\n  p.z = 0.0;\n  p.w = 1.0;\n  gl_Position = uMVPMatrix * p;\n  vTextureCoord = aTextureCoord;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->access$400(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->mProgram:I

    .line 138
    const-string v0, "createProgram"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->unbind()V

    .line 175
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 176
    const-string v0, "glDisableVertexAttribArray maTextureHandle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 177
    return-void
.end method
