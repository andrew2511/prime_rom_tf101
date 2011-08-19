.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;
.super Ljava/lang/Object;
.source "NullMapTileStorage.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;


# instance fields
.field private textSize:I

.field private tileEdition:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->tileEdition:I

    .line 15
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->textSize:I

    return-void
.end method


# virtual methods
.method public close(Z)V
    .registers 2
    .parameter "saveState"

    .prologue
    .line 18
    return-void
.end method

.method public getMapTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .registers 3
    .parameter "tile"

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public mapChanged()V
    .registers 1

    .prologue
    .line 32
    return-void
.end method

.method public setTileEditionAndTextSize(II)Z
    .registers 6
    .parameter "newTileEdition"
    .parameter "newTextSize"

    .prologue
    const/4 v2, -0x1

    .line 50
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->tileEdition:I

    if-eq p1, v1, :cond_9

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->tileEdition:I

    if-ne v1, v2, :cond_11

    :cond_9
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->textSize:I

    if-eq p2, v1, :cond_18

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->textSize:I

    if-eq v1, v2, :cond_18

    :cond_11
    const/4 v1, 0x1

    move v0, v1

    .line 52
    .local v0, changed:Z
    :goto_13
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->tileEdition:I

    .line 53
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;->textSize:I

    .line 54
    return v0

    .line 50
    .end local v0           #changed:Z
    :cond_18
    const/4 v1, 0x0

    move v0, v1

    goto :goto_13
.end method

.method public writeCache()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method
