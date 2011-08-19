.class Lcom/asus/Viewer/ViewImage$8;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Lcom/asus/Viewer/DLNAImageGetterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/Viewer/ViewImage;->setImage(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/ViewImage;

.field final synthetic val$showControls:Z


# direct methods
.method constructor <init>(Lcom/asus/Viewer/ViewImage;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    iput-boolean p2, p0, Lcom/asus/Viewer/ViewImage$8;->val$showControls:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Exception()V
    .locals 3

    .prologue
    .line 566
    const v0, 0x7f07000b

    .line 567
    .local v0, message:I
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 568
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-virtual {v1}, Lcom/asus/Viewer/ViewImage;->finish()V

    .line 569
    return-void
.end method

.method public completed()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/asus/Viewer/ViewImage;->access$1502(Lcom/asus/Viewer/ViewImage;Z)Z

    .line 555
    return-void
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter "pos"
    .parameter "offset"
    .parameter "bitmap"
    .parameter "isError"

    .prologue
    const/16 v3, 0xbb8

    const/4 v2, 0x1

    .line 578
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1100(Lcom/asus/Viewer/ViewImage;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 579
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    if-nez p2, :cond_6

    .line 586
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1700(Lcom/asus/Viewer/ViewImage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1300(Lcom/asus/Viewer/ViewImage;)[Lcom/asus/Viewer/ImageViewTouchBase;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, p3, v2}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 588
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1400(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/BitmapCache;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1, p3}, Lcom/asus/Viewer/BitmapCache;->put(ILandroid/graphics/Bitmap;)V

    .line 589
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1400(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/BitmapCache;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/BitmapCache;->setError(I)V

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1800(Lcom/asus/Viewer/ViewImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 592
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1800(Lcom/asus/Viewer/ViewImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 593
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$400(Lcom/asus/Viewer/ViewImage;)I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$400(Lcom/asus/Viewer/ViewImage;)I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_4

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-virtual {v0, v3, v2}, Lcom/asus/Viewer/ViewImage;->show(IZ)V

    .line 597
    :cond_4
    iget-boolean v0, p0, Lcom/asus/Viewer/ViewImage$8;->val$showControls:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$400(Lcom/asus/Viewer/ViewImage;)I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_5

    .line 598
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/asus/Viewer/ViewImage;->show(IZ)V

    .line 600
    :cond_5
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0, v2}, Lcom/asus/Viewer/ViewImage;->access$1702(Lcom/asus/Viewer/ViewImage;Z)Z

    goto :goto_0

    .line 605
    :cond_6
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1300(Lcom/asus/Viewer/ViewImage;)[Lcom/asus/Viewer/ImageViewTouchBase;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p3, v2}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 606
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1400(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/BitmapCache;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1, p3}, Lcom/asus/Viewer/BitmapCache;->put(ILandroid/graphics/Bitmap;)V

    .line 607
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1400(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/BitmapCache;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/BitmapCache;->setError(I)V

    goto/16 :goto_0
.end method

.method public loadOrder()[I
    .locals 1

    .prologue
    .line 572
    invoke-static {}, Lcom/asus/Viewer/ViewImage;->access$1600()[I

    move-result-object v0

    return-object v0
.end method

.method public wantsFullImage(II)Z
    .locals 4
    .parameter "pos"
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    .line 558
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$1400(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/BitmapCache;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Lcom/asus/Viewer/BitmapCache;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 559
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$8;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$1400(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/BitmapCache;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Lcom/asus/Viewer/BitmapCache;->clearCache(I)V

    .line 562
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-ne v1, v3, :cond_3

    :cond_2
    move v1, v3

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
