.class Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;
.super Ljava/util/AbstractList;
.source "UnifiedLibraryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/UnifiedLibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortedCatalogList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/amazon/kcp/library/models/IListableBook;",
        ">;"
    }
.end annotation


# instance fields
.field private catalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

.field private final listableBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/library/models/IListableBook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/ISortedCatalogView;)V
    .locals 1
    .parameter "catalog"

    .prologue
    .line 765
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->listableBooks:Ljava/util/List;

    .line 766
    iput-object p1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->catalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    .line 768
    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->refreshBookList()V

    .line 769
    return-void
.end method


# virtual methods
.method changeSourceCatalogView(Lcom/amazon/kcp/library/models/ISortedCatalogView;)V
    .locals 0
    .parameter "catalog"

    .prologue
    .line 773
    iput-object p1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->catalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    .line 774
    return-void
.end method

.method public get(I)Lcom/amazon/kcp/library/models/IListableBook;
    .locals 1
    .parameter "index"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->listableBooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/IListableBook;

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 759
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->get(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    return-object v0
.end method

.method refreshBookList()V
    .locals 3

    .prologue
    .line 778
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->listableBooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 779
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->catalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->catalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ISortedCatalogView;->sortedItems()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ICatalogItem;

    .line 783
    iget-object v2, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->listableBooks:Ljava/util/List;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ICatalogItem;->getListableBook()Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 786
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->listableBooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
