.class public Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSubsetSizeCalculator;
.super Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;
.source "FilteredCatalogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/FilteredCatalogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FilteredSubsetSizeCalculator"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V
    .locals 0
    .parameter
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;",
            "Lcom/amazon/kcp/library/models/ICatalogView$Filter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;-><init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    .line 167
    return-void
.end method


# virtual methods
.method public onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSubsetSizeCalculator;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 176
    :cond_0
    return-void
.end method

.method public onItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSubsetSizeCalculator;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSubsetSizeCalculator;->invalidateSize()V

    .line 186
    return-void
.end method
