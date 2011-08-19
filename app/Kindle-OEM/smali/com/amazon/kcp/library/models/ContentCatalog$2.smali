.class Lcom/amazon/kcp/library/models/ContentCatalog$2;
.super Ljava/lang/Object;
.source "ContentCatalog.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/models/ContentCatalog;->initializeLocalLibraryListeners()V
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
    .line 365
    iput-object p1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$2;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 370
    iget-object v2, p0, Lcom/amazon/kcp/library/models/ContentCatalog$2;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-static {v2, p1}, Lcom/amazon/kcp/library/models/ContentCatalog;->access$400(Lcom/amazon/kcp/library/models/ContentCatalog;I)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-result-object v0

    .line 371
    .local v0, idx:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/ContentCatalog$2;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-static {v2, v0}, Lcom/amazon/kcp/library/models/ContentCatalog;->access$500(Lcom/amazon/kcp/library/models/ContentCatalog;Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;)Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    move-result-object v1

    .line 372
    .local v1, record:Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/ContentCatalog$2;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog;

    invoke-static {v2, v1}, Lcom/amazon/kcp/library/models/ContentCatalog;->access$600(Lcom/amazon/kcp/library/models/ContentCatalog;Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V

    .line 373
    return-void
.end method
