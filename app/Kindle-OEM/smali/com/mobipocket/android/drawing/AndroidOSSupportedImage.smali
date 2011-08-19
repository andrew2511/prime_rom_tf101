.class public Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;
.super Ljava/lang/Object;
.source "AndroidOSSupportedImage.java"

# interfaces
.implements Lcom/mobipocket/android/drawing/AndroidImage;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final futureDimension:Lcom/amazon/system/drawing/Dimension;

.field private imageData:[B

.field private final srcDimension:Lcom/amazon/system/drawing/Dimension;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "image"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    .line 31
    iput-object p1, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    .line 32
    new-instance v0, Lcom/amazon/system/drawing/Dimension;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/system/drawing/Dimension;

    .line 33
    new-instance v0, Lcom/amazon/system/drawing/Dimension;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    .line 34
    return-void
.end method

.method public constructor <init>([BLcom/amazon/system/drawing/Dimension;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    .line 46
    iget v0, p2, Lcom/amazon/system/drawing/Dimension;->height:I

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/amazon/system/drawing/Dimension;->width:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width and height must be > 0 and imageData must be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p1, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->imageData:[B

    .line 54
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 56
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 57
    new-instance v1, Lcom/amazon/system/drawing/Dimension;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v0}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    iput-object v1, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/system/drawing/Dimension;

    .line 60
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/system/drawing/Dimension;

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    int-to-float v0, v0

    iget v1, p2, Lcom/amazon/system/drawing/Dimension;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 61
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/system/drawing/Dimension;

    iget v1, v1, Lcom/amazon/system/drawing/Dimension;->width:I

    int-to-float v1, v1

    iget v2, p2, Lcom/amazon/system/drawing/Dimension;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 63
    cmpg-float v2, v1, v3

    if-ltz v2, :cond_2

    cmpg-float v2, v0, v3

    if-gez v2, :cond_6

    :cond_2
    const/high16 v0, 0x3f80

    .line 66
    :cond_3
    :goto_0
    new-instance v1, Lcom/amazon/system/drawing/Dimension;

    iget-object v2, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/system/drawing/Dimension;

    iget v2, v2, Lcom/amazon/system/drawing/Dimension;->width:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/system/drawing/Dimension;

    iget v3, v3, Lcom/amazon/system/drawing/Dimension;->height:I

    int-to-float v3, v3

    div-float v0, v3, v0

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    iput-object v1, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    .line 68
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    if-ge v0, v4, :cond_4

    .line 70
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    iput v4, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    if-ge v0, v4, :cond_5

    .line 74
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    iput v4, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    .line 76
    :cond_5
    return-void

    .line 63
    :cond_6
    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public fetch()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->isFetched()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    .line 141
    :goto_0
    return v5

    .line 107
    :cond_0
    iget-object v5, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/system/drawing/Dimension;

    iget v5, v5, Lcom/amazon/system/drawing/Dimension;->height:I

    iget-object v6, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    iget v6, v6, Lcom/amazon/system/drawing/Dimension;->height:I

    div-int v1, v5, v6

    .line 108
    .local v1, iRatioH:I
    iget-object v5, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/system/drawing/Dimension;

    iget v5, v5, Lcom/amazon/system/drawing/Dimension;->width:I

    iget-object v6, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    iget v6, v6, Lcom/amazon/system/drawing/Dimension;->width:I

    div-int v2, v5, v6

    .line 113
    .local v2, iRatioW:I
    if-lt v2, v7, :cond_1

    if-ge v1, v7, :cond_4

    :cond_1
    move v0, v7

    .line 116
    .local v0, iRatio:I
    :goto_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    .local v4, option:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 118
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 119
    iget-object v5, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->imageData:[B

    iget-object v6, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->imageData:[B

    array-length v6, v6

    invoke-static {v5, v8, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 121
    .local v3, largeBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 123
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->imageData:[B

    .line 129
    :cond_2
    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    iget v5, v5, Lcom/amazon/system/drawing/Dimension;->width:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-lt v5, v6, :cond_3

    iget-object v5, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    iget v5, v5, Lcom/amazon/system/drawing/Dimension;->height:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 133
    :cond_3
    iget-object v5, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    iget v5, v5, Lcom/amazon/system/drawing/Dimension;->width:I

    iget-object v6, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    iget v6, v6, Lcom/amazon/system/drawing/Dimension;->height:I

    invoke-static {v3, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    .line 134
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    :goto_2
    iget-object v5, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_7

    move v5, v7

    goto :goto_0

    .line 113
    .end local v0           #iRatio:I
    .end local v3           #largeBitmap:Landroid/graphics/Bitmap;
    .end local v4           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    if-le v2, v1, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1

    .line 138
    .restart local v0       #iRatio:I
    .restart local v3       #largeBitmap:Landroid/graphics/Bitmap;
    .restart local v4       #option:Landroid/graphics/BitmapFactory$Options;
    :cond_6
    iput-object v3, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_7
    move v5, v8

    .line 141
    goto :goto_0
.end method

.method public getBitmapImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->isFetched()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->fetch()Z

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/system/drawing/Dimension;

    iget v1, v1, Lcom/amazon/system/drawing/Dimension;->height:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/system/drawing/Dimension;

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->height:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/system/drawing/Dimension;

    iget v1, v1, Lcom/amazon/system/drawing/Dimension;->width:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->srcDimension:Lcom/amazon/system/drawing/Dimension;

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->futureDimension:Lcom/amazon/system/drawing/Dimension;

    iget v0, v0, Lcom/amazon/system/drawing/Dimension;->width:I

    goto :goto_0
.end method

.method public isFetched()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method
