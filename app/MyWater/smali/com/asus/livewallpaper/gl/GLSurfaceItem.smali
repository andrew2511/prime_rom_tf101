.class public Lcom/asus/livewallpaper/gl/GLSurfaceItem;
.super Lcom/asus/livewallpaper/gl/GLSprites;
.source "GLSurfaceItem.java"


# instance fields
.field final mVerts:[F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-direct {p0}, Lcom/asus/livewallpaper/gl/GLSprites;-><init>()V

    .line 19
    const/16 v0, 0xa4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->mVerts:[F

    .line 30
    new-instance v0, Lcom/asus/livewallpaper/gl/Grid;

    const/16 v1, 0x29

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/livewallpaper/gl/Grid;-><init>(IIZ)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    .line 32
    const/high16 v0, 0x450e

    const/high16 v1, 0x42a0

    invoke-virtual {p0, v0, v1}, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->setSize(FF)V

    .line 34
    invoke-virtual {p0, v4, v4}, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->prepareHorizonMesh(FF)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->loadMesh(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public loadMesh(Z)V
    .locals 14
    .parameter "assign_texture"

    .prologue
    .line 51
    const/16 v13, 0x28

    .line 52
    .local v13, w:I
    const/4 v9, 0x1

    .line 53
    .local v9, h:I
    iget-object v12, p0, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->mVerts:[F

    .line 56
    .local v12, verts:[F
    const/4 v11, 0x0

    .line 57
    .local v11, index:I
    const/4 v10, 0x0

    .line 58
    .local v10, idx2:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-gt v2, v9, :cond_2

    .line 59
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-gt v1, v13, :cond_1

    .line 60
    shl-int/lit8 v10, v11, 0x1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    aget v3, v12, v10

    add-int/lit8 v4, v10, 0x1

    aget v4, v12, v4

    iget v5, p0, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->mHeight:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    int-to-float v6, v1

    int-to-float v7, v13

    div-float/2addr v6, v7

    int-to-float v7, v9

    int-to-float v8, v2

    sub-float/2addr v7, v8

    int-to-float v8, v9

    div-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->set(IIFFFFF[F)V

    .line 67
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->mGrid:Lcom/asus/livewallpaper/gl/Grid;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v6, v10, 0x1

    aget v6, v12, v6

    iget v7, p0, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->mHeight:F

    sub-float/2addr v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/asus/livewallpaper/gl/Grid;->setVertexs(IIZFZFZF)V

    goto :goto_2

    .line 58
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method prepareHorizonMesh(FF)V
    .locals 14
    .parameter "period"
    .parameter "amp"

    .prologue
    .line 78
    iget v9, p0, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->mWidth:F

    .line 79
    .local v9, w:F
    iget v3, p0, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->mHeight:F

    .line 80
    .local v3, h:F
    iget-object v8, p0, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->mVerts:[F

    .line 83
    .local v8, verts:[F
    const/16 v0, 0x14

    .line 85
    .local v0, HALF_MESH_WIDTH:I
    const/4 v5, 0x0

    .line 86
    .local v5, index:I
    const/4 v11, 0x0

    .local v11, y:I
    :goto_0
    const/4 v12, 0x1

    if-gt v11, v12, :cond_2

    .line 87
    int-to-float v12, v11

    mul-float/2addr v12, v3

    const/high16 v13, 0x3f80

    div-float v2, v12, v13

    .line 89
    .local v2, fy:F
    const/4 v10, 0x0

    .local v10, x:I
    :goto_1
    const/16 v12, 0x28

    if-gt v10, v12, :cond_1

    .line 90
    const/16 v12, 0x14

    sub-int v12, v10, v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    const/high16 v13, 0x4220

    div-float v1, v12, v13

    .line 91
    .local v1, fx:F
    int-to-float v12, v10

    const/high16 v13, 0x4220

    div-float/2addr v12, v13

    add-float/2addr v12, p1

    const v13, 0x41490fdb

    mul-float v7, v12, v13

    .line 92
    .local v7, theta:F
    const/4 v12, 0x1

    if-le v11, v12, :cond_0

    move v6, v3

    .line 94
    .local v6, ny:F
    :goto_2
    shl-int/lit8 v4, v5, 0x1

    .line 95
    .local v4, i:I
    aput v1, v8, v4

    .line 96
    add-int/lit8 v12, v4, 0x1

    aput v6, v8, v12

    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 89
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 92
    .end local v4           #i:I
    .end local v6           #ny:F
    :cond_0
    invoke-static {v7}, Landroid/util/FloatMath;->sin(F)F

    move-result v12

    mul-float v12, v12, p2

    add-float/2addr v12, v2

    move v6, v12

    goto :goto_2

    .line 86
    .end local v1           #fx:F
    .end local v7           #theta:F
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 101
    .end local v2           #fy:F
    .end local v10           #x:I
    :cond_2
    return-void
.end method
