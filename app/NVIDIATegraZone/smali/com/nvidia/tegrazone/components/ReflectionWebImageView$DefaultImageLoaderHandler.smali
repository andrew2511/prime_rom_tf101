.class Lcom/nvidia/tegrazone/components/ReflectionWebImageView$DefaultImageLoaderHandler;
.super Lcom/nvidia/tegrazone/components/ImageLoaderHandler;
.source "ReflectionWebImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/tegrazone/components/ReflectionWebImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultImageLoaderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/components/ReflectionWebImageView;


# direct methods
.method public constructor <init>(Lcom/nvidia/tegrazone/components/ReflectionWebImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/nvidia/tegrazone/components/ReflectionWebImageView$DefaultImageLoaderHandler;->this$0:Lcom/nvidia/tegrazone/components/ReflectionWebImageView;

    .line 204
    iget-object v0, p1, Lcom/nvidia/tegrazone/components/ReflectionWebImageView;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 209
    invoke-super {p0, p1}, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;->handleMessage(Landroid/os/Message;)V

    .line 210
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/ReflectionWebImageView$DefaultImageLoaderHandler;->this$0:Lcom/nvidia/tegrazone/components/ReflectionWebImageView;

    invoke-static {v0, v1}, Lcom/nvidia/tegrazone/components/ReflectionWebImageView;->access$0(Lcom/nvidia/tegrazone/components/ReflectionWebImageView;Z)V

    .line 212
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/ReflectionWebImageView$DefaultImageLoaderHandler;->this$0:Lcom/nvidia/tegrazone/components/ReflectionWebImageView;

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/components/ReflectionWebImageView;->setDisplayedChild(I)V

    .line 215
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/ReflectionWebImageView$DefaultImageLoaderHandler;->this$0:Lcom/nvidia/tegrazone/components/ReflectionWebImageView;

    iget-object v0, v0, Lcom/nvidia/tegrazone/components/ReflectionWebImageView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nvidia/tegrazone/components/ReflectionWebImageView$DefaultImageLoaderHandler;->this$0:Lcom/nvidia/tegrazone/components/ReflectionWebImageView;

    iget-object v1, v1, Lcom/nvidia/tegrazone/components/ReflectionWebImageView;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/nvidia/tegrazone/utils/BitmapReflection;->getReflection(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    return-void
.end method
