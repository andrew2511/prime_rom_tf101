.class public Lcom/nvidia/tegrazone/components/ImageLoaderHandler;
.super Landroid/os/Handler;
.source "ImageLoaderHandler.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private position:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "imageView"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "imageView"
    .parameter "position"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;->position:Ljava/lang/Integer;

    .line 36
    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected handleImageLoadedMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 49
    iget-object v3, p0, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;->position:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 51
    .local v2, forPosition:I
    iget-object v3, p0, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;->position:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 59
    .end local v2           #forPosition:I
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 56
    .local v1, data:Landroid/os/Bundle;
    const-string v3, "droidfu:extra_bitmap"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 58
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;->handleImageLoadedMessage(Landroid/os/Message;)V

    .line 43
    :cond_0
    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "imageView"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    .line 67
    return-void
.end method
