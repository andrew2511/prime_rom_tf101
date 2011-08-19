.class public Lcom/amazon/kcp/library/SortedBookList;
.super Ljava/util/AbstractList;
.source "SortedBookList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SortedBookItem::",
        "Lcom/amazon/kcp/library/models/IListableBook;",
        ">",
        "Ljava/util/AbstractList",
        "<TSortedBookItem;>;"
    }
.end annotation


# instance fields
.field private indexArray:[I

.field private library:Lcom/amazon/kcp/library/models/IBookList;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/IBookList;[I)V
    .locals 0
    .parameter "library"
    .parameter "sortedIndexArray"

    .prologue
    .line 30
    .local p0, this:Lcom/amazon/kcp/library/SortedBookList;,"Lcom/amazon/kcp/library/SortedBookList<TSortedBookItem;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/library/SortedBookList;->library:Lcom/amazon/kcp/library/models/IBookList;

    .line 32
    iput-object p2, p0, Lcom/amazon/kcp/library/SortedBookList;->indexArray:[I

    .line 33
    return-void
.end method


# virtual methods
.method public get(I)Lcom/amazon/kcp/library/models/IListableBook;
    .locals 2
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TSortedBookItem;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/amazon/kcp/library/SortedBookList;,"Lcom/amazon/kcp/library/SortedBookList<TSortedBookItem;>;"
    iget-object v0, p0, Lcom/amazon/kcp/library/SortedBookList;->library:Lcom/amazon/kcp/library/models/IBookList;

    iget-object v1, p0, Lcom/amazon/kcp/library/SortedBookList;->indexArray:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/IBookList;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    .local p0, this:Lcom/amazon/kcp/library/SortedBookList;,"Lcom/amazon/kcp/library/SortedBookList<TSortedBookItem;>;"
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/SortedBookList;->get(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 54
    .local p0, this:Lcom/amazon/kcp/library/SortedBookList;,"Lcom/amazon/kcp/library/SortedBookList<TSortedBookItem;>;"
    iget-object v0, p0, Lcom/amazon/kcp/library/SortedBookList;->indexArray:[I

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceIndicies([I)V
    .locals 0
    .parameter "sortedIndexArray"

    .prologue
    .line 42
    .local p0, this:Lcom/amazon/kcp/library/SortedBookList;,"Lcom/amazon/kcp/library/SortedBookList<TSortedBookItem;>;"
    iput-object p1, p0, Lcom/amazon/kcp/library/SortedBookList;->indexArray:[I

    .line 43
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 60
    .local p0, this:Lcom/amazon/kcp/library/SortedBookList;,"Lcom/amazon/kcp/library/SortedBookList<TSortedBookItem;>;"
    iget-object v0, p0, Lcom/amazon/kcp/library/SortedBookList;->indexArray:[I

    array-length v0, v0

    return v0
.end method
