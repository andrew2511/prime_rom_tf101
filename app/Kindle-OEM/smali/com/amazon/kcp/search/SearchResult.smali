.class public Lcom/amazon/kcp/search/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final book:Lcom/amazon/kcp/library/models/IListableBook;

.field public final index:I

.field public final isLocalBook:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/IListableBook;IZ)V
    .locals 0
    .parameter "b"
    .parameter "i"
    .parameter "local"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchResult;->book:Lcom/amazon/kcp/library/models/IListableBook;

    .line 35
    iput p2, p0, Lcom/amazon/kcp/search/SearchResult;->index:I

    .line 36
    iput-boolean p3, p0, Lcom/amazon/kcp/search/SearchResult;->isLocalBook:Z

    .line 37
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchResult;->book:Lcom/amazon/kcp/library/models/IListableBook;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/amazon/kcp/search/SearchResult;

    .end local p1
    iget-object v1, p1, Lcom/amazon/kcp/search/SearchResult;->book:Lcom/amazon/kcp/library/models/IListableBook;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
