.class public Lcom/asus/livewallpaper/gl/GLIceItem;
.super Lcom/asus/livewallpaper/gl/GLSprites;
.source "GLIceItem.java"


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/asus/livewallpaper/gl/GLSprites;-><init>()V

    .line 10
    const/high16 v0, 0x43a2

    const/high16 v1, 0x4362

    invoke-virtual {p0, v0, v1}, Lcom/asus/livewallpaper/gl/GLIceItem;->setSize(FF)V

    .line 12
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLIceItem;->mWidth:F

    const/high16 v1, 0x4000

    div-float v10, v0, v1

    .line 13
    .local v10, half_width:F
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLIceItem;->mHeight:F

    const/high16 v1, 0x4000

    div-float v9, v0, v1

    .line 14
    .local v9, half_height:F
    new-instance v0, Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/livewallpaper/gl/Grid;-><init>(IIZ)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLIceItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    .line 15
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLIceItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x0

    const/4 v2, 0x0

    neg-float v3, v10

    neg-float v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 16
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLIceItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x1

    const/4 v2, 0x0

    neg-float v4, v9

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    move v3, v10

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 17
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLIceItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x0

    const/4 v2, 0x1

    neg-float v3, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, v9

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 18
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLIceItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, v10

    move v4, v9

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 19
    return-void
.end method


# virtual methods
.method public calculateBoatX(IIF)F
    .locals 5
    .parameter "screen_width"
    .parameter "screen_height"
    .parameter "boat_x"

    .prologue
    .line 28
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 29
    .local v0, bound:I
    shr-int/lit8 v2, v0, 0x1

    .line 30
    .local v2, half_bound:I
    iget v3, p0, Lcom/asus/livewallpaper/gl/GLIceItem;->mHeight:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 32
    .local v1, half_boat:I
    neg-int v3, v2

    add-int/2addr v3, v1

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_1

    .line 33
    neg-int v3, v2

    add-int/2addr v3, v1

    int-to-float p3, v3

    .line 37
    :cond_0
    :goto_0
    return p3

    .line 34
    :cond_1
    sub-int v3, v2, v1

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_0

    .line 35
    sub-int v3, v2, v1

    int-to-float p3, v3

    goto :goto_0
.end method

.method public calculateBoatY(FFFF)F
    .locals 6
    .parameter "period"
    .parameter "amp"
    .parameter "boat_x"
    .parameter "surface_w"

    .prologue
    const/high16 v5, 0x4220

    .line 42
    mul-float v3, p3, v5

    div-float/2addr v3, p4

    const/high16 v4, 0x41a0

    add-float v1, v3, v4

    .line 43
    .local v1, bx:F
    div-float v3, v1, v5

    add-float/2addr v3, p1

    const v4, 0x41490fdb

    mul-float v2, v3, v4

    .line 44
    .local v2, theta:F
    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    mul-float v0, p2, v3

    .line 45
    .local v0, boatY:F
    return v0
.end method

.method public moveTo(FFFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "rotate2d"

    .prologue
    .line 23
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLIceItem;->mHeight:F

    const/high16 v1, 0x40c0

    div-float/2addr v0, v1

    sub-float v0, p2, v0

    invoke-super {p0, p1, v0, p3, p4}, Lcom/asus/livewallpaper/gl/GLSprites;->moveTo(FFFF)V

    .line 24
    return-void
.end method
