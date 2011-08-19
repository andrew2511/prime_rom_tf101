.class Lcom/amazon/kcp/library/models/CLibrary$6;
.super Ljava/lang/Object;
.source "CLibrary.java"

# interfaces
.implements Lcom/amazon/kcp/application/internal/IImageSetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/models/CLibrary;->addBookFiles(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Image;[B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/CLibrary;

.field final synthetic val$bookToBeAdded:Lcom/amazon/kcp/library/models/ILocalBookItem;

.field final synthetic val$imageBuilder:Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/CLibrary;Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/amazon/kcp/library/models/CLibrary$6;->this$0:Lcom/amazon/kcp/library/models/CLibrary;

    iput-object p2, p0, Lcom/amazon/kcp/library/models/CLibrary$6;->val$bookToBeAdded:Lcom/amazon/kcp/library/models/ILocalBookItem;

    iput-object p3, p0, Lcom/amazon/kcp/library/models/CLibrary$6;->val$imageBuilder:Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setImage(Lcom/amazon/kcp/application/internal/IDownloadableImage;)V
    .locals 4
    .parameter "image"

    .prologue
    .line 526
    if-eqz p1, :cond_0

    .line 528
    invoke-interface {p1}, Lcom/amazon/kcp/application/internal/IDownloadableImage;->getImage()Lcom/amazon/system/drawing/Image;

    move-result-object v0

    .line 529
    .local v0, coverImage:Lcom/amazon/system/drawing/Image;
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary$6;->this$0:Lcom/amazon/kcp/library/models/CLibrary;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/CLibrary$6;->val$bookToBeAdded:Lcom/amazon/kcp/library/models/ILocalBookItem;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/CLibrary$6;->val$imageBuilder:Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;

    invoke-virtual {v1, v2, v0, v3}, Lcom/amazon/kcp/library/models/CLibrary;->setCover(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/system/drawing/Image;Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;)V

    .line 530
    iget-object v1, p0, Lcom/amazon/kcp/library/models/CLibrary$6;->val$imageBuilder:Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;

    invoke-interface {v1}, Lcom/amazon/kcp/application/internal/IStreamedImageBuilder;->release()V

    .line 532
    .end local v0           #coverImage:Lcom/amazon/system/drawing/Image;
    :cond_0
    return-void
.end method
