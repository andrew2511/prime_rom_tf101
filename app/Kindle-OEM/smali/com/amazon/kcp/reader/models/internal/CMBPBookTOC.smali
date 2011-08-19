.class public Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;
.super Ljava/lang/Object;
.source "CMBPBookTOC.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IBookTOC;


# static fields
.field private static final ARTICLE_CLASS_NAME:Ljava/lang/String; = "article"


# instance fields
.field private allArticles:Ljava/util/Vector;

.field private bookNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

.field private bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

.field private sections:Ljava/util/Vector;

.field private toc:Lcom/mobipocket/common/library/reader/TOC;

.field private tocItemToLocationComparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/TOC;Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;Lcom/mobipocket/common/library/reader/BookViewManager;)V
    .locals 1
    .parameter "toc"
    .parameter "bookNavigator"
    .parameter "bookViewManager"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC$1;-><init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->tocItemToLocationComparator:Ljava/util/Comparator;

    .line 65
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->toc:Lcom/mobipocket/common/library/reader/TOC;

    .line 66
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->bookNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    .line 67
    iput-object p3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    .line 68
    return-void
.end method

.method private findITOCItemFromPosition(Ljava/util/Vector;I)Lcom/amazon/kcp/reader/models/ITOCItem;
    .locals 8
    .parameter "ITOCItemList"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 206
    const/4 v3, 0x0

    .line 207
    .local v3, min:I
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int v2, v4, v5

    .line 208
    .local v2, max:I
    const/4 v1, -0x1

    .local v1, lastIndex:I
    const/4 v0, 0x0

    .line 210
    .local v0, currentIndex:I
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/models/ITOCItem;

    invoke-interface {v4}, Lcom/amazon/kcp/reader/models/ITOCItem;->getFirstPosition()I

    move-result v4

    if-lt p2, v4, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/models/ITOCItem;

    invoke-interface {v4}, Lcom/amazon/kcp/reader/models/ITOCItem;->getLastPosition()I

    move-result v4

    if-le p2, v4, :cond_2

    :cond_0
    move-object v4, v7

    .line 237
    .end local p0
    :goto_0
    return-object v4

    .line 226
    .restart local p0
    :cond_1
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->tocItemToLocationComparator:Ljava/util/Comparator;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_3

    .line 228
    add-int/lit8 v3, v0, 0x1

    .line 234
    :goto_1
    move v1, v0

    .line 218
    :cond_2
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->tocItemToLocationComparator:Ljava/util/Comparator;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 220
    add-int v4, v2, v3

    div-int/lit8 v0, v4, 0x2

    .line 221
    if-ne v1, v0, :cond_1

    move-object v4, v7

    .line 223
    goto :goto_0

    .line 232
    :cond_3
    move v2, v0

    goto :goto_1

    .line 237
    :cond_4
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/ITOCItem;

    move-object v4, p0

    goto :goto_0
.end method

