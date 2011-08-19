.class public Lcom/amazon/kcp/library/models/CatalogItem;
.super Ljava/lang/Object;
.source "CatalogItem.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogItem;


# instance fields
.field private final author:Ljava/lang/String;

.field private final bookID:Lcom/amazon/kcp/library/models/IBookID;

.field private final bookType:I

.field private final lastReadDate:J

.field private final listableBook:Lcom/amazon/kcp/library/models/IListableBook;

.field private final pubDate:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 2
    .parameter "listableBook"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/library/models/CatalogItem;->listableBook:Lcom/amazon/kcp/library/models/IListableBook;

    .line 39
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->bookID:Lcom/amazon/kcp/library/models/IBookID;

    .line 40
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->title:Ljava/lang/String;

    .line 41
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->author:Ljava/lang/String;

    .line 42
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->bookType:I

    .line 43
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->lastReadDate:J

    .line 44
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->pubDate:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static create(Lcom/amazon/kcp/library/models/IListableBook;)Lcom/amazon/kcp/library/models/CatalogItem;
    .locals 2
    .parameter "listableBook"

    .prologue
    .line 25
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BookID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogItem;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/CatalogItem;-><init>(Lcom/amazon/kcp/library/models/IListableBook;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/amazon/kcp/library/models/ICatalogItemVisitor;)V
    .locals 1
    .parameter "visitor"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->listableBook:Lcom/amazon/kcp/library/models/IListableBook;

    instance-of v0, v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    if-eqz v0, :cond_1

    .line 135
    iget-object p0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->listableBook:Lcom/amazon/kcp/library/models/IListableBook;

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-interface {p1, p0}, Lcom/amazon/kcp/library/models/ICatalogItemVisitor;->visitArchived(Lcom/amazon/kcp/library/models/internal/IMetadata;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->listableBook:Lcom/amazon/kcp/library/models/IListableBook;

    instance-of v0, v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v0, :cond_2

    .line 139
    iget-object p0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->listableBook:Lcom/amazon/kcp/library/models/IListableBook;

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {p1, p0}, Lcom/amazon/kcp/library/models/ICatalogItemVisitor;->visitDownload(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    goto :goto_0

    .line 141
    .restart local p0
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->listableBook:Lcom/amazon/kcp/library/models/IListableBook;

    instance-of v0, v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v0, :cond_0

    .line 143
    iget-object p0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->listableBook:Lcom/amazon/kcp/library/models/IListableBook;

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {p1, p0}, Lcom/amazon/kcp/library/models/ICatalogItemVisitor;->visitLocal(Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "that"

    .prologue
    .line 114
    if-ne p0, p1, :cond_0

    .line 116
    const/4 v2, 0x1

    .line 125
    :goto_0
    return v2

    .line 118
    :cond_0
    instance-of v2, p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    if-nez v2, :cond_1

    .line 120
    const/4 v2, 0x0

    goto :goto_0

    .line 124
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/ICatalogItem;

    move-object v1, v0

    .line 125
    .local v1, thatItem:Lcom/amazon/kcp/library/models/ICatalogItem;
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/CatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v2

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kcp/library/models/IBookID;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->bookID:Lcom/amazon/kcp/library/models/IBookID;

    return-object v0
.end method

.method public getBookType()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->bookType:I

    return v0
.end method

.method public getLastReadDate()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->lastReadDate:J

    return-wide v0
.end method

.method public getListableBook()Lcom/amazon/kcp/library/models/IListableBook;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->listableBook:Lcom/amazon/kcp/library/models/IListableBook;

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->pubDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->bookID:Lcom/amazon/kcp/library/models/IBookID;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/library/models/CatalogItem;->bookID:Lcom/amazon/kcp/library/models/IBookID;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
