.class Lcom/android/gallery3d/data/PicasaImage$PicasaLargeImageRequest;
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
    name = "PicasaLargeImageRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUrl:Ljava/net/URL;

.field final synthetic this$0:Lcom/android/gallery3d/data/PicasaImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/PicasaImage;Ljava/net/URL;)V
    .locals 0
    .parameter
    .parameter "url"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaLargeImageRequest;->this$0:Lcom/android/gallery3d/data/PicasaImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p2, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaLargeImageRequest;->mUrl:Ljava/net/URL;

    .line 175
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 5
    .parameter "jc"

    .prologue
    .line 178
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaLargeImageRequest;->this$0:Lcom/android/gallery3d/data/PicasaImage;

    invoke-static {v2}, Lcom/android/gallery3d/data/PicasaImage;->access$200(Lcom/android/gallery3d/data/PicasaImage;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getDownloadCache()Lcom/android/gallery3d/data/DownloadCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaLargeImageRequest;->mUrl:Ljava/net/URL;

    invoke-virtual {v2, p1, v3}, Lcom/android/gallery3d/data/DownloadCache;->download(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v1

    .line 180
    .local v1, entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    if-nez v1, :cond_0

    .line 181
    const-string v2, "PicasaImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/data/PicasaImage$PicasaLargeImageRequest;->mUrl:Ljava/net/URL;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v2, 0x0

    .line 188
    :goto_0
    return-object v2

    .line 184
    :cond_0
    iget-object v2, v1, Lcom/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/android/gallery3d/data/DecodeUtils;->requestCreateBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 187
    .local v0, decoder:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DownloadCache$Entry;->associateWith(Ljava/lang/Object;)V

    :cond_1
    move-object v2, v0

    .line 188
    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/PicasaImage$PicasaLargeImageRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
