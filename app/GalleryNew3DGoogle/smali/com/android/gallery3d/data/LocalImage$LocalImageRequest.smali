.class public Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;
.super Lcom/android/gallery3d/data/ImageCacheRequest;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalImageRequest"
.end annotation


# instance fields
.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;)V
    .locals 1
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "localFilePath"

    .prologue
    .line 153
    invoke-static {p3}, Lcom/android/gallery3d/data/LocalImage;->getTargetSize(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;II)V

    .line 154
    iput-object p4, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 155
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "jc"
    .parameter "type"

    .prologue
    .line 159
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 160
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 161
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/gallery3d/data/LocalImage;->getTargetSize(I)I

    move-result v2

    invoke-static {p1, v1, v0, v2}, Lcom/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
