.class abstract Lcom/amazon/kcp/library/LegacyLibraryActivity;
.super Lcom/amazon/kcp/library/LibraryActivity;
.source "LegacyLibraryActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BookType::",
        "Lcom/amazon/kcp/library/models/IListableBook;",
        ">",
        "Lcom/amazon/kcp/library/LibraryActivity",
        "<TBookType;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    .local p0, this:Lcom/amazon/kcp/library/LegacyLibraryActivity;,"Lcom/amazon/kcp/library/LegacyLibraryActivity<TBookType;>;"
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getIBookListModel()Lcom/amazon/kcp/library/models/IBookList;
.end method

.method protected getInitialBooksList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TBookType;>;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, this:Lcom/amazon/kcp/library/LegacyLibraryActivity;,"Lcom/amazon/kcp/library/LegacyLibraryActivity<TBookType;>;"
    new-instance v0, Lcom/amazon/kcp/library/SortedBookList;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LegacyLibraryActivity;->getIBookListModel()Lcom/amazon/kcp/library/models/IBookList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LegacyLibraryActivity;->getSortedIndices()[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/SortedBookList;-><init>(Lcom/amazon/kcp/library/models/IBookList;[I)V

    return-object v0
.end method

.method protected abstract getSortedIndices()[I
.end method

.method protected refreshBooksList()V
    .locals 2

    .prologue
    .line 28
    .local p0, this:Lcom/amazon/kcp/library/LegacyLibraryActivity;,"Lcom/amazon/kcp/library/LegacyLibraryActivity<TBookType;>;"
    iget-object v0, p0, Lcom/amazon/kcp/library/LegacyLibraryActivity;->books:Ljava/util/List;

    check-cast v0, Lcom/amazon/kcp/library/SortedBookList;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LegacyLibraryActivity;->getSortedIndices()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/SortedBookList;->replaceIndicies([I)V

    .line 29
    return-void
.end method
