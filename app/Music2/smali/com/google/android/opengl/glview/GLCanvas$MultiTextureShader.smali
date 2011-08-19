.class Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;
.super Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiTextureShader"
.end annotation


# static fields
.field private static final mFragmentShader:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;uniform sampler2D sTexture;uniform sampler2D sTexture1;uniform float uMix;void main() {  vec2 t0 = vTextureCoord.xy;  vec4 col = texture2D(sTexture, t0);  vec4 col1 = texture2D(sTexture1, t0);  gl_FragColor = mix(col, col1, uMix);}\n"


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/glview/GLCanvas;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 1
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    return-void
.end method


# virtual methods
.method public create()V
    .locals 3

    .prologue
    .line 241
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->create()V

    .line 243
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;->mProgram:I

    const-string v2, "sTexture1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 244
    .local v0, sampleLoc:I
    const-string v1, "glGetUniformLocation sTexture1"

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 245
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 247
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 248
    const-string v1, "glUniform1i sTexture1"

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 250
    :cond_0
    return-void
.end method

.method protected createShaderProgram()V
    .locals 2

    .prologue
    .line 235
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform vec4 uQuadScale;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 p = aPosition * uQuadScale;\n  p.x = p.x + p.z;\n  p.y = p.y + p.w;\n  p.z = 0.0;\n  p.w = 1.0;\n  gl_Position = uMVPMatrix * p;\n  vTextureCoord = aTextureCoord;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;uniform sampler2D sTexture;uniform sampler2D sTexture1;uniform float uMix;void main() {  vec2 t0 = vTextureCoord.xy;  vec4 col = texture2D(sTexture, t0);  vec4 col1 = texture2D(sTexture1, t0);  gl_FragColor = mix(col, col1, uMix);}\n"

    invoke-static {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->access$400(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureShader;->mProgram:I

    .line 236
    const-string v0, "createProgram"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 237
    return-void
.end method
