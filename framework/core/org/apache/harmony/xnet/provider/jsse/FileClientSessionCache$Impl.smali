.class Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;
.super Ljava/lang/Object;
.source "FileClientSessionCache.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Impl"
.end annotation


# instance fields
.field accessOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final directory:Ljava/io/File;

.field initialFiles:[Ljava/lang/String;

.field size:I


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 6
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 86
    .local v0, exists:Z
    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 87
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists but is not a directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_2e
    if-eqz v0, :cond_60

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    if-nez v1, :cond_53

    .line 101
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists but cannot list contents."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_53
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 104
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    .line 113
    :goto_5d
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    .line 114
    return-void

    .line 107
    :cond_60
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_85

    .line 108
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " directory failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_85
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    goto :goto_5d
.end method

.method private delete(Ljava/io/File;)V
    .registers 6
    .parameter "file"

    .prologue
    .line 299
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 300
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    :cond_2b
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    .line 304
    return-void
.end method

.method private static fileName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "host"
    .parameter "port"

    .prologue
    .line 128
    if-nez p0, :cond_a

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private indexFiles()V
    .registers 11

    .prologue
    .line 269
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 270
    .local v4, initialFiles:[Ljava/lang/String;
    if-eqz v4, :cond_4f

    .line 271
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 275
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 276
    .local v2, diskOnly:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;>;"
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_f
    if-ge v3, v5, :cond_28

    aget-object v6, v0, v3

    .line 278
    .local v6, name:Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_25

    .line 279
    new-instance v8, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;

    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v8, v9, v6}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 283
    .end local v6           #name:Ljava/lang/String;
    :cond_28
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4f

    .line 286
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v7

    .line 287
    .local v7, newOrder:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;

    .line 288
    .local v1, cacheFile:Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;
    iget-object v8, v1, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 290
    .end local v1           #cacheFile:Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;
    :cond_48
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 292
    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 295
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #diskOnly:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #len$:I
    .end local v7           #newOrder:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    :cond_4f
    return-void
.end method

.method static logReadError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "host"
    .parameter "t"

    .prologue
    .line 184
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading session data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    return-void
.end method

.method static logWriteError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "host"
    .parameter "t"

    .prologue
    .line 307
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing session data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    return-void
.end method

.method private makeRoom()V
    .registers 5

    .prologue
    const/16 v3, 0xc

    .line 249
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    if-gt v2, v3, :cond_7

    .line 262
    :goto_6
    return-void

    .line 253
    :cond_7
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->indexFiles()V

    .line 256
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    sub-int v1, v2, v3

    .line 257
    .local v1, removals:I
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 259
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 261
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_18

    goto :goto_6
.end method

.method private static newAccessOrder()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getSessionData(Ljava/lang/String;I)[B
    .registers 14
    .parameter "host"
    .parameter "port"

    .prologue
    const/4 v10, 0x0

    .line 141
    monitor-enter p0

    :try_start_2
    invoke-static {p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 144
    .local v2, file:Ljava/io/File;
    if-nez v2, :cond_2d

    .line 146
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_7c

    if-nez v6, :cond_17

    move-object v6, v10

    .line 179
    :goto_15
    monitor-exit p0

    return-object v6

    .line 152
    :cond_17
    :try_start_17
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_21

    move-object v6, v10

    .line 154
    goto :goto_15

    .line 158
    :cond_21
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v2, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .restart local v2       #file:Ljava/io/File;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v6, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_7c

    .line 164
    :cond_2d
    :try_start_2d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_32} :catch_66

    .line 170
    .local v3, in:Ljava/io/FileInputStream;
    :try_start_32
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    .line 171
    .local v5, size:I
    new-array v0, v5, [B

    .line 172
    .local v0, data:[B
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 173
    sget-object v6, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read session for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_77
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_61} :catch_6d

    .line 179
    :try_start_61
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v6, v0

    goto :goto_15

    .line 165
    .end local v0           #data:[B
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v5           #size:I
    :catch_66
    move-exception v6

    move-object v1, v6

    .line 166
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-static {p1, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_7c

    move-object v6, v10

    .line 167
    goto :goto_15

    .line 175
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #in:Ljava/io/FileInputStream;
    :catch_6d
    move-exception v6

    move-object v1, v6

    .line 176
    .local v1, e:Ljava/io/IOException;
    :try_start_6f
    invoke-static {p1, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_77

    .line 179
    :try_start_72
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v6, v10

    goto :goto_15

    .end local v1           #e:Ljava/io/IOException;
    :catchall_77
    move-exception v6

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_7c

    .line 141
    .end local v2           #file:Ljava/io/File;
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #name:Ljava/lang/String;
    :catchall_7c
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized putSessionData(Ljavax/net/ssl/SSLSession;[B)V
    .registers 16
    .parameter "session"
    .parameter "sessionData"

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, host:Ljava/lang/String;
    if-nez p2, :cond_12

    .line 192
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "sessionData"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 190
    .end local v4           #host:Ljava/lang/String;
    :catchall_f
    move-exception v8

    monitor-exit p0

    throw v8

    .line 195
    .restart local v4       #host:Ljava/lang/String;
    :cond_12
    :try_start_12
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v8

    invoke-static {v4, v8}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, name:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v3, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_f

    move-result v2

    .line 203
    .local v2, existedBefore:Z
    :try_start_25
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_f
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2a} :catch_48

    .line 211
    .local v6, out:Ljava/io/FileOutputStream;
    if-nez v2, :cond_35

    .line 212
    :try_start_2c
    iget v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    .line 215
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->makeRoom()V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_f

    .line 218
    :cond_35
    const/4 v7, 0x0

    .line 220
    .local v7, writeSuccessful:Z
    :try_start_36
    invoke-virtual {v6, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_171
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_d5

    .line 221
    const/4 v7, 0x1

    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, closeSuccessful:Z
    :try_start_3b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_74

    .line 228
    const/4 v0, 0x1

    .line 232
    if-eqz v7, :cond_43

    if-nez v0, :cond_4e

    .line 234
    :cond_43
    :try_start_43
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_f

    .line 243
    .end local v0           #closeSuccessful:Z
    .end local v6           #out:Ljava/io/FileOutputStream;
    .end local v7           #writeSuccessful:Z
    :goto_46
    monitor-exit p0

    return-void

    .line 204
    :catch_48
    move-exception v8

    move-object v1, v8

    .line 206
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_4a
    invoke-static {v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_46

    .line 237
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #closeSuccessful:Z
    .restart local v6       #out:Ljava/io/FileOutputStream;
    .restart local v7       #writeSuccessful:Z
    :cond_4e
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stored session for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_4a .. :try_end_73} :catchall_f

    goto :goto_46

    .line 229
    :catch_74
    move-exception v1

    .line 230
    .local v1, e:Ljava/io/IOException;
    :try_start_75
    invoke-static {v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_a6

    .line 232
    if-eqz v7, :cond_7c

    if-nez v0, :cond_80

    .line 234
    :cond_7c
    :try_start_7c
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_46

    .line 237
    :cond_80
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stored session for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_46

    .line 232
    .end local v1           #e:Ljava/io/IOException;
    :catchall_a6
    move-exception v8

    if-eqz v7, :cond_ab

    if-nez v0, :cond_af

    .line 234
    :cond_ab
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 238
    :goto_ae
    throw v8

    .line 237
    :cond_af
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v9, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stored session for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_d4
    .catchall {:try_start_7c .. :try_end_d4} :catchall_f

    goto :goto_ae

    .line 222
    .end local v0           #closeSuccessful:Z
    :catch_d5
    move-exception v1

    .line 223
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_d6
    invoke-static {v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_171

    .line 225
    const/4 v0, 0x0

    .line 227
    .restart local v0       #closeSuccessful:Z
    :try_start_da
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_142
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_10e

    .line 228
    const/4 v0, 0x1

    .line 232
    if-eqz v7, :cond_e2

    if-nez v0, :cond_e7

    .line 234
    :cond_e2
    :try_start_e2
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto/16 :goto_46

    .line 237
    :cond_e7
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stored session for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_10c
    .catchall {:try_start_e2 .. :try_end_10c} :catchall_f

    goto/16 :goto_46

    .line 229
    :catch_10e
    move-exception v1

    .line 230
    :try_start_10f
    invoke-static {v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_112
    .catchall {:try_start_10f .. :try_end_112} :catchall_142

    .line 232
    if-eqz v7, :cond_116

    if-nez v0, :cond_11b

    .line 234
    :cond_116
    :try_start_116
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto/16 :goto_46

    .line 237
    :cond_11b
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stored session for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_46

    .line 232
    :catchall_142
    move-exception v8

    if-eqz v7, :cond_147

    if-nez v0, :cond_14b

    .line 234
    :cond_147
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 238
    :goto_14a
    throw v8

    .line 237
    :cond_14b
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v9, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stored session for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_170
    .catchall {:try_start_116 .. :try_end_170} :catchall_f

    goto :goto_14a

    .line 225
    .end local v0           #closeSuccessful:Z
    .end local v1           #e:Ljava/io/IOException;
    :catchall_171
    move-exception v8

    const/4 v0, 0x0

    .line 227
    .restart local v0       #closeSuccessful:Z
    :try_start_173
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_176
    .catchall {:try_start_173 .. :try_end_176} :catchall_1d7
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_1a5

    .line 228
    const/4 v0, 0x1

    .line 232
    if-eqz v7, :cond_17b

    if-nez v0, :cond_17f

    .line 234
    :cond_17b
    :try_start_17b
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 242
    :goto_17e
    throw v8

    .line 237
    :cond_17f
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v9, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stored session for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1a4
    .catchall {:try_start_17b .. :try_end_1a4} :catchall_f

    goto :goto_17e

    .line 229
    :catch_1a5
    move-exception v1

    .line 230
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_1a6
    invoke-static {v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a9
    .catchall {:try_start_1a6 .. :try_end_1a9} :catchall_1d7

    .line 232
    if-eqz v7, :cond_1ad

    if-nez v0, :cond_1b1

    .line 234
    :cond_1ad
    :try_start_1ad
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_17e

    .line 237
    :cond_1b1
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v9, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stored session for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_17e

    .line 232
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1d7
    move-exception v8

    if-eqz v7, :cond_1dc

    if-nez v0, :cond_1e0

    .line 234
    :cond_1dc
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 238
    :goto_1df
    throw v8

    .line 237
    :cond_1e0
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v9, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stored session for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_205
    .catchall {:try_start_1ad .. :try_end_205} :catchall_f

    goto :goto_1df
.end method
