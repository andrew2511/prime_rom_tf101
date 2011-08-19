.class public Lcom/mobipocket/android/drawing/AndroidImageFactory;
.super Ljava/lang/Object;
.source "AndroidImageFactory.java"

# interfaces
.implements Lcom/amazon/system/drawing/ImageFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBufferedImage(II)Lcom/amazon/system/drawing/BufferedImage;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 30
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 31
    :try_start_0
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 44
    :goto_0
    if-eqz v0, :cond_0

    .line 46
    new-instance v1, Lcom/mobipocket/android/drawing/AndroidBufferedImage;

    invoke-direct {v1, v0}, Lcom/mobipocket/android/drawing/AndroidBufferedImage;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 49
    :goto_1
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidImageFactory.getBufferedImage: Out of memory error when creating the bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v3

    .line 41
    goto :goto_0

    :cond_0
    move-object v0, v3

    goto :goto_1
.end method

.method public getImage([BLcom/amazon/system/drawing/Dimension;I)Lcom/amazon/system/drawing/Image;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/mobipocket/android/drawing/AndroidImageFactory;->getNotCachedImage([BLcom/amazon/system/drawing/Dimension;I)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Lcom/amazon/system/drawing/Image;->fetch()Z

    .line 64
    :cond_0
    return-object v0
.end method

.method public getImageThresholdPercentage()F
    .locals 1

    .prologue
    .line 109
    const v0, 0x3f0ccccd

    return v0
.end method

.method public getNotCachedImage([BLcom/amazon/system/drawing/Dimension;I)Lcom/amazon/system/drawing/Image;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 75
    iget v0, p2, Lcom/amazon/system/drawing/Dimension;->height:I

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/amazon/system/drawing/Dimension;->width:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v3

    .line 99
    :goto_0
    return-object v0

    .line 81
    :cond_1
    new-instance v0, Lcom/amazon/system/drawing/Dimension;

    invoke-direct {v0}, Lcom/amazon/system/drawing/Dimension;-><init>()V

    .line 82
    invoke-static {p1, v0}, Lcom/amazon/system/drawing/ImageTools;->getImageInfo([BLcom/amazon/system/drawing/Dimension;)I

    move-result v1

    .line 83
    iget v2, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    if-eqz v2, :cond_2

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v3

    .line 85
    goto :goto_0

    .line 91
    :cond_3
    const/4 v0, 0x1

    if-eq v1, v0, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-ne v1, v0, :cond_5

    .line 95
    :cond_4
    :try_start_0
    new-instance v0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;

    invoke-direct {v0, p1, p2}, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;-><init>([BLcom/amazon/system/drawing/Dimension;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_5
    move-object v0, v3

    goto :goto_0
.end method
