.class public abstract Lcom/nvidia/tegrazone/components/AbstractCache;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyT:",
        "Ljava/lang/Object;",
        "ValT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TKeyT;TValT;>;"
    }
.end annotation


# static fields
.field public static final DISK_CACHE_INTERNAL:I = 0x0

.field public static final DISK_CACHE_SDCARD:I = 0x1


# instance fields
.field private cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TKeyT;TValT;>;"
        }
    .end annotation
.end field

.field private diskCacheDirectory:Ljava/lang/String;

.field private isDiskCacheEnabled:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJI)V
    .locals 4
    .parameter "name"
    .parameter "initialCapacity"
    .parameter "expirationInMinutes"
    .parameter "maxConcurrentThreads"

    .prologue
    .line 92
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->name:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    .line 98
    .local v0, mapMaker:Lcom/google/common/collect/MapMaker;
    invoke-virtual {v0, p2}, Lcom/google/common/collect/MapMaker;->initialCapacity(I)Lcom/google/common/collect/MapMaker;

    .line 99
    const-wide/16 v1, 0x3c

    mul-long/2addr v1, p3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/MapMaker;->expiration(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    .line 100
    invoke-virtual {v0, p5}, Lcom/google/common/collect/MapMaker;->concurrencyLevel(I)Lcom/google/common/collect/MapMaker;

    .line 101
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->softValues()Lcom/google/common/collect/MapMaker;

    .line 102
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 103
    return-void
.end method

.method private cacheToDisk(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyT;TValT;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    .local p1, key:Ljava/lang/Object;,"TKeyT;"
    .local p2, value:Ljava/lang/Object;,"TValT;"
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/nvidia/tegrazone/components/AbstractCache;->getFileNameForKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 195
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 197
    .local v2, ostream:Ljava/io/BufferedOutputStream;
    invoke-virtual {p0, v2, p2}, Lcom/nvidia/tegrazone/components/AbstractCache;->writeValueToDisk(Ljava/io/BufferedOutputStream;Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    .end local v2           #ostream:Ljava/io/BufferedOutputStream;
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 202
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 204
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getFileForKey(Ljava/lang/Object;)Ljava/io/File;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyT;)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    .local p1, key:Ljava/lang/Object;,"TKeyT;"
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/nvidia/tegrazone/components/AbstractCache;->getFileNameForKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 4

    .prologue
    .line 319
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 321
    iget-boolean v2, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->isDiskCacheEnabled:Z

    if-eqz v2, :cond_0

    .line 322
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 323
    .local v0, cachedFiles:[Ljava/io/File;
    array-length v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 327
    .end local v0           #cachedFiles:[Ljava/io/File;
    :cond_0
    monitor-exit p0

    return-void

    .line 323
    .restart local v0       #cachedFiles:[Ljava/io/File;
    :cond_1
    :try_start_1
    aget-object v1, v0, v3

    .line 324
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    .end local v0           #cachedFiles:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 281
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->isDiskCacheEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nvidia/tegrazone/components/AbstractCache;->getFileForKey(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 285
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableDiskCache(Landroid/content/Context;I)Z
    .locals 7
    .parameter "context"
    .parameter "storageDevice"

    .prologue
    .line 116
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, appContext:Landroid/content/Context;
    const/4 v2, 0x0

    .line 119
    .local v2, rootDir:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 120
    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 123
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/cachefu/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 129
    iget-object v4, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->name:Ljava/lang/String;

    const-string v5, "\\s"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nvidia/tegrazone/utils/StringSupport;->underscore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    iput-object v3, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    .line 130
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, outFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    iput-boolean v3, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->isDiskCacheEnabled:Z

    .line 135
    iget-boolean v3, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->isDiskCacheEnabled:Z

    if-nez v3, :cond_1

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed creating disk cache directory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 141
    :goto_1
    iget-boolean v3, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->isDiskCacheEnabled:Z

    return v3

    .line 125
    .end local v1           #outFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 138
    .restart local v1       #outFile:Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "enabled write through to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TKeyT;TValT;>;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "elementKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TValT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    const/4 v6, 0x0

    .line 222
    monitor-enter p0

    move-object v2, p1

    .line 223
    .local v2, key:Ljava/lang/Object;,"TKeyT;"
    :try_start_0
    iget-object v4, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 224
    .local v3, value:Ljava/lang/Object;,"TValT;"
    if-eqz v3, :cond_0

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MEM cache hit for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .line 251
    :goto_0
    monitor-exit p0

    return-object v4

    .line 231
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/nvidia/tegrazone/components/AbstractCache;->getFileForKey(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    .line 232
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DISK cache hit for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/components/AbstractCache;->readValueFromDisk(Ljava/io/File;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 242
    if-nez v3, :cond_1

    move-object v4, v6

    .line 243
    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v6

    .line 240
    goto :goto_0

    .line 246
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    iget-object v4, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v3

    .line 247
    goto :goto_0

    :cond_2
    move-object v4, v6

    .line 251
    goto :goto_0

    .line 222
    .end local v1           #file:Ljava/io/File;
    .end local v3           #value:Ljava/lang/Object;,"TValT;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDiskCacheDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->diskCacheDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getFileNameForKey(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 315
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TKeyT;>;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyT;TValT;)TValT;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    .local p1, key:Ljava/lang/Object;,"TKeyT;"
    .local p2, value:Ljava/lang/Object;,"TValT;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->isDiskCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/nvidia/tegrazone/components/AbstractCache;->cacheToDisk(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TKeyT;+TValT;>;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    .local p1, t:Ljava/util/Map;,"Ljava/util/Map<+TKeyT;+TValT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract readValueFromDisk(Ljava/io/File;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TValT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TValT;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 292
    .local v1, value:Ljava/lang/Object;,"TValT;"
    iget-boolean v2, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->isDiskCacheEnabled:Z

    if-eqz v2, :cond_0

    .line 293
    invoke-direct {p0, p1}, Lcom/nvidia/tegrazone/components/AbstractCache;->getFileForKey(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    .line 294
    .local v0, cachedValue:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v0           #cachedValue:Ljava/io/File;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 290
    .end local v1           #value:Ljava/lang/Object;,"TValT;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 311
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TValT;>;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, this:Lcom/nvidia/tegrazone/components/AbstractCache;,"Lcom/nvidia/tegrazone/components/AbstractCache<TKeyT;TValT;>;"
    iget-object v0, p0, Lcom/nvidia/tegrazone/components/AbstractCache;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected abstract writeValueToDisk(Ljava/io/BufferedOutputStream;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedOutputStream;",
            "TValT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
