.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
.super Ljava/lang/Object;
.source "LayerTile.java"


# instance fields
.field private final cache:Ljava/util/Hashtable;

.field private dataTime:J

.field private image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private isComplete:Z

.field private final location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->dataTime:J

    .line 50
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z

    .line 53
    return-void
.end method


# virtual methods
.method public declared-synchronized compact()V
    .registers 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 81
    monitor-exit p0

    return-void

    .line 78
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDataTime()J
    .registers 3

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    :goto_12
    return-wide v0

    :cond_13
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->dataTime:J

    goto :goto_12
.end method

.method public declared-synchronized getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 2

    .prologue
    .line 184
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    return-object v0
.end method

.method public hasImage()Z
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isComplete()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setImage([B)V
    .registers 5
    .parameter "imageData"

    .prologue
    .line 192
    monitor-enter p0

    if-eqz p1, :cond_6

    :try_start_3
    array-length v0, p1

    if-nez v0, :cond_b

    .line 193
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    .line 198
    :goto_9
    monitor-exit p0

    return-void

    .line 195
    :cond_b
    :try_start_b
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage([BII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_1c

    goto :goto_9

    .line 192
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V
    .registers 3
    .parameter "areas"

    .prologue
    .line 119
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 122
    if-nez p1, :cond_b

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z

    .line 129
    :goto_a
    return-void

    .line 128
    :cond_b
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->updateLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V

    goto :goto_a
.end method

.method public updateLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V
    .registers 12
    .parameter "areas"

    .prologue
    const/4 v9, 0x1

    .line 143
    if-nez p1, :cond_4

    .line 174
    :goto_3
    return-void

    .line 147
    :cond_4
    array-length v7, p1

    sub-int v1, v7, v9

    .local v1, i:I
    :goto_7
    if-ltz v1, :cond_52

    .line 148
    aget-object v0, p1, v1

    .line 150
    .local v0, area:Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getItems()[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    move-result-object v3

    .line 151
    .local v3, items:[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;
    array-length v7, v3

    sub-int v4, v7, v9

    .local v4, j:I
    :goto_12
    if-ltz v4, :cond_4f

    .line 152
    aget-object v2, v3, v4

    .line 153
    .local v2, item:Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getLayerId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    .line 154
    .local v5, layerCache:Ljava/util/Hashtable;
    const/4 v6, 0x0

    .line 156
    .local v6, placemark:Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;
    if-nez v5, :cond_44

    .line 157
    new-instance v5, Ljava/util/Hashtable;

    .end local v5           #layerCache:Ljava/util/Hashtable;
    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 158
    .restart local v5       #layerCache:Ljava/util/Hashtable;
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->cache:Ljava/util/Hashtable;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getLayerId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :goto_33
    if-nez v6, :cond_41

    .line 165
    new-instance v6, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;

    .end local v6           #placemark:Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;
    invoke-direct {v6, v2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V

    .line 166
    .restart local v6       #placemark:Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_41
    add-int/lit8 v4, v4, -0x1

    goto :goto_12

    .line 160
    :cond_44
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #placemark:Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;
    check-cast v6, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;

    .restart local v6       #placemark:Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;
    goto :goto_33

    .line 147
    .end local v2           #item:Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;
    .end local v5           #layerCache:Ljava/util/Hashtable;
    .end local v6           #placemark:Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;
    :cond_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 172
    .end local v0           #area:Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;
    .end local v3           #items:[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;
    .end local v4           #j:I
    :cond_52
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v7

    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v7

    invoke-interface {v7}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->dataTime:J

    .line 173
    iput-boolean v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete:Z

    goto :goto_3
.end method
