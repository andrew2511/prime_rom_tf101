.class Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;
.super Ljava/lang/Object;
.source "PicasaImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/PicasaImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicasaImageRequest"
.end annotation

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
.field private final mType:I

.field final synthetic this$0:Lcom/android/gallery3d/data/PicasaImage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/PicasaImage;Lcom/android/gallery3d/data/Path;I)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "type"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;->this$0:Lcom/android/gallery3d/data/PicasaImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p3, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;->mType:I

    .line 115
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "jc"

    .prologue
    const/4 v8, 0x0

    .line 118
    iget-object v5, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;->this$0:Lcom/android/gallery3d/data/PicasaImage;

    invoke-static {v5}, Lcom/android/gallery3d/data/PicasaImage;->access$200(Lcom/android/gallery3d/data/PicasaImage;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v2

    .line 120
    .local v2, cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    iget-object v5, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;->this$0:Lcom/android/gallery3d/data/PicasaImage;

    iget-object v5, v5, Lcom/android/gallery3d/data/PicasaImage;->mPath:Lcom/android/gallery3d/data/Path;

    iget v6, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;->mType:I

    invoke-virtual {v2, v5, v6}, Lcom/android/gallery3d/data/ImageCacheService;->getImageData(Lcom/android/gallery3d/data/Path;I)Lcom/android/gallery3d/data/ImageCacheService$ImageData;

    move-result-object v3

    .line 121
    .local v3, data:Lcom/android/gallery3d/data/ImageCacheService$ImageData;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v8

    .line 146
    :goto_0
    return-object v5

    .line 123
    :cond_0
    if-eqz v3, :cond_1

    .line 124
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 125
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 126
    iget-object v5, v3, Lcom/android/gallery3d/data/ImageCacheService$ImageData;->mData:[B

    iget v6, v3, Lcom/android/gallery3d/data/ImageCacheService$ImageData;->mOffset:I

    iget-object v7, v3, Lcom/android/gallery3d/data/ImageCacheService$ImageData;->mData:[B

    array-length v7, v7

    iget v8, v3, Lcom/android/gallery3d/data/ImageCacheService$ImageData;->mOffset:I

    sub-int/2addr v7, v8

    invoke-static {p1, v5, v6, v7, v4}, Lcom/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 129
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v8

    goto :goto_0

    .line 130
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;->this$0:Lcom/android/gallery3d/data/PicasaImage;

    iget v6, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;->mType:I

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/PicasaImage;->access$300(Lcom/android/gallery3d/data/PicasaImage;I)Ljava/net/URL;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/gallery3d/data/DownloadUtils;->requestDownload(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;)[B

    move-result-object v0

    .line 131
    .local v0, array:[B
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v8

    goto :goto_0

    .line 133
    :cond_3
    if-nez v0, :cond_4

    .line 134
    const-string v5, "PicasaImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;->this$0:Lcom/android/gallery3d/data/PicasaImage;

    iget-object v7, v7, Lcom/android/gallery3d/data/PicasaImage;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 135
    goto :goto_0

    .line 138
    :cond_4
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 139
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 140
    invoke-static {p1, v0, v4}, Lcom/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 142
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move-object v5, v8

    goto :goto_0

    .line 145
    :cond_6
    iget-object v5, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;->this$0:Lcom/android/gallery3d/data/PicasaImage;

    iget-object v5, v5, Lcom/android/gallery3d/data/PicasaImage;->mPath:Lcom/android/gallery3d/data/Path;

    iget v6, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;->mType:I

    invoke-virtual {v2, v5, v6, v0}, Lcom/android/gallery3d/data/ImageCacheService;->putImageData(Lcom/android/gallery3d/data/Path;I[B)V

    move-object v5, v1

    .line 146
    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/PicasaImage$PicasaImageRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
