.class public Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;
.super Ljava/lang/Object;
.source "PeriodicalBackIssueCatalog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$BackIssueExcludedFilter;,
        Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$BackIssueOnlyFilter;,
        Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$SortedPeriodicalBackIssueView;,
        Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueView;,
        Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;,
        Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$IPeriodicalBackIssueListener;
    }
.end annotation


# instance fields
.field private final backIssueEventProvider:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;

.field private final catalogListener:Lcom/amazon/kcp/library/models/ICatalogListener;

.field private mapInitialized:Z

.field private final periodicalCatalogView:Lcom/amazon/kcp/library/models/FilteredCatalogView;

.field private final periodicalTitleSetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pubDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/IContentCatalog;)V
    .locals 2
    .parameter "catalog"

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->mapInitialized:Z

    .line 38
    new-instance v0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;-><init>(Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->backIssueEventProvider:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;

    .line 43
    new-instance v0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$1;-><init>(Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->catalogListener:Lcom/amazon/kcp/library/models/ICatalogListener;

    .line 68
    new-instance v0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$2;-><init>(Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->pubDateComparator:Ljava/util/Comparator;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->periodicalTitleSetMap:Ljava/util/HashMap;

    .line 186
    new-instance v0, Lcom/amazon/kcp/library/models/FilteredCatalogView;

    new-instance v1, Lcom/amazon/kcp/library/models/PeridiocalCatalogFilter;

    invoke-direct {v1}, Lcom/amazon/kcp/library/models/PeridiocalCatalogFilter;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/library/models/FilteredCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->periodicalCatalogView:Lcom/amazon/kcp/library/models/FilteredCatalogView;

    .line 187
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->ensureMapInitialized()V

    .line 188
    return-void
.end method

.method private addPeriodical(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/TreeSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->getTitleSetForItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/TreeSet;

    move-result-object v0

    .line 262
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 263
    return-object v0
.end method

.method private ensureMapInitialized()V
    .locals 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->mapInitialized:Z

    if-eqz v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->periodicalCatalogView:Lcom/amazon/kcp/library/models/FilteredCatalogView;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/FilteredCatalogView;->items()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ICatalogItem;

    .line 313
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->addPeriodical(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/TreeSet;

    goto :goto_1

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->periodicalCatalogView:Lcom/amazon/kcp/library/models/FilteredCatalogView;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->catalogListener:Lcom/amazon/kcp/library/models/ICatalogListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/FilteredCatalogView;->registerListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->mapInitialized:Z

    goto :goto_0
.end method

.method private getTitleSetForItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/TreeSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->periodicalTitleSetMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 269
    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->pubDateComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 272
    iget-object v1, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->periodicalTitleSetMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_0
    return-object v0
.end method

.method private removeTitleSetForItem(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 2
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->periodicalTitleSetMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    return-void
.end method


# virtual methods
.method public createBackIssueExcludedView(Lcom/amazon/kcp/library/models/ICatalogView;)Lcom/amazon/kcp/library/models/FilteredCatalogView;
    .locals 3
    .parameter "parentView"

    .prologue
    .line 364
    new-instance v0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueView;

    new-instance v1, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$BackIssueExcludedFilter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$BackIssueExcludedFilter;-><init>(Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$1;)V

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    .line 365
    .local v0, result:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueView;
    iget-object v1, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->backIssueEventProvider:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;->register(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 366
    return-object v0
.end method

.method public createBackIssueView(Lcom/amazon/kcp/library/models/ICatalogView;)Lcom/amazon/kcp/library/models/FilteredCatalogView;
    .locals 3
    .parameter "parentView"

    .prologue
    .line 388
    new-instance v0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueView;

    new-instance v1, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$BackIssueOnlyFilter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$BackIssueOnlyFilter;-><init>(Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$1;)V

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    .line 389
    .local v0, result:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueView;
    iget-object v1, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->backIssueEventProvider:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;->register(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 390
    return-object v0
.end method

.method public createSortedBackIssueExcludedView(Lcom/amazon/kcp/library/models/ISortedCatalogView;)Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;
    .locals 3
    .parameter "parentView"

    .prologue
    .line 352
    new-instance v0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$SortedPeriodicalBackIssueView;

    new-instance v1, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$BackIssueExcludedFilter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$BackIssueExcludedFilter;-><init>(Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$1;)V

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$SortedPeriodicalBackIssueView;-><init>(Lcom/amazon/kcp/library/models/ISortedCatalogView;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    .line 353
    .local v0, result:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$SortedPeriodicalBackIssueView;
    iget-object v1, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->backIssueEventProvider:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;->register(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 354
    return-object v0
.end method

.method public createSortedBackIssueView(Lcom/amazon/kcp/library/models/ISortedCatalogView;)Lcom/amazon/kcp/library/models/FilteredSortedCatalogView;
    .locals 3
    .parameter "parentView"

    .prologue
    .line 376
    new-instance v0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$SortedPeriodicalBackIssueView;

    new-instance v1, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$BackIssueOnlyFilter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$BackIssueOnlyFilter;-><init>(Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$1;)V

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$SortedPeriodicalBackIssueView;-><init>(Lcom/amazon/kcp/library/models/ISortedCatalogView;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    .line 377
    .local v0, result:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$SortedPeriodicalBackIssueView;
    iget-object v1, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->backIssueEventProvider:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;->register(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 378
    return-object v0
.end method

.method public isPeriodicalBackIssue(Lcom/amazon/kcp/library/models/ICatalogItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isCatalogItemPeriodical(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 300
    :goto_0
    return v1

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->ensureMapInitialized()V

    .line 291
    iget-object v1, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->periodicalTitleSetMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 292
    .local v0, titleSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    if-nez v0, :cond_1

    move v1, v3

    .line 295
    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method protected onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 227
    iget-boolean v2, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->mapInitialized:Z

    if-nez v2, :cond_1

    .line 248
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local p0
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->addPeriodical(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/TreeSet;

    move-result-object v1

    .line 238
    .local v1, periodicalTitleSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 239
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->backIssueEventProvider:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-virtual {v2, p0}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;->notifyBackIssueStatusChanged(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0
.end method

.method protected onItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 4
    .parameter

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->mapInitialized:Z

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->getTitleSetForItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Ljava/util/TreeSet;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 203
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 209
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iget-object v3, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->backIssueEventProvider:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-virtual {v3, v0}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;->notifyBackIssueStatusChanged(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 219
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->removeTitleSetForItem(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
