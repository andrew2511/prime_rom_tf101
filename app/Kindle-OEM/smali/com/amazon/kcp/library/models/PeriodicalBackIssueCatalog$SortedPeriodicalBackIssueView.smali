.class Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$SortedPeriodicalBackIssueView;
.super Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;
.source "PeriodicalBackIssueCatalog.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$IPeriodicalBackIssueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortedPeriodicalBackIssueView"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/ISortedCatalogView;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V
    .locals 0
    .parameter "parentView"
    .parameter "viewFilter"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;-><init>(Lcom/amazon/kcp/library/models/ISortedCatalogView;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    .line 163
    return-void
.end method


# virtual methods
.method public onBackIssueStatusChanged(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$SortedPeriodicalBackIssueView;->parentView()Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ICatalogView;->items()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$SortedPeriodicalBackIssueView;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/models/ICatalogView$Filter;->shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$SortedPeriodicalBackIssueView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$SortedPeriodicalBackIssueView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0
.end method
