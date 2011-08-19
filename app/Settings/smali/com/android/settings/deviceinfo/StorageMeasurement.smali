.class public Lcom/android/settings/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageMeasurement$1;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field private static sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/storage/StorageVolume;",
            "Lcom/android/settings/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppsSize:J

.field private mAvailSize:J

.field private mDownloadsSize:J

.field mFileInfoForMisc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private final mIsPrimary:Z

.field private mMediaSizes:[J

.field private mMiscSize:J

.field private volatile mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const-string v0, "StorageMeasurement"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 84
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V
    .locals 3
    .parameter "context"
    .parameter "storageVolume"
    .parameter "isPrimary"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    .line 112
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 113
    iput-boolean p3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    .line 116
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 119
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/StorageMeasurement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/StorageMeasurement;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/StorageMeasurement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->sendExactUpdate()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAppsSize:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$814(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide p1
.end method

.method static synthetic access$914(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide v0
.end method

.method private getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 4
    .parameter "imcs"
    .parameter "dir"

    .prologue
    .line 526
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 529
    :goto_0
    return-wide v1

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "StorageMeasurement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read memory from default container service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings/deviceinfo/StorageMeasurement;
    .locals 2
    .parameter "context"
    .parameter "storageVolume"
    .parameter "isPrimary"

    .prologue
    .line 129
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-object v1, p0

    .line 135
    :goto_0
    return-object v1

    .line 132
    .restart local p0
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    .line 134
    .local v0, storageMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 135
    goto :goto_0
.end method

.method private measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 21
    .parameter "imcs"

    .prologue
    .line 538
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 539
    .local v20, top:Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    .line 540
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 541
    .local v17, files:[Ljava/io/File;
    if-nez v17, :cond_0

    .line 564
    :goto_0
    return-void

    .line 542
    :cond_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    .line 544
    .local v19, len:I
    const-wide/16 v7, 0x0

    .line 545
    .local v7, counter:J
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 546
    aget-object v3, v17, v18

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 547
    .local v4, path:Ljava/lang/String;
    sget-object v3, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 545
    :cond_1
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 550
    :cond_2
    aget-object v3, v17, v18

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 551
    aget-object v3, v17, v18

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 552
    .local v5, fileSize:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    move-object v9, v0

    new-instance v3, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v10, 0x1

    add-long v15, v7, v10

    .end local v7           #counter:J
    .local v15, counter:J
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-wide v9, v0

    add-long/2addr v9, v5

    move-wide v0, v9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-wide v7, v15

    .line 554
    .end local v15           #counter:J
    .restart local v7       #counter:J
    goto :goto_2

    .end local v5           #fileSize:J
    :cond_3
    aget-object v3, v17, v18

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v11

    .line 556
    .local v11, dirSize:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    move-object v3, v0

    new-instance v9, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v13, 0x1

    add-long v15, v7, v13

    .end local v7           #counter:J
    .restart local v15       #counter:J
    move-object v10, v4

    move-wide v13, v7

    invoke-direct/range {v9 .. v14}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-wide v9, v0

    add-long/2addr v9, v11

    move-wide v0, v9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-wide v7, v15

    .end local v15           #counter:J
    .restart local v7       #counter:J
    goto :goto_2

    .line 563
    .end local v4           #path:Ljava/lang/String;
    .end local v11           #dirSize:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    move-object v3, v0

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private sendExactUpdate()V
    .locals 5

    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    .line 176
    .local v1, receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v1, :cond_2

    .line 177
    sget-boolean v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v2, :cond_0

    .line 178
    const-string v2, "StorageMeasurement"

    const-string v3, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    :goto_1
    return-void

    .line 175
    .end local v1           #receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0

    .line 183
    .restart local v1       #receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 185
    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 186
    const-string v2, "apps_used"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAppsSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 187
    const-string v2, "downloads_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 188
    const-string v2, "misc_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 189
    const-string v2, "media_sizes"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 191
    invoke-interface {v1, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateExact(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private sendInternalApproximateUpdate()V
    .locals 5

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    .line 163
    .local v1, receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v1, :cond_1

    .line 172
    :goto_1
    return-void

    .line 162
    .end local v1           #receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0

    .line 167
    .restart local v1       #receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 169
    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 171
    invoke-interface {v1, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateApproximate(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 153
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 155
    return-void
.end method

.method getMiscSize()J
    .locals 2

    .prologue
    .line 534
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 159
    return-void
.end method

.method isPrimary()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    return v0
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 149
    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 143
    :cond_1
    return-void
.end method
