.class Lcom/github/droidfu/widgets/WebImageView$DefaultImageLoaderHandler;
.super Lcom/github/droidfu/imageloader/ImageLoaderHandler;
.source "WebImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/droidfu/widgets/WebImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultImageLoaderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/droidfu/widgets/WebImageView;


# direct methods
.method public constructor <init>(Lcom/github/droidfu/widgets/WebImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/github/droidfu/widgets/WebImageView$DefaultImageLoaderHandler;->this$0:Lcom/github/droidfu/widgets/WebImageView;

    .line 200
    invoke-static {p1}, Lcom/github/droidfu/widgets/WebImageView;->access$000(Lcom/github/droidfu/widgets/WebImageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/droidfu/imageloader/ImageLoaderHandler;-><init>(Landroid/widget/ImageView;)V

    .line 201
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 205
    invoke-super {p0, p1}, Lcom/github/droidfu/imageloader/ImageLoaderHandler;->handleMessage(Landroid/os/Message;)V

    .line 206
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView$DefaultImageLoaderHandler;->this$0:Lcom/github/droidfu/widgets/WebImageView;

    invoke-static {v0, v1}, Lcom/github/droidfu/widgets/WebImageView;->access$102(Lcom/github/droidfu/widgets/WebImageView;Z)Z

    .line 208
    iget-object v0, p0, Lcom/github/droidfu/widgets/WebImageView$DefaultImageLoaderHandler;->this$0:Lcom/github/droidfu/widgets/WebImageView;

    invoke-virtual {v0, v1}, Lcom/github/droidfu/widgets/WebImageView;->setDisplayedChild(I)V

    .line 209
    return-void
.end method
