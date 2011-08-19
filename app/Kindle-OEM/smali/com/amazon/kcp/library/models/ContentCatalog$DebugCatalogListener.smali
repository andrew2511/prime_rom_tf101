.class Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;
.super Ljava/lang/Object;
.source "ContentCatalog.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogItemVisitor;
.implements Lcom/amazon/kcp/library/models/ICatalogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/ContentCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugCatalogListener"
.end annotation


# instance fields
.field private catalogStatus:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/library/models/ContentCatalog$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;-><init>()V

    return-void
.end method

.method private static bookIdString(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/lang/String;
    .locals 1
    .parameter "bookItem"

    .prologue
    .line 25
    if-nez p0, :cond_0

    const-string v0, "<null>"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onBulkUpdateBegin()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onBulkUpdateEnd()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-interface {p1, p0}, Lcom/amazon/kcp/library/models/ICatalogItem;->accept(Lcom/amazon/kcp/library/models/ICatalogItemVisitor;)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CatalogAdd ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;->catalogStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;->bookIdString(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    return-void
.end method

.method public onItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-interface {p1, p0}, Lcom/amazon/kcp/library/models/ICatalogItem;->accept(Lcom/amazon/kcp/library/models/ICatalogItemVisitor;)V

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;->catalogStatus:Ljava/lang/String;

    .line 41
    invoke-interface {p2, p0}, Lcom/amazon/kcp/library/models/ICatalogItem;->accept(Lcom/amazon/kcp/library/models/ICatalogItemVisitor;)V

    .line 42
    iget-object v1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;->catalogStatus:Ljava/lang/String;

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CatalogChange ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;->bookIdString(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    return-void
.end method

.method public onItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-interface {p1, p0}, Lcom/amazon/kcp/library/models/ICatalogItem;->accept(Lcom/amazon/kcp/library/models/ICatalogItemVisitor;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CatalogRemove ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;->catalogStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;->bookIdString(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    return-void
.end method

.method public visitArchived(Lcom/amazon/kcp/library/models/internal/IMetadata;)V
    .locals 1
    .parameter "archivedItem"

    .prologue
    .line 69
    const-string v0, "archive"

    iput-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;->catalogStatus:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public visitDownload(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 1
    .parameter "downloadItem"

    .prologue
    .line 63
    const-string v0, "download"

    iput-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;->catalogStatus:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public visitLocal(Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 1
    .parameter "localItem"

    .prologue
    .line 57
    const-string v0, "local"

    iput-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$DebugCatalogListener;->catalogStatus:Ljava/lang/String;

    .line 58
    return-void
.end method
