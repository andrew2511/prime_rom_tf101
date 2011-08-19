.class public Lcom/mobipocket/android/drawing/AndroidGraphics;
.super Ljava/lang/Object;
.source "AndroidGraphics.java"

# interfaces
.implements Lcom/amazon/system/drawing/Graphics;


# instance fields
.field protected final canvas:Landroid/graphics/Canvas;

.field protected final paint:Landroid/graphics/Paint;

.field private typefaceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;

    invoke-direct {v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;-><init>()V

    .line 38
    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getDefaultFamilyName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->typefaceName:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->typefaceName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 40
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getDefaultFontSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 43
    return-void
.end method


# virtual methods
.method public drawArc(IIIIII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "startAngle"
    .parameter "arcAngle"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v6

    .line 55
    .local v6, oldStyle:Landroid/graphics/Paint$Style;
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v0, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 62
    .local v1, rectangle:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p5

    neg-int v3, p6

    int-to-float v3, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 65
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    return-void
.end method

.method public drawBufferedImage(Lcom/amazon/system/drawing/BufferedImage;II)V
    .locals 5
    .parameter "bufferedImage"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    check-cast p1, Lcom/mobipocket/android/drawing/AndroidBufferedImage;

    .end local p1
    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/AndroidBufferedImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-float v2, p2

    int-to-float v3, p3

    iget-object v4, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 76
    return-void
.end method

.method public drawImage(Lcom/amazon/system/drawing/Image;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-interface {p1}, Lcom/amazon/system/drawing/Image;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    if-gez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image is off screen.  x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/system/drawing/Image;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-interface {p1}, Lcom/amazon/system/drawing/Image;->getHeight()I

    move-result v0

    add-int/2addr v0, p3

    if-gez v0, :cond_1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image is off screen.  y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/system/drawing/Image;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    check-cast p1, Lcom/mobipocket/android/drawing/AndroidImage;

    invoke-interface {p1}, Lcom/mobipocket/android/drawing/AndroidImage;->getBitmapImage()Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-float v2, p2

    int-to-float v3, p3

    iget-object v4, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawLine(IIII)V
    .locals 6
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 107
    return-void
.end method

.method public drawRect(IIII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v6

    .line 119
    .local v6, oldStyle:Landroid/graphics/Paint$Style;
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 123
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    return-void
.end method

.method public drawText([CIIIII)V
    .locals 7
    .parameter "text"
    .parameter "offset"
    .parameter "length"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v4, p4

    int-to-float v1, p5

    iget-object v2, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 137
    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "startAngle"
    .parameter "arcAngle"

    .prologue
    const/4 v0, 0x3

    .line 146
    if-le p3, v0, :cond_0

    .line 147
    :goto_0
    if-le p4, v0, :cond_1

    .line 150
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v6

    .line 153
    .local v6, oldStyle:Landroid/graphics/Paint$Style;
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v0, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 157
    .local v1, rectangle:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p5

    neg-int v3, p6

    int-to-float v3, v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 160
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    return-void

    .end local v1           #rectangle:Landroid/graphics/RectF;
    .end local v6           #oldStyle:Landroid/graphics/Paint$Style;
    :cond_0
    move p3, v0

    .line 146
    goto :goto_0

    :cond_1
    move p4, v0

    .line 147
    goto :goto_1
.end method

.method public fillRect(IIII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v6

    .line 173
    .local v6, oldStyle:Landroid/graphics/Paint$Style;
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 177
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    return-void
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getFont()Lcom/amazon/system/drawing/Font;
    .locals 5

    .prologue
    .line 196
    new-instance v0, Lcom/mobipocket/android/drawing/AndroidFont;

    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->typefaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->isUnderlineText()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobipocket/android/drawing/AndroidFont;-><init>(Ljava/lang/String;FIZ)V

    return-object v0
.end method

.method public invert(IIII)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 206
    iget-object v2, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 209
    .local v0, previousARGB:I
    const v1, 0x300000ff

    .line 210
    .local v1, selectColor:I
    iget-object v2, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mobipocket/android/drawing/AndroidGraphics;->fillRect(IIII)V

    .line 216
    iget-object v2, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .parameter "RGB"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    return-void
.end method

.method public setFont(Lcom/amazon/system/drawing/Font;)V
    .locals 3
    .parameter

    .prologue
    .line 238
    iget-object v2, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    check-cast v0, Lcom/mobipocket/android/drawing/AndroidFont;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/AndroidFont;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 239
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-interface {p1}, Lcom/amazon/system/drawing/Font;->isUnderlined()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 240
    invoke-interface {p1}, Lcom/amazon/system/drawing/Font;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->typefaceName:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-interface {p1}, Lcom/amazon/system/drawing/Font;->getSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 243
    return-void
.end method
