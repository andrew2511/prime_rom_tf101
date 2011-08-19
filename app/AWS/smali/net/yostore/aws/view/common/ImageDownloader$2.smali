.class Lnet/yostore/aws/view/common/ImageDownloader$2;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/ImageDownloader;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/ImageDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/ImageDownloader$2;->this$0:Lnet/yostore/aws/view/common/ImageDownloader;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lnet/yostore/aws/view/common/ImageDownloader$2;->this$0:Lnet/yostore/aws/view/common/ImageDownloader;

    invoke-virtual {v0}, Lnet/yostore/aws/view/common/ImageDownloader;->clearCache()V

    .line 374
    return-void
.end method
