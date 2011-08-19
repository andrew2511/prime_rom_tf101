.class Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;
.super Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiTextureRezzingShader"
.end annotation


# static fields
.field private static final mFragmentShader:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform sampler2D sTexture1;\nuniform float uMix;\nuniform float uYMix0;\nuniform float uYMix1;\nuniform float uYFade0;\nuniform float uYFade1;\nfloat computeMix(float posy) {\n  float fmix = 0.0;\n  if (posy < uYMix0) {\n    fmix = 1.0;\n  } else {    if (posy > uYMix1) {\n      fmix = 0.0;\n    } else {\n      fmix = 1.0 - ((posy - uYMix0) / (uYMix1 - uYMix0));\n    }\n  }\n  return fmix;\n}\nfloat computeAlpha(float posy) {\n  float alpha = 1.0;\n  if (posy > uYFade0) {\n    if (posy <= uYFade1) {\n      alpha = 1.0 - ((posy - uYFade0) / (uYFade1 - uYFade0));\n      alpha = alpha * 0.5;\n    } else {\n      alpha = 0.0;\n    }\n  }\n  return alpha;\n}\nvoid main() {\n  vec2 pos = gl_FragCoord.xy;\n  float alpha = computeAlpha(pos.y);\n  float fmix = computeMix(pos.y);\n  vec2 t0 = vTextureCoord.xy;\n  vec4 col = texture2D(sTexture, t0);\n  vec4 col1 = texture2D(sTexture1, t0);\n  col = mix(col, col1, min(fmix, uMix));\n  gl_FragColor = col*alpha;\n}\n"


# instance fields
.field private mMixHandle:I

.field private mYFade0Handle:I

.field private mYFade1Handle:I

.field private mYMix0Handle:I

.field private mYMix1Handle:I

.field final synthetic this$0:Lcom/google/android/opengl/glview/GLCanvas;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 1
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    return-void
.end method


# virtual methods
.method public bindMixAndFade(FFFF)V
    .locals 2
    .parameter "yMix0"
    .parameter "yMix1"
    .parameter "yFade0"
    .parameter "yFade1"

    .prologue
    const/4 v1, -0x1

    .line 418
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mYMix0Handle:I

    if-eq v0, v1, :cond_0

    .line 419
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mYMix0Handle:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 420
    const-string v0, "glUniform1f mYMix0Handle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 422
    :cond_0
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mYMix1Handle:I

    if-eq v0, v1, :cond_1

    .line 423
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mYMix1Handle:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 424
    const-string v0, "glUniform1f mYMix1Handle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 426
    :cond_1
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mYFade0Handle:I

    if-eq v0, v1, :cond_2

    .line 427
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mYFade0Handle:I

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 428
    const-string v0, "glUniform1f mYFade0Handle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 430
    :cond_2
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mYFade1Handle:I

    if-eq v0, v1, :cond_3

    .line 431
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mYFade1Handle:I

    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 432
    const-string v0, "glUniform1f mYFade1Handle"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 434
    :cond_3
    return-void
.end method

.method public create()V
    .locals 3

    .prologue
    .line 395
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->create()V

    .line 397
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mProgram:I

    const-string v2, "uMix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mMixHandle:I

    .line 398
    const-string v1, "glGetUniformLocation uMix"

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 399
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mProgram:I

    const-string v2, "uYMix0"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mYMix0Handle:I

    .line 400
    const-string v1, "glGetUniformLocation uYMix0"

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 401
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mProgram:I

    const-string v2, "uYMix1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mYMix1Handle:I

    .line 402
    const-string v1, "glGetUniformLocation uYMix1"

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 403
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mProgram:I

    const-string v2, "uYFade0"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mYFade0Handle:I

    .line 404
    const-string v1, "glGetUniformLocation uYFade0"

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 405
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mProgram:I

    const-string v2, "uYFade1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mYFade1Handle:I

    .line 406
    const-string v1, "glGetUniformLocation uYFade1"

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 408
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mProgram:I

    const-string v2, "sTexture1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 409
    .local v0, sampleLoc:I
    const-string v1, "glGetUniformLocation sTexture1"

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 410
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 412
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 413
    const-string v1, "glUniform1i sTexture1"

    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 415
    :cond_0
    return-void
.end method

.method protected createShaderProgram()V
    .locals 2

    .prologue
    .line 389
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform vec4 uQuadScale;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 p = aPosition * uQuadScale;\n  p.x = p.x + p.z;\n  p.y = p.y + p.w;\n  p.z = 0.0;\n  p.w = 1.0;\n  gl_Position = uMVPMatrix * p;\n  vTextureCoord = aTextureCoord;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform sampler2D sTexture1;\nuniform float uMix;\nuniform float uYMix0;\nuniform float uYMix1;\nuniform float uYFade0;\nuniform float uYFade1;\nfloat computeMix(float posy) {\n  float fmix = 0.0;\n  if (posy < uYMix0) {\n    fmix = 1.0;\n  } else {    if (posy > uYMix1) {\n      fmix = 0.0;\n    } else {\n      fmix = 1.0 - ((posy - uYMix0) / (uYMix1 - uYMix0));\n    }\n  }\n  return fmix;\n}\nfloat computeAlpha(float posy) {\n  float alpha = 1.0;\n  if (posy > uYFade0) {\n    if (posy <= uYFade1) {\n      alpha = 1.0 - ((posy - uYFade0) / (uYFade1 - uYFade0));\n      alpha = alpha * 0.5;\n    } else {\n      alpha = 0.0;\n    }\n  }\n  return alpha;\n}\nvoid main() {\n  vec2 pos = gl_FragCoord.xy;\n  float alpha = computeAlpha(pos.y);\n  float fmix = computeMix(pos.y);\n  vec2 t0 = vTextureCoord.xy;\n  vec4 col = texture2D(sTexture, t0);\n  vec4 col1 = texture2D(sTexture1, t0);\n  col = mix(col, col1, min(fmix, uMix));\n  gl_FragColor = col*alpha;\n}\n"

    invoke-static {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->access$400(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mProgram:I

    .line 390
    const-string v0, "createProgram"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 391
    return-void
.end method
