.class Lcom/amazon/kcp/library/ui/CoverGalleryLayout$4;
.super Ljava/lang/Object;
.source "CoverGalleryLayout.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IDownloadBookItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ui/CoverGalleryLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$4;->this$0:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 1
    .parameter "book"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$4;->this$0:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->access$400(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 478
    return-void
.end method
