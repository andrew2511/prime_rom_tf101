.class public Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;
.super Ljava/lang/Object;
.source "FilteredCatalogView.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/FilteredCatalogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FilteredIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/amazon/kcp/library/models/ICatalogItem;",
        ">;"
    }
.end annotation


# instance fields
.field private nextMatching:Lcom/amazon/kcp/library/models/ICatalogItem;

.field private final parentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field private final viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/amazon/kcp/library/models/ICatalogView$Filter;)V
    .locals 0
    .parameter
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amazon/kcp/library/models/ICatalogItem;",
            ">;",
            "Lcom/amazon/kcp/library/models/ICatalogView$Filter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, parentIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/kcp/library/models/ICatalogItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;->parentIterator:Ljava/util/Iterator;

    .line 24
    iput-object p2, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    .line 25
    return-void
.end method

.method private findNextMatchingItem()Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 2

    .prologue
    .line 29
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;->parentIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;->parentIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ICatalogItem;

    .line 32
    .local v0, nextItem:Lcom/amazon/kcp/library/models/ICatalogItem;
    iget-object v1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;->viewFilter:Lcom/amazon/kcp/library/models/ICatalogView$Filter;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/library/models/ICatalogView$Filter;->shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 38
    .end local v0           #nextItem:Lcom/amazon/kcp/library/models/ICatalogItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;->nextMatching:Lcom/amazon/kcp/library/models/ICatalogItem;

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;->findNextMatchingItem()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;->nextMatching:Lcom/amazon/kcp/library/models/ICatalogItem;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;->nextMatching:Lcom/amazon/kcp/library/models/ICatalogItem;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/amazon/kcp/library/models/ICatalogItem;
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;->nextMatching:Lcom/amazon/kcp/library/models/ICatalogItem;

    .line 61
    .local v0, next:Lcom/amazon/kcp/library/models/ICatalogItem;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;->nextMatching:Lcom/amazon/kcp/library/models/ICatalogItem;

    .line 63
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/FilteredCatalogView$FilteredIterator;->next()Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
