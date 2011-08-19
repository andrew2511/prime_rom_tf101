.class Lcom/amazon/android/system/drawing/AndroidBufferedImage;
.super Lcom/mobipocket/android/drawing/AndroidBufferedImage;
.source "AndroidBufferedImage.java"

# interfaces
.implements Lcom/amazon/system/drawing/BufferedImageExtended;


# instance fields
.field final bitmap:Landroid/graphics/Bitmap;

.field final type:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "bitmap"
    .parameter "type"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/mobipocket/android/drawing/AndroidBufferedImage;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    iput-object p1, p0, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->bitmap:Landroid/graphics/Bitmap;

    .line 21
    iput p2, p0, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->type:I

    .line 22
    return-void
.end method


# virtual methods
.method public createAffineTransform()Lcom/amazon/system/drawing/AffineTransform;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/amazon/android/system/drawing/AndroidAffineTransform;

    invoke-direct {v0}, Lcom/amazon/android/system/drawing/AndroidAffineTransform;-><init>()V

    return-object v0
.end method

.method public createGraphics()Lcom/amazon/system/drawing/GraphicsExtended;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/amazon/android/system/drawing/AndroidGraphics;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Lcom/amazon/android/system/drawing/AndroidGraphics;-><init>(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getRaster()Lcom/amazon/system/drawing/WritableRaster;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/amazon/android/system/drawing/AndroidWritableRaster;

    iget-object v1, p0, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/amazon/android/system/drawing/AndroidWritableRaster;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method
