.class Lcom/android/gallery3d/data/UriImage$BitmapJob;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
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
.field private mType:I

.field final synthetic this$0:Lcom/android/gallery3d/data/UriImage;


# direct methods
.method protected constructor <init>(Lcom/android/gallery3d/data/UriImage;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p2, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    .line 182
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jc"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 185
    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-static {v3, p1}, Lcom/android/gallery3d/data/UriImage;->access$100(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v4

    .line 203
    :goto_0
    return-object v3

    .line 186
    :cond_0
    iget v3, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    invoke-static {v3}, Lcom/android/gallery3d/data/LocalImage;->getTargetSize(I)I

    move-result v2

    .line 187
    .local v2, targetSize:I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 188
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 189
    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-static {v3}, Lcom/android/gallery3d/data/UriImage;->access$200(Lcom/android/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {p1, v3, v1, v2}, Lcom/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move-object v3, v4

    .line 192
    goto :goto_0

    .line 195
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 196
    invoke-static {v0, v2, v5}, Lcom/android/gallery3d/util/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    move-object v3, v0

    .line 203
    goto :goto_0

    .line 199
    :cond_3
    invoke-static {v0, v2, v5}, Lcom/android/gallery3d/util/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/UriImage$BitmapJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
