.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
.super Ljava/lang/Object;
.source "LayerService.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/Hashtable;

.field private nextRefreshTime:J

.field private final observers:Ljava/util/Vector;

.field private refreshMillis:J

.field private volatile request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

.field private final requestedTiles:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    .line 104
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    .line 105
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    .line 106
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->refreshMillis:J

    .line 107
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->nextRefreshTime:J

    .line 108
    return-void
.end method

.method static synthetic access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    return-object v0
.end method

.method private isTileLocationValid(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z
    .registers 7
    .parameter "tile"

    .prologue
    const/4 v4, 0x1

    .line 321
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v2

    .line 322
    .local v2, zoomLevel:I
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_11
    if-ltz v0, :cond_2a

    .line 323
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->getLayerInfo()Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;

    move-result-object v1

    .line 327
    .local v1, layerInfo:Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;
    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->isValidZoomLevel(I)Z

    move-result v3

    if-eqz v3, :cond_27

    move v3, v4

    .line 331
    .end local v1           #layerInfo:Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;
    :goto_26
    return v3

    .line 322
    .restart local v1       #layerInfo:Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 331
    .end local v1           #layerInfo:Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_26
.end method

.method private declared-synchronized requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V
    .registers 4
    .parameter "tile"
    .parameter "layerTile"

    .prologue
    .line 265
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->isTileLocationValid(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 269
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_24

    .line 278
    :goto_c
    monitor-exit p0

    return-void

    .line 273
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    if-nez v0, :cond_19

    .line 274
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    .line 276
    :cond_19
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    invoke-virtual {v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->addTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V

    .line 277
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_24

    goto :goto_c

    .line 265
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearTileCache()V
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 119
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 120
    return-void
.end method

.method public close()V
    .registers 1

    .prologue
    .line 200
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    .line 201
    return-void
.end method

.method public declared-synchronized doCompact(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    .registers 4
    .parameter "tile"

    .prologue
    .line 299
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    .line 300
    .local v0, layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 301
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->compact()V

    .line 302
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 304
    :cond_19
    monitor-exit p0

    return-void

    .line 299
    .end local v0           #layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    .registers 15
    .parameter "tile"
    .parameter "fetch"

    .prologue
    .line 226
    monitor-enter p0

    :try_start_1
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v8, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    .line 229
    .local v2, layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    invoke-virtual {v8, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    .line 232
    .local v5, queuedTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    if-eqz v2, :cond_4d

    .line 235
    iget-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->refreshMillis:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4a

    .line 236
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v8

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v8

    invoke-interface {v8}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v3

    .line 237
    .local v3, now:J
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->getDataTime()J

    move-result-wide v6

    .line 238
    .local v6, tileDataTime:J
    sub-long v0, v3, v6

    .line 239
    .local v0, dataAge:J
    if-eqz p2, :cond_4a

    if-nez v5, :cond_4a

    const-wide/high16 v8, -0x8000

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4a

    iget-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->refreshMillis:J

    cmp-long v8, v0, v8

    if-lez v8, :cond_4a

    iget-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->nextRefreshTime:J

    cmp-long v8, v3, v8

    if-gtz v8, :cond_47

    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    if-eqz v8, :cond_4a

    .line 242
    :cond_47
    invoke-direct {p0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_5f

    .end local v0           #dataAge:J
    .end local v3           #now:J
    .end local v6           #tileDataTime:J
    :cond_4a
    move-object v8, v2

    .line 259
    :goto_4b
    monitor-exit p0

    return-object v8

    .line 249
    :cond_4d
    if-eqz v5, :cond_51

    move-object v8, v5

    .line 250
    goto :goto_4b

    .line 253
    :cond_51
    if-nez p2, :cond_55

    .line 254
    const/4 v8, 0x0

    goto :goto_4b

    .line 257
    :cond_55
    :try_start_55
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    .end local v2           #layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    invoke-direct {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    .line 258
    .restart local v2       #layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    invoke-direct {p0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_5f

    move-object v8, v2

    .line 259
    goto :goto_4b

    .line 226
    .end local v2           #layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    .end local v5           #queuedTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    :catchall_5f
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public handleOutOfMemory(Z)V
    .registers 2
    .parameter "warning"

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->clearTileCache()V

    .line 311
    return-void
.end method

.method public needFetchLayerTiles()Z
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public notifyLayerTilesDirty()V
    .registers 4

    .prologue
    .line 191
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_19

    .line 192
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->setLayerTilesDirty()V

    .line 191
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 194
    :cond_19
    return-void
.end method

.method public notifyNewLayerInfo(Ljava/lang/String;[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter "layerId"
    .parameter "params"

    .prologue
    .line 179
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_19

    .line 180
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    invoke-interface {v1, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->updateLayerInfo(Ljava/lang/String;[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    .line 179
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 183
    :cond_19
    return-void
.end method

.method public declared-synchronized requestTiles()V
    .registers 5

    .prologue
    .line 285
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    if-eqz v0, :cond_22

    .line 286
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    .line 288
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->refreshMillis:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->nextRefreshTime:J
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 291
    :cond_22
    monitor-exit p0

    return-void

    .line 285
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
