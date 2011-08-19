.class public Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;
.super Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;
.source "FilteredSortedCatalogView.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilteredNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;",
        "Ljava/util/NavigableSet",
        "<",
        "Lcom/amazon/kcp/library/models/ICatalogItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected final parentNavigableSet:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/NavigableSet;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;)V
    .locals 0
    .parameter
    .parameter "filter"
    .parameter "changeEventProvider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;",
            "Lcom/amazon/kcp/library/models/ICatalogView$Filter;",
            "Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, parentSet:Ljava/util/NavigableSet;,"Ljava/util/NavigableSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;)V

    .line 122
    iput-object p1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->parentNavigableSet:Ljava/util/NavigableSet;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/util/NavigableSet;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;)V
    .locals 0
    .parameter
    .parameter "filter"
    .parameter "changeEventProvider"
    .parameter "sizeCalculator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;",
            "Lcom/amazon/kcp/library/models/ICatalogView$Filter;",
            "Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;",
            "Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, parentSet:Ljava/util/NavigableSet;,"Ljava/util/NavigableSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;)V

    .line 131
    iput-object p1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->parentNavigableSet:Ljava/util/NavigableSet;

    .line 132
    return-void
.end method


# virtual methods
.method public ceiling(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 3
    .parameter "item"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->parentNavigableSet:Ljava/util/NavigableSet;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 150
    .local v0, subSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->findFirstMatching(Ljava/util/Set;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->ceiling(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method protected createFilteredNavigableSubset(Ljava/util/NavigableSet;)Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;)",
            "Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, parentSubset:Ljava/util/NavigableSet;,"Ljava/util/NavigableSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    new-instance v1, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSubsetSizeCalculator;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    invoke-direct {v1, p1, v2}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSubsetSizeCalculator;-><init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    .line 109
    .local v1, sizeCalculator:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;
    new-instance v0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->changeEventProvider:Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;-><init>(Ljava/util/NavigableSet;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;)V

    .line 114
    .local v0, result:Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;
    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->parentNavigableSet:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    .local v0, parentIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    new-instance v1, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    invoke-direct {v1, v0, v2}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;-><init>(Ljava/util/Iterator;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    return-object v1
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->parentNavigableSet:Ljava/util/NavigableSet;

    invoke-interface {v2}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    .line 167
    .local v0, parentDescendingSet:Ljava/util/NavigableSet;,"Ljava/util/NavigableSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    new-instance v1, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->changeEventProvider:Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;

    iget-object v4, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->sizeCalculator:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;-><init>(Ljava/util/NavigableSet;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;)V

    .line 173
    .local v1, result:Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;
    return-object v1
.end method

.method public floor(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 2
    .parameter "item"

    .prologue
    .line 179
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->parentNavigableSet:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 180
    .local v0, subSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->findFirstMatching(Ljava/util/Set;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->floor(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Lcom/amazon/kcp/library/models/ICatalogItem;Z)Ljava/util/NavigableSet;
    .locals 2
    .parameter "toElement"
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            "Z)",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->parentNavigableSet:Ljava/util/NavigableSet;

    invoke-interface {v1, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 187
    .local v0, parentHeadSet:Ljava/util/NavigableSet;,"Ljava/util/NavigableSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->createFilteredNavigableSubset(Ljava/util/NavigableSet;)Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->headSet(Lcom/amazon/kcp/library/models/ICatalogItem;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 3
    .parameter "item"

    .prologue
    .line 193
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->parentNavigableSet:Ljava/util/NavigableSet;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 194
    .local v0, parentSubset:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->findFirstMatching(Ljava/util/Set;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->higher(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public last()Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->parentNavigableSet:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->findFirstMatching(Ljava/util/Set;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    .line 139
    .local v0, last:Lcom/amazon/kcp/library/models/ICatalogItem;
    if-nez v0, :cond_0

    .line 141
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 143
    :cond_0
    return-object v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->last()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public lower(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 3
    .parameter "item"

    .prologue
    .line 200
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->parentNavigableSet:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 201
    .local v0, parentSubset:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->findFirstMatching(Ljava/util/Set;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->lower(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic pollFirst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->pollFirst()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 1

    .prologue
    .line 213
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic pollLast()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->pollLast()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Lcom/amazon/kcp/library/models/ICatalogItem;ZLcom/amazon/kcp/library/models/ICatalogItem;Z)Ljava/util/NavigableSet;
    .locals 2
    .parameter "fromElement"
    .parameter "fromInclusive"
    .parameter "toElement"
    .parameter "toInclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            "Z",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            "Z)",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->parentNavigableSet:Ljava/util/NavigableSet;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 221
    .local v0, parentSubset:Ljava/util/NavigableSet;,"Ljava/util/NavigableSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->createFilteredNavigableSubset(Ljava/util/NavigableSet;)Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    check-cast p3, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->subSet(Lcom/amazon/kcp/library/models/ICatalogItem;ZLcom/amazon/kcp/library/models/ICatalogItem;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Lcom/amazon/kcp/library/models/ICatalogItem;Z)Ljava/util/NavigableSet;
    .locals 2
    .parameter "fromElement"
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            "Z)",
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->parentNavigableSet:Ljava/util/NavigableSet;

    invoke-interface {v1, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 228
    .local v0, parentSubset:Ljava/util/NavigableSet;,"Ljava/util/NavigableSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->createFilteredNavigableSubset(Ljava/util/NavigableSet;)Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;->tailSet(Lcom/amazon/kcp/library/models/ICatalogItem;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
