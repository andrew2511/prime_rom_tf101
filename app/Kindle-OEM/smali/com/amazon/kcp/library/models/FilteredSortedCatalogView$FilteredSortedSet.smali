.class public Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;
.super Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;
.source "FilteredSortedCatalogView.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilteredSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;",
        "Ljava/util/SortedSet",
        "<",
        "Lcom/amazon/kcp/library/models/ICatalogItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected final parentSortedSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/SortedSet;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;)V
    .locals 0
    .parameter
    .parameter "filter"
    .parameter "changeProvider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;",
            "Lcom/amazon/kcp/library/models/ICatalogView$Filter;",
            "Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, parentSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;-><init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;)V

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->parentSortedSet:Ljava/util/SortedSet;

    .line 31
    return-void
.end method

.method protected constructor <init>(Ljava/util/SortedSet;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;)V
    .locals 0
    .parameter
    .parameter "filter"
    .parameter "changeProvider"
    .parameter "sizeCalculator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
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
    .line 38
    .local p1, parentSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;-><init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;)V

    .line 39
    iput-object p1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->parentSortedSet:Ljava/util/SortedSet;

    .line 40
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->parentSortedSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected createFilteredSortedSubset(Ljava/util/SortedSet;)Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;)",
            "Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, parentSubset:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    new-instance v0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSubsetSizeCalculator;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSubsetSizeCalculator;-><init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    .line 22
    .local v0, sizeCalculator:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;
    new-instance v1, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->changeEventProvider:Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;)V

    return-object v1
.end method

.method public first()Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->parentSortedSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->findFirstMatching(Ljava/util/Set;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    .line 52
    .local v0, first:Lcom/amazon/kcp/library/models/ICatalogItem;
    if-nez v0, :cond_0

    .line 54
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 56
    :cond_0
    return-object v0
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->first()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/SortedSet;
    .locals 2
    .parameter "toElement"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->parentSortedSet:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 63
    .local v0, parentSubset:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->createFilteredSortedSubset(Ljava/util/SortedSet;)Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->headSet(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public last()Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 4

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, last:Lcom/amazon/kcp/library/models/ICatalogItem;
    iget-object v3, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->parentSortedSet:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .line 72
    .local v1, item:Lcom/amazon/kcp/library/models/ICatalogItem;
    iget-object v3, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    invoke-interface {v3, v1}, Lcom/amazon/kcp/library/models/ICatalogView$Filter;->shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    move-object v2, v1

    goto :goto_0

    .line 78
    .end local v1           #item:Lcom/amazon/kcp/library/models/ICatalogItem;
    :cond_1
    if-nez v2, :cond_2

    .line 80
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 83
    :cond_2
    return-object v2
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->last()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/SortedSet;
    .locals 2
    .parameter "fromElement"
    .parameter "toElement"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->parentSortedSet:Ljava/util/SortedSet;

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 90
    .local v0, parentSubSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->createFilteredSortedSubset(Ljava/util/SortedSet;)Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    check-cast p2, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->subSet(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/SortedSet;
    .locals 2
    .parameter "fromElement"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->parentSortedSet:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 97
    .local v0, parentSubSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->createFilteredSortedSubset(Ljava/util/SortedSet;)Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;->tailSet(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
