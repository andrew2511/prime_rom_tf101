.class Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread$1;->this$1:Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 259
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread$1;->this$1:Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;

    iget-object v0, v0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->newimageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread$1;->this$1:Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;

    invoke-static {v1}, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->access$0(Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;)Lnet/yostore/aws/view/present/GalleryActivity;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/view/present/GalleryActivity;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 260
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread$1;->this$1:Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;

    iget-object v0, v0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->orgimageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread$1;->this$1:Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;

    invoke-static {v1}, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->access$0(Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;)Lnet/yostore/aws/view/present/GalleryActivity;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/view/present/GalleryActivity;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread$1;->this$1:Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;

    invoke-static {v0}, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->access$0(Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;)Lnet/yostore/aws/view/present/GalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/view/present/GalleryActivity;->access$0(Lnet/yostore/aws/view/present/GalleryActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 262
    iget-object v0, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread$1;->this$1:Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;

    invoke-static {v0}, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->access$0(Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;)Lnet/yostore/aws/view/present/GalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/view/present/GalleryActivity;->access$0(Lnet/yostore/aws/view/present/GalleryActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread$1;->this$1:Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;

    iget-object v1, v1, Lnet/yostore/aws/view/present/GalleryActivity$RunDownloadImageThread;->newimageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    return-void
.end method
