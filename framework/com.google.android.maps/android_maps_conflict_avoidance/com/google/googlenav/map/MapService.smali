.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;
.super Ljava/lang/Object;
.source "MapService.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;
    }
.end annotation


# instance fields
.field private final autoConfigCache:Z

.field private currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

.field volatile exitWorkThread:Z

.field final flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

.field private final indefiniteThreadLockObject:Ljava/lang/Object;

.field private lastMapMoveTime:J

.field private final layerImageTiles:Ljava/util/Vector;

.field private final layerServices:Ljava/util/Vector;

.field final mapCache:Ljava/util/Hashtable;

.field private volatile mapCacheLocked:Z

.field private maxCacheDataSize:I

.field private observer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

.field private outOfMemoryTime:J

.field private final repaintListeners:Ljava/util/Vector;

.field private requestType:I

.field private requestsOutstanding:I

.field private targetCacheDataSize:I

.field private final tempScaledImages:Ljava/util/Hashtable;

.field private final timedThreadLockObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(IIIILjava/lang/String;)V
    .registers 11
    .parameter "maxCacheDataSize"
    .parameter "targetCacheDataSize"
    .parameter "maxFlashSize"
    .parameter "maxRecordStores"
    .parameter "tileRecordStoreName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    .line 84
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerImageTiles:Ljava/util/Vector;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    .line 115
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    .line 162
    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    .line 165
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->repaintListeners:Ljava/util/Vector;

    .line 182
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->outOfMemoryTime:J

    .line 243
    const/16 v0, 0x1a

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestType:I

    .line 244
    if-ne p1, v3, :cond_6e

    .line 245
    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->autoConfigCache:Z

    .line 246
    const/16 v0, 0x61a8

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    .line 247
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    .line 259
    :goto_43
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    .line 260
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    .line 261
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    .line 265
    if-lez p3, :cond_7b

    .line 266
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;

    invoke-direct {v0, p0, p5, p3, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;Ljava/lang/String;II)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    .line 272
    :goto_5c
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->lastMapMoveTime:J

    .line 274
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$1;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$1;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)V

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->addPostStartupBgCallback(Ljava/lang/Runnable;)V

    .line 280
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->registerOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    .line 281
    return-void

    .line 249
    :cond_6e
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->autoConfigCache:Z

    .line 250
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    .line 252
    if-ne p2, v3, :cond_78

    .line 253
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    goto :goto_43

    .line 255
    :cond_78
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->targetCacheDataSize:I

    goto :goto_43

    .line 269
    :cond_7b
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    goto :goto_5c
.end method

.method static synthetic access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->startWorkThread()V

    return-void
.end method

.method static synthetic access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestType:I

    return v0
.end method

