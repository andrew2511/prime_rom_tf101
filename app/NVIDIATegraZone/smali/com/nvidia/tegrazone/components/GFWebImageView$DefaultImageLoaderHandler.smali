.class Lcom/nvidia/tegrazone/components/GFWebImageView$DefaultImageLoaderHandler;
.super Lcom/nvidia/tegrazone/components/ImageLoaderHandler;
.source "GFWebImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/tegrazone/components/GFWebImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultImageLoaderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/components/GFWebImageView;


# direct methods
.method public constructor <init>(Lcom/nvidia/tegrazone/components/GFWebImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/nvidia/tegrazone/components/GFWebImageView$DefaultImageLoaderHandler;->this$0:Lcom/nvidia/tegrazone/components/GFWebImageView;

    .line 201
    iget-object v0, p1, Lcom/nvidia/tegrazone/components/GFWebImageView;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 206
    invoke-super {p0, p1}, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;->handleMessage(Landroid/os/Message;)V

    .line 207
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/GFWebImageView$DefaultImageLoaderHandler;->this$0:Lcom/nvidia/tegrazone/components/GFWebImageView;

    invoke-static {v0, v1}, Lcom/nvidia/tegrazone/components/GFWebImageView;->access$0(Lcom/nvidia/tegrazone/components/GFWebImageView;Z)V

    .line 209
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/GFWebImageView$DefaultImageLoaderHandler;->this$0:Lcom/nvidia/tegrazone/components/GFWebImageView;

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setDisplayedChild(I)V

    .line 210
    return-void
.end method
