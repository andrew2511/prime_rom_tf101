.class public Lcom/google/android/opengl/carousel/GLProgram;
.super Ljava/lang/Object;
.source "GLProgram.java"


# static fields
.field public static final COLOR_LOC:I = 0x2

.field public static final POSITION_LOC:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLProgram"

.field public static final TEXTURE_LOC:I = 0x1

.field public static final sColorFragShader:Ljava/lang/String; = "precision mediump float;\nvarying vec4 vColor;\nvoid main() {\n  gl_FragColor = vColor;\n}\n"

.field public static final sColorVertexShader:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec4 aColor;\nvarying vec4 vColor;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vColor = aColor;\n}\n"

.field public static final sMultiTextureShader:Ljava/lang/String; = null

.field public static final sSingleTextureShader:Ljava/lang/String; = null

.field public static final sTexFragShader:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D uTexture;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTextureCoord);\n}\n"

.field public static final sTexVertexShader:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = aTextureCoord;\n}\n"

.field public static final sVertexShader:Ljava/lang/String;


# instance fields
.field public mFShader:I

.field public mProgram:I

.field public mVShader:I

.field public maColorHandle:I

.field public maPosHandle:I

.field public maTexHandle:I

.field public muMVPMatHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/String;

    const-string v1, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nattribute vec4 aColor;\nvarying vec2 vTextureCoord;\nvarying vec4 vColor;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  gl_PointSize = 1.0;\n  vTextureCoord = aTextureCoord;\n  vColor = aColor;\n}\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/opengl/carousel/GLProgram;->sVertexShader:Ljava/lang/String;

    .line 196
    new-instance v0, Ljava/lang/String;

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;uniform sampler2D uTexture;void main() {  vec2 t0 = vTextureCoord.xy;  vec4 col = texture2D(uTexture, t0);  gl_FragColor = col; }\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/opengl/carousel/GLProgram;->sSingleTextureShader:Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/lang/String;

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;uniform sampler2D uTexture;uniform sampler2D uTexture1;uniform float uFadeAmount;void main() {  vec2 t0 = vTextureCoord.xy;  vec4 col = texture2D(uTexture, t0);  vec4 col2 = texture2D(uTexture1, t0);  gl_FragColor = mix(col, col2, uFadeAmount);}\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/opengl/carousel/GLProgram;->sMultiTextureShader:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->maPosHandle:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->maTexHandle:I

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->maColorHandle:I

    .line 30
    return-void
.end method

.method private bindHandles()V
    .locals 3

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const/4 v1, 0x0

    const-string v2, "aPosition"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 102
    iget v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const/4 v1, 0x1

    const-string v2, "aTextureCoord"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 103
    iget v0, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const/4 v1, 0x2

    const-string v2, "aColor"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 104
    const-string v0, "bindHandles"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private getHandles()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 109
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "aPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maPosHandle:I

    .line 110
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maPosHandle:I

    if-ne v1, v3, :cond_0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get attrib location for aPosition"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_0
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maTexHandle:I

    .line 115
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maTexHandle:I

    if-ne v1, v3, :cond_1

    .line 120
    :cond_1
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "aColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maColorHandle:I

    .line 121
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->maColorHandle:I

    if-ne v1, v3, :cond_2

    .line 126
    :cond_2
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->muMVPMatHandle:I

    .line 127
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->muMVPMatHandle:I

    if-ne v1, v3, :cond_3

    .line 129
    const-string v1, "GLProgram"

    const-string v2, "No attrib handle for muMVPMatHandle."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_3
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 134
    .local v0, sampleLoc:I
    const-string v1, "getHandles"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 135
    const-string v1, "GLProgram"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->maPosHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->maTexHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->maColorHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->muMVPMatHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 81
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 82
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 83
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 84
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 85
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 86
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 87
    const-string v2, "GLProgram"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v2, "GLProgram"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 90
    const/4 v1, 0x0

    .line 93
    .end local v0           #compiled:[I
    :cond_0
    const-string v2, "loadShader"

    invoke-static {v2}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 94
    return v1
.end method

.method public static testShader()V
    .locals 5

    .prologue
    .line 35
    const/16 v0, 0x8

    .line 36
    .local v0, N:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 37
    const-string v2, "GLProgram"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current shader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in use: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glIsShader(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    const v1, 0x8b31

    invoke-direct {p0, v1, p1}, Lcom/google/android/opengl/carousel/GLProgram;->loadShader(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mVShader:I

    .line 43
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mVShader:I

    if-nez v1, :cond_0

    move v1, v4

    .line 76
    :goto_0
    return v1

    .line 47
    :cond_0
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/google/android/opengl/carousel/GLProgram;->loadShader(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mFShader:I

    .line 48
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mFShader:I

    if-nez v1, :cond_1

    move v1, v4

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    const-string v1, "GLProgram"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The shaders are: vertex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->mVShader:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/opengl/carousel/GLProgram;->mFShader:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    .line 54
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    if-eqz v1, :cond_2

    .line 55
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mVShader:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 56
    const-string v1, "glAttachShader"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 58
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mFShader:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 59
    const-string v1, "glAttachShader"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/GLProgram;->bindHandles()V

    .line 62
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 63
    new-array v0, v5, [I

    .line 64
    .local v0, linkStatus:[I
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const v2, 0x8b82

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 65
    aget v1, v0, v4

    if-eq v1, v5, :cond_3

    .line 66
    const-string v1, "GLProgram"

    const-string v2, "Could not link mProgram: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v1, "GLProgram"

    iget v2, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 69
    iput v4, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    .line 76
    .end local v0           #linkStatus:[I
    :cond_2
    :goto_1
    iget v1, p0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    goto/16 :goto_0

    .line 71
    .restart local v0       #linkStatus:[I
    :cond_3
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/GLProgram;->getHandles()V

    goto :goto_1
.end method
