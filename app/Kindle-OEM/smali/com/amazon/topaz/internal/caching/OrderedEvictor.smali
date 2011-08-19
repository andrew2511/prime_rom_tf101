.class public Lcom/amazon/topaz/internal/caching/OrderedEvictor;
.super Ljava/lang/Object;
.source "OrderedEvictor.java"

# interfaces
.implements Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;
.implements Lcom/amazon/topaz/internal/caching/Evictor;


# instance fields
.field private final maxTotalCacheSize:I

.field private final strategies:Ljava/util/ArrayList;

.field private totalCacheSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/caching/OrderedEvictor;->strategies:Ljava/util/ArrayList;

    .line 35
    iput p1, p0, Lcom/amazon/topaz/internal/caching/OrderedEvictor;->maxTotalCacheSize:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/internal/caching/OrderedEvictor;->totalCacheSize:I

    .line 37
    return-void
.end method


# virtual methods
.method public addEvictionStrategy(Lcom/amazon/topaz/internal/caching/Evictor$EvictionStrategy;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/OrderedEvictor;->strategies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public sizeChanged(II)V
    .locals 5
    .parameter "oldSize"
    .parameter "newSize"

    .prologue
    .line 53
    sub-int v0, p2, p1

    .line 54
    .local v0, delta:I
    iget v3, p0, Lcom/amazon/topaz/internal/caching/OrderedEvictor;->totalCacheSize:I

    sub-int v4, p2, p1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/topaz/internal/caching/OrderedEvictor;->totalCacheSize:I

    .line 56
    if-lez v0, :cond_2

    .line 59
    :cond_0
    :goto_0
    iget v3, p0, Lcom/amazon/topaz/internal/caching/OrderedEvictor;->totalCacheSize:I

    iget v4, p0, Lcom/amazon/topaz/internal/caching/OrderedEvictor;->maxTotalCacheSize:I

    if-le v3, v4, :cond_2

    .line 61
    iget-object v3, p0, Lcom/amazon/topaz/internal/caching/OrderedEvictor;->strategies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 62
    .local v1, iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/topaz/internal/caching/Evictor$EvictionStrategy;

    .line 65
    .local v2, strategy:Lcom/amazon/topaz/internal/caching/Evictor$EvictionStrategy;
    invoke-interface {v2}, Lcom/amazon/topaz/internal/caching/Evictor$EvictionStrategy;->canEvict()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    invoke-interface {v2}, Lcom/amazon/topaz/internal/caching/Evictor$EvictionStrategy;->evictOne()V

    goto :goto_0

    .line 74
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v2           #strategy:Lcom/amazon/topaz/internal/caching/Evictor$EvictionStrategy;
    :cond_2
    return-void
.end method
