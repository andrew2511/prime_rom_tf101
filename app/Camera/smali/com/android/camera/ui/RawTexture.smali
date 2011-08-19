.class Lcom/android/camera/ui/RawTexture;
.super Lcom/android/camera/ui/BasicTexture;
.source "RawTexture.java"


# direct methods
.method private constructor <init>(Ljavax/microedition/khronos/opengles/GL11;I)V
    .locals 1
    .parameter "gl"
    .parameter "id"

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/BasicTexture;-><init>(Ljavax/microedition/khronos/opengles/GL11;II)V

    .line 26
    return-void
.end method

.method public static newInstance(Ljavax/microedition/khronos/opengles/GL11;)Lcom/android/camera/ui/RawTexture;
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 33
    new-array v1, v2, [I

    .line 34
    .local v1, textureId:[I
    invoke-interface {p0, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 35
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v0

    .line 36
    .local v0, glError:I
    if-eqz v0, :cond_0

    .line 37
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GL_ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_0
    new-instance v2, Lcom/android/camera/ui/RawTexture;

    aget v3, v1, v3

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ui/RawTexture;-><init>(Ljavax/microedition/khronos/opengles/GL11;I)V

    return-object v2
.end method


# virtual methods
.method protected bind(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 2
    .parameter "glRootView"
    .parameter "gl"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/RawTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v0, p2, :cond_0

    .line 45
    const/16 v0, 0xde1

    invoke-virtual {p0}, Lcom/android/camera/ui/RawTexture;->getId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawBack(Lcom/android/camera/ui/GLRootView;IIII)V
    .locals 7
    .parameter "root"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 52
    const/high16 v6, 0x3f80

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/GLRootView;->drawTexture(Lcom/android/camera/ui/BasicTexture;IIIIF)V

    .line 53
    return-void
.end method

.method public getBoundGL()Ljavax/microedition/khronos/opengles/GL11;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/RawTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method
