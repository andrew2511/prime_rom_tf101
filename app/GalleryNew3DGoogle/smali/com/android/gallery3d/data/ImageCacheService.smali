.class public Lcom/android/gallery3d/data/ImageCacheService;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/ImageCacheService$ImageData;
    }
.end annotation


# instance fields
.field private mCache:Lcom/android/gallery3d/util/BlobCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "imgcache"

    const/16 v1, 0x1388

    const/high16 v2, 0xc80

    const/4 v3, 0x3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/util/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/util/BlobCache;

    .line 43
    return-void
.end method

.method private static isSameKey([B[B)Z
    .locals 5
    .parameter "key"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x0

    .line 93
    array-length v1, p0

    .line 94
    .local v1, n:I
    array-length v2, p1

    if-ge v2, v1, :cond_0

    move v2, v4

    .line 102
    :goto_0
    return v2

    .line 97
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 98
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_1

    move v2, v4

    .line 99
    goto :goto_0

    .line 97
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static makeKey(Lcom/android/gallery3d/data/Path;I)[B
    .locals 2
    .parameter "path"
    .parameter "type"

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getImageData(Lcom/android/gallery3d/data/Path;I)Lcom/android/gallery3d/data/ImageCacheService$ImageData;
    .locals 8
    .parameter "path"
    .parameter "type"

    .prologue
    const/4 v7, 0x0

    .line 55
    invoke-static {p1, p2}, Lcom/android/gallery3d/data/ImageCacheService;->makeKey(Lcom/android/gallery3d/data/Path;I)[B

    move-result-object v2

    .line 56
    .local v2, key:[B
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 58
    .local v0, cacheKey:J
    const/4 v4, 0x0

    .line 59
    .local v4, value:[B
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/util/BlobCache;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :try_start_1
    iget-object v6, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/util/BlobCache;

    invoke-virtual {v6, v0, v1}, Lcom/android/gallery3d/util/BlobCache;->lookup(J)[B

    move-result-object v4

    .line 61
    monitor-exit v5

    .line 62
    if-nez v4, :cond_1

    move-object v5, v7

    .line 70
    :goto_0
    return-object v5

    .line 61
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6

    .line 67
    :catch_0
    move-exception v5

    :cond_0
    move-object v5, v7

    .line 70
    goto :goto_0

    .line 63
    :cond_1
    invoke-static {v2, v4}, Lcom/android/gallery3d/data/ImageCacheService;->isSameKey([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    array-length v3, v2

    .line 65
    .local v3, offset:I
    new-instance v5, Lcom/android/gallery3d/data/ImageCacheService$ImageData;

    invoke-direct {v5, v4, v3}, Lcom/android/gallery3d/data/ImageCacheService$ImageData;-><init>([BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public putImageData(Lcom/android/gallery3d/data/Path;I[B)V
    .locals 7
    .parameter "path"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 74
    invoke-static {p1, p2}, Lcom/android/gallery3d/data/ImageCacheService;->makeKey(Lcom/android/gallery3d/data/Path;I)[B

    move-result-object v3

    .line 75
    .local v3, key:[B
    invoke-static {v3}, Lcom/android/gallery3d/util/Utils;->crc64Long([B)J

    move-result-wide v1

    .line 76
    .local v1, cacheKey:J
    array-length v4, v3

    array-length v5, p3

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 79
    iget-object v4, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/util/BlobCache;

    monitor-enter v4

    .line 81
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/util/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v1, v2, v6}, Lcom/android/gallery3d/util/BlobCache;->insert(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 82
    :catch_0
    move-exception v5

    goto :goto_0
.end method
