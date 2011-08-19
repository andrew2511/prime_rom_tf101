.class Lcom/amazon/kcp/library/models/ContentCatalog$6;
.super Ljava/lang/Object;
.source "ContentCatalog.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/models/ContentCatalog;->initializeArchivedLibraryListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/ContentCatalog;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/ContentCatalog;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$6;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 3
    .parameter "archiveIndex"

    .prologue
    .line 419
    new-instance v0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    sget-object v2, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->ARCHIVE:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-direct {v0, v2, p1}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;I)V

    .line 420
    .local v0, idx:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/ContentCatalog$6;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-static {v2, v0}, Lcom/amazon/kcp/library/models/ContentCatalog;->access$500(Lcom/amazon/kcp/library/models/ContentCatalog;Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    move-result-object v1

    .line 421
    .local v1, record:Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/ContentCatalog$6;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-static {v2, v1}, Lcom/amazon/kcp/library/models/ContentCatalog;->access$600(Lcom/amazon/kcp/library/models/ContentCatalog;Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V

    .line 422
    return-void
.end method
