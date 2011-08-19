.class public Lcom/amazon/android/system/drawing/AndroidImageFactory;
.super Lcom/mobipocket/android/drawing/AndroidImageFactory;
.source "AndroidImageFactory.java"

# interfaces
.implements Lcom/amazon/system/drawing/ImageFactoryExtended;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mobipocket/android/drawing/AndroidImageFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createGeneralPath(I)Lcom/amazon/system/drawing/GeneralPath;
    .locals 1
    .parameter "numVerts"

    .prologue
    .line 20
    new-instance v0, Lcom/amazon/android/system/drawing/AndroidGeneralPath;

    invoke-direct {v0, p1}, Lcom/amazon/android/system/drawing/AndroidGeneralPath;-><init>(I)V

    return-object v0
.end method

.method public createGeneralPath([I[III[III)Lcom/amazon/system/drawing/GeneralPath;
    .locals 8
    .parameter "xCoords"
    .parameter "yCoords"
    .parameter "coordsOffset"
    .parameter "numCoords"
    .parameter "contourEnds"
    .parameter "contourOffset"
    .parameter "numContours"

    .prologue
    .line 26
    new-instance v0, Lcom/amazon/android/system/drawing/AndroidGeneralPath;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/amazon/android/system/drawing/AndroidGeneralPath;-><init>([I[III[III)V

    return-object v0
.end method

.method public createImageIO()Lcom/amazon/system/io/ImageIO;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/amazon/android/system/drawing/AndroidImageIO;

    invoke-direct {v0}, Lcom/amazon/android/system/drawing/AndroidImageIO;-><init>()V

    return-object v0
.end method

.method public createPolygon(I)Lcom/amazon/system/drawing/Polygon;
    .locals 1
    .parameter "numVerts"

    .prologue
    .line 36
    new-instance v0, Lcom/amazon/android/system/drawing/AndroidPolygon;

    invoke-direct {v0, p1}, Lcom/amazon/android/system/drawing/AndroidPolygon;-><init>(I)V

    return-object v0
.end method

.method public getBufferedImage(III)Lcom/amazon/system/drawing/BufferedImageExtended;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 43
    sparse-switch p3, :sswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidImageFactory.getBufferedImage: Requested unsupported type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Getting ARGB. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 58
    :goto_0
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    const/4 v1, 0x0

    .line 63
    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Lcom/amazon/android/system/drawing/AndroidBufferedImage;

    invoke-direct {v1, v0, p3}, Lcom/amazon/android/system/drawing/AndroidBufferedImage;-><init>(Landroid/graphics/Bitmap;I)V

    .line 67
    invoke-virtual {v1}, Lcom/amazon/android/system/drawing/AndroidBufferedImage;->createGraphics()Lcom/amazon/system/drawing/GraphicsExtended;

    move-result-object v0

    invoke-interface {v0, v2, v2, p1, p2}, Lcom/amazon/system/drawing/GraphicsExtended;->clearRect(IIII)V

    move-object v0, v1

    .line 70
    :goto_1
    return-object v0

    .line 47
    :sswitch_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 50
    :sswitch_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
