.class public Lcom/asus/livewallpaper/gl/GLBackgroundItem;
.super Lcom/asus/livewallpaper/gl/GLSprites;
.source "GLBackgroundItem.java"


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/asus/livewallpaper/gl/GLSprites;-><init>()V

    .line 7
    const/high16 v0, 0x44a0

    const/high16 v1, 0x44a0

    invoke-virtual {p0, v0, v1}, Lcom/asus/livewallpaper/gl/GLBackgroundItem;->setSize(FF)V

    .line 9
    new-instance v0, Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/livewallpaper/gl/Grid;-><init>(IIZ)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLBackgroundItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    .line 10
    iget v10, p0, Lcom/asus/livewallpaper/gl/GLBackgroundItem;->mWidth:F

    .line 11
    .local v10, bgWidth:F
    iget v9, p0, Lcom/asus/livewallpaper/gl/GLBackgroundItem;->mHeight:F

    .line 12
    .local v9, bgHeight:F
    const/4 v11, 0x1

    .line 13
    .local v11, repeat:I
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBackgroundItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-float v4, v9

    const/high16 v5, 0x3f80

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 14
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBackgroundItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x1

    const/4 v2, 0x0

    neg-float v3, v9

    const/high16 v4, 0x3f80

    mul-float/2addr v4, v3

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    move v3, v10

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 15
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBackgroundItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 16
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBackgroundItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, v10

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 17
    return-void
.end method
