.class Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;
.super Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeTexturedShader"
.end annotation


# static fields
.field private static final mFragmentShader:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float uMix;\nvoid main() {\n  vec2 t0 = vTextureCoord.xy;\n  vec4 col = texture2D(sTexture, t0);\n  vec4 col1 = vec4(0.0, 0.0, 0.0, 0.0);\n  gl_FragColor = mix(col, col1, uMix);\n}\n"


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/glview/GLCanvas;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 1
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    return-void
.end method


# virtual methods
.method protected createShaderProgram()V
    .locals 2

    .prologue
    .line 213
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform vec4 uQuadScale;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 p = aPosition * uQuadScale;\n  p.x = p.x + p.z;\n  p.y = p.y + p.w;\n  p.z = 0.0;\n  p.w = 1.0;\n  gl_Position = uMVPMatrix * p;\n  vTextureCoord = aTextureCoord;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float uMix;\nvoid main() {\n  vec2 t0 = vTextureCoord.xy;\n  vec4 col = texture2D(sTexture, t0);\n  vec4 col1 = vec4(0.0, 0.0, 0.0, 0.0);\n  gl_FragColor = mix(col, col1, uMix);\n}\n"

    invoke-static {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->access$400(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$FadeTexturedShader;->mProgram:I

    .line 214
    const-string v0, "createProgram"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 215
    return-void
.end method
