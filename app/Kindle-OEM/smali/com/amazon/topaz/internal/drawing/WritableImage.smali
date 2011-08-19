.class public Lcom/amazon/topaz/internal/drawing/WritableImage;
.super Ljava/lang/Object;
.source "WritableImage.java"


# instance fields
.field private bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

.field private graphics_:Lcom/amazon/system/drawing/GraphicsExtended;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "imageType"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/amazon/topaz/Viewer;->getImageFactory()Lcom/amazon/system/drawing/ImageFactoryExtended;

    move-result-object v0

    .line 25
    .local v0, localImageFact:Lcom/amazon/system/drawing/ImageFactoryExtended;
    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/system/drawing/ImageFactoryExtended;->getBufferedImage(III)Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    .line 28
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v1}, Lcom/amazon/system/drawing/BufferedImageExtended;->createGraphics()Lcom/amazon/system/drawing/GraphicsExtended;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->graphics_:Lcom/amazon/system/drawing/GraphicsExtended;

    .line 30
    sget-object v1, Lcom/amazon/system/drawing/Color;->WHITE:Lcom/amazon/system/drawing/Color;

    invoke-virtual {p0, v1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->setBackground(Lcom/amazon/system/drawing/Color;)V

    .line 32
    sget-object v1, Lcom/amazon/system/drawing/Color;->BLACK:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v1}, Lcom/amazon/system/drawing/Color;->getRGB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->setColor(I)V

    .line 33
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->graphics_:Lcom/amazon/system/drawing/GraphicsExtended;

    invoke-interface {v1}, Lcom/amazon/system/drawing/GraphicsExtended;->setAntialias()V

    .line 34
    return-void
.end method


