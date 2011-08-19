.class public Lcom/amazon/topaz/internal/drawing/RasterImage;
.super Ljava/lang/Object;
.source "RasterImage.java"

# interfaces
.implements Lcom/amazon/topaz/internal/book/IImage;


# static fields
.field private static final bytes_per_color_pixel_:I = 0x4


# instance fields
.field private bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

.field private color_raster_:Z

.field private destRect_:Lcom/amazon/system/drawing/Rectangle;


# direct methods
.method public constructor <init>(Lcom/amazon/system/drawing/BufferedImageExtended;)V
    .locals 0
    .parameter "bufferedImage"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/drawing/RasterImage;->initRasterImage(Lcom/amazon/system/drawing/BufferedImageExtended;)V

    .line 18
    return-void
.end method

.method private initRasterImage(Lcom/amazon/system/drawing/BufferedImageExtended;)V
    .locals 2
    .parameter "bufferedImage"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/RasterImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    .line 25
    invoke-interface {p1}, Lcom/amazon/system/drawing/BufferedImageExtended;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/topaz/internal/drawing/RasterImage;->color_raster_:Z

    .line 27
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterImage;->destRect_:Lcom/amazon/system/drawing/Rectangle;

    .line 28
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/amazon/topaz/internal/drawing/WritableImage;Lcom/amazon/topaz/internal/drawing/ScaledRectangle;Lcom/amazon/system/drawing/Color;)Lcom/amazon/system/drawing/Rectangle;
    .locals 8
    .parameter "canvas"
    .parameter "pos"
    .parameter "color"

    .prologue
    .line 31
    iget v2, p2, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->width:I

    if-lez v2, :cond_0

    iget v2, p2, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->height:I

    if-gtz v2, :cond_1

    .line 32
    :cond_0
    new-instance v2, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v2}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    .line 44
    :goto_0
    return-object v2

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getGraphics()Lcom/amazon/system/drawing/GraphicsExtended;

    move-result-object v0

    .line 35
    .local v0, graphics:Lcom/amazon/system/drawing/GraphicsExtended;
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/RasterImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v2}, Lcom/amazon/system/drawing/BufferedImageExtended;->createAffineTransform()Lcom/amazon/system/drawing/AffineTransform;

    move-result-object v1

    .line 36
    .local v1, xform:Lcom/amazon/system/drawing/AffineTransform;
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledX()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledY()D

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/amazon/system/drawing/AffineTransform;->translate(DD)V

    .line 37
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledWidth()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/RasterImage;->getWidth()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledHeight()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/RasterImage;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/amazon/system/drawing/AffineTransform;->scale(DD)V

    .line 39
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/RasterImage;->destRect_:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledX()D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 40
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/RasterImage;->destRect_:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledY()D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 41
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/RasterImage;->destRect_:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledWidth()D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 42
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/RasterImage;->destRect_:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getScaledHeight()D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 43
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/RasterImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0, v2, v1}, Lcom/amazon/system/drawing/GraphicsExtended;->drawImage(Lcom/amazon/system/drawing/BufferedImageExtended;Lcom/amazon/system/drawing/AffineTransform;)V

    .line 44
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/RasterImage;->destRect_:Lcom/amazon/system/drawing/Rectangle;

    goto :goto_0
.end method

.method public getAllocSize()I
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/RasterImage;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/RasterImage;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/amazon/topaz/internal/drawing/RasterImage;->color_raster_:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    mul-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDestinationRect()Lcom/amazon/system/drawing/Rectangle;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterImage;->destRect_:Lcom/amazon/system/drawing/Rectangle;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/topaz/internal/drawing/RasterImage;->bufferedImage_:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->getWidth()I

    move-result v0

    return v0
.end method
