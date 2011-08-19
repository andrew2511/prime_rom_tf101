.class Lcom/android/gallery3d/data/MtpImage$1;
.super Ljava/lang/Object;
.source "MtpImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/MtpImage;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/gallery3d/data/MtpImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/MtpImage;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/gallery3d/data/MtpImage$1;->this$0:Lcom/android/gallery3d/data/MtpImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"

    .prologue
    const/4 v4, 0x0

    .line 79
    new-instance v0, Lcom/android/gallery3d/util/FutureTask;

    new-instance v2, Lcom/android/gallery3d/data/MtpImage$GetThumbnailBytes;

    iget-object v3, p0, Lcom/android/gallery3d/data/MtpImage$1;->this$0:Lcom/android/gallery3d/data/MtpImage;

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/data/MtpImage$GetThumbnailBytes;-><init>(Lcom/android/gallery3d/data/MtpImage;Lcom/android/gallery3d/data/MtpImage$1;)V

    invoke-direct {v0, v2}, Lcom/android/gallery3d/util/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 81
    .local v0, task:Lcom/android/gallery3d/util/FutureTask;,"Lcom/android/gallery3d/util/FutureTask<[B>;"
    iget-object v2, p0, Lcom/android/gallery3d/data/MtpImage$1;->this$0:Lcom/android/gallery3d/data/MtpImage;

    invoke-static {v2}, Lcom/android/gallery3d/data/MtpImage;->access$100(Lcom/android/gallery3d/data/MtpImage;)Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/DataManager;->getDefaultDataHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    invoke-virtual {v0}, Lcom/android/gallery3d/util/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 83
    .local v1, thumbnail:[B
    if-nez v1, :cond_0

    .line 84
    const-string v2, "MtpImage"

    const-string v3, "decoding thumbnail failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 87
    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1, v1, v4}, Lcom/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/MtpImage$1;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