# virtual methods
.method public blend(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Color;)V
    .locals 17
    .parameter "rect"
    .parameter "color"

    .prologue
    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/WritableImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    move-object v3, v0

    invoke-interface {v3}, Lcom/amazon/system/drawing/BufferedImageExtended;->getType()I

    move-result v12

    .line 71
    .local v12, imageType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/WritableImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    move-object v3, v0

    invoke-interface {v3}, Lcom/amazon/system/drawing/BufferedImageExtended;->getRaster()Lcom/amazon/system/drawing/WritableRaster;

    move-result-object v2

    .line 72
    .local v2, raster:Lcom/amazon/system/drawing/WritableRaster;
    new-instance v3, Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/amazon/system/drawing/Rectangle;-><init>(II)V

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/amazon/system/drawing/Rectangle;->intersection(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object p1

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/system/drawing/Rectangle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    :goto_0
    return-void

    .line 77
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    move v4, v0

    mul-int/2addr v3, v4

    new-array v7, v3, [I

    .line 78
    .local v7, pixels:[I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    move v6, v0

    invoke-interface/range {v2 .. v7}, Lcom/amazon/system/drawing/WritableRaster;->getPixels(IIII[I)V

    .line 79
    const/16 v3, 0xa

    if-ne v3, v12, :cond_1

    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/system/drawing/Color;->getGreen()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/system/drawing/Color;->getBlue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/system/drawing/Color;->getRed()I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x8

    shr-int/lit8 v10, v3, 0x4

    .line 82
    .local v10, gray:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    array-length v3, v7

    if-ge v11, v3, :cond_3

    .line 83
    aget v3, v7, v11

    mul-int/2addr v3, v10

    add-int/lit16 v3, v3, 0x80

    shr-int/lit8 v3, v3, 0x8

    aput v3, v7, v11

    .line 82
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 86
    .end local v10           #gray:I
    .end local v11           #i:I
    :cond_1
    const/4 v3, 0x1

    if-ne v3, v12, :cond_2

    .line 87
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/system/drawing/Color;->getRed()I

    move-result v16

    .line 88
    .local v16, r:I
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/system/drawing/Color;->getGreen()I

    move-result v9

    .line 89
    .local v9, g:I
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/system/drawing/Color;->getBlue()I

    move-result v8

    .line 90
    .local v8, b:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2
    array-length v3, v7

    if-ge v11, v3, :cond_3

    .line 91
    aget v3, v7, v11

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    mul-int v3, v3, v16

    add-int/lit16 v3, v3, 0x80

    shr-int/lit8 v15, v3, 0x8

    .line 92
    .local v15, newR:I
    aget v3, v7, v11

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    mul-int/2addr v3, v9

    add-int/lit16 v3, v3, 0x80

    shr-int/lit8 v14, v3, 0x8

    .line 93
    .local v14, newG:I
    aget v3, v7, v11

    and-int/lit16 v3, v3, 0xff

    mul-int/2addr v3, v8

    add-int/lit16 v3, v3, 0x80

    shr-int/lit8 v13, v3, 0x8

    .line 94
    .local v13, newB:I
    const/high16 v3, -0x100

    aget v4, v7, v11

    and-int/2addr v3, v4

    and-int/lit16 v4, v15, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    and-int/lit16 v4, v14, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v4, v13, 0xff

    or-int/2addr v3, v4

    aput v3, v7, v11

    .line 90
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 101
    .end local v8           #b:I
    .end local v9           #g:I
    .end local v11           #i:I
    .end local v13           #newB:I
    .end local v14           #newG:I
    .end local v15           #newR:I
    .end local v16           #r:I
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blend on BufferedImage type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    .restart local v11       #i:I
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    move v6, v0

    invoke-interface/range {v2 .. v7}, Lcom/amazon/system/drawing/WritableRaster;->setPixels(IIII[I)V

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 195
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->graphics_:Lcom/amazon/system/drawing/GraphicsExtended;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getHeight()I

    move-result v2

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/amazon/system/drawing/GraphicsExtended;->clearRect(IIII)V

    .line 196
    return-void
.end method

.method public clearRect(Lcom/amazon/system/drawing/Rectangle;)V
    .locals 5
    .parameter "target"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->graphics_:Lcom/amazon/system/drawing/GraphicsExtended;

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/GraphicsExtended;->clearRect(IIII)V

    .line 205
    return-void
.end method

.method public draw(Lcom/amazon/topaz/internal/drawing/WritableImage;Lcom/amazon/topaz/internal/drawing/ScaledRectangle;)V
    .locals 8
    .parameter "canvas"
    .parameter "pos"

    .prologue
    .line 37
    iget v2, p2, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->width:I

    if-lez v2, :cond_0

    iget v2, p2, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->height:I

    if-gtz v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getGraphics()Lcom/amazon/system/drawing/GraphicsExtended;

    move-result-object v0

    .line 40
    .local v0, graphics:Lcom/amazon/system/drawing/GraphicsExtended;
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v2}, Lcom/amazon/system/drawing/BufferedImageExtended;->createAffineTransform()Lcom/amazon/system/drawing/AffineTransform;

    move-result-object v1

    .line 41
    .local v1, xform:Lcom/amazon/system/drawing/AffineTransform;
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledX()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledY()D

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/amazon/system/drawing/AffineTransform;->translate(DD)V

    .line 42
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledWidth()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getWidth()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledHeight()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/amazon/system/drawing/AffineTransform;->scale(DD)V

    .line 44
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0, v2, v1}, Lcom/amazon/system/drawing/GraphicsExtended;->drawImage(Lcom/amazon/system/drawing/BufferedImageExtended;Lcom/amazon/system/drawing/AffineTransform;)V

    goto :goto_0
.end method

.method public fill(Lcom/amazon/system/drawing/Color;)V
    .locals 4
    .parameter "color"

    .prologue
    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0, p1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->fill(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Color;)V

    .line 56
    return-void
.end method

.method public fill(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Color;)V
    .locals 6
    .parameter "rect"
    .parameter "color"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->graphics_:Lcom/amazon/system/drawing/GraphicsExtended;

    invoke-interface {v1}, Lcom/amazon/system/drawing/GraphicsExtended;->getARGBColor()I

    move-result v0

    .line 49
    .local v0, oldColor:I
    invoke-virtual {p2}, Lcom/amazon/system/drawing/Color;->getRGB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->setColor(I)V

    .line 50
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->graphics_:Lcom/amazon/system/drawing/GraphicsExtended;

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/amazon/system/drawing/GraphicsExtended;->fillRect(IIII)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->setColor(I)V

    .line 52
    return-void
.end method

.method public getBufferedImage()Lcom/amazon/system/drawing/BufferedImageExtended;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    return-object v0
.end method

.method public final getFormat()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->getType()I

    move-result v0

    return v0
.end method

.method public getGraphics()Lcom/amazon/system/drawing/GraphicsExtended;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->graphics_:Lcom/amazon/system/drawing/GraphicsExtended;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->getWidth()I

    move-result v0

    return v0
.end method

.method public invert(Lcom/amazon/system/drawing/Rectangle;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 125
    sget-object v0, Lcom/amazon/system/drawing/Color;->WHITE:Lcom/amazon/system/drawing/Color;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->invert(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Color;)V

    .line 126
    return-void
.end method

.method public invert(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Color;)V
    .locals 17
    .parameter "rect"
    .parameter "color"

    .prologue
    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/WritableImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    move-object v3, v0

    invoke-interface {v3}, Lcom/amazon/system/drawing/BufferedImageExtended;->getType()I

    move-result v12

    .line 141
    .local v12, imageType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/drawing/WritableImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    move-object v3, v0

    invoke-interface {v3}, Lcom/amazon/system/drawing/BufferedImageExtended;->getRaster()Lcom/amazon/system/drawing/WritableRaster;

    move-result-object v2

    .line 142
    .local v2, raster:Lcom/amazon/system/drawing/WritableRaster;
    new-instance v3, Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/amazon/system/drawing/Rectangle;-><init>(II)V

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/amazon/system/drawing/Rectangle;->intersection(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object p1

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/system/drawing/Rectangle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    :goto_0
    return-void

    .line 147
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    move v4, v0

    mul-int/2addr v3, v4

    new-array v7, v3, [I

    .line 148
    .local v7, pixels:[I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    move v6, v0

    invoke-interface/range {v2 .. v7}, Lcom/amazon/system/drawing/WritableRaster;->getPixels(IIII[I)V

    .line 149
    const/16 v3, 0xa

    if-ne v3, v12, :cond_1

    .line 150
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/system/drawing/Color;->getGreen()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/system/drawing/Color;->getBlue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/system/drawing/Color;->getRed()I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x8

    shr-int/lit8 v10, v3, 0x4

    .line 152
    .local v10, gray:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    array-length v3, v7

    if-ge v11, v3, :cond_3

    .line 153
    aget v3, v7, v11

    xor-int/2addr v3, v10

    aput v3, v7, v11

    .line 152
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 156
    .end local v10           #gray:I
    .end local v11           #i:I
    :cond_1
    const/4 v3, 0x1

    if-ne v3, v12, :cond_2

    .line 157
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/system/drawing/Color;->getRed()I

    move-result v16

    .line 158
    .local v16, r:I
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/system/drawing/Color;->getGreen()I

    move-result v9

    .line 159
    .local v9, g:I
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/system/drawing/Color;->getBlue()I

    move-result v8

    .line 160
    .local v8, b:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2
    array-length v3, v7

    if-ge v11, v3, :cond_3

    .line 161
    aget v3, v7, v11

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    xor-int v15, v3, v16

    .line 162
    .local v15, newR:I
    aget v3, v7, v11

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    xor-int v14, v3, v9

    .line 163
    .local v14, newG:I
    aget v3, v7, v11

    and-int/lit16 v3, v3, 0xff

    xor-int v13, v3, v8

    .line 164
    .local v13, newB:I
    const/high16 v3, -0x100

    aget v4, v7, v11

    and-int/2addr v3, v4

    shl-int/lit8 v4, v15, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v14, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v13

    aput v3, v7, v11

    .line 160
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 171
    .end local v8           #b:I
    .end local v9           #g:I
    .end local v11           #i:I
    .end local v13           #newB:I
    .end local v14           #newG:I
    .end local v15           #newR:I
    .end local v16           #r:I
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blend on BufferedImage type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    .restart local v11       #i:I
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    move v6, v0

    invoke-interface/range {v2 .. v7}, Lcom/amazon/system/drawing/WritableRaster;->setPixels(IIII[I)V

    goto/16 :goto_0
.end method

.method public rotateCopy()Lcom/amazon/topaz/internal/drawing/WritableImage;
    .locals 7

    .prologue
    .line 114
    new-instance v1, Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getFormat()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/amazon/topaz/internal/drawing/WritableImage;-><init>(III)V

    .line 115
    .local v1, rotated:Lcom/amazon/topaz/internal/drawing/WritableImage;
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getGraphics()Lcom/amazon/system/drawing/GraphicsExtended;

    move-result-object v0

    .line 116
    .local v0, g2d:Lcom/amazon/system/drawing/GraphicsExtended;
    iget-object v3, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v3}, Lcom/amazon/system/drawing/BufferedImageExtended;->createAffineTransform()Lcom/amazon/system/drawing/AffineTransform;

    move-result-object v2

    .line 117
    .local v2, rotation:Lcom/amazon/system/drawing/AffineTransform;
    const-wide/16 v3, 0x0

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getWidth()I

    move-result v5

    int-to-double v5, v5

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/amazon/system/drawing/AffineTransform;->translate(DD)V

    .line 118
    const-wide v3, -0x4006de04abbbd2e8L

    invoke-interface {v2, v3, v4}, Lcom/amazon/system/drawing/AffineTransform;->rotate(D)V

    .line 119
    iget-object v3, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0, v3, v2}, Lcom/amazon/system/drawing/GraphicsExtended;->drawImage(Lcom/amazon/system/drawing/BufferedImageExtended;Lcom/amazon/system/drawing/AffineTransform;)V

    .line 120
    return-object v1
.end method

.method public setBackground(Lcom/amazon/system/drawing/Color;)V
    .locals 2
    .parameter "backgroundColor"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->graphics_:Lcom/amazon/system/drawing/GraphicsExtended;

    invoke-virtual {p1}, Lcom/amazon/system/drawing/Color;->getRGB()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/system/drawing/GraphicsExtended;->setBackground(I)V

    .line 188
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/WritableImage;->graphics_:Lcom/amazon/system/drawing/GraphicsExtended;

    invoke-interface {v0, p1}, Lcom/amazon/system/drawing/GraphicsExtended;->setARGBColor(I)V

    .line 192
    return-void
.end method
