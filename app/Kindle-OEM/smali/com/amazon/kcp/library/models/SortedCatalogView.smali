.class public Lcom/amazon/kcp/library/models/SortedCatalogView;
.super Lcom/amazon/kcp/library/models/AbstractCatalogView;
.source "SortedCatalogView.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogListener;
.implements Lcom/amazon/kcp/library/models/ISortedCatalogView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;
    }
.end annotation


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field private sortedItems:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/ICatalogView;Ljava/util/Comparator;)V
    .locals 0
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogView;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/AbstractCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;)V

    .line 30
    iput-object p2, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->comparator:Ljava/util/Comparator;

    .line 31
    invoke-interface {p1, p0}, Lcom/amazon/kcp/library/models/ICatalogView;->registerListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 32
    return-void
.end method

.method private loadSortedSet()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->sortedItems:Ljava/util/TreeSet;

    .line 56
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/SortedCatalogView;->items()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ICatalogItem;

    .line 58
    iget-object v2, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->sortedItems:Ljava/util/TreeSet;

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public items()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/SortedCatalogView;->parentView()Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ICatalogView;->items()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onBulkUpdateBegin()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyBulkUpdateBegin()V

    .line 100
    return-void
.end method

.method public onBulkUpdateEnd()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyBulkUpdateEnd()V

    .line 106
    return-void
.end method

.method public onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->sortedItems:Ljava/util/TreeSet;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->sortedItems:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 71
    return-void
.end method

.method public onItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->sortedItems:Ljava/util/TreeSet;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->sortedItems:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->sortedItems:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 83
    return-void
.end method

.method public onItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->sortedItems:Ljava/util/TreeSet;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->sortedItems:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 94
    return-void
.end method

.method public sortedItems()Ljava/util/NavigableSet;
    .locals 2
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
    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->sortedItems:Ljava/util/TreeSet;

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/SortedCatalogView;->loadSortedSet()V

    .line 50
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/SortedCatalogView;->sortedItems:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/SortedCatalogView$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method
