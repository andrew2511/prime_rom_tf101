.class public Lcom/amazon/kcp/library/models/FilteredCatalogView;
.super Lcom/amazon/kcp/library/models/AbstractCatalogView;
.source "FilteredCatalogView.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;,
        Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSubsetSizeCalculator;,
        Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;,
        Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;
    }
.end annotation


# instance fields
.field private filteredSet:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;

.field protected final viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/ICatalogView;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V
    .locals 0
    .parameter "parentView"
    .parameter "viewFilter"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/AbstractCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;)V

    .line 278
    iput-object p2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    .line 279
    invoke-interface {p1, p0}, Lcom/amazon/kcp/library/models/ICatalogView;->registerListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 280
    return-void
.end method


# virtual methods
.method public items()Ljava/util/Set;
    .locals 4
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
    .line 289
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->filteredSet:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/FilteredCatalogView;->parentView()Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ICatalogView;->items()Ljava/util/Set;

    move-result-object v0

    .line 292
    .local v0, parentSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    new-instance v1, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;-><init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;)V

    iput-object v1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->filteredSet:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;

    .line 294
    .end local v0           #parentSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->filteredSet:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;

    return-object v1
.end method

.method public onBulkUpdateBegin()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyBulkUpdateBegin()V

    .line 340
    return-void
.end method

.method public onBulkUpdateEnd()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyBulkUpdateEnd()V

    .line 346
    return-void
.end method

.method public onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/models/ICatalogView$Filter;->shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 305
    :cond_0
    return-void
.end method

.method public onItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 3
    .parameter "original"
    .parameter "updated"

    .prologue
    .line 310
    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    invoke-interface {v2, p1}, Lcom/amazon/kcp/library/models/ICatalogView$Filter;->shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v0

    .line 311
    .local v0, originalIncluded:Z
    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    invoke-interface {v2, p2}, Lcom/amazon/kcp/library/models/ICatalogView$Filter;->shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v1

    .line 313
    .local v1, updatedIncluded:Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 315
    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v2, p1, p2}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 319
    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v2, p2}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0

    .line 321
    :cond_2
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 323
    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v2, p1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0
.end method

.method public onItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/models/ICatalogView$Filter;->shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 334
    :cond_0
    return-void
.end method
