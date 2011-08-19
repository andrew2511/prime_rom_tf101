.class public Lcom/amazon/topaz/internal/book/PageIterator;
.super Ljava/lang/Object;
.source "PageIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<",
        "Lcom/amazon/topaz/internal/book/Page;",
        ">;"
    }
.end annotation


# instance fields
.field private final book:Lcom/amazon/topaz/TPZBook;

.field private final lastPage:I

.field private pageNumAfterCursor:I


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/TPZBook;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/PageIterator;->book:Lcom/amazon/topaz/TPZBook;

    .line 44
    const/4 v0, 0x2

    sub-int v0, p2, v0

    .line 47
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/topaz/TPZBook;->lastPage()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 55
    :goto_0
    iput v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->lastPage:I

    .line 59
    iput p2, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    .line 60
    return-void

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getPage(I)Lcom/amazon/topaz/internal/book/Page;
    .locals 1
    .parameter "pageNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->book:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/TPZBook;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v0

    return-object v0
.end method

.method private skipNullPagesBackward()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 145
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/book/PageIterator;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    iget v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 156
    :cond_0
    :goto_1
    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private skipNullPagesForward()V
    .locals 2

    .prologue
    .line 88
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    iget v1, p0, Lcom/amazon/topaz/internal/book/PageIterator;->lastPage:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/book/PageIterator;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    iget v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 99
    :cond_0
    :goto_1
    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/amazon/topaz/internal/book/Page;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/amazon/topaz/internal/book/Page;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/internal/book/PageIterator;->add(Lcom/amazon/topaz/internal/book/Page;)V

    return-void
.end method

.method public gotoEnd()V
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->lastPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    .line 78
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/PageIterator;->skipNullPagesForward()V

    .line 106
    iget v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    iget v1, p0, Lcom/amazon/topaz/internal/book/PageIterator;->lastPage:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/PageIterator;->skipNullPagesBackward()V

    .line 163
    iget v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/amazon/topaz/internal/book/Page;
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/PageIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/PageIterator;->skipNullPagesForward()V

    .line 123
    const/4 v0, 0x0

    .line 126
    :try_start_0
    iget v1, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    invoke-direct {p0, v1}, Lcom/amazon/topaz/internal/book/PageIterator;->getPage(I)Lcom/amazon/topaz/internal/book/Page;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    :goto_0
    iget v1, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    .line 138
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 130
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/PageIterator;->next()Lcom/amazon/topaz/internal/book/Page;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/PageIterator;->skipNullPagesForward()V

    .line 112
    iget v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    return v0
.end method

.method public previous()Lcom/amazon/topaz/internal/book/Page;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 174
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/PageIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/PageIterator;->skipNullPagesBackward()V

    .line 180
    const/4 v0, 0x0

    .line 183
    :try_start_0
    iget v1, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/amazon/topaz/internal/book/PageIterator;->getPage(I)Lcom/amazon/topaz/internal/book/Page;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 191
    :goto_0
    iget v1, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    .line 196
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 187
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/PageIterator;->previous()Lcom/amazon/topaz/internal/book/Page;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/PageIterator;->skipNullPagesBackward()V

    .line 169
    iget v0, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Lcom/amazon/topaz/internal/book/Page;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 211
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/amazon/topaz/internal/book/Page;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/internal/book/PageIterator;->set(Lcom/amazon/topaz/internal/book/Page;)V

    return-void
.end method

.method public setPageNum(I)V
    .locals 0
    .parameter "pageNum"

    .prologue
    .line 68
    iput p1, p0, Lcom/amazon/topaz/internal/book/PageIterator;->pageNumAfterCursor:I

    .line 69
    return-void
.end method
