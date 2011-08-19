.class Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;
.super Ljava/lang/Object;
.source "ContentCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/ContentCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CatalogRecord"
.end annotation


# instance fields
.field private catalogItem:Lcom/amazon/kcp/library/models/CatalogItem;

.field private index:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

.field private lastReadDateChangeCallback:Lcom/amazon/foundation/internal/ILocalBookItemCallback;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 1
    .parameter "idx"
    .parameter "listableBook"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->index:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    .line 149
    invoke-static {p2}, Lcom/amazon/kcp/library/models/CatalogItem;->create(Lcom/amazon/kcp/library/models/IListableBook;)Lcom/amazon/kcp/library/models/CatalogItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->catalogItem:Lcom/amazon/kcp/library/models/CatalogItem;

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/CatalogItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->catalogItem:Lcom/amazon/kcp/library/models/CatalogItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->index:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    return-object v0
.end method

.method private getLocalBookItem()Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->index:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    iget-object v0, v0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->libraryId:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    sget-object v1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->LOCAL:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->catalogItem:Lcom/amazon/kcp/library/models/CatalogItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CatalogItem;->getListableBook()Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-object v0, p0

    .line 189
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->setLastReadDateChangeCallback(Lcom/amazon/foundation/internal/ILocalBookItemCallback;)V

    .line 196
    return-void
.end method

.method public setLastReadDateChangeCallback(Lcom/amazon/foundation/internal/ILocalBookItemCallback;)V
    .locals 3
    .parameter

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->getLocalBookItem()Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->lastReadDateChangeCallback:Lcom/amazon/foundation/internal/ILocalBookItemCallback;

    if-eqz v1, :cond_0

    .line 172
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getLastReadDateChangeEvent()Lcom/amazon/foundation/internal/ILocalBookItemEventProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->lastReadDateChangeCallback:Lcom/amazon/foundation/internal/ILocalBookItemCallback;

    invoke-interface {v1, v2}, Lcom/amazon/foundation/internal/ILocalBookItemEventProvider;->unregister(Lcom/amazon/foundation/internal/ILocalBookItemCallback;)Z

    .line 174
    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 176
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getLastReadDateChangeEvent()Lcom/amazon/foundation/internal/ILocalBookItemEventProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/ILocalBookItemEventProvider;->register(Lcom/amazon/foundation/internal/ILocalBookItemCallback;)Z

    .line 177
    iput-object p1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->lastReadDateChangeCallback:Lcom/amazon/foundation/internal/ILocalBookItemCallback;

    .line 179
    :cond_1
    return-void
.end method

.method public update(Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;)V
    .locals 2
    .parameter "newRecord"

    .prologue
    .line 154
    iget-object v0, p1, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->catalogItem:Lcom/amazon/kcp/library/models/CatalogItem;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->catalogItem:Lcom/amazon/kcp/library/models/CatalogItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/CatalogItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot update a CatalogRecord with a non-equivalent CatalogItem"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->setLastReadDateChangeCallback(Lcom/amazon/foundation/internal/ILocalBookItemCallback;)V

    .line 162
    iget-object v0, p1, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->index:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    iput-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->index:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    .line 163
    iget-object v0, p1, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->catalogItem:Lcom/amazon/kcp/library/models/CatalogItem;

    iput-object v0, p0, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->catalogItem:Lcom/amazon/kcp/library/models/CatalogItem;

    .line 164
    iget-object v0, p1, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->lastReadDateChangeCallback:Lcom/amazon/foundation/internal/ILocalBookItemCallback;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/ContentCatalog$CatalogRecord;->setLastReadDateChangeCallback(Lcom/amazon/foundation/internal/ILocalBookItemCallback;)V

    .line 165
    return-void
.end method
