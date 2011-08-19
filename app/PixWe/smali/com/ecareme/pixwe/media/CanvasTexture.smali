.class public abstract Lcom/ecareme/pixwe/media/CanvasTexture;
.super Ljava/lang/Object;
.source "CanvasTexture.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private mCachedGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mHeight:I

.field private mNeedsDraw:Z

.field private mNeedsResize:Z

.field private mNormalizedHeight:F

.field private mNormalizedWidth:F

.field private mTextureHeight:I

.field private mTextureId:I

.field private mTextureWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap$Config;)V
    .locals 3
    .parameter "bitmapConfig"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 37
    iput-object v2, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 38
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mNeedsDraw:Z

    .line 39
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mNeedsResize:Z

    .line 40
    iput-object v2, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mCachedGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 43
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 44
    return-void
.end method


# virtual methods
.method public bind(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 14
    .parameter "gl"

    .prologue
    .line 84
    iget-object v11, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mCachedGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eq v11, p1, :cond_0

    .line 85
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mCachedGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 86
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CanvasTexture;->resetTexture()V

    .line 88
    :cond_0
    iget v10, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mWidth:I

    .line 89
    .local v10, width:I
    iget v3, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mHeight:I

    .line 90
    .local v3, height:I
    iget v7, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mTextureId:I

    .line 91
    .local v7, textureId:I
    iget v9, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mTextureWidth:I

    .line 92
    .local v9, textureWidth:I
    iget v6, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mTextureHeight:I

    .line 93
    .local v6, textureHeight:I
    iget-object v1, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 94
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 96
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-boolean v11, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mNeedsResize:Z

    if-nez v11, :cond_1

    iget v11, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mTextureId:I

    if-nez v11, :cond_5

    .line 98
    :cond_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mNeedsDraw:Z

    .line 101
    invoke-static {v10}, Lcom/ecareme/pixwe/media/Shared;->nextPowerOf2(I)I

    move-result v5

    .line 102
    .local v5, newTextureWidth:I
    invoke-static {v3}, Lcom/ecareme/pixwe/media/Shared;->nextPowerOf2(I)I

    move-result v4

    .line 107
    .local v4, newTextureHeight:I
    if-ne v9, v5, :cond_2

    if-ne v6, v4, :cond_2

    iget v11, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mTextureId:I

    if-nez v11, :cond_5

    .line 109
    :cond_2
    if-nez v7, :cond_3

    .line 110
    const/4 v11, 0x1

    new-array v8, v11, [I

    .line 111
    .local v8, textureIdOut:[I
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface {p1, v11, v8, v12}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 112
    const/4 v11, 0x0

    aget v7, v8, v11

    .line 113
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mNeedsResize:Z

    .line 114
    iput v7, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mTextureId:I

    .line 117
    const/16 v11, 0xde1

    invoke-interface {p1, v11, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 118
    const/16 v11, 0xde1

    const/16 v12, 0x2802

    const v13, 0x812f

    invoke-interface {p1, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 119
    const/16 v11, 0xde1

    const/16 v12, 0x2803

    const v13, 0x812f

    invoke-interface {p1, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 120
    const/16 v11, 0xde1

    const/16 v12, 0x2801

    const v13, 0x46180400

    invoke-interface {p1, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 121
    const/16 v11, 0xde1

    const/16 v12, 0x2800

    const v13, 0x46180400

    invoke-interface {p1, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 125
    .end local v8           #textureIdOut:[I
    :cond_3
    move v9, v5

    .line 126
    move v6, v4

    .line 127
    iput v5, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mTextureWidth:I

    .line 128
    iput v4, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mTextureHeight:I

    .line 129
    int-to-float v11, v10

    int-to-float v12, v9

    div-float/2addr v11, v12

    iput v11, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mNormalizedWidth:F

    .line 130
    int-to-float v11, v3

    int-to-float v12, v6

    div-float/2addr v11, v12

    iput v11, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mNormalizedHeight:F

    .line 133
    if-eqz v0, :cond_4

    .line 134
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    :cond_4
    if-lez v9, :cond_5

    if-lez v6, :cond_5

    .line 136
    iget-object v11, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v6, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    iput-object v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 144
    .end local v4           #newTextureHeight:I
    .end local v5           #newTextureWidth:I
    :cond_5
    if-nez v7, :cond_6

    .line 145
    const/4 v11, 0x0

    .line 159
    :goto_0
    return v11

    .line 147
    :cond_6
    const/16 v11, 0xde1

    invoke-interface {p1, v11, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 150
    iget-boolean v11, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mNeedsDraw:Z

    if-eqz v11, :cond_7

    .line 151
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mNeedsDraw:Z

    .line 152
    invoke-virtual {p0, v1, v0, v10, v3}, Lcom/ecareme/pixwe/media/CanvasTexture;->renderCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 153
    const/4 v11, 0x4

    new-array v2, v11, [I

    const/4 v11, 0x1

    aput v3, v2, v11

    const/4 v11, 0x2

    aput v10, v2, v11

    const/4 v11, 0x3

    neg-int v12, v3

    aput v12, v2, v11

    .line 154
    .local v2, cropRect:[I
    const/16 v11, 0xde1

    const v12, 0x8b9d

    const/4 v13, 0x0

    invoke-interface {p1, v11, v12, v2, v13}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 155
    const/16 v11, 0xde1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v0, v13}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 159
    .end local v2           #cropRect:[I
    :cond_7
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public draw(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;II)V
    .locals 6
    .parameter "view"
    .parameter "gl"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 163
    invoke-virtual {p0, p2}, Lcom/ecareme/pixwe/media/CanvasTexture;->bind(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    int-to-float v1, p3

    int-to-float v2, p4

    const/4 v3, 0x0

    iget v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mHeight:I

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(FFFFF)V

    .line 166
    :cond_0
    return-void
.end method

.method public drawWithEffect(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;FFFFFF)V
    .locals 8
    .parameter "view"
    .parameter "gl"
    .parameter "x"
    .parameter "y"
    .parameter "anchorX"
    .parameter "anchorY"
    .parameter "alpha"
    .parameter "scale"

    .prologue
    .line 169
    invoke-virtual {p0, p2}, Lcom/ecareme/pixwe/media/CanvasTexture;->bind(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mWidth:I

    int-to-float v4, v0

    .line 171
    .local v4, width:F
    iget v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mHeight:I

    int-to-float v5, v0

    .line 174
    .local v5, height:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p8, v0

    if-eqz v0, :cond_0

    .line 175
    mul-float v0, p5, v4

    add-float v6, p3, v0

    .line 176
    .local v6, originX:F
    mul-float v0, p6, v5

    add-float v7, p4, v0

    .line 177
    .local v7, originY:F
    mul-float v4, v4, p8

    .line 178
    mul-float v5, v5, p8

    .line 179
    mul-float v0, p5, v4

    sub-float p3, v6, v0

    .line 180
    mul-float v0, p6, v5

    sub-float p4, v7, v0

    .line 184
    .end local v6           #originX:F
    .end local v7           #originY:F
    :cond_0
    const/high16 v0, 0x3f80

    cmpl-float v0, p7, v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p1, p7}, Lcom/ecareme/pixwe/media/RenderView;->setAlpha(F)V

    .line 187
    :cond_1
    const/4 v3, 0x0

    move-object v0, p1

    move v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(FFFFF)V

    .line 188
    const/high16 v0, 0x3f80

    cmpl-float v0, p7, v0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RenderView;->resetColor()V

    .line 192
    .end local v4           #width:F
    .end local v5           #height:F
    :cond_2
    return-void
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mHeight:I

    return v0
.end method

.method public final getNormalizedHeight()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mNormalizedHeight:F

    return v0
.end method

.method public final getNormalizedWidth()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mNormalizedWidth:F

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mWidth:I

    return v0
.end method

.method protected abstract onSizeChanged()V
.end method

.method protected abstract renderCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V
.end method

.method public resetTexture()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mTextureId:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mNeedsResize:Z

    .line 80
    return-void
.end method

.method public final setNeedsDraw()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mNeedsDraw:Z

    .line 48
    return-void
.end method

.method public final setSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, -0x1

    .line 67
    iput p1, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mWidth:I

    .line 68
    iput p2, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mHeight:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mNeedsResize:Z

    .line 70
    iput v1, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mTextureWidth:I

    .line 71
    iput v1, p0, Lcom/ecareme/pixwe/media/CanvasTexture;->mTextureHeight:I

    .line 72
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CanvasTexture;->onSizeChanged()V

    .line 73
    return-void
.end method
