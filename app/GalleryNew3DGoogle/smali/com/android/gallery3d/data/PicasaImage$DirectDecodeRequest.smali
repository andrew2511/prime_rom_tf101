.class Lcom/android/gallery3d/data/PicasaImage$DirectDecodeRequest;
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
    name = "DirectDecodeRequest"
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
.field final synthetic this$0:Lcom/android/gallery3d/data/PicasaImage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/data/PicasaImage;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/gallery3d/data/PicasaImage$DirectDecodeRequest;->this$0:Lcom/android/gallery3d/data/PicasaImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/PicasaImage;Lcom/android/gallery3d/data/PicasaImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/PicasaImage$DirectDecodeRequest;-><init>(Lcom/android/gallery3d/data/PicasaImage;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "jc"

    .prologue
    .line 103
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 104
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 105
    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaImage$DirectDecodeRequest;->this$0:Lcom/android/gallery3d/data/PicasaImage;

    invoke-static {v1}, Lcom/android/gallery3d/data/PicasaImage;->access$100(Lcom/android/gallery3d/data/PicasaImage;)Lcom/android/gallery3d/picasa/PhotoEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/PicasaImage$DirectDecodeRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
