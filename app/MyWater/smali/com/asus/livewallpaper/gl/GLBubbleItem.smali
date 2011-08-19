.class public Lcom/asus/livewallpaper/gl/GLBubbleItem;
.super Lcom/asus/livewallpaper/gl/GLSprites;
.source "GLBubbleItem.java"


# instance fields
.field public mDrawableId:I


# direct methods
.method public constructor <init>(IFF)V
    .locals 11
    .parameter "drawableId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/asus/livewallpaper/gl/GLSprites;-><init>()V

    .line 4
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItem;->mDrawableId:I

    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/asus/livewallpaper/gl/GLBubbleItem;->setSize(FF)V

    .line 8
    invoke-direct {p0, p1}, Lcom/asus/livewallpaper/gl/GLBubbleItem;->setDrawable(I)V

    .line 10
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItem;->mWidth:F

    const/high16 v1, 0x4000

    div-float v10, v0, v1

    .line 11
    .local v10, half_width:F
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItem;->mHeight:F

    const/high16 v1, 0x4000

    div-float v9, v0, v1

    .line 12
    .local v9, half_height:F
    new-instance v0, Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/livewallpaper/gl/Grid;-><init>(IIZ)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    .line 13
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x0

    const/4 v2, 0x0

    neg-float v3, v10

    neg-float v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 14
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x1

    const/4 v2, 0x0

    neg-float v4, v9

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    move v3, v10

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 15
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x0

    const/4 v2, 0x1

    neg-float v3, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, v9

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 16
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, v10

    move v4, v9

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 17
    return-void
.end method

.method private setDrawable(I)V
    .locals 0
    .parameter "drawableId"

    .prologue
    .line 20
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLBubbleItem;->mDrawableId:I

    .line 21
    return-void
.end method
