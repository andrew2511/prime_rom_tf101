.class Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;
.super Ljava/lang/Object;
.source "LFUEvictionStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field private accessCount:I

.field private final cache:Lcom/amazon/topaz/internal/caching/Cache;

.field private final item:Lcom/amazon/topaz/internal/caching/Cacheable;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/caching/Cache;Lcom/amazon/topaz/internal/caching/Cacheable;)V
    .locals 1
    .parameter "cache"
    .parameter "item"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;->cache:Lcom/amazon/topaz/internal/caching/Cache;

    .line 44
    iput-object p2, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;->item:Lcom/amazon/topaz/internal/caching/Cacheable;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;->accessCount:I

    .line 46
    return-void
.end method


# virtual methods
.method public getAccessCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;->accessCount:I

    return v0
.end method

.method public getCache()Lcom/amazon/topaz/internal/caching/Cache;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;->cache:Lcom/amazon/topaz/internal/caching/Cache;

    return-object v0
.end method

.method public getItem()Lcom/amazon/topaz/internal/caching/Cacheable;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;->item:Lcom/amazon/topaz/internal/caching/Cacheable;

    return-object v0
.end method

.method public incrementAccessCount()V
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;->accessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;->accessCount:I

    .line 81
    return-void
.end method
