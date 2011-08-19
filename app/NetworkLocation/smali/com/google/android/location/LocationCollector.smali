.class public Lcom/google/android/location/LocationCollector;
.super Ljava/lang/Object;
.source "LocationCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/LocationCollector$1;,
        Lcom/google/android/location/LocationCollector$CellUploads;
    }
.end annotation


# instance fields
.field private mBatteryChargedAndPlugged:Z

.field private mBatteryLevelIsHealthy:Z

.field private mCellState:Lcom/google/android/location/CellState;

.field private mCellUploads:Lcom/google/android/location/LocationCollector$CellUploads;

.field private mCurrentBurstNumSamples:I

.field private mCurrentBurstStartTime:J

.field private mLastBurstEndTime:J

.field private mLastBurstLocation:Landroid/location/Location;

.field private final mLastKnownLocation:Lcom/google/android/location/CollectedLocation;

.field private mLastUploadedLocation:Lcom/google/android/location/CollectedLocation;

.field private mMasfClient:Lcom/google/android/location/LocationMasfClient;

.field private mNetworkProviderIsEnabled:Z

.field private mNumBurstsFromLastLocation:I

.field private mWifiCurrentScanElapsedTime:J

.field private mWifiCurrentScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiCurrentScanTimestamp:J

.field private mWifiLastScanElapsedTime:J

.field private mWifiLastScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiUploadedWithoutLocation:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/LocationMasfClient;)V
    .locals 5
    .parameter "masfClient"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/google/android/location/LocationCollector;->mCellState:Lcom/google/android/location/CellState;

    .line 80
    new-instance v0, Lcom/google/android/location/LocationCollector$CellUploads;

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/LocationCollector$CellUploads;-><init>(Lcom/google/android/location/LocationCollector;Lcom/google/android/location/LocationCollector$1;)V

    iput-object v0, p0, Lcom/google/android/location/LocationCollector;->mCellUploads:Lcom/google/android/location/LocationCollector$CellUploads;

    .line 84
    iput-object v1, p0, Lcom/google/android/location/LocationCollector;->mLastUploadedLocation:Lcom/google/android/location/CollectedLocation;

    .line 87
    iput-object v1, p0, Lcom/google/android/location/LocationCollector;->mLastBurstLocation:Landroid/location/Location;

    .line 88
    iput-wide v2, p0, Lcom/google/android/location/LocationCollector;->mLastBurstEndTime:J

    .line 89
    iput-wide v2, p0, Lcom/google/android/location/LocationCollector;->mCurrentBurstStartTime:J

    .line 90
    iput v4, p0, Lcom/google/android/location/LocationCollector;->mCurrentBurstNumSamples:I

    .line 91
    iput v4, p0, Lcom/google/android/location/LocationCollector;->mNumBurstsFromLastLocation:I

    .line 94
    iput-object v1, p0, Lcom/google/android/location/LocationCollector;->mWifiLastScanResults:Ljava/util/List;

    .line 95
    iput-object v1, p0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanResults:Ljava/util/List;

    .line 96
    iput-wide v2, p0, Lcom/google/android/location/LocationCollector;->mWifiLastScanElapsedTime:J

    .line 97
    iput-wide v2, p0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanElapsedTime:J

    .line 98
    iput-wide v2, p0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanTimestamp:J

    .line 99
    iput-boolean v4, p0, Lcom/google/android/location/LocationCollector;->mWifiUploadedWithoutLocation:Z

    .line 102
    iput-boolean v4, p0, Lcom/google/android/location/LocationCollector;->mNetworkProviderIsEnabled:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/LocationCollector;->mBatteryLevelIsHealthy:Z

    .line 104
    iput-boolean v4, p0, Lcom/google/android/location/LocationCollector;->mBatteryChargedAndPlugged:Z

    .line 110
    new-instance v0, Lcom/google/android/location/CollectedLocation;

    new-instance v1, Landroid/location/Location;

    const-string v2, "gps"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const-wide/32 v2, -0xafc81

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/CollectedLocation;-><init>(Landroid/location/Location;JZ)V

    iput-object v0, p0, Lcom/google/android/location/LocationCollector;->mLastKnownLocation:Lcom/google/android/location/CollectedLocation;

    .line 112
    iput-object p1, p0, Lcom/google/android/location/LocationCollector;->mMasfClient:Lcom/google/android/location/LocationMasfClient;

    .line 113
    return-void
