.class public Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;
.super Lcom/ecareme/utils/cache/CacheRepository;
.source "WeakHashMapCacheRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/utils/cache/WeakHashMapCacheRepository$TimedObject;
    }
.end annotation

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
            "<TK;",
            "Lcom/ecareme/utils/cache/WeakHashMapCacheRepository",
            "<TK;TV;>.TimedObject;>;"
        }
    .end annotation
.end field

.field private duration:J

.field private lock:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;->log:Lorg/apache/log4j/Logger;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    .local p0, this:Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;,"Lcom/ecareme/utils/cache/WeakHashMapCacheRepository<TK;TV;>;"
    invoke-direct {p0}, Lcom/ecareme/utils/cache/CacheRepository;-><init>()V

    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;->cache:Ljava/util/Map;

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;->lock:[I

    .line 26
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;->duration:J

    .line 20
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 70
    .local p0, this:Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;,"Lcom/ecareme/utils/cache/WeakHashMapCacheRepository<TK;TV;>;"
    iget-object v0, p0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 71
    return-void
.end method

.method public getCache(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;,"Lcom/ecareme/utils/cache/WeakHashMapCacheRepository<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository$TimedObject;

    .line 57
    .local v0, timeObj:Lcom/ecareme/utils/cache/WeakHashMapCacheRepository$TimedObject;,"Lcom/ecareme/utils/cache/WeakHashMapCacheRepository<TK;TV;>.TimedObject;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository$TimedObject;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v1, 0x0

    .line 64
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository$TimedObject;->object:Ljava/lang/Object;

    goto :goto_0
.end method

.method public initialize(Ljava/util/Properties;)V
    .locals 5
    .parameter "props"

    .prologue
    .line 30
    .local p0, this:Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;,"Lcom/ecareme/utils/cache/WeakHashMapCacheRepository<TK;TV;>;"
    const-string v2, "duration"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, strDuration:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 35
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const v3, 0xea60

    mul-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;->duration:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/ecareme/utils/cache/CacheRepository;->initialize(Ljava/util/Properties;)V

    .line 43
    return-void

    .line 37
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 39
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unable to parse"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putCache(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;,"Lcom/ecareme/utils/cache/WeakHashMapCacheRepository<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;->lock:[I

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;->cache:Ljava/util/Map;

    new-instance v2, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository$TimedObject;

    iget-wide v3, p0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;->duration:J

    invoke-direct {v2, p0, v3, v4, p2}, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository$TimedObject;-><init>(Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;JLjava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    sget-object v0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;->log:Lorg/apache/log4j/Logger;

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

    .line 52
    return-void

    .line 47
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
