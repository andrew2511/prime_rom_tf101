.class public final Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;
.super Ljava/lang/Object;
.source "BytesToBitmapResponseConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<[B",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cropToWidescreen:Z

.field private final desiredWidth:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .parameter "desiredWidth"
    .parameter "cropToWidescreen"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "desiredWidth must be > 0"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 32
    iput p1, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->desiredWidth:I

    .line 33
    iput-boolean p2, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->cropToWidescreen:Z

    .line 34
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static calculateScale(II)I
    .locals 1
    .parameter "desiredWidth"
    .parameter "actualWidth"

    .prologue
    .line 86
    const/4 v0, 0x1

    .line 87
    .local v0, scale:I
    :goto_0
    shr-int/lit8 p1, p1, 0x1

    if-lt p1, p0, :cond_0

    .line 88
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return v0
.end method

.method private decode([B)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "buffer"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 46
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 47
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 48
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 50
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 51
    array-length v5, p1

    invoke-static {p1, v7, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 52
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gez v5, :cond_0

    .line 54
    const/4 v5, 0x0

    .line 81
    :goto_0
    return-object v5

    .line 56
    :cond_0
    iget v5, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->desiredWidth:I

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v5, v6}, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->calculateScale(II)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 57
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 59
    array-length v5, p1

    invoke-static {p1, v7, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-boolean v5, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->cropToWidescreen:Z

    if-eqz v5, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move-object v5, v0

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x3f10

    mul-float v2, v5, v6

    .line 68
    .local v2, desiredHeight:F
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 69
    .local v1, cropHeight:I
    if-gtz v1, :cond_3

    move-object v5, v0

    .line 71
    goto :goto_0

    .line 74
    :cond_3
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/lit8 v6, v1, 0x2

    sub-int v4, v5, v6

    .line 75
    .local v4, roundedHeight:I
    if-gtz v4, :cond_4

    move-object v5, v0

    .line 78
    goto :goto_0

    .line 81
    :cond_4
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v7, v1, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public convertResponse([B)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->decode([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 40
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v2, "failed to decode bitmap"

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    return-object v0
.end method

.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 16
    check-cast p1, [B

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->convertResponse([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
