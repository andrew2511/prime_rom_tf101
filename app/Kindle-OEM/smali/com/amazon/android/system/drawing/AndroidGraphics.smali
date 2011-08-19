.class public Lcom/amazon/android/system/drawing/AndroidGraphics;
.super Lcom/mobipocket/android/drawing/AndroidGraphics;
.source "AndroidGraphics.java"

# interfaces
.implements Lcom/amazon/system/drawing/GraphicsExtended;


# instance fields
.field private final backgroundColor:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/mobipocket/android/drawing/AndroidGraphics;-><init>(Landroid/graphics/Canvas;)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->backgroundColor:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->backgroundColor:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->backgroundColor:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    return-void
.end method

.method private realInvert(IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v2, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PixelXorXfermode;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/PixelXorXfermode;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 101
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/android/system/drawing/AndroidGraphics;->fillRect(IIII)V

    .line 103
    iget-object v2, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 105
    return-void
.end method

.method private translate(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 212
    return-void
.end method


# virtual methods
.method public canRenderGlyphs()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public clearRect(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 50
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 51
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->backgroundColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 52
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 53
    return-void
.end method

.method public colorBlit(Lcom/amazon/system/drawing/Rectangle;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/high16 v5, -0x100

    .line 58
    or-int v0, v5, p2

    .line 60
    if-ne p3, v6, :cond_1

    .line 62
    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 67
    iget-object v3, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 69
    iget v0, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/amazon/android/system/drawing/AndroidGraphics;->fillRect(IIII)V

    .line 71
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 72
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    if-nez p3, :cond_0

    .line 80
    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/amazon/android/system/drawing/AndroidGraphics;->realInvert(IIII)V

    .line 83
    xor-int/lit8 v1, v0, -0x1

    .line 84
    const v2, 0xffffff

    and-int/2addr v1, v2

    and-int/2addr v0, v5

    or-int/2addr v0, v1

    .line 86
    invoke-virtual {p0, p1, v0, v6}, Lcom/amazon/android/system/drawing/AndroidGraphics;->colorBlit(Lcom/amazon/system/drawing/Rectangle;II)V

    .line 89
    iget v0, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/android/system/drawing/AndroidGraphics;->realInvert(IIII)V

    goto :goto_0
.end method

.method public drawImage(Lcom/amazon/system/drawing/BufferedImageExtended;IIIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 124
    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    int-to-float v3, p3

    add-int v4, p2, p4

    int-to-float v4, v4

    add-int v5, p3, p5

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amazon/android/system/drawing/AndroidBufferedImage;

    move-object v1, v0

    iget-object v1, v1, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    check-cast p1, Lcom/amazon/android/system/drawing/AndroidBufferedImage;

    iget-object v2, p1, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->bitmap:Landroid/graphics/Bitmap;

    sub-int v3, p2, p6

    int-to-float v3, v3

    sub-int v4, p3, p7

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 132
    return-void
.end method

.method public drawImage(Lcom/amazon/system/drawing/BufferedImageExtended;Lcom/amazon/system/drawing/AffineTransform;)V
    .locals 5
    .parameter "bufferedImage"
    .parameter "transfrom"

    .prologue
    .line 110
    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amazon/android/system/drawing/AndroidBufferedImage;

    move-object v1, v0

    iget-object v1, v1, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    check-cast p1, Lcom/amazon/android/system/drawing/AndroidBufferedImage;

    .end local p1
    iget-object v2, p1, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->bitmap:Landroid/graphics/Bitmap;

    check-cast p2, Lcom/amazon/android/system/drawing/AndroidAffineTransform;

    .end local p2
    iget-object v3, p2, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 114
    :cond_0
    return-void
.end method

.method public fill(Lcom/amazon/system/drawing/GeneralPath;)V
    .locals 3
    .parameter "generalPath"

    .prologue
    .line 137
    check-cast p1, Lcom/amazon/android/system/drawing/AndroidGeneralPath;

    .end local p1
    iget-object v0, p1, Lcom/amazon/android/system/drawing/AndroidGeneralPath;->inner:Landroid/graphics/Path;

    .line 139
    .local v0, path:Landroid/graphics/Path;
    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 140
    return-void
.end method

.method public fill(Lcom/amazon/system/drawing/Polygon;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 151
    check-cast p1, Lcom/amazon/android/system/drawing/AndroidPolygon;

    .end local p1
    iget-object v0, p1, Lcom/amazon/android/system/drawing/AndroidPolygon;->inner:Landroid/graphics/Path;

    .line 152
    .local v0, path:Landroid/graphics/Path;
    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 153
    return-void
.end method

.method public fill(Lcom/amazon/system/drawing/Rectangle;)V
    .locals 6
    .parameter "r"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    int-to-float v1, v1

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    int-to-float v2, v2

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v5, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 146
    return-void
.end method

.method public getARGBColor()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getTransform()Lcom/amazon/system/drawing/AffineTransform;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;

    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/android/system/drawing/AndroidAffineTransform;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public scale(DD)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    double-to-float v1, p1

    double-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 171
    return-void
.end method

.method public setARGBColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    return-void
.end method

.method public setAntialias()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    return-void
.end method

.method public setBackground(I)V
    .locals 5
    .parameter "RGB"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->backgroundColor:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 189
    return-void
.end method

.method public setTransform(Lcom/amazon/system/drawing/AffineTransform;)V
    .locals 2
    .parameter "at"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    check-cast p1, Lcom/amazon/android/system/drawing/AndroidAffineTransform;

    .end local p1
    iget-object v1, p1, Lcom/amazon/android/system/drawing/AndroidAffineTransform;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 195
    return-void
.end method

.method public translate(DD)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 200
    double-to-float v0, p1

    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/system/drawing/AndroidGraphics;->translate(FF)V

    .line 201
    return-void
.end method

.method public translate(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 206
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/system/drawing/AndroidGraphics;->translate(FF)V

    .line 207
    return-void
.end method
