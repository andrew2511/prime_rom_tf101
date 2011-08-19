.class Lnet/yostore/aws/view/common/ImageDownloader$DownloadedDrawable;
.super Landroid/graphics/drawable/PaintDrawable;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadedDrawable"
.end annotation


# instance fields
.field private final bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;)V
    .locals 1
    .parameter "bitmapDownloaderTask"

    .prologue
    .line 324
    const v0, 0x7f02006f

    invoke-direct {p0, v0}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 326
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 325
    iput-object v0, p0, Lnet/yostore/aws/view/common/ImageDownloader$DownloadedDrawable;->bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;

    .line 328
    return-void
.end method


# virtual methods
.method public getBitmapDownloaderTask()Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lnet/yostore/aws/view/common/ImageDownloader$DownloadedDrawable;->bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;

    return-object p0
.end method
