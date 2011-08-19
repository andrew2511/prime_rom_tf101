.class public Lcom/android/vending/cache/CacheManagerImpl;
.super Ljava/lang/Object;
.source "CacheManagerImpl.java"

# interfaces
.implements Lcom/android/vending/cache/CacheManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/cache/CacheManagerImpl$1;,
        Lcom/android/vending/cache/CacheManagerImpl$CacheCleanComparator;,
        Lcom/android/vending/cache/CacheManagerImpl$CacheFilenameFilter;,
        Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;,
        Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;
    }
.end annotation


# static fields
.field private static final sCacheCleanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCacheFilenameFilter:Ljava/io/FilenameFilter;


# instance fields
.field private mApproximateDiskCacheSize:I

.field private final mCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

.field private mCacheDeletes:J

.field private mCacheInvalidates:J

.field private mCacheWrites:J

.field private final mContext:Landroid/content/Context;

.field private mDiskCacheMisses:J

.field private mDiskCacheReads:J

.field private mDiskLock:Ljava/lang/Object;

.field private mMemoryCacheMisses:J

.field private mMemoryCacheReads:J

.field private mMemoryLock:Ljava/lang/Object;

.field private final mPriorityCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    new-instance v0, Lcom/android/vending/cache/CacheManagerImpl$CacheFilenameFilter;

    invoke-direct {v0, v1}, Lcom/android/vending/cache/CacheManagerImpl$CacheFilenameFilter;-><init>(Lcom/android/vending/cache/CacheManagerImpl$1;)V

    sput-object v0, Lcom/android/vending/cache/CacheManagerImpl;->sCacheFilenameFilter:Ljava/io/FilenameFilter;

    .line 91
    new-instance v0, Lcom/android/vending/cache/CacheManagerImpl$CacheCleanComparator;

    invoke-direct {v0, v1}, Lcom/android/vending/cache/CacheManagerImpl$CacheCleanComparator;-><init>(Lcom/android/vending/cache/CacheManagerImpl$1;)V

    sput-object v0, Lcom/android/vending/cache/CacheManagerImpl;->sCacheCleanComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    const/16 v1, 0x32

    invoke-direct {v0, p0, v1}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;-><init>(Lcom/android/vending/cache/CacheManagerImpl;I)V

    iput-object v0, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    .line 113
    new-instance v0, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;-><init>(Lcom/android/vending/cache/CacheManagerImpl;I)V

    iput-object v0, p0, Lcom/android/vending/cache/CacheManagerImpl;->mPriorityCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryLock:Ljava/lang/Object;

    .line 142
    iput-object p1, p0, Lcom/android/vending/cache/CacheManagerImpl;->mContext:Landroid/content/Context;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    .line 144
    return-void
.end method

