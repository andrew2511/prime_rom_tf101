.class public Lcom/amazon/kcp/library/models/GroupedCatalogView;
.super Lcom/amazon/kcp/library/models/AbstractCatalogView;
.source "GroupedCatalogView.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;,
        Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;,
        Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;
    }
.end annotation


# instance fields
.field private final groupFunction:Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

.field protected final itemSet:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;

.field private final listener:Lcom/amazon/kcp/library/models/ICatalogListener;

.field protected final viewFilter:Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/ICatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;)V
    .locals 4
    .parameter "parentView"
    .parameter "groupFunction"

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/AbstractCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;)V

    .line 22
    new-instance v0, Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;-><init>(Lcom/amazon/kcp/library/models/GroupedCatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->viewFilter:Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;

    .line 147
    new-instance v0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;-><init>(Lcom/amazon/kcp/library/models/GroupedCatalogView;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->listener:Lcom/amazon/kcp/library/models/ICatalogListener;

    .line 280
    iput-object p2, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->groupFunction:Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

    .line 281
    new-instance v0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogView;->items()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->viewFilter:Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;-><init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->itemSet:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;

    .line 282
    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->listener:Lcom/amazon/kcp/library/models/ICatalogListener;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/models/ICatalogView;->registerListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 283
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->initializeGroup()V

    .line 284
    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kcp/library/models/ICatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;)V
    .locals 2
    .parameter "parentView"
    .parameter "groupFunction"
    .parameter "itemSet"

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/AbstractCatalogView;-><init>(Lcom/amazon/kcp/library/models/ICatalogView;)V

    .line 22
    new-instance v0, Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;-><init>(Lcom/amazon/kcp/library/models/GroupedCatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->viewFilter:Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;

    .line 147
    new-instance v0, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/GroupedCatalogView$1;-><init>(Lcom/amazon/kcp/library/models/GroupedCatalogView;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->listener:Lcom/amazon/kcp/library/models/ICatalogListener;

    .line 289
    iput-object p2, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->groupFunction:Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

    .line 290
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->createFilteredSet()Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->itemSet:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;

    .line 291
    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->listener:Lcom/amazon/kcp/library/models/ICatalogListener;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/models/ICatalogView;->registerListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 292
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->initializeGroup()V

    .line 293
    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/models/GroupedCatalogView;)Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->groupFunction:Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/models/GroupedCatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->notifyCanonicalItemChange(Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;)V

    return-void
.end method

.method private initializeGroup()V
    .locals 3

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->parentView()Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ICatalogView;->items()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ICatalogItem;

    .line 304
    iget-object v2, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->groupFunction:Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

    invoke-interface {v2, v0}, Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;->isGroupedItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->groupFunction:Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

    invoke-interface {v2, v0}, Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;->onGroupedItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;

    goto :goto_0

    .line 309
    :cond_1
    return-void
.end method

.method private notifyCanonicalItemChange(Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;)V
    .locals 3
    .parameter

    .prologue
    .line 112
    iget-object v0, p1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->originalCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->updatedCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->originalCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->updatedCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    iget-object v1, p1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->originalCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->originalCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->updatedCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    iget-object v1, p1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->updatedCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->originalCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    iget-object v1, p1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->updatedCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    iget-object v1, p1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->originalCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    iget-object v2, p1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->updatedCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    iget-object v1, p1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->originalCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    iget-object v1, p1, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->updatedCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->notifyItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0
.end method


# virtual methods
.method protected createFilteredSet()Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;
    .locals 4

    .prologue
    .line 297
    new-instance v0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->parentView()Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ICatalogView;->items()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->viewFilter:Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;-><init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;)V

    return-object v0
.end method

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
    .line 314
    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView;->itemSet:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;

    return-object v0
.end method
