.class public Lcom/ecareme/utils/cache/HashMapCacheRepository;
.super Lcom/ecareme/utils/cache/CacheRepository;
.source "HashMapCacheRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ecareme/utils/cache/CacheRepository",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/log4j/Logger;


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private lock:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/ecareme/utils/cache/HashMapCacheRepository;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/ecareme/utils/cache/HashMapCacheRepository;->log:Lorg/apache/log4j/Logger;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    .local p0, this:Lcom/ecareme/utils/cache/HashMapCacheRepository;,"Lcom/ecareme/utils/cache/HashMapCacheRepository<TK;TV;>;"
    invoke-direct {p0}, Lcom/ecareme/utils/cache/CacheRepository;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecareme/utils/cache/HashMapCacheRepository;->cache:Ljava/util/Map;

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ecareme/utils/cache/HashMapCacheRepository;->lock:[I

    .line 16
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/ecareme/utils/cache/HashMapCacheRepository;,"Lcom/ecareme/utils/cache/HashMapCacheRepository<TK;TV;>;"
    iget-object v0, p0, Lcom/ecareme/utils/cache/HashMapCacheRepository;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 35
    return-void
.end method

.method public getCache(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/ecareme/utils/cache/HashMapCacheRepository;,"Lcom/ecareme/utils/cache/HashMapCacheRepository<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/ecareme/utils/cache/HashMapCacheRepository;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putCache(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/ecareme/utils/cache/HashMapCacheRepository;,"Lcom/ecareme/utils/cache/HashMapCacheRepository<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/ecareme/utils/cache/HashMapCacheRepository;->lock:[I

    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/ecareme/utils/cache/HashMapCacheRepository;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    sget-object v0, Lcom/ecareme/utils/cache/HashMapCacheRepository;->log:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cache add. key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cache hash:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 30
    return-void

    .line 25
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