.end method

.method private declared-synchronized addToQueue(I)V
    .locals 18
    .parameter "trigger"

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 393
    .local v16, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mLastKnownLocation:Lcom/google/android/location/CollectedLocation;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/location/CollectedLocation;->getTimeStamp()J

    move-result-wide v3

    sub-long v3, v16, v3

    const-wide/32 v5, 0xafc80

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4

    const/4 v3, 0x1

    move v14, v3

    .line 398
    .local v14, includeLocation:Z
    :goto_0
    const/4 v15, 0x0

    .line 399
    .local v15, includeWifi:Z
    const/4 v3, 0x2

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/LocationCollector;->mWifiUploadedWithoutLocation:Z

    move v3, v0

    if-eqz v3, :cond_1

    if-eqz v14, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/LocationCollector;->wifiGpsInSync()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    :cond_0
    const/4 v15, 0x1

    .line 402
    if-nez v14, :cond_5

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/location/LocationCollector;->mWifiUploadedWithoutLocation:Z

    .line 403
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanElapsedTime:J

    move-wide v3, v0

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/LocationCollector;->mWifiLastScanElapsedTime:J

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mWifiLastScanResults:Ljava/util/List;

    move-object v3, v0

    if-nez v3, :cond_6

    .line 406
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/LocationCollector;->mWifiLastScanResults:Ljava/util/List;

    .line 410
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mWifiLastScanResults:Ljava/util/List;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanResults:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 416
    :cond_1
    const/4 v13, 0x0

    .line 418
    .local v13, includeCell:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mCellState:Lcom/google/android/location/CellState;

    move-object v3, v0

    if-eqz v3, :cond_3

    if-nez v15, :cond_2

    if-eqz v14, :cond_3

    .line 419
    :cond_2
    const/4 v13, 0x1

    .line 421
    if-nez v15, :cond_3

    if-eqz v14, :cond_3

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mCellUploads:Lcom/google/android/location/LocationCollector$CellUploads;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mCellState:Lcom/google/android/location/CellState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mLastKnownLocation:Lcom/google/android/location/CollectedLocation;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Lcom/google/android/location/LocationCollector$CellUploads;->access$100(Lcom/google/android/location/LocationCollector$CellUploads;Lcom/google/android/location/CellState;Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 423
    const/4 v13, 0x0

    .line 428
    :cond_3
    if-nez v14, :cond_7

    if-nez v15, :cond_7

    .line 429
    const-string v3, "NO UPLOAD: includeLocation=false, includeWifi=false"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/location/LocationCollector;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :goto_3
    monitor-exit p0

    return-void

    .line 393
    .end local v13           #includeCell:Z
    .end local v14           #includeLocation:Z
    .end local v15           #includeWifi:Z
    :cond_4
    const/4 v3, 0x0

    move v14, v3

    goto :goto_0

    .line 402
    .restart local v14       #includeLocation:Z
    .restart local v15       #includeWifi:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 408
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mWifiLastScanResults:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 389
    .end local v14           #includeLocation:Z
    .end local v15           #includeWifi:Z
    .end local v16           #now:J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 431
    .restart local v13       #includeCell:Z
    .restart local v14       #includeLocation:Z
    .restart local v15       #includeWifi:Z
    .restart local v16       #now:J
    :cond_7
    if-nez v13, :cond_8

    const/4 v3, 0x1

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_8

    .line 432
    :try_start_2
    const-string v3, "NO UPLOAD: includeCell=false"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/location/LocationCollector;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 435
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPLOAD: includeLocation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", includeWifi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", includeCell="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/location/LocationCollector;->log(Ljava/lang/String;)V

    .line 439
    if-eqz v14, :cond_9

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mLastUploadedLocation:Lcom/google/android/location/CollectedLocation;

    move-object v3, v0

    if-nez v3, :cond_c

    .line 442
    new-instance v3, Lcom/google/android/location/CollectedLocation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mLastKnownLocation:Lcom/google/android/location/CollectedLocation;

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/location/CollectedLocation;-><init>(Lcom/google/android/location/CollectedLocation;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/LocationCollector;->mLastUploadedLocation:Lcom/google/android/location/CollectedLocation;

    .line 446
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mLastUploadedLocation:Lcom/google/android/location/CollectedLocation;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/CollectedLocation;->setTimeStamp(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    :cond_9
    const/4 v10, 0x0

    .line 451
    .local v10, immediate:Z
    const/16 v3, 0x9

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_a

    const/16 v3, 0xa

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_b

    .line 453
    :cond_a
    const/4 v10, 0x1

    .line 457
    :cond_b
    if-eqz v13, :cond_d

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mCellState:Lcom/google/android/location/CellState;

    move-object v3, v0

    move-object v6, v3

    .line 458
    .local v6, cell:Lcom/google/android/location/CellState;
    :goto_5
    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanResults:Ljava/util/List;

    move-object v3, v0

    move-object v7, v3

    .line 459
    .local v7, wifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :goto_6
    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mLastUploadedLocation:Lcom/google/android/location/CollectedLocation;

    move-object v3, v0

    move-object v5, v3

    .line 461
    .local v5, loc:Lcom/google/android/location/CollectedLocation;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mMasfClient:Lcom/google/android/location/LocationMasfClient;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanTimestamp:J

    move-wide v8, v0

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/location/LocationMasfClient;->queueCollectionReport(ILcom/google/android/location/CollectedLocation;Lcom/google/android/location/CellState;Ljava/util/List;JZLcom/google/common/io/protocol/ProtoBuf;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 464
    .end local v5           #loc:Lcom/google/android/location/CollectedLocation;
    .end local v6           #cell:Lcom/google/android/location/CellState;
    .end local v7           #wifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 465
    .local v12, e:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "LocationCollector"

    const-string v4, "addToQueue got exception:"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 444
    .end local v10           #immediate:Z
    .end local v12           #e:Ljava/lang/Exception;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mLastUploadedLocation:Lcom/google/android/location/CollectedLocation;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCollector;->mLastKnownLocation:Lcom/google/android/location/CollectedLocation;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/android/location/CollectedLocation;->set(Lcom/google/android/location/CollectedLocation;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 457
    .restart local v10       #immediate:Z
    :cond_d
    const/4 v3, 0x0

    move-object v6, v3

    goto :goto_5

    .line 458
    .restart local v6       #cell:Lcom/google/android/location/CellState;
    :cond_e
    const/4 v3, 0x0

    move-object v7, v3

    goto :goto_6

    .line 459
    .restart local v7       #wifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_f
    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_7
.end method

.method private isCollectionEnabled()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/google/android/location/LocationCollector;->mBatteryLevelIsHealthy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/LocationCollector;->mNetworkProviderIsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 515
    const-string v0, "LocationCollector"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    const-string v0, "LocationCollector"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    return-void
.end method

.method private wifiGpsInSync()Z
    .locals 6

    .prologue
    .line 378
    iget-wide v2, p0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanElapsedTime:J

    iget-object v4, p0, Lcom/google/android/location/LocationCollector;->mLastKnownLocation:Lcom/google/android/location/CollectedLocation;

    invoke-virtual {v4}, Lcom/google/android/location/CollectedLocation;->getTimeStamp()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 379
    .local v0, delta:J
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xafc80

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized lastGpsLocation()Lcom/google/android/location/CollectedLocation;
    .locals 4

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/LocationCollector;->mLastKnownLocation:Lcom/google/android/location/CollectedLocation;

    invoke-virtual {v0}, Lcom/google/android/location/CollectedLocation;->getTimeStamp()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/location/CollectedLocation;

    iget-object v1, p0, Lcom/google/android/location/LocationCollector;->mLastKnownLocation:Lcom/google/android/location/CollectedLocation;

    invoke-direct {v0, v1}, Lcom/google/android/location/CollectedLocation;-><init>(Lcom/google/android/location/CollectedLocation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateBatteryState(IIZ)V
    .locals 8
    .parameter "scale"
    .parameter "level"
    .parameter "plugged"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 353
    if-nez p3, :cond_0

    int-to-double v0, p2

    const-wide v2, 0x3fc999999999999aL

    int-to-double v4, p1

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/location/LocationCollector;->mBatteryLevelIsHealthy:Z

    .line 354
    if-eqz p3, :cond_2

    int-to-double v0, p2

    const-wide v2, 0x3feccccccccccccdL

    int-to-double v4, p1

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    move v0, v7

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/location/LocationCollector;->mBatteryChargedAndPlugged:Z

    .line 355
    return-void

    :cond_1
    move v0, v6

    .line 353
    goto :goto_0

    :cond_2
    move v0, v6

    .line 354
    goto :goto_1
.end method

.method public declared-synchronized updateCellState(Lcom/google/android/location/CellState;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 132
    monitor-enter p0

    if-nez p1, :cond_0

    .line 133
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cell state is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 136
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/location/CellState;->isValid()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 150
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/location/LocationCollector;->mCellState:Lcom/google/android/location/CellState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/LocationCollector;->mCellState:Lcom/google/android/location/CellState;

    invoke-virtual {v0, p1}, Lcom/google/android/location/CellState;->equals(Lcom/google/android/location/CellState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_3
    iput-object p1, p0, Lcom/google/android/location/LocationCollector;->mCellState:Lcom/google/android/location/CellState;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCellState(): Updated to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/LocationCollector;->mCellState:Lcom/google/android/location/CellState;

    invoke-virtual {v1}, Lcom/google/android/location/CellState;->getCid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/LocationCollector;->mCellState:Lcom/google/android/location/CellState;

    invoke-virtual {v1}, Lcom/google/android/location/CellState;->getLac()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/location/LocationCollector;->log(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/google/android/location/LocationCollector;->isCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/LocationCollector;->addToQueue(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized updateLocation(Landroid/location/Location;Z)V
    .locals 13
    .parameter "location"
    .parameter "pluggedIn"

    .prologue
    const/16 v12, 0x19

    const-wide/16 v10, 0x0

    .line 160
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/LocationCollector;->isCollectionEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 266
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 164
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 167
    .local v1, now:J
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/google/android/location/LocationCollector;->mLastKnownLocation:Lcom/google/android/location/CollectedLocation;

    invoke-virtual {v8}, Lcom/google/android/location/CollectedLocation;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 168
    iget-object v6, p0, Lcom/google/android/location/LocationCollector;->mLastKnownLocation:Lcom/google/android/location/CollectedLocation;

    invoke-virtual {v6, p1, v1, v2, p2}, Lcom/google/android/location/CollectedLocation;->set(Landroid/location/Location;JZ)V

    .line 175
    const-wide/32 v3, 0xdbba0

    .line 176
    .local v3, restTime:J
    iget-boolean v6, p0, Lcom/google/android/location/LocationCollector;->mBatteryChargedAndPlugged:Z

    if-eqz v6, :cond_2

    .line 177
    const-wide/32 v3, 0x75300

    .line 182
    :cond_2
    iget-boolean v6, p0, Lcom/google/android/location/LocationCollector;->mWifiUploadedWithoutLocation:Z

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/google/android/location/LocationCollector;->wifiGpsInSync()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 183
    const/4 v5, 0x4

    .line 264
    .local v5, trigger:I
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateLocation(): Updated location with trigger "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/location/LocationCollector;->log(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0, v5}, Lcom/google/android/location/LocationCollector;->addToQueue(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    .end local v1           #now:J
    .end local v3           #restTime:J
    .end local v5           #trigger:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 170
    .restart local v1       #now:J
    :cond_3
    :try_start_2
    const-string v6, "location reported out of order"

    invoke-direct {p0, v6}, Lcom/google/android/location/LocationCollector;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    .restart local v3       #restTime:J
    :cond_4
    iget-wide v6, p0, Lcom/google/android/location/LocationCollector;->mLastBurstEndTime:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_5

    iget-wide v6, p0, Lcom/google/android/location/LocationCollector;->mLastBurstEndTime:J

    sub-long v6, v1, v6

    cmp-long v6, v6, v3

    if-lez v6, :cond_d

    .line 189
    :cond_5
    iget-object v6, p0, Lcom/google/android/location/LocationCollector;->mLastUploadedLocation:Lcom/google/android/location/CollectedLocation;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/android/location/LocationCollector;->mLastUploadedLocation:Lcom/google/android/location/CollectedLocation;

    invoke-virtual {v6}, Lcom/google/android/location/CollectedLocation;->getTimeStamp()J

    move-result-wide v6

    sub-long v6, v1, v6

    const-wide/16 v8, 0x2ee0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 194
    :cond_6
    const/4 v0, -0x1

    .line 195
    .local v0, distanceFromLastBurst:I
    iget-object v6, p0, Lcom/google/android/location/LocationCollector;->mLastBurstLocation:Landroid/location/Location;

    if-eqz v6, :cond_7

    .line 196
    iget-object v6, p0, Lcom/google/android/location/LocationCollector;->mLastBurstLocation:Landroid/location/Location;

    invoke-virtual {v6, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v6

    float-to-int v0, v6

    .line 199
    if-ge v0, v12, :cond_7

    iget v6, p0, Lcom/google/android/location/LocationCollector;->mNumBurstsFromLastLocation:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_7

    .line 201
    const-string v6, "NO UPLOAD: Too many bursts from same location."

    invoke-direct {p0, v6}, Lcom/google/android/location/LocationCollector;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :cond_7
    iget-wide v6, p0, Lcom/google/android/location/LocationCollector;->mCurrentBurstStartTime:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_8

    .line 208
    iput-wide v1, p0, Lcom/google/android/location/LocationCollector;->mCurrentBurstStartTime:J

    .line 209
    const/4 v6, 0x1

    iput v6, p0, Lcom/google/android/location/LocationCollector;->mCurrentBurstNumSamples:I

    .line 210
    const/4 v5, 0x6

    .restart local v5       #trigger:I
    goto :goto_1

    .line 212
    .end local v5           #trigger:I
    :cond_8
    iget-wide v6, p0, Lcom/google/android/location/LocationCollector;->mCurrentBurstStartTime:J

    sub-long v6, v1, v6

    cmp-long v6, v6, v3

    if-lez v6, :cond_9

    .line 214
    iput-wide v1, p0, Lcom/google/android/location/LocationCollector;->mCurrentBurstStartTime:J

    .line 215
    const/4 v6, 0x1

    iput v6, p0, Lcom/google/android/location/LocationCollector;->mCurrentBurstNumSamples:I

    .line 216
    const/4 v5, 0x7

    .restart local v5       #trigger:I
    goto :goto_1

    .line 218
    .end local v5           #trigger:I
    :cond_9
    iget v6, p0, Lcom/google/android/location/LocationCollector;->mCurrentBurstNumSamples:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_c

    .line 220
    iput-wide v1, p0, Lcom/google/android/location/LocationCollector;->mLastBurstEndTime:J

    .line 221
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/android/location/LocationCollector;->mCurrentBurstStartTime:J

    .line 222
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/location/LocationCollector;->mCurrentBurstNumSamples:I

    .line 225
    iget-object v6, p0, Lcom/google/android/location/LocationCollector;->mLastBurstLocation:Landroid/location/Location;

    if-nez v6, :cond_a

    .line 226
    new-instance v6, Landroid/location/Location;

    invoke-direct {v6, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v6, p0, Lcom/google/android/location/LocationCollector;->mLastBurstLocation:Landroid/location/Location;

    .line 227
    const/4 v6, 0x1

    iput v6, p0, Lcom/google/android/location/LocationCollector;->mNumBurstsFromLastLocation:I

    .line 228
    const/16 v5, 0x9

    .restart local v5       #trigger:I
    goto/16 :goto_1

    .line 232
    .end local v5           #trigger:I
    :cond_a
    const/4 v6, -0x1

    if-eq v0, v6, :cond_b

    if-ge v0, v12, :cond_b

    .line 236
    iget v6, p0, Lcom/google/android/location/LocationCollector;->mNumBurstsFromLastLocation:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/location/LocationCollector;->mNumBurstsFromLastLocation:I

    .line 237
    const/16 v5, 0xa

    .restart local v5       #trigger:I
    goto/16 :goto_1

    .line 241
    .end local v5           #trigger:I
    :cond_b
    iget-object v6, p0, Lcom/google/android/location/LocationCollector;->mLastBurstLocation:Landroid/location/Location;

    invoke-virtual {v6, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 242
    const/4 v6, 0x1

    iput v6, p0, Lcom/google/android/location/LocationCollector;->mNumBurstsFromLastLocation:I

    .line 243
    const/16 v5, 0x9

    .restart local v5       #trigger:I
    goto/16 :goto_1

    .line 249
    .end local v5           #trigger:I
    :cond_c
    iget v6, p0, Lcom/google/android/location/LocationCollector;->mCurrentBurstNumSamples:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/location/LocationCollector;->mCurrentBurstNumSamples:I

    .line 250
    const/16 v5, 0x8

    .restart local v5       #trigger:I
    goto/16 :goto_1

    .line 253
    .end local v0           #distanceFromLastBurst:I
    .end local v5           #trigger:I
    :cond_d
    iget-object v6, p0, Lcom/google/android/location/LocationCollector;->mLastUploadedLocation:Lcom/google/android/location/CollectedLocation;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/google/android/location/LocationCollector;->mLastUploadedLocation:Lcom/google/android/location/CollectedLocation;

    invoke-virtual {v6, p1}, Lcom/google/android/location/CollectedLocation;->distanceTo(Landroid/location/Location;)F

    move-result v6

    const/high16 v7, 0x4348

    cmpl-float v6, v6, v7

    if-lez v6, :cond_e

    .line 256
    const/16 v5, 0xb

    .restart local v5       #trigger:I
    goto/16 :goto_1

    .line 260
    .end local v5           #trigger:I
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NO UPLOAD: Not in burst or moving mode. Resting for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/location/LocationCollector;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public updateNetworkProviderStatus(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/google/android/location/LocationCollector;->mNetworkProviderIsEnabled:Z

    .line 342
    return-void
.end method

.method public declared-synchronized updateWifiScanResults(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, currentScanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/LocationCollector;->isCollectionEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 332
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 278
    :cond_1
    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 286
    .local v2, now:J
    iget-object v7, p0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanResults:Ljava/util/List;

    if-nez v7, :cond_2

    .line 287
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanResults:Ljava/util/List;

    .line 291
    :goto_1
    iget-object v7, p0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanResults:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 292
    iput-wide v2, p0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanElapsedTime:J

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanTimestamp:J

    .line 296
    iget-wide v7, p0, Lcom/google/android/location/LocationCollector;->mWifiLastScanElapsedTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    iget-wide v7, p0, Lcom/google/android/location/LocationCollector;->mWifiLastScanElapsedTime:J

    sub-long v7, v2, v7

    const-wide/32 v9, 0x927c0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_3

    .line 298
    const-string v7, "wifi scan buffered"

    invoke-direct {p0, v7}, Lcom/google/android/location/LocationCollector;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    .end local v2           #now:J
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 289
    .restart local v2       #now:J
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanResults:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 303
    :cond_3
    const/4 v6, 0x0

    .line 305
    .local v6, wifiHasChanged:Z
    iget-object v7, p0, Lcom/google/android/location/LocationCollector;->mWifiLastScanResults:Ljava/util/List;

    if-nez v7, :cond_5

    .line 306
    const/4 v6, 0x1

    .line 325
    :cond_4
    :goto_2
    if-nez v6, :cond_8

    .line 326
    const-string v7, "updateWifiScanResults(): Wifi results haven\'t changed much"

    invoke-direct {p0, v7}, Lcom/google/android/location/LocationCollector;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 310
    .local v4, previous:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 311
    .local v0, current:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/google/android/location/LocationCollector;->mWifiLastScanResults:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 312
    .local v5, s:Landroid/net/wifi/ScanResult;
    iget-object v7, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 314
    .end local v5           #s:Landroid/net/wifi/ScanResult;
    :cond_6
    iget-object v7, p0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanResults:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 315
    .restart local v5       #s:Landroid/net/wifi/ScanResult;
    iget-object v7, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 317
    .end local v5           #s:Landroid/net/wifi/ScanResult;
    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 319
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v7

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanResults:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-le v7, v8, :cond_4

    .line 321
    const/4 v6, 0x1

    goto :goto_2

    .line 330
    .end local v0           #current:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #previous:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateWifiScanResults(): Updated "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/location/LocationCollector;->mWifiCurrentScanResults:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " APs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/location/LocationCollector;->log(Ljava/lang/String;)V

    .line 331
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/google/android/location/LocationCollector;->addToQueue(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
