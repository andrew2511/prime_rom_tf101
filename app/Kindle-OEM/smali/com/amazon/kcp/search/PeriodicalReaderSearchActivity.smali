.class public Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;
.super Lcom/amazon/kcp/search/ReaderSearchActivity;
.source "PeriodicalReaderSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity$PeriodicalResultsAdapter;
    }
.end annotation


# instance fields
.field private addedArticleHeaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/kcp/reader/models/IArticleTOCItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;->addedArticleHeaders:Ljava/util/Set;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;->addedArticleHeaders:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method protected addSearchResult(Lcom/amazon/kcp/reader/models/BookSearchResult;)V
    .locals 5
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/models/BookSearchResult;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/models/IBookTOC;->getArticleAtPosition(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;->addedArticleHeaders:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;->addedArticleHeaders:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v1, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;

    new-instance v2, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IArticleTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IArticleTOCItem;->getFirstPosition()I

    move-result v0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->addResult(Lcom/amazon/kcp/reader/models/BookSearchResult;)V

    .line 36
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/search/ReaderSearchActivity;->addSearchResult(Lcom/amazon/kcp/reader/models/BookSearchResult;)V

    .line 37
    return-void
.end method

.method protected newResultsAdapter()Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity$PeriodicalResultsAdapter;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity$PeriodicalResultsAdapter;-><init>(Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;)V

    return-object v0
.end method
