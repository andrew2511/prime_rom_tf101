.class public Lcom/amazon/topaz/internal/caching/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;,
        Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;
    }
.end annotation


# static fields
.field public static final STORE_AS_IS:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;


# instance fields
.field private final cacheData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile observer:Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;

.field private final perfCounter:Lcom/amazon/foundation/internal/performance/CacheCounter;

.field private volatile size:I

.field private final wrappingStrategy:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/amazon/topaz/internal/caching/Cache$1;

    invoke-direct {v0}, Lcom/amazon/topaz/internal/caching/Cache$1;-><init>()V

    sput-object v0, Lcom/amazon/topaz/internal/caching/Cache;->STORE_AS_IS:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;)V
    .locals 2
    .parameter "wrappingStrategy"

    .prologue
    .line 110
    new-instance v0, Lcom/amazon/foundation/internal/performance/CacheCounter;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/CacheCounter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/topaz/internal/caching/Cache;-><init>(Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;Lcom/amazon/foundation/internal/performance/CacheCounter;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;Lcom/amazon/foundation/internal/performance/CacheCounter;)V
    .locals 1
    .parameter "wrappingStrategy"
    .parameter "perfCounter"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/amazon/topaz/internal/caching/Cache;->perfCounter:Lcom/amazon/foundation/internal/performance/CacheCounter;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->cacheData:Ljava/util/Map;

    .line 117
    iput-object p1, p0, Lcom/amazon/topaz/internal/caching/Cache;->wrappingStrategy:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->observer:Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;

    .line 120
    return-void
.end method


# virtual methods
.method public add(Lcom/amazon/topaz/internal/caching/Cacheable;)V
    .locals 4
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->cacheData:Ljava/util/Map;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/caching/Cache;->cacheData:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/topaz/internal/caching/Cacheable;->getCacheKey()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/topaz/internal/caching/Cache;->wrappingStrategy:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;

    invoke-interface {v3, p0, p1}, Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;->wrap(Lcom/amazon/topaz/internal/caching/Cache;Lcom/amazon/topaz/internal/caching/Cacheable;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget v1, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    .line 150
    iget v2, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    invoke-interface {p1, p0}, Lcom/amazon/topaz/internal/caching/Cacheable;->setSizeObserver(Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    .line 151
    iget v2, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    .line 152
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->observer:Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->observer:Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;

    invoke-interface {v0, v1, v2}, Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;->sizeChanged(II)V

    .line 159
    :cond_0
    return-void

    .line 152
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 230
    .line 231
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->cacheData:Ljava/util/Map;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/caching/Cache;->cacheData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 234
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 237
    iget-object v3, p0, Lcom/amazon/topaz/internal/caching/Cache;->cacheData:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 238
    iget-object v3, p0, Lcom/amazon/topaz/internal/caching/Cache;->wrappingStrategy:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;

    invoke-interface {v3, v2}, Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;->unwrap(Ljava/lang/Object;)Lcom/amazon/topaz/internal/caching/Cacheable;

    move-result-object v3

    .line 239
    iget-object v4, p0, Lcom/amazon/topaz/internal/caching/Cache;->wrappingStrategy:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;

    invoke-interface {v4, v2}, Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;->disposeWrapper(Ljava/lang/Object;)V

    .line 240
    if-eqz v3, :cond_0

    .line 242
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lcom/amazon/topaz/internal/caching/Cacheable;->setSizeObserver(Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;)I

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 246
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    .line 247
    const/4 v2, 0x0

    iput v2, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    .line 248
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->observer:Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->observer:Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;

    invoke-interface {v0, v1, v5}, Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;->sizeChanged(II)V

    .line 254
    :cond_2
    return-void
.end method

.method public entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->cacheData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Integer;)Lcom/amazon/topaz/internal/caching/Cacheable;
    .locals 3
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->cacheData:Ljava/util/Map;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/caching/Cache;->wrappingStrategy:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;

    iget-object v2, p0, Lcom/amazon/topaz/internal/caching/Cache;->cacheData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;->unwrap(Ljava/lang/Object;)Lcom/amazon/topaz/internal/caching/Cacheable;

    move-result-object v1

    .line 190
    monitor-exit v0

    return-object v1

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccesses()I
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->perfCounter:Lcom/amazon/foundation/internal/performance/CacheCounter;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/performance/CacheCounter;->getNumHits()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/topaz/internal/caching/Cache;->perfCounter:Lcom/amazon/foundation/internal/performance/CacheCounter;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/performance/CacheCounter;->getNumMisses()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getHits()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->perfCounter:Lcom/amazon/foundation/internal/performance/CacheCounter;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/performance/CacheCounter;->getNumHits()I

    move-result v0

    return v0
.end method

.method public getMisses()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->perfCounter:Lcom/amazon/foundation/internal/performance/CacheCounter;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/performance/CacheCounter;->getNumMisses()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    return v0
.end method

.method public keysIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->cacheData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Integer;)V
    .locals 5
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->cacheData:Ljava/util/Map;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/caching/Cache;->cacheData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lcom/amazon/topaz/internal/caching/Cache;->wrappingStrategy:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;

    invoke-interface {v2, v1}, Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;->unwrap(Ljava/lang/Object;)Lcom/amazon/topaz/internal/caching/Cacheable;

    move-result-object v2

    .line 207
    iget-object v3, p0, Lcom/amazon/topaz/internal/caching/Cache;->wrappingStrategy:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;

    invoke-interface {v3, v1}, Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;->disposeWrapper(Ljava/lang/Object;)V

    .line 208
    iget v1, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    .line 209
    if-eqz v2, :cond_0

    .line 211
    iget v3, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/amazon/topaz/internal/caching/Cacheable;->setSizeObserver(Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;)I

    move-result v2

    sub-int v2, v3, v2

    iput v2, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    .line 213
    :cond_0
    iget v2, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    .line 214
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->observer:Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->observer:Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;

    invoke-interface {v0, v1, v2}, Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;->sizeChanged(II)V

    .line 221
    :cond_1
    return-void

    .line 214
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized setObserver(Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->observer:Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/amazon/topaz/internal/caching/Cache;->observer:Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    monitor-exit p0

    return-void
.end method

.method public sizeChanged(Lcom/amazon/topaz/internal/caching/Cacheable;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->cacheData:Ljava/util/Map;

    monitor-enter v0

    .line 266
    :try_start_0
    iget v1, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    .line 267
    iget v2, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    .line 268
    iget v2, p0, Lcom/amazon/topaz/internal/caching/Cache;->size:I

    .line 269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->observer:Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/Cache;->observer:Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;

    invoke-interface {v0, v1, v2}, Lcom/amazon/topaz/internal/caching/Cache$SizeObserver;->sizeChanged(II)V

    .line 276
    :cond_0
    return-void

    .line 269
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
