.class public Lcom/asus/livewallpaper/gl/GLWaterBodyItem;
.super Lcom/asus/livewallpaper/gl/GLSprites;
.source "GLWaterBodyItem.java"


# instance fields
.field mBundaryHeight:F


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/asus/livewallpaper/gl/GLSprites;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mBundaryHeight:F

    .line 13
    const/high16 v0, 0x450e

    const v1, 0x449a6000

    invoke-virtual {p0, v0, v1}, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->setSize(FF)V

    .line 15
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mWidth:F

    const/high16 v1, 0x4000

    div-float v9, v0, v1

    .line 16
    .local v9, half_width:F
    new-instance v0, Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/livewallpaper/gl/Grid;-><init>(IIZ)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    .line 17
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x0

    const/4 v2, 0x0

    neg-float v3, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 18
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, v9

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 19
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x1

    const/4 v2, 0x0

    neg-float v3, v9

    iget v4, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mHeight:F

    neg-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 20
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget v3, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mHeight:F

    neg-float v4, v3

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    move v3, v9

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 21
    return-void
.end method


# virtual methods
.method draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 5
    .parameter "gl"
    .parameter "texture"

    .prologue
    const/4 v4, 0x0

    .line 25
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    if-eqz v1, :cond_1

    const/16 v1, 0x501

    if-eq p2, v1, :cond_1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 26
    const/16 v1, 0xde1

    invoke-interface {p1, v1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 28
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 29
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 30
    iget v1, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mWorldX:F

    iget v2, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mWorldY:F

    invoke-interface {p1, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 31
    iget v1, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mAngle2D:F

    const/high16 v2, 0x3f80

    invoke-interface {p1, v1, v4, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 33
    iget v1, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mX:F

    iget v2, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mY:F

    iget v3, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mZ:F

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 34
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    int-to-float v1, v0

    iget v2, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mBundaryHeight:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/asus/livewallpaper/gl/Grid;->draw(Ljavax/microedition/khronos/opengles/GL10;ZZ)V

    .line 37
    iget v1, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mHeight:F

    neg-float v1, v1

    invoke-interface {p1, v4, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 34
    int-to-float v1, v0

    iget v2, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mHeight:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 41
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method setBundaryHeight(F)V
    .locals 0
    .parameter "bundaryHeight"

    .prologue
    .line 45
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->mBundaryHeight:F

    .line 46
    return-void
.end method
