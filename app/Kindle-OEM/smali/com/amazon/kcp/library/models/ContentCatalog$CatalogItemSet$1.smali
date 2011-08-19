.class Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet$1;
.super Ljava/lang/Object;
.source "ContentCatalog.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/amazon/kcp/library/models/ICatalogItem;",
        ">;"
    }
.end annotation


# instance fields
.field private recordIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;)V
    .locals 1
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet$1;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet$1;->this$0:Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;->access$000(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet$1;->recordIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet$1;->recordIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet$1;->recordIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;

    invoke-static {p0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->access$100(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/CatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet$1;->next()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
