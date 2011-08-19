.class public Lcom/nvidia/tegrazone/components/ImageCache;
.super Lcom/nvidia/tegrazone/components/AbstractCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nvidia/tegrazone/components/AbstractCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private cachedImageQuality:I

.field private compressedImageFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public img:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJI)V
    .locals 6
    .parameter "initialCapacity"
    .parameter "expirationInMinutes"
    .parameter "maxConcurrentThreads"

    .prologue
    .line 56
    const-string v1, "ImageCache"

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/tegrazone/components/AbstractCache;-><init>(Ljava/lang/String;IJI)V

    .line 51
    const/16 v0, 0x4b

    iput v0, p0, Lcom/nvidia/tegrazone/components/ImageCache;->cachedImageQuality:I

    .line 53
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/nvidia/tegrazone/components/ImageCache;->compressedImageFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/components/ImageCache;->img:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getCachedImageQuality()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/nvidia/tegrazone/components/ImageCache;->cachedImageQuality:I

    return v0
.end method

.method public getCompressedImageFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/ImageCache;->compressedImageFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public bridge synthetic getFileNameForKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nvidia/tegrazone/components/ImageCache;->getFileNameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileNameForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "imageUrl"

    .prologue
    .line 95
    const-string v0, "get filename fired, setting imageurl"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/nvidia/tegrazone/components/ImageCache;->img:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nvidia/tegrazone/components/ImageCache;->compressedImageFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readValueFromDisk(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "file"

    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic readValueFromDisk(Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/nvidia/tegrazone/components/ImageCache;->readValueFromDisk(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setCachedImageQuality(I)V
    .locals 0
    .parameter "cachedImageQuality"

    .prologue
    .line 83
    iput p1, p0, Lcom/nvidia/tegrazone/components/ImageCache;->cachedImageQuality:I

    .line 84
    return-void
.end method

.method public setCompressedImageFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0
    .parameter "compressedImageFormat"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/nvidia/tegrazone/components/ImageCache;->compressedImageFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 70
    return-void
.end method

.method protected writeValueToDisk(Ljava/io/BufferedOutputStream;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "ostream"
    .parameter "value"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/ImageCache;->img:Ljava/lang/String;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/nvidia/tegrazone/components/ImageCache;->compressedImageFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 110
    const-string v0, "caching PNG"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/ImageCache;->compressedImageFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v1, p0, Lcom/nvidia/tegrazone/components/ImageCache;->cachedImageQuality:I

    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 116
    return-void

    .line 112
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/nvidia/tegrazone/components/ImageCache;->compressedImageFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 113
    const-string v0, "caching JPEG"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic writeValueToDisk(Ljava/io/BufferedOutputStream;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/nvidia/tegrazone/components/ImageCache;->writeValueToDisk(Ljava/io/BufferedOutputStream;Landroid/graphics/Bitmap;)V

    return-void
.end method
