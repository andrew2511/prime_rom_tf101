.class public Lcom/amazon/topaz/internal/caching/SimpleCacheable;
.super Ljava/lang/Object;
.source "SimpleCacheable.java"

# interfaces
.implements Lcom/amazon/topaz/internal/caching/Cacheable;


# instance fields
.field private final cacheKey:Ljava/lang/Integer;

.field private observer:Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;

.field private size:I


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0
    .parameter "cacheKey"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->cacheKey:Ljava/lang/Integer;

    .line 27
    return-void
.end method


# virtual methods
.method public getAllocSize()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->size:I

    return v0
.end method

.method public getCacheKey()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->cacheKey:Ljava/lang/Integer;

    return-object v0
.end method

.method public setSize(I)V
    .locals 2
    .parameter "newSize"

    .prologue
    .line 60
    iget v1, p0, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->size:I

    sub-int v0, p1, v1

    .line 61
    .local v0, sizeDelta:I
    iput p1, p0, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->size:I

    .line 62
    iget-object v1, p0, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->observer:Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->observer:Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;

    invoke-interface {v1, p0, v0}, Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;->sizeChanged(Lcom/amazon/topaz/internal/caching/Cacheable;I)V

    .line 66
    :cond_0
    return-void
.end method

.method public setSizeObserver(Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;)I
    .locals 1
    .parameter "observer"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->observer:Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;

    .line 51
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->getAllocSize()I

    move-result v0

    return v0
.end method
