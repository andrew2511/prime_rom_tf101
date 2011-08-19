.class public Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;
.super Lcom/google/android/music/dl/cache/CacheStrategy;
.source "FillUpToLimitCacheStrategy.java"


# instance fields
.field private final mFileSys:Lcom/google/android/music/dl/FileSystem;

.field private final mMaxSizeToUse:J

.field private final mPercentToUse:F

.field private final mStore:Lcom/google/android/music/store/Store;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/FileSystem;Lcom/google/android/music/store/Store;FJ)V
    .locals 0
    .parameter "fileSystem"
    .parameter "store"
    .parameter "percentToUse"
    .parameter "maxSizeToUse"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheStrategy;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mStore:Lcom/google/android/music/store/Store;

    .line 28
    iput-object p1, p0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    .line 29
    iput-wide p4, p0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mMaxSizeToUse:J

    .line 30
    iput p3, p0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mPercentToUse:F

    .line 31
    return-void
.end method


# virtual methods
.method public findSpaceForCacheFile(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;)J
    .locals 18
    .parameter "order"
    .parameter "location"

    .prologue
    .line 36
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    move-object v14, v0

    sget-object v15, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne v14, v15, :cond_0

    .line 37
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Should not call findSpace for keep on files"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 40
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v6

    .line 41
    .local v6, freeSize:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mStore:Lcom/google/android/music/store/Store;

    move-object v14, v0

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Lcom/google/android/music/store/Store;->getTotalCachedSize(I)J

    move-result-wide v4

    .line 44
    .local v4, cacheUsedSize:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/music/dl/FileSystem;->getTotalSpace(Ljava/io/File;)J

    move-result-wide v12

    .line 46
    .local v12, totalSpace:J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadOrder;->length:J

    move-wide v14, v0

    add-long v8, v4, v14

    .line 48
    .local v8, newSpaceIfNoDelete:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mPercentToUse:F

    move v14, v0

    long-to-float v15, v12

    mul-float/2addr v14, v15

    float-to-long v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mMaxSizeToUse:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 52
    .local v2, allowedToUse:J
    cmp-long v14, v8, v2

    if-lez v14, :cond_1

    .line 53
    sub-long v10, v8, v2

    .line 58
    .local v10, requiredSpace:J
    :goto_0
    return-wide v10

    .line 55
    .end local v10           #requiredSpace:J
    :cond_1
    const-wide/16 v10, 0x0

    .restart local v10       #requiredSpace:J
    goto :goto_0
.end method
