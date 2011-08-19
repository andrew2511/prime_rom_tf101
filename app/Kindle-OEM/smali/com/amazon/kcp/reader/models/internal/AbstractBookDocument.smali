.class public abstract Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;
.super Ljava/lang/Object;
.source "AbstractBookDocument.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IBookDocument;


# instance fields
.field private lastQuery:Ljava/lang/String;

.field private searchResults:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;->lastQuery:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;->searchResults:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clearCachedSearchResults()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;->lastQuery:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;->searchResults:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public getCachedSearchResults(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "query"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;->lastQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;->lastQuery:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;->searchResults:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setCachedSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter "searchResults"
    .parameter "query"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;->searchResults:Ljava/util/ArrayList;

    .line 37
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;->lastQuery:Ljava/lang/String;

    .line 38
    return-void
.end method

.method protected updateBookStateOnPositionChange()V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v1

    .line 59
    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    .line 62
    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookTOC;->getTOCArticles()Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/amazon/kcp/reader/models/IBookTOC;->getArticleOnPage(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 63
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/LocalBookState;->isArticleRead(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking article as read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/models/LocalBookState;->setArticleRead(IZ)V

    .line 71
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/LocalBookState;->persist()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
