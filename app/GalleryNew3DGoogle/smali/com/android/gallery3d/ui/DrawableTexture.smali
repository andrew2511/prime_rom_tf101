.class public Lcom/android/gallery3d/ui/DrawableTexture;
.super Lcom/android/gallery3d/ui/CanvasTexture;
.source "DrawableTexture.java"


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 0
    .parameter "drawable"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 29
    invoke-direct {p0, p2, p3}, Lcom/android/gallery3d/ui/CanvasTexture;-><init>(II)V

    .line 30
    iput-object p1, p0, Lcom/android/gallery3d/ui/DrawableTexture;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/CanvasTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    return-void
.end method

.method public bridge synthetic draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 24
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/CanvasTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    return-void
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/CanvasTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/CanvasTexture;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureHeight()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/CanvasTexture;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureWidth()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/CanvasTexture;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/CanvasTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isContentValid(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/CanvasTexture;->isContentValid(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoaded(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/CanvasTexture;->isLoaded(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpaque()Z
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/CanvasTexture;->isOpaque()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "canvas"
    .parameter "backing"

    .prologue
    const/4 v3, 0x0

    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/DrawableTexture;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/gallery3d/ui/DrawableTexture;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/DrawableTexture;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/DrawableTexture;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    return-void
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/CanvasTexture;->recycle()V

    return-void
.end method

.method public bridge synthetic setOpaque(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/CanvasTexture;->setOpaque(Z)V

    return-void
.end method

.method public bridge synthetic updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/CanvasTexture;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method public bridge synthetic yield()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/gallery3d/ui/CanvasTexture;->yield()V

    return-void
.end method
