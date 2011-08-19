.class Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;
.super Landroid/os/AsyncTask;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDownloaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/yostore/aws/view/common/ImageDownloader;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/common/ImageDownloader;Landroid/widget/ImageView;)V
    .locals 1
    .parameter
    .parameter "imageView"

    .prologue
    .line 260
    iput-object p1, p0, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;->this$0:Lnet/yostore/aws/view/common/ImageDownloader;

    .line 257
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 258
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "params"

    .prologue
    .line 267
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;->this$0:Lnet/yostore/aws/view/common/ImageDownloader;

    iget-object v1, p0, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/ImageDownloader;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 276
    invoke-virtual {p0}, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    const/4 p1, 0x0

    .line 282
    :cond_0
    iget-object v3, p0, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 283
    iget-object v3, p0, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 284
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 285
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 286
    .local v2, tmpImg:Landroid/widget/ImageView;
    invoke-static {v1}, Lnet/yostore/aws/view/common/ImageDownloader;->access$1(Landroid/widget/ImageView;)Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;

    move-result-object v0

    .line 289
    .local v0, bitmapDownloaderTask:Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;
    if-ne p0, v0, :cond_1

    .line 290
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 291
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    .end local v0           #bitmapDownloaderTask:Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;
    .end local v1           #imageView:Landroid/widget/ImageView;
    .end local v2           #tmpImg:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
