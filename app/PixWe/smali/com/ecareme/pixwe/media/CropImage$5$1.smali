.class Lcom/ecareme/pixwe/media/CropImage$5$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/CropImage$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/media/CropImage$5;

.field private final synthetic val$b:Landroid/graphics/Bitmap;

.field private final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/CropImage$5;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CropImage$5$1;->this$1:Lcom/ecareme/pixwe/media/CropImage$5;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/CropImage$5$1;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/ecareme/pixwe/media/CropImage$5$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 325
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage$5$1;->val$b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImage$5$1;->this$1:Lcom/ecareme/pixwe/media/CropImage$5;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/CropImage$5;->access$0(Lcom/ecareme/pixwe/media/CropImage$5;)Lcom/ecareme/pixwe/media/CropImage;

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/pixwe/media/CropImage;->access$1(Lcom/ecareme/pixwe/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage$5$1;->val$b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage$5$1;->this$1:Lcom/ecareme/pixwe/media/CropImage$5;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/CropImage$5;->access$0(Lcom/ecareme/pixwe/media/CropImage$5;)Lcom/ecareme/pixwe/media/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/media/CropImage;->access$0(Lcom/ecareme/pixwe/media/CropImage;)Lcom/ecareme/pixwe/media/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImage$5$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 327
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage$5$1;->this$1:Lcom/ecareme/pixwe/media/CropImage$5;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/CropImage$5;->access$0(Lcom/ecareme/pixwe/media/CropImage$5;)Lcom/ecareme/pixwe/media/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/media/CropImage;->access$1(Lcom/ecareme/pixwe/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage$5$1;->this$1:Lcom/ecareme/pixwe/media/CropImage$5;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/CropImage$5;->access$0(Lcom/ecareme/pixwe/media/CropImage$5;)Lcom/ecareme/pixwe/media/CropImage;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImage$5$1;->val$b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/CropImage;->access$10(Lcom/ecareme/pixwe/media/CropImage;Landroid/graphics/Bitmap;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage$5$1;->this$1:Lcom/ecareme/pixwe/media/CropImage$5;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/CropImage$5;->access$0(Lcom/ecareme/pixwe/media/CropImage$5;)Lcom/ecareme/pixwe/media/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/media/CropImage;->access$0(Lcom/ecareme/pixwe/media/CropImage;)Lcom/ecareme/pixwe/media/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage$5$1;->this$1:Lcom/ecareme/pixwe/media/CropImage$5;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/CropImage$5;->access$0(Lcom/ecareme/pixwe/media/CropImage$5;)Lcom/ecareme/pixwe/media/CropImage;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/media/CropImage;->access$0(Lcom/ecareme/pixwe/media/CropImage;)Lcom/ecareme/pixwe/media/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/ecareme/pixwe/media/CropImageView;->center(ZZ)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage$5$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 334
    return-void
.end method
