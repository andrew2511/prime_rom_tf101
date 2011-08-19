.class Lcom/ecareme/pixwe/media/CropImage$5;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/CropImage;->startFaceDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/CropImage;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CropImage$5;->this$0:Lcom/ecareme/pixwe/media/CropImage;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/CropImage$5;)Lcom/ecareme/pixwe/media/CropImage;
    .locals 1
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage$5;->this$0:Lcom/ecareme/pixwe/media/CropImage;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 321
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 322
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/ecareme/pixwe/media/CropImage$5;->this$0:Lcom/ecareme/pixwe/media/CropImage;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/CropImage;->access$1(Lcom/ecareme/pixwe/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/ecareme/pixwe/media/CropImage$5;->this$0:Lcom/ecareme/pixwe/media/CropImage;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/CropImage;->access$6(Lcom/ecareme/pixwe/media/CropImage;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/ecareme/pixwe/media/CropImage$5$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/ecareme/pixwe/media/CropImage$5$1;-><init>(Lcom/ecareme/pixwe/media/CropImage$5;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    iget-object v3, p0, Lcom/ecareme/pixwe/media/CropImage$5;->this$0:Lcom/ecareme/pixwe/media/CropImage;

    iget-object v3, v3, Lcom/ecareme/pixwe/media/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 342
    return-void

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, e:Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
