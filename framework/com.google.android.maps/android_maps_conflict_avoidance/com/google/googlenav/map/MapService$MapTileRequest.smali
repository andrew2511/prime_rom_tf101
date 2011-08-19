.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;
.source "MapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapTileRequest"
.end annotation


# instance fields
.field private closed:Z

.field private isForeground:Z

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

.field private tilePriorityList:Ljava/util/Vector;

.field private tileSchedule:Ljava/util/Vector;


# direct methods
.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;B)V
    .registers 4
    .parameter
    .parameter "flags"

    .prologue
    .line 1393
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    .line 1394
    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestType:I
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;-><init>(IB)V

    .line 1370
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    .line 1378
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    .line 1391
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->isForeground:Z

    .line 1395
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->closed:Z

    .line 1396
    return-void
.end method


# virtual methods
.method protected handleEndOfResponse(I)V
    .registers 4
    .parameter "tileIndex"

    .prologue
    .line 1483
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1484
    .local v0, skippedTiles:Ljava/util/Vector;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-static {v1, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/util/ArrayUtil;->copyIntoVector(Ljava/util/Vector;ILjava/util/Vector;)V

    .line 1485
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    .line 1486
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$300(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 1487
    return-void
.end method

.method public isForeground()Z
    .registers 2

    .prologue
    .line 1443
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->isForeground:Z

    return v0
.end method

.method protected processDownloadedTile(ILandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)Z
    .registers 11
    .parameter "tileIndex"
    .parameter "location"
    .parameter "imageBytes"

    .prologue
    .line 1491
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    .line 1492
    .local v1, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    if-nez v1, :cond_c

    .line 1513
    :cond_a
    const/4 v3, 0x0

    :goto_b
    return v3

    .line 1494
    :cond_c
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1495
    invoke-virtual {v1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setData([B)V

    .line 1503
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLastAccessTime()J

    move-result-wide v3

    int-to-long v5, p1

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setLastAccessTime(J)V

    .line 1504
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->repaintListeners:Ljava/util/Vector;
    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$400(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 1505
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->repaintListeners:Ljava/util/Vector;
    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$400(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid_maps_conflict_avoidance/com/google/common/ui/RepaintListener;

    .line 1506
    .local v2, repaintListener:Landroid_maps_conflict_avoidance/com/google/common/ui/RepaintListener;
    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/ui/RepaintListener;->repaint()V

    .line 1504
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1511
    .end local v0           #i:I
    .end local v2           #repaintListener:Landroid_maps_conflict_avoidance/com/google/common/ui/RepaintListener;
    :cond_41
    const/4 v3, 0x1

    goto :goto_b
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .registers 3
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1472
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$210(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I

    .line 1473
    invoke-super {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->readResponseData(Ljava/io/DataInput;)Z

    .line 1474
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method declared-synchronized requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V
    .registers 8
    .parameter "mapTile"
    .parameter "priority"

    .prologue
    .line 1413
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->closed:Z

    if-eqz v2, :cond_10

    .line 1414
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Adding tiles to closed request!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 1413
    :catchall_d
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1417
    :cond_10
    :try_start_10
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    .line 1440
    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    .line 1426
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .local v0, i:I
    :goto_21
    if-lez v0, :cond_43

    .line 1427
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1428
    .local v1, p2:I
    if-lt p2, v1, :cond_57

    .line 1429
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v2, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1430
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1434
    .end local v1           #p2:I
    :cond_43
    if-nez v0, :cond_19

    .line 1435
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1436
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V
    :try_end_56
    .catchall {:try_start_1b .. :try_end_56} :catchall_d

    goto :goto_19

    .line 1426
    .restart local v1       #p2:I
    :cond_57
    add-int/lit8 v0, v0, -0x1

    goto :goto_21
.end method

.method protected setTileEditionAndTextSize(II)V
    .registers 4
    .parameter "tileEdition"
    .parameter "textSize"

    .prologue
    .line 1478
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setTileEditionAndTextSize(II)V

    .line 1479
    return-void
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .registers 5
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1451
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$208(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I

    .line 1454
    monitor-enter p0

    .line 1455
    const/4 v2, 0x1

    :try_start_7
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->closed:Z

    .line 1456
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_2f

    .line 1460
    const/4 v2, 0x0

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tilePriorityList:Ljava/util/Vector;

    .line 1463
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 1464
    .local v1, tileList:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 1465
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->tileSchedule:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1464
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1456
    .end local v0           #i:I
    .end local v1           #tileList:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v2

    .line 1468
    .restart local v0       #i:I
    .restart local v1       #tileList:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_32
    invoke-virtual {p0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->writeRequestForTiles([Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Ljava/io/DataOutput;)V

    .line 1469
    return-void
.end method
