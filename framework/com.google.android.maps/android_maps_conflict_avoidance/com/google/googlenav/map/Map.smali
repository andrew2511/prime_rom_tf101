.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;
.super Ljava/lang/Object;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;
    }
.end annotation


# instance fields
.field private final biller:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;

.field private centerPixelX:I

.field private centerPixelY:I

.field private completeTilesInViewport:I

.field private cornerToCenterDist:I

.field private displayHeight:I

.field private displayWidth:I

.field private earliestTileNeededTime:J

.field private estimatedCountOfRenderedImagesInMapCache:I

.field private halfDisplayHeight:I

.field private halfDisplayWidth:I

.field private halfHeight:I

.field private halfWidth:I

.field private hardwareAcceleration:Z

.field private height:I

.field private isViewportAllNew:Z

.field private lastPaintStartTime:J

.field private final mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

.field private mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

.field private pixelMapper:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;

.field private running:Z

.field private tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

.field private tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private width:I

.field private xDisplayTiles:I

.field private xTiles:I

.field private yDisplayTiles:I

.field private yTiles:I


# direct methods
.method public constructor <init>(IIILandroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;I)V
    .registers 14
    .parameter "maxCacheDataSize"
    .parameter "targetCacheDataSize"
    .parameter "maxFlashSize"
    .parameter "defaultCenter"
    .parameter "defaultZoom"
    .parameter "maxRecordStores"

    .prologue
    const/4 v6, 0x0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    .line 54
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    .line 60
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->cornerToCenterDist:I

    .line 63
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    .line 66
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    .line 105
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayHeight:I

    .line 115
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayWidth:I

    .line 118
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    .line 121
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    .line 127
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    .line 133
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    .line 139
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    .line 145
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    .line 238
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    .line 251
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->biller:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->pixelMapper:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;

    .line 265
    iput-boolean v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->hardwareAcceleration:Z

    .line 317
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    .line 341
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    const-string v5, "Tiles"

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;-><init>(IIIILjava/lang/String;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    .line 343
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-direct {v0, p4, v1, v6}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;I)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    .line 344
    invoke-direct {p0, p4, p5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->load(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    .line 346
    return-void
.end method

.method private calculateCenterPixel()V
    .registers 3

    .prologue
    .line 605
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelX:I

    .line 606
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelY:I

    .line 607
    return-void
.end method

.method private static checkPaintTimeExceeded(J)Z
    .registers 6
    .parameter "paintStartTime"

    .prologue
    .line 1301
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private drawMapBackground(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;ZZ)Z
    .registers 27
    .parameter "g"
    .parameter "fetch"
    .parameter "drawIncompleteTiles"

    .prologue
    .line 848
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-object v4, v0

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXPixelTopLeft()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-object v4, v0

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-object v5, v0

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v4

    sub-int v8, v3, v4

    .line 850
    .local v8, xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-object v4, v0

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYPixelTopLeft()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-object v4, v0

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-object v5, v0

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v4

    sub-int v9, v3, v4

    .line 857
    .local v9, yOffset:I
    :goto_4e
    if-lez v8, :cond_5f

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-object v3, v0

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v3

    sub-int/2addr v8, v3

    goto :goto_4e

    .line 861
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    move-object v3, v0

    if-eqz v3, :cond_6e

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    move-object v3, v0

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;->begin()V

    .line 864
    :cond_6e
    const/16 v20, 0x0

    .line 865
    .local v20, tileIndex:I
    const/16 v22, 0x0

    .line 866
    .local v22, tilesDrawn:I
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v17

    .line 867
    .local v17, clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;
    invoke-interface/range {v17 .. v17}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v13

    .line 868
    .local v13, paintStartTimeRelative:J
    invoke-interface/range {v17 .. v17}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v18

    .line 869
    .local v18, paintStartTimeCurrent:J
    const/4 v12, 0x1

    .line 870
    .local v12, drawOptionalFeatures:Z
    if-nez p1, :cond_86

    .line 872
    const/4 v12, 0x0

    .line 882
    :cond_86
    const-wide v3, 0x7fffffffffffffffL

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    .line 883
    const/4 v5, 0x0

    .local v5, i:I
    :goto_91
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    move v3, v0

    if-ge v5, v3, :cond_d3

    .line 884
    const/4 v6, 0x0

    .local v6, j:I
    :goto_99
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    move v3, v0

    if-ge v6, v3, :cond_d0

    .line 888
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v3, v0

    add-long v15, v18, v3

    .line 890
    .local v15, tileAccessTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-object v3, v0

    add-int/lit8 v21, v20, 0x1

    .end local v20           #tileIndex:I
    .local v21, tileIndex:I
    aget-object v4, v3, v20

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v3 .. v16}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->drawTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IILandroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;IIZZZJJ)Z

    move-result v3

    if-eqz v3, :cond_ce

    const/4 v3, 0x1

    :goto_be
    add-int v22, v22, v3

    .line 907
    if-eqz v12, :cond_c9

    invoke-static {v13, v14}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->checkPaintTimeExceeded(J)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 909
    const/4 v12, 0x0

    .line 884
    :cond_c9
    add-int/lit8 v6, v6, 0x1

    move/from16 v20, v21

    .end local v21           #tileIndex:I
    .restart local v20       #tileIndex:I
    goto :goto_99

    .line 890
    .end local v20           #tileIndex:I
    .restart local v21       #tileIndex:I
    :cond_ce
    const/4 v3, 0x0

    goto :goto_be

    .line 883
    .end local v15           #tileAccessTime:J
    .end local v21           #tileIndex:I
    .restart local v20       #tileIndex:I
    :cond_d0
    add-int/lit8 v5, v5, 0x1

    goto :goto_91

    .line 914
    .end local v6           #j:I
    :cond_d3
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    move v3, v0

    const/16 v4, 0x30

    if-le v3, v4, :cond_ea

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    move-object v3, v0

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->restoreBaseImagesIfNeeded()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    .line 921
    :cond_ea
    if-eqz p1, :cond_f3

    .line 922
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->logPerceivedTileLatency(I)V

    .line 928
    :cond_f3
    if-eqz p2, :cond_fd

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    move-object v3, v0

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestTiles()Z

    .line 935
    :cond_fd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    move-object v3, v0

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestLayerTiles()V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    move-object v3, v0

    if-eqz v3, :cond_114

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    move-object v3, v0

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;->end()V

    .line 942
    :cond_114
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->clearDataCache()V

    .line 945
    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->lastPaintStartTime:J

    .line 950
    invoke-static {v13, v14}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->checkPaintTimeExceeded(J)Z

    move-result v3

    if-nez v3, :cond_124

    const/4 v3, 0x1

    :goto_123
    return v3

    :cond_124
    const/4 v3, 0x0

    goto :goto_123