.method private generateArticles(Lcom/amazon/kcp/reader/models/ISectionTOCItem;Ljava/util/Vector;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/TOCItem;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->toc:Lcom/mobipocket/common/library/reader/TOC;

    invoke-interface {v0, p4}, Lcom/mobipocket/common/library/reader/TOC;->getFirstChild(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    .line 133
    :goto_0
    if-eqz v0, :cond_3

    .line 135
    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->isItemArticle(Lcom/mobipocket/common/library/reader/TOCItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    new-instance v1, Lcom/amazon/kcp/reader/models/internal/CMBPArticleTOCItem;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->bookNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-direct {v1, v0, p1, v2}, Lcom/amazon/kcp/reader/models/internal/CMBPArticleTOCItem;-><init>(Lcom/mobipocket/common/library/reader/TOCItem;Lcom/amazon/kcp/reader/models/ISectionTOCItem;Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)V

    .line 139
    if-eqz p2, :cond_0

    .line 141
    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 143
    :cond_0
    invoke-virtual {p3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 151
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->toc:Lcom/mobipocket/common/library/reader/TOC;

    invoke-interface {v1, v0}, Lcom/mobipocket/common/library/reader/TOC;->getNextSibling(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->toc:Lcom/mobipocket/common/library/reader/TOC;

    invoke-interface {v1, v0}, Lcom/mobipocket/common/library/reader/TOC;->isLeaf(Lcom/mobipocket/common/library/reader/TOCItem;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->generateArticles(Lcom/amazon/kcp/reader/models/ISectionTOCItem;Ljava/util/Vector;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/TOCItem;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 156
    :cond_3
    return-void
.end method

.method private generateTOCData()V
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->sections:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->sections:Ljava/util/Vector;

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->allArticles:Ljava/util/Vector;

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->toc:Lcom/mobipocket/common/library/reader/TOC;

    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/TOC;->getFirstTocSection()Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    .line 83
    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v4

    .line 87
    :goto_1
    if-eqz v1, :cond_0

    .line 90
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->toc:Lcom/mobipocket/common/library/reader/TOC;

    invoke-static {v2, v1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->isItemTopLevelSection(Lcom/mobipocket/common/library/reader/TOC;Lcom/mobipocket/common/library/reader/TOCItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->bookNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;-><init>(Lcom/mobipocket/common/library/reader/TOCItem;Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)V

    .line 94
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->sections:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 97
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->allArticles:Ljava/util/Vector;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/ISectionTOCItem;->getArticles()Ljava/util/Vector;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->generateArticles(Lcom/amazon/kcp/reader/models/ISectionTOCItem;Ljava/util/Vector;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/TOCItem;)V

    .line 100
    const/4 v0, 0x1

    .line 103
    :cond_2
    if-nez v0, :cond_3

    .line 106
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->toc:Lcom/mobipocket/common/library/reader/TOC;

    invoke-interface {v2, v1}, Lcom/mobipocket/common/library/reader/TOC;->getFirstChild(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v1

    goto :goto_1

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->toc:Lcom/mobipocket/common/library/reader/TOC;

    invoke-interface {v2, v1}, Lcom/mobipocket/common/library/reader/TOC;->getNextSibling(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static isItemArticle(Lcom/mobipocket/common/library/reader/TOCItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 334
    const-string v0, "article"

    invoke-interface {p0}, Lcom/mobipocket/common/library/reader/TOCItem;->getTocClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isItemTopLevelSection(Lcom/mobipocket/common/library/reader/TOC;Lcom/mobipocket/common/library/reader/TOCItem;)Z
    .locals 2
    .parameter "toc"
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 318
    invoke-interface {p1}, Lcom/mobipocket/common/library/reader/TOCItem;->isSection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/mobipocket/common/library/reader/TOCItem;->getLevel()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/mobipocket/common/library/reader/TOCItem;->getLevel()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, p1}, Lcom/mobipocket/common/library/reader/TOC;->isLeaf(Lcom/mobipocket/common/library/reader/TOCItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doesArticleStartOnPage(I)Z
    .locals 5
    .parameter "pageShift"

    .prologue
    const/4 v4, 0x1

    .line 287
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->bookNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-virtual {v3, p1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->getPageFirstPosition(I)I

    move-result v2

    .line 288
    .local v2, pageFirstPosition:I
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->getArticleAtPosition(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    move-result-object v0

    .line 289
    .local v0, firstArticle:Lcom/amazon/kcp/reader/models/ITOCItem;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/ITOCItem;->getFirstPosition()I

    move-result v3

    if-lt v3, v2, :cond_0

    move v3, v4

    .line 297
    :goto_0
    return v3

    .line 296
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->bookNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-virtual {v3, p1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->getPageLastPosition(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->getArticleAtPosition(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    move-result-object v1

    .line 297
    .local v1, lastArticle:Lcom/amazon/kcp/reader/models/ITOCItem;
    if-eq v0, v1, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getArticleAtPosition(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->getTOCArticles()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->findITOCItemFromPosition(Ljava/util/Vector;I)Lcom/amazon/kcp/reader/models/ITOCItem;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    return-object p0
.end method

.method public getArticleOnPage(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;
    .locals 1
    .parameter "pageShift"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->bookNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->getPageLastPosition(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->getArticleAtPosition(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    move-result-object v0

    return-object v0
.end method

.method public getSectionAtPosition(I)Lcom/amazon/kcp/reader/models/ISectionTOCItem;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 243
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->sections:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->getTOCSections()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->findITOCItemFromPosition(Ljava/util/Vector;I)Lcom/amazon/kcp/reader/models/ITOCItem;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/models/ISectionTOCItem;

    move-object v0, p0

    .line 263
    :goto_0
    return-object v0

    .line 252
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getSectionAtPosition(I)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->toc:Lcom/mobipocket/common/library/reader/TOC;

    invoke-static {v1, v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->isItemTopLevelSection(Lcom/mobipocket/common/library/reader/TOC;Lcom/mobipocket/common/library/reader/TOCItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    new-instance v1, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->bookNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-direct {v1, v0, v2}, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;-><init>(Lcom/mobipocket/common/library/reader/TOCItem;Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)V

    .line 256
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/CMBPSectionTOCItem;->getArticles()Ljava/util/Vector;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->generateArticles(Lcom/amazon/kcp/reader/models/ISectionTOCItem;Ljava/util/Vector;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/TOCItem;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 257
    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error retrieving TOC item at position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    move-object v0, v4

    .line 263
    goto :goto_0
.end method

.method public getSectionOnPage(I)Lcom/amazon/kcp/reader/models/ISectionTOCItem;
    .locals 1
    .parameter "pageShift"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->bookNavigator:Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;->getPageLastPosition(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->getSectionAtPosition(I)Lcom/amazon/kcp/reader/models/ISectionTOCItem;

    move-result-object v0

    return-object v0
.end method

.method public getTOCArticles()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->generateTOCData()V

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->allArticles:Ljava/util/Vector;

    return-object v0
.end method

.method public getTOCSections()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->generateTOCData()V

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->sections:Ljava/util/Vector;

    return-object v0
.end method

.method public getTitleImage()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;->toc:Lcom/mobipocket/common/library/reader/TOC;

    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/TOC;->getFirstTocSection()Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    const-string v1, "image"

    invoke-interface {v0, v1}, Lcom/mobipocket/common/library/reader/TOCItem;->getNamedTagBinary(Ljava/lang/String;)[[B

    move-result-object v0

    .line 179
    array-length v1, v0

    if-lez v1, :cond_0

    .line 182
    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    new-array v0, v2, [B

    goto :goto_0
.end method
