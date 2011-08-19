.class abstract Lcom/android/camera/ui/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/android/camera/ui/Texture;


# instance fields
.field protected mGL:Ljavax/microedition/khronos/opengles/GL11;

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field protected mTextureHeight:I

.field protected mTextureWidth:I

.field protected mWidth:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/camera/ui/BasicTexture;-><init>(Ljavax/microedition/khronos/opengles/GL11;II)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljavax/microedition/khronos/opengles/GL11;II)V
    .locals 1
    .parameter "gl"
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v0, -0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/android/camera/ui/BasicTexture;->mWidth:I

    .line 19
    iput v0, p0, Lcom/android/camera/ui/BasicTexture;->mHeight:I

    .line 25
    iput-object p1, p0, Lcom/android/camera/ui/BasicTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 26
    iput p2, p0, Lcom/android/camera/ui/BasicTexture;->mId:I

    .line 27
    iput p3, p0, Lcom/android/camera/ui/BasicTexture;->mState:I

    .line 28
    return-void
.end method


# virtual methods
.method protected abstract bind(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)Z
.end method

.method public deleteFromGL()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    iget v0, p0, Lcom/android/camera/ui/BasicTexture;->mState:I

    if-ne v0, v4, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/BasicTexture;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    new-array v1, v4, [I

    iget v2, p0, Lcom/android/camera/ui/BasicTexture;->mId:I

    aput v2, v1, v3

    invoke-interface {v0, v4, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    .line 65
    :cond_0
    iput v3, p0, Lcom/android/camera/ui/BasicTexture;->mState:I

    .line 66
    return-void
.end method

.method public draw(Lcom/android/camera/ui/GLRootView;II)V
    .locals 6
    .parameter "root"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 69
    iget v4, p0, Lcom/android/camera/ui/BasicTexture;->mWidth:I

    iget v5, p0, Lcom/android/camera/ui/BasicTexture;->mHeight:I

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/GLRootView;->drawTexture(Lcom/android/camera/ui/BasicTexture;IIII)V

    .line 70
    return-void
.end method

.method public draw(Lcom/android/camera/ui/GLRootView;IIII)V
    .locals 6
    .parameter "root"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 73
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/GLRootView;->drawTexture(Lcom/android/camera/ui/BasicTexture;IIII)V

    .line 74
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/camera/ui/BasicTexture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/camera/ui/BasicTexture;->mId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/camera/ui/BasicTexture;->mWidth:I

    return v0
.end method

.method protected setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/camera/ui/BasicTexture;->mWidth:I

    .line 36
    iput p2, p0, Lcom/android/camera/ui/BasicTexture;->mHeight:I

    .line 37
    return-void
.end method

.method protected setTextureSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/camera/ui/BasicTexture;->mTextureWidth:I

    .line 46
    iput p2, p0, Lcom/android/camera/ui/BasicTexture;->mTextureHeight:I

    .line 47
    return-void
.end method
