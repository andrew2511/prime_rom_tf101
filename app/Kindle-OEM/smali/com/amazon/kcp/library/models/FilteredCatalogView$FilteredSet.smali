.class public Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;
.super Ljava/util/AbstractSet;
.source "FilteredCatalogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/FilteredCatalogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilteredSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/amazon/kcp/library/models/ICatalogItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected final changeEventProvider:Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;

.field protected final parentSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field protected final sizeCalculator:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;

.field protected final viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;)V
    .locals 2
    .parameter
    .parameter "filter"
    .parameter "changeEventProvider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;",
            "Lcom/amazon/kcp/library/models/ICatalogView$Filter;",
            "Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, parentSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->parentSet:Ljava/util/Set;

    .line 209
    iput-object p2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    .line 210
    iput-object p3, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->changeEventProvider:Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;

    .line 211
    new-instance v0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;-><init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->sizeCalculator:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->changeEventProvider:Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->sizeCalculator:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;->register(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 213
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;Lcom/amazon/kcp/library/models/ICatalogView$Filter;Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;)V
    .locals 2
    .parameter
    .parameter "filter"
    .parameter "changeEventProvider"
    .parameter "sizeCalculator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
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
    .line 219
    .local p1, parentSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->parentSet:Ljava/util/Set;

    .line 221
    iput-object p2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    .line 222
    iput-object p3, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->changeEventProvider:Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;

    .line 223
    iput-object p4, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->sizeCalculator:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->changeEventProvider:Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->sizeCalculator:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/ICatalogChangeEventProvider;->register(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 225
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 230
    instance-of v2, p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    if-nez v2, :cond_0

    move v2, v3

    .line 236
    :goto_0
    return v2

    .line 235
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/ICatalogItem;

    move-object v1, v0

    .line 236
    .local v1, item:Lcom/amazon/kcp/library/models/ICatalogItem;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    invoke-interface {v2, v1}, Lcom/amazon/kcp/library/models/ICatalogView$Filter;->shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->parentSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public findFirstMatching(Ljava/util/Set;)Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;)",
            "Lcom/amazon/kcp/library/models/ICatalogItem;"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .line 262
    .local v1, item:Lcom/amazon/kcp/library/models/ICatalogItem;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    invoke-interface {v2, v1}, Lcom/amazon/kcp/library/models/ICatalogView$Filter;->shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 267
    .end local v1           #item:Lcom/amazon/kcp/library/models/ICatalogItem;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
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
    .line 243
    new-instance v0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->parentSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;-><init>(Ljava/util/Iterator;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSet;->sizeCalculator:Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredSetSizeCalculator;->size()I

    move-result v0

    return v0
.end method
