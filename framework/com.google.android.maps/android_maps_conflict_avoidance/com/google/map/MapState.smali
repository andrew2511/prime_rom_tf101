.class public Landroid_maps_conflict_avoidance/com/google/map/MapState;
.super Ljava/lang/Object;
.source "MapState.java"


# instance fields
.field private final bicyclingLayerEnabled:Z

.field private final centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private final mapMode:I

.field private final zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;I)V
    .registers 5
    .parameter "centerPoint"
    .parameter "zoom"
    .parameter "mapMode"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V
    .registers 5
    .parameter "centerPoint"
    .parameter "zoom"
    .parameter "mapMode"
    .parameter "bicyclingLayerEnabled"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 31
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    .line 32
    iput p3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    .line 33
    iput-boolean p4, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    .line 34
    return-void
.end method


# virtual methods
.method public getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    return-object v0
.end method

.method public getMapMode()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    return v0
.end method

.method public getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    return-object v0
.end method

.method public isBicyclingLayerEnabled()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    return v0
.end method

.method public isSatellite()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTerrain()Z
    .registers 3

    .prologue
    .line 57
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public newMapState(I)Landroid_maps_conflict_avoidance/com/google/map/MapState;
    .registers 6
    .parameter "mapMode"

    .prologue
    .line 94
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    invoke-direct {v0, v1, v2, p1, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    return-object v0
.end method

.method public newMapState(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/map/MapState;
    .registers 6
    .parameter "centerPoint"

    .prologue
    .line 72
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    invoke-direct {v0, p1, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    return-object v0
.end method

.method public newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;
    .registers 6
    .parameter "zoom"

    .prologue
    .line 83
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->mapMode:I

    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapState;->bicyclingLayerEnabled:Z

    invoke-direct {v0, v1, p1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    return-object v0
.end method
