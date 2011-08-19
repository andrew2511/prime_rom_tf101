.class public Lcom/mobipocket/common/library/reader/SearchManager;
.super Ljava/lang/Object;
.source "SearchManager.java"


# instance fields
.field private ebookSearcher:Lcom/mobipocket/common/parser/EBookSearcher;

.field private forwardSearch:Z

.field private maxPosition:I

.field private final pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

.field private pBookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

.field pgs:Lcom/mobipocket/common/library/reader/SearchEvents;


# direct methods
.method constructor <init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V
    .locals 1
    .parameter "ebook"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pBookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    .line 31
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    .line 32
    return-void
.end method


# virtual methods
.method getAllBookData(Lcom/mobipocket/common/library/reader/SearchEvents;IZIII)V
    .locals 2
    .parameter "pgs"
    .parameter "securityCode"
    .parameter "searchAll"
    .parameter "maxResults"
    .parameter "currentBookPosition"
    .parameter "maxBookPosition"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pgs:Lcom/mobipocket/common/library/reader/SearchEvents;

    .line 68
    iput p6, p0, Lcom/mobipocket/common/library/reader/SearchManager;->maxPosition:I

    .line 69
    new-instance v0, Lcom/mobipocket/common/parser/EBookSearcher;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-direct {v0, v1, p0}, Lcom/mobipocket/common/parser/EBookSearcher;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;Lcom/mobipocket/common/library/reader/SearchManager;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->ebookSearcher:Lcom/mobipocket/common/parser/EBookSearcher;

    .line 71
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->ebookSearcher:Lcom/mobipocket/common/parser/EBookSearcher;

    invoke-virtual {v0, p4, p2, p5}, Lcom/mobipocket/common/parser/EBookSearcher;->setGetAllData(III)V

    .line 72
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->ebookSearcher:Lcom/mobipocket/common/parser/EBookSearcher;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookSearcher;->start()V

    .line 73
    return-void
.end method

.method public occurenceFound(IIILjava/lang/String;)V
    .locals 9
    .parameter "foundPosition"
    .parameter "beginPosition"
    .parameter "endPosition"
    .parameter "text"

    .prologue
    .line 96
    iget-object v8, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pgs:Lcom/mobipocket/common/library/reader/SearchEvents;

    new-instance v0, Lcom/mobipocket/common/library/reader/FoundItem;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v2, p1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->pageFromPosition(I)I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->pageFromPosition(I)I

    move-result v3

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/mobipocket/common/library/reader/FoundItem;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/mobipocket/common/library/reader/SearchEvents;->found(Lcom/mobipocket/common/library/reader/FoundItem;)V

    .line 97
    return-void
.end method

.method search(Lcom/mobipocket/common/library/reader/SearchEvents;Ljava/lang/String;IZIIII)Ljava/lang/Thread;
    .locals 8
    .parameter "pgs"
    .parameter "expression"
    .parameter "mode"
    .parameter "searchAll"
    .parameter "maxResults"
    .parameter "currentBookPosition"
    .parameter "maxBookPosition"
    .parameter "numContextWords"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pgs:Lcom/mobipocket/common/library/reader/SearchEvents;

    .line 55
    and-int/lit8 v7, p3, 0x7

    .line 56
    .local v7, option:I
    if-eqz v7, :cond_0

    const/4 v0, 0x1

    if-ne v7, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->forwardSearch:Z

    .line 57
    iput p7, p0, Lcom/mobipocket/common/library/reader/SearchManager;->maxPosition:I

    .line 58
    new-instance v0, Lcom/mobipocket/common/parser/EBookSearcher;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-direct {v0, v1, p0}, Lcom/mobipocket/common/parser/EBookSearcher;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;Lcom/mobipocket/common/library/reader/SearchManager;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->ebookSearcher:Lcom/mobipocket/common/parser/EBookSearcher;

    .line 60
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->ebookSearcher:Lcom/mobipocket/common/parser/EBookSearcher;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/mobipocket/common/parser/EBookSearcher;->setSearch(Ljava/lang/String;IZIII)V

    .line 61
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->ebookSearcher:Lcom/mobipocket/common/parser/EBookSearcher;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookSearcher;->start()V

    .line 62
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->ebookSearcher:Lcom/mobipocket/common/parser/EBookSearcher;

    return-object v0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchEnded(II)V
    .locals 6
    .parameter "lastFoundPosition"
    .parameter "endPosition"

    .prologue
    const/4 v4, 0x1

    .line 101
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pBookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pBookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->search:Lcom/mobipocket/common/library/reader/BookViewManager$Search;

    const/16 v1, 0x28

    sub-int v1, p1, v1

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->searchEnded(IIIZZ)V

    .line 109
    :goto_0
    if-ltz p1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pgs:Lcom/mobipocket/common/library/reader/SearchEvents;

    invoke-interface {v0, v4}, Lcom/mobipocket/common/library/reader/SearchEvents;->close(Z)V

    .line 117
    :goto_1
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->closeBook()V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pgs:Lcom/mobipocket/common/library/reader/SearchEvents;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mobipocket/common/library/reader/SearchEvents;->close(Z)V

    goto :goto_1
.end method

.method setBookViewManager(Lcom/mobipocket/common/library/reader/BookViewManager;)V
    .locals 0
    .parameter "bookViewManager"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pBookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    .line 37
    return-void
.end method

.method public setCurrentPosition(I)Z
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->forwardSearch:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pgs:Lcom/mobipocket/common/library/reader/SearchEvents;

    invoke-interface {v0, p1}, Lcom/mobipocket/common/library/reader/SearchEvents;->setPogression(I)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pgs:Lcom/mobipocket/common/library/reader/SearchEvents;

    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/SearchEvents;->mustStop()Z

    move-result v0

    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/SearchManager;->pgs:Lcom/mobipocket/common/library/reader/SearchEvents;

    iget v1, p0, Lcom/mobipocket/common/library/reader/SearchManager;->maxPosition:I

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/mobipocket/common/library/reader/SearchEvents;->setPogression(I)V

    goto :goto_0
.end method
