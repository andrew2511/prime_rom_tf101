.class public Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;
.super Ljava/lang/Object;
.source "LFUEvictionStrategy.java"

# interfaces
.implements Lcom/amazon/topaz/internal/caching/Evictor$EvictionStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;
    }
.end annotation


# instance fields
.field private final records:Ljava/util/ArrayList;

.field private final storageStrategy:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;->records:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$1;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$1;-><init>(Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;->storageStrategy:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;->records:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public canEvict()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public evictOne()V
    .locals 5

    .prologue
    .line 144
    iget-object v3, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;->records:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;

    .line 145
    .local v1, minNode:Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;->records:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 147
    iget-object v3, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;->records:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;

    .line 148
    .local v2, node:Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;->getAccessCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;->getAccessCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 150
    move-object v1, v2

    .line 145
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v2           #node:Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;->getCache()Lcom/amazon/topaz/internal/caching/Cache;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;->getItem()Lcom/amazon/topaz/internal/caching/Cacheable;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/topaz/internal/caching/Cacheable;->getCacheKey()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/topaz/internal/caching/Cache;->remove(Ljava/lang/Integer;)V

    .line 155
    return-void
.end method

.method public getWrappingStrategy()Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;->storageStrategy:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;

    return-object v0
.end method
