.class public Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;
.super Lcom/amazon/kcp/library/models/FilteredCatalogView;
.source "FilteredSortedCatalogView.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ISortedCatalogView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;,
        Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredSortedSet;
    }
.end annotation


# instance fields
.field private filteredNavigableSet:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedParentView:Lcom/amazon/kcp/library/models/ISortedCatalogView;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/ISortedCatalogView;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V
    .locals 1
    .parameter "parentView"
    .parameter "filter"

    .prologue
    .line 237
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/models/FilteredCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    .line 238
    iput-object p1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;->sortedParentView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;->filteredNavigableSet:Ljava/util/NavigableSet;

    .line 240
    return-void
.end method


# virtual methods
.method public sortedItems()Ljava/util/NavigableSet;
    .locals 4
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
    .line 245
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;->filteredNavigableSet:Ljava/util/NavigableSet;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;->sortedParentView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ISortedCatalogView;->sortedItems()Ljava/util/NavigableSet;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView$FilteredNavigableSet;-><init>(Ljava/util/NavigableSet;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;->filteredNavigableSet:Ljava/util/NavigableSet;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;->filteredNavigableSet:Ljava/util/NavigableSet;

    return-object v0
.end method