.end method

.method private drawTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IILandroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;IIZZZJJ)Z
    .registers 29
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1114
    move/from16 v0, p2

    mul-int/lit16 v0, v0, 0x100

    move v5, v0

    add-int v12, p5, v5

    .line 1115
    move/from16 v0, p3

    mul-int/lit16 v0, v0, 0x100

    move v5, v0

    add-int v13, p6, v5

    .line 1118
    invoke-virtual/range {p1 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->notValid()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1119
    if-eqz p4, :cond_2e

    .line 1120
    const v5, 0xffffff

    move-object/from16 v0, p4

    move v1, v5

    invoke-interface {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->setColor(I)V

    .line 1121
    const/16 v5, 0x100

    const/16 v6, 0x100

    move-object/from16 v0, p4

    move v1, v12

    move v2, v13

    move v3, v5

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->fillRect(IIII)V

    .line 1122
    const/4 v5, 0x1

    .line 1189
    :cond_2d
    :goto_2d
    return v5

    .line 1124
    :cond_2e
    const/4 v5, 0x0

    goto :goto_2d

    .line 1130
    :cond_30
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    add-int/lit16 v6, v12, 0x80

    sub-int/2addr v5, v6

    .line 1131
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    add-int/lit16 v7, v13, 0x80

    sub-int/2addr v6, v7

    .line 1134
    mul-int/2addr v5, v5

    mul-int/2addr v6, v6

    add-int v7, v5, v6

    .line 1137
    invoke-virtual/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isTileOnScreen(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z

    move-result v14

    .line 1138
    if-eqz p7, :cond_cc

    if-nez v14, :cond_cc

    .line 1139
    const/4 v5, 0x0

    move v8, v5

    .line 1147
    :goto_48
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    if-eqz p9, :cond_c7

    const/4 v6, 0x2

    move v9, v6

    :goto_4e
    move-object/from16 v6, p1

    move-wide/from16 v10, p12

    invoke-virtual/range {v5 .. v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZIJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v5

    .line 1152
    if-eqz v14, :cond_72

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    if-eqz v6, :cond_72

    if-eqz p9, :cond_72

    .line 1153
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    invoke-interface {v6, v5, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;->renderTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Z)Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasRenderedImage()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 1155
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    .line 1160
    :cond_72
    const/4 v6, 0x0

    .line 1161
    if-eqz p4, :cond_ca

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasImage()Z

    move-result v7

    if-nez v7, :cond_7d

    if-eqz p8, :cond_ca

    .line 1164
    :cond_7d
    move-object v0, v5

    move-wide/from16 v1, p12

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage(J)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v7

    move-object/from16 v0, p4

    move-object v1, v7

    move v2, v12

    move v3, v13

    invoke-interface {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;II)V

    .line 1167
    iget-wide v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->lastPaintStartTime:J

    move-object v0, v5

    move-wide/from16 v1, p10

    move-wide v3, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setPaint(JJ)V

    .line 1169
    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getCompletePaintCount()I

    move-result v7

    if-lez v7, :cond_ca

    .line 1170
    invoke-direct {p0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->updatePerceivedTileLatency(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    .line 1171
    invoke-direct {p0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->logIfPreCached(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    .line 1172
    const/4 v5, 0x1

    .line 1176
    :goto_a2
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    move-object v0, v6

    move-object/from16 v1, p1

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getLayerTiles(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Ljava/util/Vector;

    move-result-object v6

    .line 1177
    if-eqz p4, :cond_2d

    .line 1178
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_b4
    if-ltz v7, :cond_2d

    .line 1179
    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-object/from16 v0, p4

    move-object v1, p0

    move v2, v12

    move v3, v13

    invoke-interface {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;II)V

    .line 1178
    add-int/lit8 v7, v7, -0x1

    goto :goto_b4

    .line 1147
    :cond_c7
    const/4 v6, 0x1

    move v9, v6

    goto :goto_4e

    :cond_ca
    move v5, v6

    goto :goto_a2

    :cond_cc
    move/from16 v8, p7

    goto/16 :goto_48
.end method

.method private declared-synchronized findZoom(IILandroid_maps_conflict_avoidance/com/google/map/MapState;)Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .registers 6
    .parameter "latSpanE6"
    .parameter "lonSpanE6"
    .parameter "newMapState"

    .prologue
    .line 545
    monitor-enter p0

    :try_start_1
    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxMapZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I

    move-result v1

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    .line 546
    .local v0, newZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    :goto_d
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getNextLowerZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {p3, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLatitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I

    move-result v1

    if-lt v1, p1, :cond_27

    invoke-virtual {p3, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLongitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I

    move-result v1

    if-ge v1, p2, :cond_2c

    .line 549
    :cond_27
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getNextLowerZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2e

    move-result-object v0

    goto :goto_d

    .line 552
    :cond_2c
    monitor-exit p0

    return-object v0

    .line 545
    .end local v0           #newZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getMaxMapInitialZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I
    .registers 3
    .parameter "point"

    .prologue
    const/16 v1, 0xf

    .line 1726
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isMapPointInKoreaBoundingBox(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 1735
    :goto_9
    return v0

    .line 1728
    :cond_a
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isMapPointInJapanBoundingBox(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1730
    const/16 v0, 0x10

    goto :goto_9

    :cond_13
    move v0, v1

    .line 1735
    goto :goto_9
.end method

.method public static getMaxTiles(I)I
    .registers 2
    .parameter "size"

    .prologue
    .line 1379
    const/16 v0, 0x100

    invoke-static {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/util/MathUtil;->ceiledDivision(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getTileFlagsForMapMode()B
    .registers 2

    .prologue
    .line 1401
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getMapMode()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 1408
    const/4 v0, 0x2

    :goto_a
    return v0

    .line 1403
    :pswitch_b
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getSatType()B

    move-result v0

    goto :goto_a

    .line 1405
    :pswitch_10
    const/4 v0, 0x7

    goto :goto_a

    .line 1401
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method

.method public static isMapPointInJapanBoundingBox(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Z
    .registers 4
    .parameter

    .prologue
    .line 1740
    if-eqz p0, :cond_20

    .line 1741
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v0

    .line 1742
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v1

    .line 1746
    const v2, 0x16c6e44

    if-le v0, v2, :cond_20

    const v2, 0x2bf01d6

    if-ge v0, v2, :cond_20

    const v0, 0x7604113

    if-le v1, v0, :cond_20

    const v0, 0x8920c07

    if-ge v1, v0, :cond_20

    .line 1748
    const/4 v0, 0x1

    .line 1751
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static isMapPointInKoreaBoundingBox(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Z
    .registers 8
    .parameter

    .prologue
    const v6, 0x7cfb66a

    const v5, 0x7ae0f28

    const v4, 0x7a8b1de

    const v3, 0x24e6895

    .line 1756
    if-eqz p0, :cond_4a

    .line 1757
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v0

    .line 1758
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v1

    .line 1762
    const v2, 0x1f75f9c

    if-le v0, v2, :cond_24

    if-ge v0, v3, :cond_24

    const v2, 0x76d5478

    if-le v1, v2, :cond_24

    if-lt v1, v4, :cond_48

    :cond_24
    const v2, 0x20de3a2

    if-le v0, v2, :cond_2f

    if-ge v0, v3, :cond_2f

    if-le v1, v4, :cond_2f

    if-lt v1, v5, :cond_48

    :cond_2f
    const v2, 0x2167b23

    if-le v0, v2, :cond_3a

    if-ge v0, v3, :cond_3a

    if-le v1, v5, :cond_3a

    if-lt v1, v6, :cond_48

    :cond_3a
    const v2, 0x234ffbd

    if-le v0, v2, :cond_4a

    if-ge v0, v3, :cond_4a

    if-le v1, v6, :cond_4a

    const v0, 0x7de3697

    if-ge v1, v0, :cond_4a

    .line 1770
    :cond_48
    const/4 v0, 0x1

    .line 1773
    :goto_49
    return v0

    :cond_4a
    const/4 v0, 0x0

    goto :goto_49
.end method

.method private isTileOnScreenX(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z
    .registers 9
    .parameter "tile"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1273
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v3

    div-int/lit16 v1, v3, 0x100

    .line 1275
    .local v1, equatorTiles:I
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    if-lt v3, v1, :cond_15

    move v0, v5

    .line 1276
    .local v0, allXTilesOnScreen:Z
    :goto_11
    if-eqz v0, :cond_17

    move v3, v5

    .line 1290
    :goto_14
    return v3

    .end local v0           #allXTilesOnScreen:Z
    :cond_15
    move v0, v6

    .line 1275
    goto :goto_11

    .line 1281
    .restart local v0       #allXTilesOnScreen:Z
    :cond_17
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v3

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    rem-int v2, v3, v1

    .line 1284
    .local v2, rightDisplayTileXIndex:I
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v3

    if-ge v3, v2, :cond_41

    .line 1286
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v3

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v4

    if-lt v3, v4, :cond_3f

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v3

    if-gt v3, v2, :cond_3f

    move v3, v5

    goto :goto_14

    :cond_3f
    move v3, v6

    goto :goto_14

    .line 1290
    :cond_41
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v3

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v4

    if-ge v3, v4, :cond_53

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v3

    if-gt v3, v2, :cond_55

    :cond_53
    move v3, v5

    goto :goto_14

    :cond_55
    move v3, v6

    goto :goto_14
.end method

.method private isTileOnScreenY(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z
    .registers 5
    .parameter "tile"

    .prologue
    .line 1261
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->notValid()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v1

    if-lt v0, v1, :cond_23

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v1

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private load(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 745
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    const-string v1, "Map info"

    invoke-interface {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    .line 747
    const/4 v1, 0x0

    .line 752
    if-eqz v0, :cond_83

    .line 754
    :try_start_14
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    move-result-object v0

    .line 756
    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    .line 757
    if-ne v2, v6, :cond_83

    .line 758
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->readPoint(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_4d

    move-result-object v1

    .line 759
    :try_start_22
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_7a

    move-result v2

    .line 760
    :try_start_26
    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_7e

    move-result v0

    move-object v3, v1

    move v1, v5

    .line 773
    :goto_2c
    if-eqz v1, :cond_71

    .line 776
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_67

    move v1, v5

    .line 783
    :goto_33
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6f

    move v0, v5

    .line 784
    :goto_38
    new-instance v4, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxMapInitialZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v2

    invoke-direct {v4, v3, v2, v1, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    invoke-virtual {p0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V

    .line 789
    :goto_4c
    return-void

    .line 765
    :catch_4d
    move-exception v0

    move-object v2, v1

    move v1, v4

    .line 767
    :goto_50
    const-string v3, "MAP"

    invoke-static {v3, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 768
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    const-string v3, "Map info"

    invoke-interface {v0, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    move v0, v4

    move-object v3, v2

    move v2, v1

    move v1, v4

    goto :goto_2c

    .line 778
    :cond_67
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_6d

    move v1, v6

    .line 779
    goto :goto_33

    :cond_6d
    move v1, v4

    .line 781
    goto :goto_33

    :cond_6f
    move v0, v4

    .line 783
    goto :goto_38

    .line 787
    :cond_71
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-direct {v0, p1, p2, v4}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;I)V

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V

    goto :goto_4c

    .line 765
    :catch_7a
    move-exception v0

    move-object v2, v1

    move v1, v4

    goto :goto_50

    :catch_7e
    move-exception v0

    move v7, v2

    move-object v2, v1

    move v1, v7

    goto :goto_50

    :cond_83
    move v0, v4

    move v2, v4

    move-object v3, v1

    move v1, v4

    goto :goto_2c
.end method

.method private logIfPreCached(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    .registers 9
    .parameter

    .prologue
    .line 1069
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getIsPreCached()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getCompletePaintCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    .line 1070
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    .line 1071
    const/16 v2, 0x16

    const-string v3, "pc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getFirstPaintTime()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    .line 1075
    :cond_38
    return-void
.end method

.method private logPerceivedTileLatency(I)V
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x16

    .line 997
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 998
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    .line 1057
    :cond_f
    :goto_f
    return-void

    .line 1004
    :cond_10
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    move-result v0

    .line 1005
    packed-switch v0, :pswitch_data_a6

    .line 1023
    :pswitch_17
    and-int/lit8 v0, v0, -0x80

    if-eqz v0, :cond_f

    goto :goto_f

    .line 1007
    :pswitch_1c
    const-string v0, "s"

    .line 1036
    :goto_1e
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    sub-long/2addr v1, v3

    .line 1040
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    if-nez v3, :cond_5d

    .line 1041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    .line 1044
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isViewportAllNew:Z

    .line 1048
    :cond_5d
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    if-ge v3, p1, :cond_95

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    mul-int/2addr v3, v4

    if-ne p1, v3, :cond_95

    .line 1049
    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isViewportAllNew:Z

    if-eqz v3, :cond_a3

    const-string v3, "tc"

    .line 1052
    :goto_6e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    .line 1056
    :cond_95
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    goto/16 :goto_f

    .line 1011
    :pswitch_99
    const-string v0, "h"

    goto :goto_1e

    .line 1015
    :pswitch_9c
    const-string v0, "n"

    goto :goto_1e

    .line 1019
    :pswitch_9f
    const-string v0, "m"

    goto/16 :goto_1e

    .line 1049
    :cond_a3
    const-string v3, "tp"

    goto :goto_6e

    .line 1005
    :pswitch_data_a6
    .packed-switch 0x2
        :pswitch_9f
        :pswitch_1c
        :pswitch_17
        :pswitch_17
        :pswitch_99
        :pswitch_9c
    .end packed-switch
.end method

.method private precalculateTiles()V
    .registers 10

    .prologue
    .line 521
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-eqz v5, :cond_38

    .line 522
    const/4 v1, 0x0

    .line 523
    .local v1, index:I
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    move-result v4

    .line 526
    .local v4, tileFlags:B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    if-ge v0, v5, :cond_38

    .line 527
    const/4 v3, 0x0

    .local v3, j:I
    :goto_f
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    if-ge v3, v5, :cond_35

    .line 528
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v6

    aput-object v6, v5, v1

    .line 527
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_f

    .line 526
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 533
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v3           #j:I
    .end local v4           #tileFlags:B
    :cond_38
    return-void
.end method

.method private updatePerceivedTileLatency(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    .registers 6
    .parameter "mapTile"

    .prologue
    .line 1061
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getCompletePaintCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 1062
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getFirstPaintTime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    .line 1065
    :cond_13
    return-void
.end method

.method private updateTopLeftTile(ZZ)V
    .registers 7
    .parameter "sizeChanged"
    .parameter "displaySizeChanged"

    .prologue
    .line 494
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 495
    .local v1, oldTopLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 497
    .local v0, oldTopLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    invoke-virtual {p0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTopLeftTile(II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v2

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 498
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    invoke-virtual {p0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTopLeftTile(II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v2

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 502
    if-nez p1, :cond_24

    if-eqz v1, :cond_24

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 503
    :cond_24
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->precalculateTiles()V

    .line 507
    :cond_27
    if-nez p2, :cond_33

    if-eqz v0, :cond_33

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 509
    :cond_33
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->notifyLayerTilesDirty()V

    .line 511
    :cond_38
    return-void
.end method


# virtual methods
.method public canCover(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Z)Z
    .registers 4
    .parameter "point"
    .parameter "scaleImageOk"

    .prologue
    .line 1536
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->canCover(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZLandroid_maps_conflict_avoidance/com/google/map/Zoom;)Z

    move-result v0

    return v0
.end method

.method public canCover(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZLandroid_maps_conflict_avoidance/com/google/map/Zoom;)Z
    .registers 8
    .parameter "point"
    .parameter "scaleImageOk"
    .parameter "zoomLevel"

    .prologue
    const/4 v3, 0x0

    .line 1545
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    move-result v2

    invoke-static {v2, p1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v0

    .line 1549
    .local v0, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    if-eqz p2, :cond_17

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage()Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_17
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1d
    const/4 v1, 0x1

    :goto_1e
    return v1

    :cond_1f
    move v1, v3

    goto :goto_1e
.end method

.method public close(Z)V
    .registers 3
    .parameter "saveState"

    .prologue
    .line 1312
    if-eqz p1, :cond_5

    .line 1313
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->saveState()V

    .line 1315
    :cond_5
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->close(Z)V

    .line 1316
    return-void
.end method

.method public drawMap(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;ZZZZZ)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 817
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    if-eqz v0, :cond_8

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    if-nez v0, :cond_10

    .line 818
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map has zero size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_10
    if-eqz p1, :cond_17

    .line 822
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->biller:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;

    invoke-virtual {v0, p3, p4, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->doBilling(ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    .line 825
    :cond_17
    invoke-direct {p0, p1, p2, p5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->drawMapBackground(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;ZZ)Z

    move-result v0

    return v0
.end method

.method public getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .registers 2

    .prologue
    .line 1679
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayHeight:I

    return v0
.end method

.method public getDisplayWidth()I
    .registers 2

    .prologue
    .line 1683
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayWidth:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 1664
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    return v0
.end method

.method public declared-synchronized getLatitudeSpan()I
    .registers 2

    .prologue
    .line 1480
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLatitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLatitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I
    .registers 8
    .parameter "mapState"

    .prologue
    .line 1425
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    .line 1426
    .local v1, point:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v3

    .line 1427
    .local v3, zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    invoke-virtual {v1, v4, v5, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    .line 1428
    .local v0, lowerRight:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    neg-int v4, v4

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    neg-int v5, v5

    invoke-virtual {v1, v4, v5, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    .line 1429
    .local v2, upperLeft:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v4

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    return v4
.end method

.method public getLongitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I
    .registers 9
    .parameter "mapState"

    .prologue
    .line 1468
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    .line 1469
    .local v1, point:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v4

    .line 1470
    .local v4, zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    invoke-virtual {v1, v5, v6, v4}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    .line 1471
    .local v0, lowerRight:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    neg-int v5, v5

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    neg-int v6, v6

    invoke-virtual {v1, v5, v6, v4}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v3

    .line 1472
    .local v3, upperLeft:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v5

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v6

    sub-int v2, v5, v6

    .line 1473
    .local v2, span:I
    if-gez v2, :cond_2a

    .line 1474
    const v5, 0x15752a00

    add-int/2addr v2, v5

    .line 1476
    :cond_2a
    return v2
.end method

.method public getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    return-object v0
.end method

.method public getMaxMapZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I
    .registers 5
    .parameter "point"

    .prologue
    .line 1689
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isSatellite()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1694
    const/16 v1, 0x16

    .line 1717
    :goto_8
    return v1

    .line 1697
    :cond_9
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getMapMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    .line 1698
    const/16 v1, 0x10

    goto :goto_8

    .line 1709
    :cond_15
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getTextSize()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_27

    const/4 v1, 0x1

    move v0, v1

    .line 1712
    .local v0, extra:I
    :goto_1e
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->isChinaVersion()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1713
    add-int/lit8 v1, v0, 0x12

    goto :goto_8

    .line 1709
    .end local v0           #extra:I
    :cond_27
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1e

    .line 1717
    .restart local v0       #extra:I
    :cond_2a
    add-int/lit8 v1, v0, 0x14

    goto :goto_8
.end method

.method public getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    .registers 3
    .parameter "point"

    .prologue
    .line 634
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;-><init>()V

    .line 635
    .local v0, resultPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    invoke-virtual {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    .line 636
    return-object v0
.end method

.method public getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V
    .registers 6
    .parameter "point"
    .parameter "pixelResult"

    .prologue
    .line 640
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v1

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelX:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    .line 644
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v0

    .line 645
    .local v0, equatorPixels:I
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    neg-int v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_5a

    .line 646
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    .line 650
    :cond_25
    :goto_25
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v1

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelY:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    .line 651
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->pixelMapper:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;

    if-eqz v1, :cond_59

    .line 652
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    .line 653
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    .line 654
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->pixelMapper:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;

    invoke-interface {v1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;->transformPoint(Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    .line 655
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    .line 656
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    .line 658
    :cond_59
    return-void

    .line 647
    :cond_5a
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    div-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_25

    .line 648
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    goto :goto_25
.end method

.method public getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    .registers 3
    .parameter "point"

    .prologue
    .line 610
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;-><init>()V

    .line 611
    .local v0, pixelPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    invoke-virtual {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    .line 612
    return-object v0
.end method

.method public getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V
    .registers 5
    .parameter "point"
    .parameter "pixelPoint"

    .prologue
    .line 616
    invoke-virtual {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    .line 617
    iget v0, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    .line 618
    iget v0, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    .line 619
    return-void
.end method

.method public getTileFlags()B
    .registers 3

    .prologue
    .line 1392
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlagsForMapMode()B

    move-result v0

    .line 1393
    .local v0, tileFlags:B
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isBicyclingLayerEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1394
    or-int/lit8 v1, v0, -0x80

    int-to-byte v0, v1

    .line 1396
    :cond_f
    return v0
.end method

.method getTopLeftTile(II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .registers 14
    .parameter "numXTiles"
    .parameter "numYTiles"

    .prologue
    .line 462
    iget-object v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    .line 463
    .local v0, centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    iget-object v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v8

    .line 464
    .local v8, zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    invoke-static {v0, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v9

    div-int/lit8 v10, p1, 0x2

    sub-int v4, v9, v10

    .line 465
    .local v4, xIndex:I
    invoke-static {v0, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v9

    div-int/lit8 v10, p2, 0x2

    sub-int v6, v9, v10

    .line 466
    .local v6, yIndex:I
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    move-result v9

    invoke-static {v9, v0, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v1

    .line 471
    .local v1, centerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_59

    const/4 v9, 0x1

    move v5, v9

    .line 472
    .local v5, xTilesIsEven:Z
    :goto_2a
    iget v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelX:I

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXPixelTopLeft()I

    move-result v10

    sub-int v2, v9, v10

    .line 473
    .local v2, centerXOffsetFromCenterTile:I
    if-eqz v5, :cond_3a

    const/16 v9, 0x80

    if-le v2, v9, :cond_3a

    .line 474
    add-int/lit8 v4, v4, 0x1

    .line 477
    :cond_3a
    rem-int/lit8 v9, p2, 0x2

    if-nez v9, :cond_5c

    const/4 v9, 0x1

    move v7, v9

    .line 478
    .local v7, yTilesIsEven:Z
    :goto_40
    iget v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelY:I

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYPixelTopLeft()I

    move-result v10

    sub-int v3, v9, v10

    .line 479
    .local v3, centerYOffsetFromCenterTile:I
    if-eqz v7, :cond_50

    const/16 v9, 0x80

    if-le v3, v9, :cond_50

    .line 480
    add-int/lit8 v6, v6, 0x1

    .line 483
    :cond_50
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    move-result v9

    invoke-static {v9, v4, v6, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v9

    return-object v9

    .line 471
    .end local v2           #centerXOffsetFromCenterTile:I
    .end local v3           #centerYOffsetFromCenterTile:I
    .end local v5           #xTilesIsEven:Z
    .end local v7           #yTilesIsEven:Z
    :cond_59
    const/4 v9, 0x0

    move v5, v9

    goto :goto_2a

    .line 477
    .restart local v2       #centerXOffsetFromCenterTile:I
    .restart local v5       #xTilesIsEven:Z
    :cond_5c
    const/4 v9, 0x0

    move v7, v9

    goto :goto_40
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 1668
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    return v0
.end method

.method public getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    return-object v0
.end method

.method public isSatellite()Z
    .registers 2

    .prologue
    .line 1633
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isSatellite()Z

    move-result v0

    return v0
.end method

.method public isTileOnScreen(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z
    .registers 3
    .parameter "tile"

    .prologue
    .line 1250
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isTileOnScreenY(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isTileOnScreenX(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 1319
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    if-eqz v0, :cond_c

    .line 1320
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    .line 1321
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->pause()V

    .line 1323
    :cond_c
    return-void
.end method

.method public declared-synchronized preLoad(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V
    .registers 6
    .parameter "newCenter"

    .prologue
    .line 794
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1a

    move-result-object v0

    .line 796
    .local v0, oldCenter:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :try_start_7
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setCenterPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    .line 797
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->drawMapBackground(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;ZZ)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .line 799
    :try_start_10
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setCenterPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1a

    .line 801
    monitor-exit p0

    return-void

    .line 799
    :catchall_15
    move-exception v1

    :try_start_16
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setCenterPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    throw v1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1a

    .line 794
    .end local v0           #oldCenter:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public resize(II)V
    .registers 3
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 1337
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->resize(IIII)V

    .line 1338
    return-void
.end method

.method public resize(IIII)V
    .registers 14
    .parameter "newWidth"
    .parameter "newHeight"
    .parameter "newDisplayWidth"
    .parameter "newDisplayHeight"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1341
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    if-ne p1, v4, :cond_13

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    if-ne p2, v4, :cond_13

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayWidth:I

    if-ne p3, v4, :cond_13

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayHeight:I

    if-ne p4, v4, :cond_13

    .line 1375
    :goto_12
    return-void

    .line 1346
    :cond_13
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    .line 1347
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    .line 1348
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->cornerToCenterDist:I

    .line 1349
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    .line 1350
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    .line 1352
    iput p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayHeight:I

    .line 1353
    iput p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayWidth:I

    .line 1354
    div-int/lit8 v4, p3, 0x2

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    .line 1355
    div-int/lit8 v4, p4, 0x2

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    .line 1357
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    .line 1358
    .local v1, oldXTiles:I
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    .line 1359
    .local v3, oldYTiles:I
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    .line 1360
    .local v0, oldXDisplayTiles:I
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    .line 1362
    .local v2, oldYDisplayTiles:I
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxTiles(I)I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    .line 1363
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxTiles(I)I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    .line 1364
    invoke-static {p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxTiles(I)I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    .line 1365
    invoke-static {p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxTiles(I)I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    .line 1367
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-eqz v4, :cond_77

    mul-int v4, v1, v3

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    mul-int/2addr v5, v6

    if-eq v4, v5, :cond_80

    .line 1368
    :cond_77
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    mul-int/2addr v4, v5

    new-array v4, v4, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 1370
    :cond_80
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    if-ne v1, v4, :cond_88

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    if-eq v3, v4, :cond_a0

    :cond_88
    move v4, v8

    :goto_89
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    if-ne v0, v5, :cond_91

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    if-eq v2, v5, :cond_a2

    :cond_91
    move v5, v8

    :goto_92
    invoke-direct {p0, v4, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->updateTopLeftTile(ZZ)V

    .line 1372
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapChanged()V

    .line 1373
    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    .line 1374
    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isViewportAllNew:Z

    goto/16 :goto_12

    :cond_a0
    move v4, v7

    .line 1370
    goto :goto_89

    :cond_a2
    move v5, v7

    goto :goto_92
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 1326
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    if-nez v0, :cond_c

    .line 1327
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    .line 1328
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->resume()V

    .line 1330
    :cond_c
    return-void
.end method

.method public declared-synchronized saveState()V
    .registers 5

    .prologue
    .line 707
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 708
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 710
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 711
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    invoke-static {v2, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->writePoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Ljava/io/DataOutput;)V

    .line 712
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 714
    const/4 v2, 0x0

    .line 715
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isSatellite()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 716
    or-int/lit8 v2, v2, 0x1

    .line 720
    :cond_32
    :goto_32
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isBicyclingLayerEnabled()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 721
    or-int/lit8 v2, v2, 0x4

    .line 723
    :cond_3c
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 725
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 728
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v1

    const-string v2, "Map info"

    invoke-interface {v1, v2, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_64
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_50} :catch_5d

    .line 734
    :goto_50
    monitor-exit p0

    return-void

    .line 717
    :cond_52
    :try_start_52
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isTerrain()Z
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_64
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_57} :catch_5d

    move-result v3

    if-eqz v3, :cond_32

    .line 718
    or-int/lit8 v2, v2, 0x2

    goto :goto_32

    .line 730
    :catch_5d
    move-exception v0

    .line 732
    :try_start_5e
    const-string v1, "MAP"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_64

    goto :goto_50

    .line 707
    :catchall_64
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCenterPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V
    .registers 3
    .parameter "centerPoint"

    .prologue
    .line 397
    monitor-enter p0

    if-eqz p1, :cond_c

    .line 398
    :try_start_3
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 400
    :cond_c
    monitor-exit p0

    return-void

    .line 397
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMapMode(I)V
    .registers 3
    .parameter "mapMode"

    .prologue
    .line 1416
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(I)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V

    .line 1417
    return-void
.end method

.method public declared-synchronized setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V
    .registers 5
    .parameter "mapState"

    .prologue
    .line 409
    monitor-enter p0

    if-nez p1, :cond_5

    .line 426
    :goto_3
    monitor-exit p0

    return-void

    .line 412
    :cond_5
    :try_start_5
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    .line 415
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxMapZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I

    move-result v0

    .line 416
    .local v0, maxMapZoom:I
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v1

    if-le v1, v0, :cond_23

    .line 418
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v1

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    .line 421
    :cond_23
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->calculateCenterPixel()V

    .line 422
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->updateTopLeftTile(ZZ)V

    .line 423
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapChanged()V

    .line 424
    const/4 v1, 0x0

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    .line 425
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isViewportAllNew:Z
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    goto :goto_3

    .line 409
    .end local v0           #maxMapZoom:I
    :catchall_37
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setTileOverlayRenderer(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;)V
    .registers 2
    .parameter "tileOverlayRenderer"

    .prologue
    .line 1645
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    .line 1646
    return-void
.end method

.method public declared-synchronized setZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .registers 3
    .parameter "zoom"

    .prologue
    .line 403
    monitor-enter p0

    if-eqz p1, :cond_c

    .line 404
    :try_start_3
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 406
    :cond_c
    monitor-exit p0

    return-void

    .line 403
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zoomToSpan(II)V
    .registers 4
    .parameter "latSpanE6"
    .parameter "lonSpanE6"

    .prologue
    .line 536
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->findZoom(IILandroid_maps_conflict_avoidance/com/google/map/MapState;)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 537
    monitor-exit p0

    return-void

    .line 536
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
