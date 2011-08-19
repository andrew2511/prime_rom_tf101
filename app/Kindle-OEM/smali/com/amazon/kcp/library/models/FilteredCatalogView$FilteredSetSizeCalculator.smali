.class public Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;
.super Ljava/lang/Object;
.source "FilteredCatalogView.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/FilteredCatalogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FilteredSetSizeCalculator"
.end annotation


# instance fields
.field protected final filter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

.field protected final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V
    .locals 1
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
    .line 104
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->size:I

    .line 105
    iput-object p1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->set:Ljava/util/Set;

    .line 106
    iput-object p2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->filter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    .line 107
    return-void
.end method

.method public static calculateFilteredSize(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)I
    .locals 4
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
            ")I"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, unfilteredSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    const/4 v2, 0x0

    .line 93
    .local v2, size:I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    .line 95
    .local v1, item:Lcom/amazon/kcp/library/models/ICatalogItem;
    invoke-interface {p1, v1}, Lcom/amazon/kcp/library/models/ICatalogView$Filter;->shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v1           #item:Lcom/amazon/kcp/library/models/ICatalogItem;
    :cond_1
    return v2
.end method


# virtual methods
.method protected invalidateSize()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->size:I

    .line 145
    return-void
.end method

.method public onBulkUpdateBegin()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onBulkUpdateEnd()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 121
    iget v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->size:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 123
    iget v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->size:I

    .line 125
    :cond_0
    return-void
.end method

.method public onItemChanged(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 0
    .parameter "original"
    .parameter "updated"

    .prologue
    .line 130
    return-void
.end method

.method public onItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->size:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 137
    iget v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->size:I

    .line 138
    :cond_0
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->set:Ljava/util/Set;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->filter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->calculateFilteredSize(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->size:I

    .line 115
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->size:I

    return v0
.end method