.method static synthetic access$200(Ljava/io/File;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-static {p0}, Lcom/android/vending/cache/CacheManagerImpl;->isHighPriority(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static isHighPriority(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 378
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVMC_P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidFilenameChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 388
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    sparse-switch p0, :sswitch_data_0

    .line 407
    const/4 v0, 0x0

    .line 410
    :goto_0
    return v0

    :cond_0
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 389
    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x3d -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x5f -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method static sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"

    .prologue
    .line 422
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 423
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/vending/cache/CacheManagerImpl;->isValidFilenameChar(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    :goto_1
    return-object v1

    .line 422
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "U"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 9

    .prologue
    .line 322
    iget-object v5, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskLock:Ljava/lang/Object;

    monitor-enter v5

    .line 323
    :try_start_0
    iget-object v6, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 324
    :try_start_1
    iget-object v7, p0, Lcom/android/vending/cache/CacheManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    sget-object v8, Lcom/android/vending/cache/CacheManagerImpl;->sCacheFilenameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 325
    .local v1, cacheFiles:[Ljava/io/File;
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 326
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 325
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
    .end local v2           #file:Ljava/io/File;
    :cond_0
    iget-object v7, p0, Lcom/android/vending/cache/CacheManagerImpl;->mPriorityCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-virtual {v7}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->clear()V

    .line 329
    iget-object v7, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-virtual {v7}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->clear()V

    .line 330
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 332
    return-void

    .line 330
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #cacheFiles:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7

    .line 331
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6
.end method

.method public delete(Lcom/android/vending/cache/Cacheable;)V
    .locals 0
    .parameter "cacheable"

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->deleteFromDisk(Lcom/android/vending/cache/Cacheable;)V

    .line 316
    return-void
.end method

.method deleteFromDisk(Lcom/android/vending/cache/Cacheable;)V
    .locals 6
    .parameter "cacheable"

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 668
    :try_start_0
    iget-wide v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCacheDeletes:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCacheDeletes:J

    .line 669
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->getDiskCacheFile(Lcom/android/vending/cache/Cacheable;)Ljava/io/File;

    move-result-object v0

    .line 670
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 671
    iget v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    .line 672
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->deleteFromMemory(Lcom/android/vending/cache/Cacheable;)V

    .line 673
    monitor-exit v1

    .line 674
    return-void

    .line 673
    .end local v0           #cacheFile:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method deleteFromMemory(Lcom/android/vending/cache/Cacheable;)V
    .locals 3
    .parameter "cacheable"

    .prologue
    .line 682
    iget-object v1, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 683
    :try_start_0
    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mPriorityCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-virtual {v2, v0}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-virtual {v2, v0}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    monitor-exit v1

    .line 687
    return-void

    .line 686
    .end local v0           #key:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method ensureDiskCapacity()V
    .locals 6

    .prologue
    const/16 v5, 0x190

    .line 690
    iget v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    if-le v3, v5, :cond_1

    .line 692
    :cond_0
    iget-object v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    sget-object v4, Lcom/android/vending/cache/CacheManagerImpl;->sCacheFilenameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 693
    .local v0, cacheFiles:[Ljava/io/File;
    array-length v1, v0

    .line 694
    .local v1, cacheSize:I
    iput v1, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    .line 695
    if-ge v1, v5, :cond_2

    .line 708
    .end local v0           #cacheFiles:[Ljava/io/File;
    .end local v1           #cacheSize:I
    :cond_1
    return-void

    .line 699
    .restart local v0       #cacheFiles:[Ljava/io/File;
    .restart local v1       #cacheSize:I
    :cond_2
    sget-object v3, Lcom/android/vending/cache/CacheManagerImpl;->sCacheCleanComparator:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 700
    const/4 v2, 0x0

    .line 701
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    iget v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_1

    .line 703
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 704
    iget v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    .line 702
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public get(Lcom/android/vending/cache/Cacheable;Z)Lcom/android/vending/cache/CacheManager$CacheResult;
    .locals 11
    .parameter "cacheable"
    .parameter "checkDiskToo"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, entry:Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    const/4 v4, 0x0

    .line 164
    .local v4, triedDisk:Z
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->readFromMemory(Lcom/android/vending/cache/Cacheable;)Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    move-result-object v0

    .line 165
    if-nez v0, :cond_1

    .line 177
    instance-of v5, p1, Lcom/android/vending/model/GetImageRequest;

    if-nez v5, :cond_0

    .line 178
    const/4 p2, 0x1

    .line 181
    :cond_0
    if-eqz p2, :cond_1

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->readFromDisk(Lcom/android/vending/cache/Cacheable;)Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    move-result-object v0

    .line 183
    const/4 v4, 0x1

    .line 187
    :cond_1
    const/4 v3, 0x0

    .line 188
    .local v3, result:Lcom/android/vending/cache/CacheManager$CacheResult;
    if-eqz v0, :cond_2

    .line 189
    new-instance v3, Lcom/android/vending/cache/CacheManager$CacheResult;

    .end local v3           #result:Lcom/android/vending/cache/CacheManager$CacheResult;
    invoke-direct {v3}, Lcom/android/vending/cache/CacheManager$CacheResult;-><init>()V

    .line 190
    .restart local v3       #result:Lcom/android/vending/cache/CacheManager$CacheResult;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 191
    .local v1, now:J
    iget-object v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    iput-object v5, v3, Lcom/android/vending/cache/CacheManager$CacheResult;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    .line 192
    iget-object v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->serializable:Ljava/io/Serializable;

    iput-object v5, v3, Lcom/android/vending/cache/CacheManager$CacheResult;->serializable:Ljava/io/Serializable;

    .line 193
    iget-wide v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->expiryTime:J

    cmp-long v5, v5, v1

    if-gez v5, :cond_3

    move v5, v10

    :goto_0
    iput-boolean v5, v3, Lcom/android/vending/cache/CacheManager$CacheResult;->isExpired:Z

    .line 194
    iget-object v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->etag:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/vending/cache/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 195
    iget-wide v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->postponeRefreshExpiryTime:J

    cmp-long v5, v5, v1

    if-ltz v5, :cond_4

    iget-wide v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->postponeRefreshExpiryTime:J

    iget-wide v7, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->expiryTime:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    move v5, v10

    :goto_1
    iput-boolean v5, v3, Lcom/android/vending/cache/CacheManager$CacheResult;->canPostponeRefresh:Z

    .line 197
    iget-wide v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->modifiedTime:J

    iput-wide v5, v3, Lcom/android/vending/cache/CacheManager$CacheResult;->modifiedTime:J

    .line 198
    iget-object v5, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->account:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/vending/cache/CacheManager$CacheResult;->account:Ljava/lang/String;

    .line 216
    .end local v1           #now:J
    :cond_2
    return-object v3

    .restart local v1       #now:J
    :cond_3
    move v5, v9

    .line 193
    goto :goto_0

    :cond_4
    move v5, v9

    .line 195
    goto :goto_1
.end method

.method getDiskCacheFile(Lcom/android/vending/cache/Cacheable;)Ljava/io/File;
    .locals 3
    .parameter "cacheable"

    .prologue
    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AVMC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->isHighPriority()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "P"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/cache/CacheManagerImpl;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, sanitizedFilename:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 367
    .end local v0           #sanitizedFilename:Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public invalidate(Lcom/android/vending/cache/Cacheable;)Z
    .locals 1
    .parameter "cacheable"

    .prologue
    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/vending/cache/CacheManagerImpl;->invalidate(Lcom/android/vending/cache/Cacheable;Z)Z

    move-result v0

    return v0
.end method

.method public invalidate(Lcom/android/vending/cache/Cacheable;Z)Z
    .locals 1
    .parameter "cacheable"
    .parameter "allowPostponeRefresh"

    .prologue
    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/cache/CacheManagerImpl;->invalidateFromDisk(Lcom/android/vending/cache/Cacheable;Z)Z

    move-result v0

    return v0
.end method

.method invalidateFromDisk(Lcom/android/vending/cache/Cacheable;Z)Z
    .locals 7
    .parameter "cacheable"
    .parameter "allowPostponeRefresh"

    .prologue
    .line 642
    iget-object v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 643
    :try_start_0
    iget-wide v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCacheInvalidates:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCacheInvalidates:J

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->invalidateFromMemory(Lcom/android/vending/cache/Cacheable;)Z

    move-result v1

    .line 646
    .local v1, invalidated:Z
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->readFromDisk(Lcom/android/vending/cache/Cacheable;)Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    move-result-object v0

    .line 648
    .local v0, entry:Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    if-eqz v0, :cond_1

    .line 649
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->expiryTime:J

    .line 650
    if-nez p2, :cond_0

    .line 651
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->postponeRefreshExpiryTime:J

    .line 653
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/cache/CacheManagerImpl;->writeToDisk(Lcom/android/vending/cache/Cacheable;Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;)V

    .line 654
    const/4 v3, 0x1

    monitor-exit v2

    move v2, v3

    .line 657
    :goto_0
    return v2

    :cond_1
    monitor-exit v2

    move v2, v1

    goto :goto_0

    .line 658
    .end local v0           #entry:Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    .end local v1           #invalidated:Z
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method invalidateFromMemory(Lcom/android/vending/cache/Cacheable;)Z
    .locals 1
    .parameter "cacheable"

    .prologue
    .line 597
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/vending/cache/CacheManagerImpl;->invalidateFromMemory(Lcom/android/vending/cache/Cacheable;Z)Z

    move-result v0

    return v0
.end method

.method invalidateFromMemory(Lcom/android/vending/cache/Cacheable;Z)Z
    .locals 4
    .parameter "cacheable"
    .parameter "allowPostponeRefresh"

    .prologue
    .line 608
    iget-object v1, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 609
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->readFromMemory(Lcom/android/vending/cache/Cacheable;)Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    move-result-object v0

    .line 611
    .local v0, entry:Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    if-eqz v0, :cond_1

    .line 612
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->expiryTime:J

    .line 613
    if-nez p2, :cond_0

    .line 614
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->postponeRefreshExpiryTime:J

    .line 616
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/cache/CacheManagerImpl;->writeToMemory(Lcom/android/vending/cache/Cacheable;Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;)V

    .line 617
    const/4 v2, 0x1

    monitor-exit v1

    move v1, v2

    .line 620
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 621
    .end local v0           #entry:Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public put(Lcom/android/vending/cache/Cacheable;Lcom/google/common/io/protocol/ProtoBuf;Ljava/io/Serializable;Ljava/lang/String;II)V
    .locals 7
    .parameter "cacheable"
    .parameter "protoBuf"
    .parameter "serializable"
    .parameter "etag"
    .parameter "maxAge"
    .parameter "maxAgeConsumable"

    .prologue
    const-wide/16 v5, 0x3e8

    .line 253
    if-gtz p5, :cond_0

    .line 269
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    invoke-direct {v0}, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;-><init>()V

    .line 258
    .local v0, entry:Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    iput-object p2, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    .line 259
    iput-object p3, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->serializable:Ljava/io/Serializable;

    .line 260
    iput-object p4, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->etag:Ljava/lang/String;

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 262
    .local v1, now:J
    iput-wide v1, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->modifiedTime:J

    .line 263
    int-to-long v3, p5

    mul-long/2addr v3, v5

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->expiryTime:J

    .line 264
    int-to-long v3, p6

    mul-long/2addr v3, v5

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->postponeRefreshExpiryTime:J

    .line 265
    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->isHighPriority()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->highPriority:Z

    .line 266
    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->getAccount()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->account:Ljava/lang/String;

    .line 268
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/cache/CacheManagerImpl;->writeToDisk(Lcom/android/vending/cache/Cacheable;Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;)V

    goto :goto_0
.end method

.method readFromDisk(Lcom/android/vending/cache/Cacheable;)Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    .locals 18
    .parameter "cacheable"

    .prologue
    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskLock:Ljava/lang/Object;

    move-object v13, v0

    monitor-enter v13

    .line 437
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheReads:J

    move-wide v14, v0

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheReads:J

    .line 438
    invoke-virtual/range {p0 .. p1}, Lcom/android/vending/cache/CacheManagerImpl;->getDiskCacheFile(Lcom/android/vending/cache/Cacheable;)Ljava/io/File;

    move-result-object v3

    .line 439
    .local v3, cacheFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 440
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J

    move-wide v14, v0

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J

    .line 441
    const/4 v14, 0x0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v14

    .line 510
    :goto_0
    return-object v13

    .line 445
    :cond_0
    :try_start_1
    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v15, 0x400

    invoke-direct {v9, v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 447
    .local v9, in:Ljava/io/InputStream;
    new-instance v10, Ljava/io/ObjectInputStream;

    invoke-direct {v10, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 448
    .local v10, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v12

    .line 449
    .local v12, version:I
    const/16 v14, 0x9

    if-eq v12, v14, :cond_1

    .line 450
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid cache version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V

    .line 452
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 453
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J

    move-wide v14, v0

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 454
    const/4 v14, 0x0

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v13, v14

    goto :goto_0

    .line 457
    :cond_1
    :try_start_3
    new-instance v8, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    invoke-direct {v8}, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;-><init>()V

    .line 458
    .local v8, entry:Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v14

    iput-wide v14, v8, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->expiryTime:J

    .line 459
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->etag:Ljava/lang/String;

    .line 460
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v14

    iput-wide v14, v8, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->postponeRefreshExpiryTime:J

    .line 461
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v14

    iput-wide v14, v8, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->modifiedTime:J

    .line 463
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v4

    .line 464
    .local v4, containsAccount:Z
    if-eqz v4, :cond_2

    .line 465
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->account:Ljava/lang/String;

    .line 468
    :cond_2
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readBoolean()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    .line 469
    .local v6, containsSerializable:Z
    if-eqz v6, :cond_3

    .line 471
    :try_start_4
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #containsAccount:Z
    check-cast v4, Ljava/io/Serializable;

    iput-object v4, v8, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->serializable:Ljava/io/Serializable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 487
    :cond_3
    :try_start_5
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    .line 488
    .local v5, containsProto:Z
    if-eqz v5, :cond_4

    .line 489
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->getProtoBufType(Ljava/lang/String;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v11

    .line 491
    .local v11, protoType:Lcom/google/common/io/protocol/ProtoBufType;
    new-instance v14, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-direct {v14, v11}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v14, v8, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    .line 492
    iget-object v14, v8, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v14, v10}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;

    .line 494
    .end local v11           #protoType:Lcom/google/common/io/protocol/ProtoBufType;
    :cond_4
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/io/File;->setLastModified(J)Z

    .line 498
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/cache/CacheManagerImpl;->writeToMemory(Lcom/android/vending/cache/Cacheable;Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 499
    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v13, v8

    goto/16 :goto_0

    .line 472
    .end local v5           #containsProto:Z
    :catch_0
    move-exception v14

    move-object v7, v14

    .line 473
    .local v7, e:Ljava/lang/ClassNotFoundException;
    :try_start_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t read serializable object "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/android/vending/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V

    .line 476
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 477
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J

    move-wide v14, v0

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 478
    const/4 v14, 0x0

    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v13, v14

    goto/16 :goto_0

    .line 479
    .end local v7           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v14

    move-object v7, v14

    .line 480
    .local v7, e:Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V

    .line 481
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 482
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J

    move-wide v14, v0

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 483
    const/4 v14, 0x0

    :try_start_a
    monitor-exit v13

    move-object v13, v14

    goto/16 :goto_0

    .line 501
    .end local v6           #containsSerializable:Z
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #entry:Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    .end local v9           #in:Ljava/io/InputStream;
    .end local v10           #ois:Ljava/io/ObjectInputStream;
    .end local v12           #version:I
    :catch_2
    move-exception v14

    move-object v7, v14

    .line 502
    .local v7, e:Ljava/io/FileNotFoundException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t open cache file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for read: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 509
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J

    move-wide v14, v0

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vending/cache/CacheManagerImpl;->mDiskCacheMisses:J

    .line 510
    const/4 v14, 0x0

    monitor-exit v13

    move-object v13, v14

    goto/16 :goto_0

    .line 504
    :catch_3
    move-exception v14

    move-object v7, v14

    .line 505
    .local v7, e:Ljava/io/IOException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Reading cache file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 511
    .end local v3           #cacheFile:Ljava/io/File;
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v14
.end method

.method readFromMemory(Lcom/android/vending/cache/Cacheable;)Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    .locals 10
    .parameter "cacheable"

    .prologue
    const-wide/16 v8, 0x1

    const/4 v7, 0x0

    .line 341
    iget-object v4, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryLock:Ljava/lang/Object;

    monitor-enter v4

    .line 342
    :try_start_0
    iget-wide v5, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryCacheReads:J

    add-long/2addr v5, v8

    iput-wide v5, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryCacheReads:J

    .line 346
    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mPriorityCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-virtual {v3, v1}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 349
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    move-object v0, v3

    .line 350
    .local v0, entry:Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 351
    iget-object v3, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-virtual {v3, v1}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;"
    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 352
    .restart local v2       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;

    move-object v0, v3

    .line 354
    :cond_0
    :goto_1
    if-nez v0, :cond_3

    .line 355
    iget-wide v5, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryCacheMisses:J

    add-long/2addr v5, v8

    iput-wide v5, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryCacheMisses:J

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->deleteFromMemory(Lcom/android/vending/cache/Cacheable;)V

    .line 357
    monitor-exit v4

    move-object v3, v7

    .line 359
    :goto_2
    return-object v3

    .end local v0           #entry:Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    :cond_1
    move-object v0, v7

    .line 349
    goto :goto_0

    .restart local v0       #entry:Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    :cond_2
    move-object v0, v7

    .line 352
    goto :goto_1

    .line 359
    :cond_3
    monitor-exit v4

    move-object v3, v0

    goto :goto_2

    .line 360
    .end local v0           #entry:Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method writeToDisk(Lcom/android/vending/cache/Cacheable;Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;)V
    .locals 12
    .parameter "cacheable"
    .parameter "entry"

    .prologue
    .line 521
    iget-object v7, p0, Lcom/android/vending/cache/CacheManagerImpl;->mDiskLock:Ljava/lang/Object;

    monitor-enter v7

    .line 522
    :try_start_0
    iget-wide v8, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCacheWrites:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCacheWrites:J

    .line 523
    invoke-virtual {p0}, Lcom/android/vending/cache/CacheManagerImpl;->ensureDiskCapacity()V

    .line 525
    invoke-virtual {p0, p1}, Lcom/android/vending/cache/CacheManagerImpl;->getDiskCacheFile(Lcom/android/vending/cache/Cacheable;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 527
    .local v0, cacheFile:Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x400

    invoke-direct {v6, v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 529
    .local v6, out:Ljava/io/OutputStream;
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 530
    .local v5, oos:Ljava/io/ObjectOutputStream;
    const/16 v8, 0x9

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 531
    iget-wide v8, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->expiryTime:J

    invoke-virtual {v5, v8, v9}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 532
    iget-object v8, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->etag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 533
    iget-wide v8, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->postponeRefreshExpiryTime:J

    invoke-virtual {v5, v8, v9}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 534
    iget-wide v8, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->modifiedTime:J

    invoke-virtual {v5, v8, v9}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 536
    iget-object v8, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->account:Ljava/lang/String;

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    move v1, v8

    .line 537
    .local v1, containsAccount:Z
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 538
    if-eqz v1, :cond_0

    .line 539
    iget-object v8, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->account:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 542
    :cond_0
    iget-object v8, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->serializable:Ljava/io/Serializable;

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    move v3, v8

    .line 543
    .local v3, containsSerializable:Z
    :goto_1
    invoke-virtual {v5, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 544
    if-eqz v3, :cond_1

    .line 545
    iget-object v8, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->serializable:Ljava/io/Serializable;

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 548
    :cond_1
    iget-object v8, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    move v2, v8

    .line 549
    .local v2, containsProto:Z
    :goto_2
    invoke-virtual {v5, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 550
    if-eqz v2, :cond_2

    .line 551
    iget-object v8, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v8}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v8

    invoke-static {v8}, Lcom/android/vending/model/ApiDefsMessageTypesRegistry;->getProtoBufName(Lcom/google/common/io/protocol/ProtoBufType;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 553
    iget-object v8, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v8, v5}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 555
    :cond_2
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 556
    iget v8, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/vending/cache/CacheManagerImpl;->mApproximateDiskCacheSize:I

    .line 557
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/cache/CacheManagerImpl;->writeToMemory(Lcom/android/vending/cache/Cacheable;Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 566
    .end local v1           #containsAccount:Z
    .end local v2           #containsProto:Z
    .end local v3           #containsSerializable:Z
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .end local v6           #out:Ljava/io/OutputStream;
    :goto_3
    :try_start_2
    monitor-exit v7

    .line 567
    return-void

    .line 536
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    :cond_3
    const/4 v8, 0x0

    move v1, v8

    goto :goto_0

    .line 542
    .restart local v1       #containsAccount:Z
    :cond_4
    const/4 v8, 0x0

    move v3, v8

    goto :goto_1

    .line 548
    .restart local v3       #containsSerializable:Z
    :cond_5
    const/4 v8, 0x0

    move v2, v8

    goto :goto_2

    .line 559
    .end local v1           #containsAccount:Z
    .end local v3           #containsSerializable:Z
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .end local v6           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 560
    .local v4, e:Ljava/io/FileNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t open cache file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to write: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 566
    .end local v0           #cacheFile:Ljava/io/File;
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 562
    .restart local v0       #cacheFile:Ljava/io/File;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 563
    .local v4, e:Ljava/io/IOException;
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Writing cache file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method writeToMemory(Lcom/android/vending/cache/Cacheable;Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;)V
    .locals 4
    .parameter "cacheable"
    .parameter "entry"

    .prologue
    .line 576
    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->storeInMemory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/android/vending/cache/CacheManagerImpl;->mMemoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 581
    :try_start_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 582
    .local v0, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;"
    iget-boolean v2, p2, Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;->highPriority:Z

    if-eqz v2, :cond_1

    .line 583
    iget-object v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mPriorityCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :goto_1
    monitor-exit v1

    goto :goto_0

    .end local v0           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 585
    .restart local v0       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/vending/cache/CacheManagerImpl;->mCache:Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;

    invoke-interface {p1}, Lcom/android/vending/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
