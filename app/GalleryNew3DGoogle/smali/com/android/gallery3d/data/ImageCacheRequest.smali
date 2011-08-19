.class abstract Lcom/android/gallery3d/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field protected mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mPath:Lcom/android/gallery3d/data/Path;

.field private mTargetSize:I

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;II)V
    .locals 0
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "targetSize"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 39
    iput-object p2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    .line 40
    iput p3, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    .line 41
    iput p4, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    .line 42
    return-void
.end method


# virtual methods
.method public abstract onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "jc"

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    if-ne v7, v8, :cond_0

    const-string v7, "THUMB"

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, debugTag:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v2

    .line 50
    .local v2, cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    iget-object v6, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    iget v7, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-virtual {v2, v6, v7}, Lcom/android/gallery3d/data/ImageCacheService;->getImageData(Lcom/android/gallery3d/data/Path;I)Lcom/android/gallery3d/data/ImageCacheService$ImageData;

    move-result-object v3

    .line 51
    .local v3, data:Lcom/android/gallery3d/data/ImageCacheService$ImageData;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v9

    .line 84
    :goto_1
    return-object v6

    .line 45
    .end local v2           #cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    .end local v3           #data:Lcom/android/gallery3d/data/ImageCacheService$ImageData;
    .end local v4           #debugTag:Ljava/lang/String;
    :cond_0
    iget v7, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    if-ne v7, v10, :cond_1

    const-string v7, "MICROTHUMB"

    goto :goto_0

    :cond_1
    const-string v7, "?"

    goto :goto_0

    .line 53
    .restart local v2       #cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    .restart local v3       #data:Lcom/android/gallery3d/data/ImageCacheService$ImageData;
    .restart local v4       #debugTag:Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_4

    .line 54
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 56
    iget-object v6, v3, Lcom/android/gallery3d/data/ImageCacheService$ImageData;->mData:[B

    iget v7, v3, Lcom/android/gallery3d/data/ImageCacheService$ImageData;->mOffset:I

    iget-object v8, v3, Lcom/android/gallery3d/data/ImageCacheService$ImageData;->mData:[B

    array-length v8, v8

    iget v9, v3, Lcom/android/gallery3d/data/ImageCacheService$ImageData;->mOffset:I

    sub-int/2addr v8, v9

    invoke-static {p1, v6, v7, v8, v5}, Lcom/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 58
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 59
    const-string v6, "ImageCacheRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decode cached failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v6, v1

    .line 61
    goto :goto_1

    .line 63
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    iget v6, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-virtual {p0, p1, v6}, Lcom/android/gallery3d/data/ImageCacheRequest;->onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 64
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v9

    goto :goto_1

    .line 66
    :cond_5
    if-nez v1, :cond_6

    .line 67
    const-string v6, "ImageCacheRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decode orig failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 68
    goto :goto_1

    .line 71
    :cond_6
    iget v6, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    if-ne v6, v10, :cond_7

    .line 72
    iget v6, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {v1, v6, v8}, Lcom/android/gallery3d/util/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 78
    :goto_2
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v9

    goto/16 :goto_1

    .line 75
    :cond_7
    iget v6, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {v1, v6, v8}, Lcom/android/gallery3d/util/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 80
    :cond_8
    invoke-static {v1}, Lcom/android/gallery3d/util/BitmapUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 81
    .local v0, array:[B
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v6, v9

    goto/16 :goto_1

    .line 83
    :cond_9
    iget-object v6, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    iget v7, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-virtual {v2, v6, v7, v0}, Lcom/android/gallery3d/data/ImageCacheService;->putImageData(Lcom/android/gallery3d/data/Path;I[B)V

    move-object v6, v1

    .line 84
    goto/16 :goto_1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
