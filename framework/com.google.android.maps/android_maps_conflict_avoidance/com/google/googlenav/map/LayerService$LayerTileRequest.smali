.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.source "LayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayerTileRequest"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

.field private final tiles:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)V
    .registers 3
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;-><init>()V

    .line 345
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->closed:Z

    .line 347
    return-void
.end method


# virtual methods
.method public declared-synchronized addTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V
    .registers 4
    .parameter "layerTile"

    .prologue
    .line 357
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->closed:Z

    if-eqz v0, :cond_10

    .line 358
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Adding tiles to closed request!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 357
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 361
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 371
    :goto_19
    monitor-exit p0

    return-void

    .line 367
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_d

    goto :goto_19
.end method

.method public getRequestType()I
    .registers 2

    .prologue
    .line 350
    const/16 v0, 0x24

    return v0
.end method

.method public processLayerTile(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;Z)V
    .registers 16
    .parameter "tileInfo"
    .parameter "replace"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 472
    invoke-virtual {p1, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 473
    .local v5, mapTile:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v5, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v5, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    invoke-virtual {v5, v12}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    invoke-static {v9}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v4

    .line 480
    .local v4, location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    invoke-virtual {p1, v12}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 481
    .local v1, areasNum:I
    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    .line 482
    .local v0, areas:[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;
    sub-int v2, v1, v10

    .local v2, j:I
    :goto_29
    if-ltz v2, :cond_39

    .line 483
    new-instance v6, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    invoke-virtual {p1, v12, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    aput-object v6, v0, v2

    .line 482
    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    .line 487
    :cond_39
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;
    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    .line 488
    .local v3, layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    if-nez v3, :cond_7e

    .line 490
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    .end local v3           #layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    invoke-direct {v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    .line 497
    .restart local v3       #layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    :cond_4c
    :goto_4c
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_54

    if-eqz p2, :cond_8c

    .line 498
    :cond_54
    invoke-virtual {v3, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->setLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V

    .line 504
    :goto_57
    invoke-virtual {p1, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 505
    invoke-virtual {p1, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->setImage([B)V

    .line 508
    :cond_64
    monitor-enter p0

    .line 509
    :try_start_65
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;
    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;
    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_65 .. :try_end_78} :catchall_90

    .line 513
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->notifyLayerTilesDirty()V

    .line 514
    return-void

    .line 492
    :cond_7e
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_4c

    if-eqz p2, :cond_4c

    .line 493
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    .end local v3           #layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    invoke-direct {v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    .restart local v3       #layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    goto :goto_4c

    .line 500
    :cond_8c
    invoke-virtual {v3, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->updateLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V

    goto :goto_57

    .line 511
    :catchall_90
    move-exception v6

    :try_start_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v6
.end method

.method public processResponseHeader(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .registers 12
    .parameter "responseHeader"

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x1

    .line 444
    invoke-virtual {p1, v8}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    .line 447
    .local v6, layersNum:I
    sub-int v0, v6, v8

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_30

    .line 448
    invoke-virtual {p1, v8, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 452
    .local v5, layerResponse:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, layerId:Ljava/lang/String;
    invoke-virtual {v5, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    .line 460
    .local v4, layerParamsNum:I
    new-array v3, v4, [Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    .line 461
    .local v3, layerParams:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    sub-int v1, v4, v8

    .local v1, j:I
    :goto_1d
    if-ltz v1, :cond_28

    .line 462
    invoke-virtual {v5, v9, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    aput-object v7, v3, v1

    .line 461
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 466
    :cond_28
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    invoke-virtual {v7, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->notifyNewLayerInfo(Ljava/lang/String;[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    .line 447
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 468
    .end local v1           #j:I
    .end local v2           #layerId:Ljava/lang/String;
    .end local v3           #layerParams:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .end local v4           #layerParamsNum:I
    .end local v5           #layerResponse:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    :cond_30
    return-void
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .registers 10
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 422
    sget-object v5, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->LAYER_TILE_RESPONSE_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-static {v5, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->readProtoBufResponse(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 426
    .local v1, response:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 428
    .local v2, responseHeader:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->processResponseHeader(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    .line 431
    invoke-virtual {v1, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    .line 433
    .local v4, tilesNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    if-ge v0, v4, :cond_20

    .line 434
    invoke-virtual {v1, v7, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 436
    .local v3, tileInfo:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0, v3, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->processLayerTile(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;Z)V

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 439
    .end local v3           #tileInfo:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    :cond_20
    return v6
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .registers 16
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 374
    monitor-enter p0

    .line 375
    const/4 v10, 0x1

    :try_start_5
    iput-boolean v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->closed:Z

    .line 376
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_56

    .line 378
    new-instance v6, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    sget-object v10, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->LAYER_TILE_REQUEST_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-direct {v6, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    .line 379
    .local v6, request:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    const/16 v10, 0x100

    invoke-virtual {v6, v12, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 382
    const/4 v9, 0x1

    .line 383
    .local v9, zoomLevel:I
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v4

    .local v4, n:I
    :goto_1c
    if-ge v0, v4, :cond_59

    .line 384
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->tiles:Ljava/util/Vector;

    invoke-virtual {v10, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v7

    .line 385
    .local v7, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v10

    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v9

    .line 387
    new-instance v8, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    sget-object v10, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->MAP_TILE_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-direct {v8, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    .line 388
    .local v8, tileRequest:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    const/16 v10, 0x8

    invoke-virtual {v8, v12, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 390
    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v10

    invoke-virtual {v8, v13, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 391
    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v10

    invoke-virtual {v8, v11, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 392
    const/4 v10, 0x4

    invoke-virtual {v8, v10, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 395
    invoke-virtual {v6, v11, v8}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 376
    .end local v0           #i:I
    .end local v4           #n:I
    .end local v6           #request:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .end local v7           #tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .end local v8           #tileRequest:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .end local v9           #zoomLevel:I
    :catchall_56
    move-exception v10

    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v10

    .line 399
    .restart local v0       #i:I
    .restart local v4       #n:I
    .restart local v6       #request:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .restart local v9       #zoomLevel:I
    :cond_59
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;
    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    sub-int v0, v10, v12

    :goto_65
    if-ltz v0, :cond_a7

    .line 400
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;
    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    invoke-interface {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->getLayerInfo()Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;

    move-result-object v2

    .line 402
    .local v2, layerInfo:Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/4 v10, 0x0

    invoke-direct {v3, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    .line 403
    .local v3, layerRequest:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    const/16 v10, 0x15

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 405
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->getParameters()[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 406
    .local v5, parameters:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    if-eqz v5, :cond_9b

    .line 407
    array-length v10, v5

    sub-int v1, v10, v12

    .local v1, j:I
    :goto_8f
    if-ltz v1, :cond_9b

    .line 408
    const/16 v10, 0x16

    aget-object v11, v5, v1

    invoke-virtual {v3, v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    .line 407
    add-int/lit8 v1, v1, -0x1

    goto :goto_8f

    .line 413
    .end local v1           #j:I
    :cond_9b
    invoke-virtual {v2, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->isValidZoomLevel(I)Z

    move-result v10

    if-eqz v10, :cond_a4

    .line 414
    invoke-virtual {v6, v13, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    .line 399
    :cond_a4
    add-int/lit8 v0, v0, -0x1

    goto :goto_65

    .line 418
    .end local v2           #layerInfo:Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;
    .end local v3           #layerRequest:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .end local v5           #parameters:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    :cond_a7
    check-cast p1, Ljava/io/OutputStream;

    .end local p1
    invoke-virtual {v6, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 419
    return-void
.end method
