.class Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;
.super Ljava/util/AbstractSet;
.source "ContentCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/ContentCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CatalogItemSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/amazon/kcp/library/models/ICatalogItem;",
        ">;"
    }
.end annotation


# instance fields
.field private records:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/amazon/kcp/library/models/IBookID;",
            "Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/amazon/kcp/library/models/IBookID;",
            "Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, records:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/amazon/kcp/library/models/IBookID;Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;->records:Ljava/util/HashMap;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;->records:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 242
    instance-of v2, p1, Lcom/amazon/kcp/library/models/IBookID;

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;->records:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 253
    :goto_0
    return v2

    .line 246
    :cond_0
    instance-of v2, p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    if-eqz v2, :cond_1

    .line 248
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/ICatalogItem;

    move-object v1, v0

    .line 249
    .local v1, item:Lcom/amazon/kcp/library/models/ICatalogItem;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;->records:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 253
    .end local v1           #item:Lcom/amazon/kcp/library/models/ICatalogItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet$1;-><init>(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogItemSet;->records:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
