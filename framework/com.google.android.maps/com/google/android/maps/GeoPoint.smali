.class public Lcom/google/android/maps/GeoPoint;
.super Ljava/lang/Object;
.source "GeoPoint.java"


# instance fields
.field private final mMapPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .parameter "latitudeE6"
    .parameter "longitudeE6"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v0, -0xaba9500

    if-ne p2, v0, :cond_a

    mul-int/lit8 p2, p2, -0x1

    .line 51
    :cond_a
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-direct {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 52
    return-void
.end method

.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V
    .registers 2
    .parameter "mp"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v4, 0x1

    .line 77
    if-ne p0, p1, :cond_5

    move v2, v4

    .line 87
    :goto_4
    return v2

    .line 80
    :cond_5
    instance-of v2, p1, Lcom/google/android/maps/GeoPoint;

    if-eqz v2, :cond_1d

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/google/android/maps/GeoPoint;

    move-object v1, v0

    .line 82
    .local v1, p:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v2, v4

    .line 83
    goto :goto_4

    .line 87
    .end local v1           #p:Lcom/google/android/maps/GeoPoint;
    :cond_1d
    const/4 v2, 0x0

    goto :goto_4
.end method

.method public getLatitudeE6()I
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v0

    return v0
.end method

.method public getLongitudeE6()I
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v0

    return v0
.end method

.method getMapPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
