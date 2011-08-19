.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;
.super Ljava/lang/Object;
.source "GmmTileOverlayRendererImpl.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRenderer;


# instance fields
.field private final shapeProviders:Ljava/util/Vector;

.field protected shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

.field private shapeRendererVersion:I

.field private showTraffic:Z

.field protected final trafficRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;

.field protected trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeProviders:Ljava/util/Vector;

    .line 61
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;

    .line 62
    return-void
.end method

.method private getImageVersion(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)I
    .registers 7
    .parameter "mapTile"

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, version:I
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    if-eqz v2, :cond_36

    .line 268
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->toTraffic()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    move-result-object v0

    .line 270
    .local v0, tt:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 271
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 272
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getDataTime()J

    move-result-wide v2

    long-to-int v1, v2

    .line 274
    :cond_27
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v2

    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->setLastAccess(J)V

    .line 278
    .end local v0           #tt:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :cond_36
    mul-int/lit8 v2, v1, 0x1d

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRendererVersion:I

    add-int/2addr v2, v3

    return v2
.end method

.method private renderTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Z)Z
    .registers 8
    .parameter "mapTile"
    .parameter "fetch"

    .prologue
    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, tt:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v1

    .line 180
    .local v1, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    if-eqz v3, :cond_2f

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_2f

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_2f

    .line 183
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->toTraffic()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v1

    .line 185
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    invoke-virtual {v3, v1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    move-result-object v2

    .line 205
    :cond_2f
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->getImageVersion(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)I

    move-result v0

    .line 206
    .local v0, imageVersion:I
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->isFast()Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_50

    :cond_3f
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage()Z

    move-result v3

    if-nez v3, :cond_50

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageVersion()I

    move-result v3

    if-eq v3, v0, :cond_50

    .line 208
    invoke-direct {p0, p1, v2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->updateTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;I)V

    .line 209
    const/4 v3, 0x1

    .line 212
    :goto_4f
    return v3

    :cond_50
    const/4 v3, 0x0

    goto :goto_4f
.end method

.method private updateTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;I)V
    .registers 6
    .parameter "mapTile"
    .parameter "tt"
    .parameter "imageVersion"

    .prologue
    .line 227
    if-nez p2, :cond_6

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    if-eqz v1, :cond_24

    :cond_6
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageVersion()I

    move-result v1

    if-nez v1, :cond_24

    .line 230
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isComplete()Z

    move-result v1

    if-nez v1, :cond_15

    .line 231
    const/4 p2, 0x0

    .line 234
    :cond_15
    invoke-virtual {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->generateNewTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    .line 235
    .local v0, newImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    if-nez v0, :cond_1f

    .line 237
    invoke-virtual {p1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setImageVersion(I)V

    .line 246
    .end local v0           #newImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_1e
    :goto_1e
    return-void

    .line 239
    .restart local v0       #newImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_1f
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p3, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IZ)V

    goto :goto_1e

    .line 241
    .end local v0           #newImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_24
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageVersion()I

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageVersion()I

    move-result v1

    if-eq v1, p3, :cond_1e

    .line 243
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->restoreBaseImage()V

    .line 244
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    goto :goto_1e
.end method


# virtual methods
.method public begin()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getImageVersion()I

    move-result v0

    :goto_a
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRendererVersion:I

    .line 82
    return-void

    .line 77
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public end()V
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestTiles()V

    .line 172
    return-void
.end method

.method protected abstract generateNewTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
.end method

.method protected abstract isFast()Z
.end method

.method public isShowTraffic()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    return v0
.end method

.method public renderTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Z)Z
    .registers 4
    .parameter "tile"
    .parameter "fetch"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->renderTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Z)Z

    move-result v0

    return v0
.end method

.method public setShowTraffic(Z)V
    .registers 2
    .parameter "showTraffic"

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    .line 160
    return-void
.end method

.method public setTrafficService(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V
    .registers 2
    .parameter "trafficService"

    .prologue
    .line 66
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    .line 67
    return-void
.end method
