.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;
.super Ljava/lang/Object;
.source "MapBiller.java"


# instance fields
.field private lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

.field private listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

.field private previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 26
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    .line 27
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

    .line 31
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 32
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    return-void
.end method

.method private static isBillingRequiredForSatellite()Z
    .registers 2

    .prologue
    .line 147
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getSatType()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private sendBill(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V
    .registers 7
    .parameter "billPoint"
    .parameter "locationDisplayed"
    .parameter "routeDisplayed"
    .parameter "map"

    .prologue
    .line 129
    invoke-virtual {p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v0

    .line 131
    .local v0, mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 132
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    .line 133
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 134
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    .line 135
    invoke-static {p1, p2, p3, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->sendBillingPointToServer(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    .line 138
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

    if-eqz v1, :cond_20

    .line 139
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->listener:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;

    invoke-interface {v1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;->billingPointSent(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V

    .line 141
    :cond_20
    return-void
.end method

.method private static sendBillingPointToServer(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V
    .registers 12
    .parameter "billPoint"
    .parameter "locationDisplayed"
    .parameter "routeDisplayed"
    .parameter "map"

    .prologue
    const/4 v7, 0x0

    .line 155
    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v3

    .line 156
    .local v3, mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 157
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_f
    invoke-static {p0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->writePoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Ljava/io/DataOutput;)V

    .line 162
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v4

    invoke-static {v4, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->writePoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Ljava/io/DataOutput;)V

    .line 164
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 166
    invoke-virtual {p3, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLatitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 167
    invoke-virtual {p3, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLongitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 169
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 171
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_38} :catch_45

    .line 177
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addSimpleRequest(I[BZZ)V

    .line 179
    return-void

    .line 172
    :catch_45
    move-exception v4

    move-object v2, v4

    .line 174
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method doBilling(ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V
    .registers 22
    .parameter "locationDisplayed"
    .parameter "routeDisplayed"
    .parameter "map"

    .prologue
    .line 46
    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v9

    .line 47
    .local v9, mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;
    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isSatellite()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->isBillingRequiredForSatellite()Z

    move-result v14

    if-nez v14, :cond_11

    .line 123
    :cond_10
    :goto_10
    return-void

    .line 71
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-object v14, v0

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-object v14, v0

    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v15

    if-eq v14, v15, :cond_34

    .line 73
    :cond_23
    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->sendBill(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    goto :goto_10

    .line 75
    :cond_34
    const/4 v10, 0x0

    .line 76
    .local v10, newBillPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-object v14, v0

    move-object/from16 v0, p3

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    move-result-object v13

    .line 80
    .local v13, pixelOffset:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getWidth()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getDisplayWidth()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 81
    .local v12, pageWidth:I
    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getHeight()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getDisplayHeight()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 82
    .local v11, pageHeight:I
    div-int/lit8 v8, v12, 0x2

    .line 83
    .local v8, halfWidth:I
    div-int/lit8 v7, v11, 0x2

    .line 84
    .local v7, halfHeight:I
    iget v14, v13, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-gt v14, v12, :cond_6d

    iget v14, v13, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-le v14, v11, :cond_ae

    .line 87
    :cond_6d
    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v10

    .line 116
    :cond_71
    :goto_71
    if-eqz v10, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-object v14, v0

    if-eqz v14, :cond_a0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->previousBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilledZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-object v15, v0

    if-ne v14, v15, :cond_a0

    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->distanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)J

    move-result-wide v14

    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->distanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gez v14, :cond_10

    .line 120
    :cond_a0
    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->sendBill(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    goto/16 :goto_10

    .line 93
    :cond_ae
    const/4 v5, 0x0

    .line 94
    .local v5, dx:I
    const/4 v6, 0x0

    .line 95
    .local v6, dy:I
    iget v14, v13, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    neg-int v15, v8

    if-ge v14, v15, :cond_ce

    .line 96
    move v5, v12

    .line 101
    :cond_b6
    :goto_b6
    iget v14, v13, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    neg-int v15, v7

    if-ge v14, v15, :cond_d4

    .line 102
    move v6, v11

    .line 107
    :cond_bc
    :goto_bc
    if-nez v6, :cond_c0

    if-eqz v5, :cond_71

    .line 109
    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->lastBilled:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-object v14, v0

    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v15

    invoke-virtual {v14, v5, v6, v15}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v10

    goto :goto_71

    .line 97
    :cond_ce
    iget v14, v13, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    if-le v14, v8, :cond_b6

    .line 98
    neg-int v5, v12

    goto :goto_b6

    .line 103
    :cond_d4
    iget v14, v13, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    if-le v14, v7, :cond_bc

    .line 104
    neg-int v6, v11

    goto :goto_bc
.end method