.method static synthetic access$208(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    return v0
.end method

.method static synthetic access$210(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    return v0
.end method

.method static synthetic access$300(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$400(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->repaintListeners:Ljava/util/Vector;

    return-object v0
.end method

.method private addMapEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    .registers 4
    .parameter "mapTile"

    .prologue
    .line 805
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v0

    .line 806
    .local v0, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    return-void
.end method

.method private clearScaledImages()V
    .registers 5

    .prologue
    .line 625
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v2

    .line 626
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    .line 627
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 629
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 630
    .local v0, enumeration:Ljava/util/Enumeration;
    :goto_11
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 631
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    .line 632
    .local v1, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->removeScaledImage()V

    goto :goto_11

    .line 635
    .end local v0           #enumeration:Ljava/util/Enumeration;
    .end local v1           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :catchall_21
    move-exception v3

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v3

    .line 634
    .restart local v0       #enumeration:Ljava/util/Enumeration;
    :cond_24
    const/4 v3, 0x0

    :try_start_25
    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    .line 635
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_21

    .line 636
    return-void
.end method

.method private createScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 574
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    move-result-wide v0

    .line 575
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->outOfMemoryTime:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    move-object v0, v7

    .line 621
    :goto_f
    return-object v0

    .line 580
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoomParent()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v2

    .line 581
    if-eqz v2, :cond_46

    .line 582
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v3

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomRatio(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v3

    .line 583
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v4, v5, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v4

    .line 584
    const/4 v5, 0x2

    if-ne v3, v5, :cond_46

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 587
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->createScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_39
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_39} :catch_3b

    move-result-object v0

    goto :goto_f

    .line 603
    :catch_3b
    move-exception v2

    .line 616
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->clearScaledImages()V

    .line 617
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->outOfMemoryTime:J

    .line 618
    const-string v0, "Map Service image scaling"

    invoke-static {v0, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_46
    move-object v0, v7

    goto :goto_f
.end method

.method private createScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 13
    .parameter "tile"
    .parameter "parentTile"
    .parameter "parentImage"

    .prologue
    const/16 v5, 0x100

    const/4 v6, 0x0

    const/16 v3, 0x80

    .line 741
    const/16 v7, 0x80

    .line 742
    .local v7, halfTile:I
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v0

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-ne v0, v4, :cond_29

    move v1, v6

    .line 743
    .local v1, xOffset:I
    :goto_14
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v0

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-ne v0, v4, :cond_2b

    move v2, v6

    .local v2, yOffset:I
    :goto_21
    move-object v0, p3

    move v4, v3

    move v6, v5

    .line 744
    invoke-interface/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->createScaledImage(IIIIII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v8

    .line 746
    .local v8, scaledImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    return-object v8

    .end local v1           #xOffset:I
    .end local v2           #yOffset:I
    .end local v8           #scaledImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_29
    move v1, v3

    .line 742
    goto :goto_14

    .restart local v1       #xOffset:I
    :cond_2b
    move v2, v3

    .line 743
    goto :goto_21
.end method

.method private doCompact(Z)V
    .registers 15
    .parameter "emergency"

    .prologue
    .line 774
    if-eqz p1, :cond_5e

    const-wide/16 v10, 0x7d0

    move-wide v7, v10

    .line 775
    .local v7, maxAge:J
    :goto_5
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v10

    .line 776
    const/4 v11, 0x1

    :try_start_9
    invoke-virtual {p0, v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_68

    .line 778
    :try_start_c
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v11

    invoke-virtual {v11}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v11

    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 779
    .local v0, currentTime:J
    iget-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .end local p1
    .local v5, keys:Ljava/util/Enumeration;
    :cond_1e
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 780
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 781
    .local v9, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v11, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    .line 782
    .local v6, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLastAccessTime()J

    move-result-wide v2

    .line 784
    .local v2, date:J
    add-long v11, v2, v7

    cmp-long v11, v11, v0

    if-gez v11, :cond_1e

    .line 785
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->compact()V

    .line 788
    iget-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int v4, v11, v12

    .local v4, i:I
    :goto_48
    if-ltz v4, :cond_1e

    .line 789
    iget-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v11, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    const/16 v11, 0x8

    invoke-static {v11, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->doCompact(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    :try_end_5b
    .catchall {:try_start_c .. :try_end_5b} :catchall_62

    .line 788
    add-int/lit8 v4, v4, -0x1

    goto :goto_48

    .line 774
    .end local v0           #currentTime:J
    .end local v2           #date:J
    .end local v4           #i:I
    .end local v5           #keys:Ljava/util/Enumeration;
    .end local v6           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v7           #maxAge:J
    .end local v9           #tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .restart local p1
    :cond_5e
    const-wide/16 v10, 0xfa0

    move-wide v7, v10

    goto :goto_5

    .line 795
    .end local p1
    .restart local v7       #maxAge:J
    :catchall_62
    move-exception v11

    const/4 v12, 0x0

    :try_start_64
    invoke-virtual {p0, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    throw v11

    .line 797
    :catchall_68
    move-exception v11

    monitor-exit v10
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_68

    throw v11

    .line 795
    .restart local v0       #currentTime:J
    .restart local v5       #keys:Ljava/util/Enumeration;
    :cond_6b
    const/4 v11, 0x0

    :try_start_6c
    invoke-virtual {p0, v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    .line 797
    monitor-exit v10
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_68

    .line 798
    return-void
.end method

.method private getOrCreateScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 4
    .parameter "tile"

    .prologue
    .line 557
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    .line 558
    .local v0, image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    if-nez v0, :cond_15

    .line 559
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->createScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_15

    .line 561
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :cond_15
    return-object v0
.end method

.method private static getRelativeTime()J
    .registers 2

    .prologue
    .line 1314
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getScaledImageFromCache(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 3
    .parameter "tile"

    .prologue
    .line 546
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    return-object p0
.end method

.method static getScore(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JJ)J
    .registers 7
    .parameter "tile"
    .parameter "currentTime"
    .parameter "lastAccessTime"

    .prologue
    .line 976
    sub-long v0, p1, p3

    return-wide v0
.end method

.method private getTempImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;I)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 4
    .parameter "tile"
    .parameter "scaleMode"

    .prologue
    .line 523
    packed-switch p2, :pswitch_data_10

    .line 532
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getOrCreateScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    .line 536
    .local v0, tempImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :goto_7
    return-object v0

    .line 525
    .end local v0           #tempImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :pswitch_8
    const/4 v0, 0x0

    .line 526
    .restart local v0       #tempImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    goto :goto_7

    .line 528
    .end local v0           #tempImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :pswitch_a
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getScaledImageFromCache(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    .line 529
    .restart local v0       #tempImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    goto :goto_7

    .line 523
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private partition([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;III)I
    .registers 15
    .parameter "scoreList"
    .parameter "list"
    .parameter "left"
    .parameter "right"
    .parameter "pivotIndex"

    .prologue
    .line 1034
    aget-wide v1, p1, p5

    .line 1035
    .local v1, pivotValue:J
    invoke-direct {p0, p1, p2, p5, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->swap([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    .line 1036
    move v3, p3

    .line 1037
    .local v3, store:I
    move v0, p3

    .local v0, i:I
    move v4, v3

    .end local v3           #store:I
    .local v4, store:I
    :goto_8
    if-ge v0, p4, :cond_19

    .line 1038
    aget-wide v5, p1, v0

    cmp-long v5, v5, v1

    if-ltz v5, :cond_28

    .line 1039
    add-int/lit8 v3, v4, 0x1

    .end local v4           #store:I
    .restart local v3       #store:I
    invoke-direct {p0, p1, p2, v0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->swap([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    .line 1037
    :goto_15
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3           #store:I
    .restart local v4       #store:I
    goto :goto_8

    .line 1043
    :cond_19
    aget-wide v5, p1, p4

    aget-wide v7, p1, v4

    cmp-long v5, v5, v7

    if-lez v5, :cond_26

    .line 1044
    invoke-direct {p0, p1, p2, p4, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->swap([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    move v5, v4

    .line 1047
    :goto_25
    return v5

    :cond_26
    move v5, p4

    goto :goto_25

    :cond_28
    move v3, v4

    .end local v4           #store:I
    .restart local v3       #store:I
    goto :goto_15
.end method

.method private qsort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V
    .registers 12
    .parameter "scoreList"
    .parameter "list"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1057
    if-le p4, p3, :cond_17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    .line 1059
    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->partition([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;III)I

    move-result v6

    .line 1060
    .local v6, newPivot:I
    const/4 v0, 0x1

    sub-int v0, v6, v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->qsort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    .line 1061
    add-int/lit8 v0, v6, 0x1

    invoke-direct {p0, p1, p2, v0, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->qsort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    .line 1063
    .end local v6           #newPivot:I
    :cond_17
    return-void
.end method

.method private queueTileRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V
    .registers 5
    .parameter "mapTile"
    .parameter "priority"

    .prologue
    .line 751
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    if-nez v0, :cond_13

    .line 754
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getFlags()B

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;B)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    .line 756
    :cond_13
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V

    .line 757
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setRequested(Z)V

    .line 758
    return-void
.end method

.method private setAutoTargetCacheSize()V
    .registers 2

    .prologue
    .line 302
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->targetCacheDataSize:I

    .line 303
    return-void
.end method

.method private sort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    .registers 6
    .parameter "scoreList"
    .parameter "list"

    .prologue
    .line 1066
    const/4 v0, 0x0

    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->qsort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    .line 1067
    return-void
.end method

.method private startWorkThread()V
    .registers 3

    .prologue
    .line 1336
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    if-eqz v0, :cond_15

    .line 1337
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    .line 1338
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MapService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1340
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1342
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1344
    :cond_15
    return-void
.end method

.method private stopWorkThread()V
    .registers 3

    .prologue
    .line 1321
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    if-nez v0, :cond_19

    .line 1322
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    .line 1323
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1324
    :try_start_a
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1325
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    .line 1326
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1327
    :try_start_13
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1328
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    .line 1330
    :cond_19
    return-void

    .line 1325
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1

    .line 1328
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private swap([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V
    .registers 10
    .parameter "scoreList"
    .parameter "list"
    .parameter "indexA"
    .parameter "indexB"

    .prologue
    .line 1013
    aget-object v2, p2, p4

    .line 1014
    .local v2, tempTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    aget-object v3, p2, p3

    aput-object v3, p2, p4

    .line 1015
    aput-object v2, p2, p3

    .line 1017
    aget-wide v0, p1, p4

    .line 1018
    .local v0, tempScore:J
    aget-wide v3, p1, p3

    aput-wide v3, p1, p4

    .line 1019
    aput-wide v0, p1, p3

    .line 1020
    return-void
.end method

.method private trimCache(I)V
    .registers 9
    .parameter "cacheSize"

    .prologue
    .line 852
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v4

    .line 854
    const/4 v5, 0x1

    :try_start_4
    iput-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    .line 857
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getSortedCacheList()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v3

    .line 859
    .local v3, sortedList:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v5, v3

    if-ge v0, v5, :cond_3d

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->targetCacheDataSize:I

    if-le p1, v5, :cond_3d

    .line 860
    aget-object v2, v3, v0

    .line 862
    .local v2, minKey:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    .line 865
    .local v1, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v5

    if-nez v5, :cond_28

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getRequested()Z

    move-result v5

    if-nez v5, :cond_32

    .line 866
    :cond_28
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getDataSize()I
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_35

    move-result v5

    sub-int/2addr p1, v5

    .line 859
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 879
    .end local v0           #i:I
    .end local v1           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v2           #minKey:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .end local v3           #sortedList:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :catchall_35
    move-exception v5

    const/4 v6, 0x0

    :try_start_37
    iput-boolean v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    throw v5

    .line 881
    :catchall_3a
    move-exception v5

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3a

    throw v5

    .line 879
    .restart local v0       #i:I
    .restart local v3       #sortedList:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_3d
    const/4 v5, 0x0

    :try_start_3e
    iput-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    .line 881
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3a

    .line 882
    return-void
.end method


# virtual methods
.method checkTrimCache()V
    .registers 10

    .prologue
    .line 814
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getCacheSize()I

    move-result v0

    .line 815
    .local v0, cacheSize:I
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    if-le v0, v5, :cond_40

    .line 816
    iget-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->autoConfigCache:Z

    if-eqz v5, :cond_41

    .line 818
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 821
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    int-to-long v7, v0

    add-long v1, v5, v7

    .line 823
    .local v1, memAvail:J
    const-wide/32 v5, 0x9c40

    sub-long v5, v1, v5

    long-to-int v5, v5

    div-int/lit8 v3, v5, 0x2

    .line 828
    .local v3, size:I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    long-to-int v4, v5

    .line 831
    .local v4, totalMemory:I
    div-int/lit8 v5, v4, 0x3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 833
    const/16 v5, 0x61a8

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    .line 835
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    .line 838
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    if-ge v0, v5, :cond_41

    .line 844
    .end local v1           #memAvail:J
    .end local v3           #size:I
    .end local v4           #totalMemory:I
    :cond_40
    :goto_40
    return-void

    .line 842
    :cond_41
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->trimCache(I)V

    goto :goto_40
.end method

.method close(Z)V
    .registers 6
    .parameter "saveState"

    .prologue
    .line 325
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    .line 326
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->stopWorkThread()V

    .line 327
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    invoke-interface {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->close(Z)V

    .line 330
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_14
    if-ltz v0, :cond_27

    .line 331
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    .line 332
    .local v1, layerService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->close()V

    .line 333
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    .line 330
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 335
    .end local v1           #layerService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
    :cond_27
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 336
    return-void
.end method

.method getCacheSize()I
    .registers 6

    .prologue
    .line 887
    const/4 v0, 0x0

    .line 888
    .local v0, cacheSize:I
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v3

    .line 889
    :try_start_4
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, entries:Ljava/util/Enumeration;
    :goto_a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 890
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    .line 891
    .local v2, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getDataSize()I

    move-result v4

    add-int/2addr v0, v4

    .line 892
    goto :goto_a

    .line 893
    .end local v2           #tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :cond_1c
    monitor-exit v3

    .line 894
    return v0

    .line 893
    .end local v1           #entries:Ljava/util/Enumeration;
    :catchall_1e
    move-exception v4

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1e

    throw v4
.end method

.method public getLayerTiles(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Ljava/util/Vector;
    .registers 9
    .parameter "tile"
    .parameter "fetch"

    .prologue
    .line 1109
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerImageTiles:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 1110
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_e
    if-ltz v0, :cond_3c

    .line 1111
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    .line 1112
    .local v1, layerService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->needFetchLayerTiles()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1113
    const/16 v4, 0x8

    invoke-static {v4, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v3

    .line 1114
    .local v3, location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    invoke-virtual {v1, v3, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    move-result-object v2

    .line 1118
    .local v2, layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    if-eqz v2, :cond_39

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1119
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerImageTiles:Ljava/util/Vector;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1110
    .end local v2           #layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    .end local v3           #location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1123
    .end local v1           #layerService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
    :cond_3c
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerImageTiles:Ljava/util/Vector;

    return-object v4
.end method

.method getMapCache()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    return-object v0
.end method

.method getRenderedImageCount()I
    .registers 4

    .prologue
    .line 955
    const/4 v1, 0x0

    .line 956
    .local v1, renderedImageCount:I
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .end local p0
    .local v0, entries:Ljava/util/Enumeration;
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 957
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasRenderedImage()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 961
    :cond_1c
    return v1
.end method

.method getSortedCacheList()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .registers 10

    .prologue
    .line 991
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v6

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v6

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 992
    .local v4, startTime:J
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    new-array v2, v6, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 993
    .local v2, list:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    new-array v3, v6, [J

    .line 994
    .local v3, scoreList:[J
    const/4 v1, 0x0

    .line 996
    .local v1, index:I
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 997
    .local v0, enumeration:Ljava/util/Enumeration;
    :goto_23
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 998
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    aput-object v6, v2, v1

    .line 999
    aget-object v6, v2, v1

    aget-object v7, v2, v1

    invoke-virtual {p0, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTileDate(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)J

    move-result-wide v7

    invoke-static {v6, v4, v5, v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getScore(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JJ)J

    move-result-wide v6

    aput-wide v6, v3, v1

    .line 1001
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1004
    :cond_42
    invoke-direct {p0, v3, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->sort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    .line 1006
    return-object v2
.end method

.method getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZIJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .registers 13
    .parameter "tile"
    .parameter "priority"
    .parameter "loadTile"
    .parameter "scaleMode"
    .parameter "accessTime"

    .prologue
    const/4 v5, 0x1

    .line 419
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    .line 421
    .local v0, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    const-wide/high16 v3, -0x8000

    cmp-long v3, p5, v3

    if-nez v3, :cond_1b

    .line 422
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v3

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide p5

    .line 425
    :cond_1b
    if-nez v0, :cond_89

    .line 427
    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    if-nez v3, :cond_80

    .line 428
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v3

    .line 429
    const/4 v4, 0x1

    :try_start_25
    invoke-virtual {p0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_7d

    .line 433
    :try_start_28
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    invoke-interface {v4, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->getMapTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v0

    .line 435
    if-nez v0, :cond_67

    .line 440
    invoke-direct {p0, p1, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTempImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;I)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v2

    .line 444
    .local v2, tempImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    if-eqz p3, :cond_5c

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->canDispatchNow()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 447
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-direct {v1, p1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V
    :try_end_45
    .catchall {:try_start_28 .. :try_end_45} :catchall_77

    .line 449
    .end local v0           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .local v1, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :try_start_45
    invoke-direct {p0, v1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->queueTileRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V

    .line 450
    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->addMapEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    .line 452
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMiss()V
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_ac

    move-object v0, v1

    .line 481
    .end local v1           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v2           #tempImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .restart local v0       #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :goto_53
    const/4 v4, 0x0

    :try_start_54
    invoke-virtual {p0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    .line 483
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_7d

    .line 501
    .end local p0
    :cond_58
    :goto_58
    invoke-virtual {v0, p5, p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setLastAccessTime(J)V

    .line 502
    return-object v0

    .line 455
    .restart local v2       #tempImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .restart local p0
    :cond_5c
    :try_start_5c
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    const/4 v4, 0x1

    invoke-direct {v1, p1, v2, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_77

    .line 462
    .end local v0           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v1       #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :try_start_62
    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->addMapEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_ac

    move-object v0, v1

    .end local v1           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v0       #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    goto :goto_53

    .line 469
    .end local v2           #tempImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_67
    if-nez p3, :cond_6c

    .line 470
    const-wide/16 v4, 0x4e20

    sub-long/2addr p5, v4

    .line 473
    :cond_6c
    :try_start_6c
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->addMapEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    .line 478
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHit()V
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_77

    goto :goto_53

    .line 481
    :catchall_77
    move-exception v4

    :goto_78
    const/4 v5, 0x0

    :try_start_79
    invoke-virtual {p0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    throw v4

    .line 483
    :catchall_7d
    move-exception v4

    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_7d

    throw v4

    .line 488
    :cond_80
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    .end local v0           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    const/4 p0, 0x0

    check-cast p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    .end local p0
    invoke-direct {v0, p1, p0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    .restart local v0       #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    goto :goto_58

    .line 490
    .restart local p0
    :cond_89
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v3

    if-nez v3, :cond_58

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getRequested()Z

    move-result v3

    if-nez v3, :cond_58

    if-eqz p3, :cond_58

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->canDispatchNow()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 495
    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->queueTileRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V

    .line 497
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMiss()V

    goto :goto_58

    .line 481
    .end local v0           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v1       #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v2       #tempImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :catchall_ac
    move-exception v4

    move-object v0, v1

    .end local v1           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v0       #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    goto :goto_78
.end method

.method public getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .registers 12
    .parameter "tile"
    .parameter "priority"
    .parameter "loadTile"
    .parameter "scaleOk"

    .prologue
    .line 361
    const-wide/high16 v5, -0x8000

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v0

    return-object v0
.end method

.method getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .registers 14
    .parameter "tile"
    .parameter "priority"
    .parameter "loadTile"
    .parameter "scaleOk"
    .parameter "accessTime"

    .prologue
    .line 390
    if-eqz p4, :cond_e

    const/4 v0, 0x2

    move v4, v0

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZIJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    move v4, v0

    goto :goto_4
.end method

.method getTileDate(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)J
    .registers 4
    .parameter "tile"

    .prologue
    .line 982
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLastAccessTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public handleOutOfMemory(Z)V
    .registers 6
    .parameter "warning"

    .prologue
    .line 1226
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->clearDataCache()V

    .line 1227
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->clearScaledImages()V

    .line 1229
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v1

    .line 1230
    const/16 v0, 0x1f40

    .line 1231
    .local v0, CACHE_SHRINK_SIZE:I
    const/4 v2, 0x1

    :try_start_c
    invoke-direct {p0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->doCompact(Z)V

    .line 1233
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->autoConfigCache:Z

    if-eqz v2, :cond_1f

    .line 1234
    const/16 v2, 0x61a8

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    .line 1235
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    .line 1242
    :goto_1a
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->checkTrimCache()V

    .line 1243
    monitor-exit v1

    .line 1244
    return-void

    .line 1237
    :cond_1f
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    const/16 v3, 0x1f40

    sub-int/2addr v2, v3

    const/16 v3, 0x61a8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    .line 1239
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    goto :goto_1a

    .line 1243
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw v2
.end method

.method mapChanged()V
    .registers 3

    .prologue
    .line 1218
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->lastMapMoveTime:J

    .line 1219
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->mapChanged()V

    .line 1220
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1221
    :try_start_e
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1222
    monitor-exit v0

    .line 1223
    return-void

    .line 1222
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v1
.end method

.method public notifyLayerTilesDirty()V
    .registers 4

    .prologue
    .line 1128
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->observer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    if-eqz v1, :cond_9

    .line 1129
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->observer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->setLayerTilesDirty()V

    .line 1131
    :cond_9
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_12
    if-ltz v0, :cond_22

    .line 1132
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->notifyLayerTilesDirty()V

    .line 1131
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 1134
    :cond_22
    return-void
.end method

.method pause()V
    .registers 1

    .prologue
    .line 1350
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->stopWorkThread()V

    .line 1351
    return-void
.end method

.method requestLayerTiles()V
    .registers 5

    .prologue
    .line 1088
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_1f

    .line 1089
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    .line 1090
    .local v1, layerService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->needFetchLayerTiles()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1091
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestTiles()V

    .line 1088
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1094
    .end local v1           #layerService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
    :cond_1f
    return-void
.end method

.method requestTiles()Z
    .registers 3

    .prologue
    .line 1073
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    if-eqz v1, :cond_12

    .line 1074
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    .line 1077
    .local v0, tempRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    .line 1078
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    .line 1079
    const/4 v1, 0x1

    .line 1081
    .end local v0           #tempRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public restoreBaseImagesIfNeeded()I
    .registers 9

    .prologue
    .line 909
    const/4 v3, 0x0

    .line 910
    .local v3, renderedImageCount:I
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v5

    .line 912
    const/4 v6, 0x1

    :try_start_5
    invoke-virtual {p0, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    .line 913
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRenderedImageCount()I

    move-result v3

    .line 914
    const/16 v6, 0x30

    if-le v3, v6, :cond_3d

    .line 919
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getSortedCacheList()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v4

    .line 922
    .local v4, sortedList:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    const/4 v0, 0x0

    .line 923
    .local v0, i:I
    :goto_15
    array-length v6, v4

    if-ge v0, v6, :cond_3d

    const/16 v6, 0x18

    if-le v3, v6, :cond_3d

    .line 924
    aget-object v2, v4, v0

    .line 925
    .local v2, minKey:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    .line 932
    .local v1, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasRenderedImage()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 933
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->restoreBaseImage()V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_34

    .line 934
    add-int/lit8 v3, v3, -0x1

    .line 923
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 944
    .end local v0           #i:I
    .end local v1           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v2           #minKey:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .end local v4           #sortedList:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :catchall_34
    move-exception v6

    const/4 v7, 0x0

    :try_start_36
    invoke-virtual {p0, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    throw v6

    .line 946
    :catchall_3a
    move-exception v6

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_3a

    throw v6

    .line 944
    :cond_3d
    const/4 v6, 0x0

    :try_start_3e
    invoke-virtual {p0, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    .line 946
    monitor-exit v5
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_3a

    .line 947
    return v3
.end method

.method resume()V
    .registers 1

    .prologue
    .line 1357
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->startWorkThread()V

    .line 1358
    return-void
.end method

.method public run()V
    .registers 16

    .prologue
    .line 1247
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    move-result-wide v0

    const-wide/16 v2, 0x835

    add-long/2addr v0, v2

    .line 1248
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    move-result-wide v2

    const-wide/16 v4, 0xc29

    add-long/2addr v2, v4

    move-wide v10, v2

    move-wide v2, v0

    move-wide v0, v10

    .line 1250
    :cond_11
    :goto_11
    iget-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    if-nez v4, :cond_85

    .line 1253
    :try_start_15
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    monitor-enter v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_6a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_18} :catch_80

    .line 1260
    :try_start_18
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    move-result-wide v5

    .line 1261
    cmp-long v7, v2, v0

    if-gez v7, :cond_7b

    move-wide v7, v2

    :goto_21
    sub-long v5, v7, v5

    .line 1263
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_2e

    .line 1264
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_7d
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_2e} :catch_88

    .line 1269
    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_7d

    .line 1271
    :try_start_2f
    iget-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    if-nez v4, :cond_11

    .line 1272
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    move-result-wide v4

    .line 1274
    cmp-long v6, v2, v4

    if-gez v6, :cond_41

    .line 1275
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->checkTrimCache()V

    .line 1276
    const-wide/16 v2, 0x835

    add-long/2addr v2, v4

    .line 1280
    :cond_41
    cmp-long v6, v0, v4

    if-gez v6, :cond_4c

    .line 1281
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->doCompact(Z)V

    .line 1282
    const-wide/16 v0, 0xc29

    add-long/2addr v0, v4

    .line 1290
    :cond_4c
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->writeCache()Z

    move-result v6

    if-nez v6, :cond_11

    iget-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->lastMapMoveTime:J

    const-wide/16 v8, 0xfa0

    add-long/2addr v6, v8

    cmp-long v4, v6, v4

    if-gez v4, :cond_11

    .line 1293
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    monitor-enter v4
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_60} :catch_6a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2f .. :try_end_60} :catch_80

    .line 1295
    :try_start_60
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_67
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_65} :catch_86

    .line 1299
    :goto_65
    :try_start_65
    monitor-exit v4

    goto :goto_11

    :catchall_67
    move-exception v5

    monitor-exit v4
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_67

    :try_start_69
    throw v5
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6a} :catch_6a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_69 .. :try_end_6a} :catch_80

    .line 1302
    :catch_6a
    move-exception v4

    move-object v10, v4

    move-wide v11, v0

    move-object v0, v10

    move-wide v13, v2

    move-wide v3, v13

    move-wide v1, v11

    .line 1303
    const-string v5, "MapService BG"

    invoke-static {v5, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v10, v1

    move-wide v0, v10

    move-wide v12, v3

    move-wide v2, v12

    .line 1307
    goto :goto_11

    :cond_7b
    move-wide v7, v0

    .line 1261
    goto :goto_21

    .line 1269
    :catchall_7d
    move-exception v5

    :try_start_7e
    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw v5
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_80} :catch_6a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7f .. :try_end_80} :catch_80

    .line 1304
    :catch_80
    move-exception v4

    .line 1306
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->handleOutOfMemory()V

    goto :goto_11

    .line 1311
    :cond_85
    return-void

    .line 1296
    :catch_86
    move-exception v5

    goto :goto_65

    .line 1266
    :catch_88
    move-exception v5

    goto :goto_2e
.end method

.method setMapCacheLocked(Z)V
    .registers 2
    .parameter "mapCacheLocked"

    .prologue
    .line 225
    iput-boolean p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    .line 226
    return-void
.end method

.method setTileEditionAndTextSize(II)V
    .registers 11
    .parameter "tileEdition"
    .parameter "textSize"

    .prologue
    .line 1190
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    invoke-interface {v5, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->setTileEditionAndTextSize(II)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 1191
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    monitor-enter v5

    .line 1195
    :try_start_b
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 1196
    .local v2, mapTiles:Ljava/util/Enumeration;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1197
    .local v4, toRemove:Ljava/util/Vector;
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 1198
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 1199
    .local v3, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    .line 1200
    .local v1, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1201
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_16

    .line 1209
    .end local v1           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v2           #mapTiles:Ljava/util/Enumeration;
    .end local v3           #tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .end local v4           #toRemove:Ljava/util/Vector;
    :catchall_34
    move-exception v6

    monitor-exit v5
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_34

    throw v6

    .line 1206
    .restart local v2       #mapTiles:Ljava/util/Enumeration;
    .restart local v4       #toRemove:Ljava/util/Vector;
    :cond_37
    const/4 v0, 0x0

    .local v0, i:I
    :goto_38
    :try_start_38
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v0, v6, :cond_4a

    .line 1207
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 1209
    :cond_4a
    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_38 .. :try_end_4b} :catchall_34

    .line 1211
    .end local v0           #i:I
    .end local v2           #mapTiles:Ljava/util/Enumeration;
    .end local v4           #toRemove:Ljava/util/Vector;
    :cond_4b
    return-void
.end method
