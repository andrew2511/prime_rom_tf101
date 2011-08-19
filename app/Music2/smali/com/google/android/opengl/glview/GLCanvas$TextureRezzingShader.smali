.class Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;
.super Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextureRezzingShader"
.end annotation


# static fields
.field private static final mFragmentShader:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float uYFade0;\nuniform float uYFade1;\nfloat computeAlpha(float posy) {\n  float alpha = 1.0;\n  if (posy > uYFade0) {\n    if (posy <= uYFade1) {\n      alpha = 1.0 - ((posy - uYFade0) / (uYFade1 - uYFade0));\n      alpha = alpha * 0.5;\n    } else {\n      alpha = 0.0;\n    }\n  }\n  return alpha;\n}\nvoid main() {\n  vec2 pos = gl_FragCoord.xy;\n  float alpha = computeAlpha(pos.y);\n  vec2 t0 = vTextureCoord.xy;\n  vec4 col = texture2D(sTexture, t0);\n  gl_FragColor = col*alpha;\n}\n"


# instance fields
.field private mYFade0Handle:I

.field private mYFade1Handle:I

.field final synthetic this$0:Lcom/google/android/opengl/glview/GLCanvas;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 1
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    return-void
.end method


# virtual methods
.method public bindFade(FF)V
    .locals 2
    .parameter "yFade0"
    .parameter "yFade1"

    .prologue
    const/4 v1, -0x1

    .line 310
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mYFade0Handle:I

    if-eq v0, v1, :cond_0

    .line 311
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mYFade0Handle:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 312
    const-string v0, "glUniform1f mYFade0Handle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 314
    :cond_0
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mYFade1Handle:I

    if-eq v0, v1, :cond_1

    .line 315
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mYFade1Handle:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 316
    const-string v0, "glUniform1f mYFade1Handle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 318
    :cond_1
    return-void
.end method

.method public create()V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->create()V

    .line 303
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mProgram:I

    const-string v1, "uYFade0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mYFade0Handle:I

    .line 304
    const-string v0, "glGetUniformLocation uYFade0"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 305
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mProgram:I

    const-string v1, "uYFade1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mYFade1Handle:I

    .line 306
    const-string v0, "glGetUniformLocation uYFade1"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method protected createShaderProgram()V
    .locals 2

    .prologue
    .line 295
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform vec4 uQuadScale;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 p = aPosition * uQuadScale;\n  p.x = p.x + p.z;\n  p.y = p.y + p.w;\n  p.z = 0.0;\n  p.w = 1.0;\n  gl_Position = uMVPMatrix * p;\n  vTextureCoord = aTextureCoord;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float uYFade0;\nuniform float uYFade1;\nfloat computeAlpha(float posy) {\n  float alpha = 1.0;\n  if (posy > uYFade0) {\n    if (posy <= uYFade1) {\n      alpha = 1.0 - ((posy - uYFade0) / (uYFade1 - uYFade0));\n      alpha = alpha * 0.5;\n    } else {\n      alpha = 0.0;\n    }\n  }\n  return alpha;\n}\nvoid main() {\n  vec2 pos = gl_FragCoord.xy;\n  float alpha = computeAlpha(pos.y);\n  vec2 t0 = vTextureCoord.xy;\n  vec4 col = texture2D(sTexture, t0);\n  gl_FragColor = col*alpha;\n}\n"

    invoke-static {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->access$400(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mProgram:I

    .line 296
    const-string v0, "createProgram"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 297
    return-void
.end method
