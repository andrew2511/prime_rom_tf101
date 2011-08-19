.class Lcom/amazon/kcp/application/internal/CCoverSerializer$ImageSetterRunnable;
.super Ljava/lang/Object;
.source "CCoverSerializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/CCoverSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSetterRunnable"
.end annotation


# instance fields
.field private final image:Lcom/amazon/system/drawing/Image;

.field private final imageSetter:Lcom/amazon/kcp/application/internal/IImageSetter;

.field final synthetic this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/internal/CCoverSerializer;Lcom/amazon/kcp/application/internal/IImageSetter;Lcom/amazon/system/drawing/Image;)V
    .locals 0
    .parameter
    .parameter "imageSetter"
    .parameter "image"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$ImageSetterRunnable;->this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p3, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$ImageSetterRunnable;->image:Lcom/amazon/system/drawing/Image;

    .line 319
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$ImageSetterRunnable;->imageSetter:Lcom/amazon/kcp/application/internal/IImageSetter;

    .line 320
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 324
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$ImageSetterRunnable;->image:Lcom/amazon/system/drawing/Image;

    if-eqz v1, :cond_0

    .line 328
    new-instance v0, Lcom/amazon/kcp/application/internal/CDownloadableImage;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$ImageSetterRunnable;->image:Lcom/amazon/system/drawing/Image;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/internal/CDownloadableImage;-><init>(Lcom/amazon/system/drawing/Image;)V

    .line 329
    .local v0, cover:Lcom/amazon/kcp/application/internal/CDownloadableImage;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/internal/CDownloadableImage;->setDownloadState(I)V

    .line 330
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$ImageSetterRunnable;->imageSetter:Lcom/amazon/kcp/application/internal/IImageSetter;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/application/internal/IImageSetter;->setImage(Lcom/amazon/kcp/application/internal/IDownloadableImage;)V

    .line 332
    .end local v0           #cover:Lcom/amazon/kcp/application/internal/CDownloadableImage;
    :cond_0
    return-void
.end method
