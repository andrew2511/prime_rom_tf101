.class public Lcom/github/droidfu/imageloader/ImageLoaderHandler;
.super Landroid/os/Handler;
.source "ImageLoaderHandler.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "imageView"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/github/droidfu/imageloader/ImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    .line 30
    return-void
.end method


# virtual methods
.method getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/github/droidfu/imageloader/ImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 34
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 36
    .local v1, data:Landroid/os/Bundle;
    const-string v2, "droidfu:extra_bitmap"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 37
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/github/droidfu/imageloader/ImageLoaderHandler;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 39
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #data:Landroid/os/Bundle;
    :cond_0
    return-void
.end method
