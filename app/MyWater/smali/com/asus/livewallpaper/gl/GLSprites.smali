.class public abstract Lcom/asus/livewallpaper/gl/GLSprites;
.super Ljava/lang/Object;
.source "GLSprites.java"


# instance fields
.field mAngle2D:F

.field mGrid:Lcom/asus/livewallpaper/gl/Grid;

.field mHeight:F

.field mTexture:I

.field mWidth:F

.field mWorldX:F

.field mWorldY:F

.field mX:F

.field mY:F

.field mZ:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x501

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mTexture:I

    return-void
.end method


# virtual methods
.method draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 40
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mTexture:I

    invoke-virtual {p0, p1, v0}, Lcom/asus/livewallpaper/gl/GLSprites;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 41
    return-void
.end method

.method draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 3
    .parameter "gl"
    .parameter "texture"

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    if-eqz v0, :cond_0

    const/16 v0, 0x501

    if-eq p2, v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 66
    const/16 v0, 0xde1

    invoke-interface {p1, v0, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 68
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 69
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 70
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mWorldX:F

    iget v1, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mWorldY:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 71
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mAngle2D:F

    const/high16 v1, 0x3f80

    invoke-interface {p1, v0, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 72
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mX:F

    iget v1, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mY:F

    iget v2, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mZ:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 74
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/asus/livewallpaper/gl/Grid;->draw(Ljavax/microedition/khronos/opengles/GL10;ZZ)V

    .line 75
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 77
    :cond_0
    return-void
.end method

.method moveTo(FFFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "rotate2d"

    .prologue
    .line 98
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mX:F

    .line 99
    iput p2, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mY:F

    .line 100
    iput p3, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mZ:F

    .line 101
    iput p4, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mAngle2D:F

    .line 102
    return-void
.end method

.method moveToWorld(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 92
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mWorldX:F

    .line 93
    iput p2, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mWorldY:F

    .line 94
    return-void
.end method

.method setSize(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 81
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mWidth:F

    .line 82
    iput p2, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mHeight:F

    .line 83
    return-void
.end method

.method setTexture(I)V
    .locals 0
    .parameter "textureName"

    .prologue
    .line 87
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLSprites;->mTexture:I

    .line 88
    return-void
.end method
