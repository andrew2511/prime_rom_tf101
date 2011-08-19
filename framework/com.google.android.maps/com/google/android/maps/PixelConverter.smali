.class final Lcom/google/android/maps/PixelConverter;
.super Ljava/lang/Object;
.source "PixelConverter.java"

# interfaces
.implements Lcom/google/android/maps/Projection;


# instance fields
.field private final mInverse:Landroid/graphics/Matrix;

.field private final mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mTempFloats:[F

.field private final mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;


# direct methods
.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V
    .registers 3
    .parameter "map"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    .line 38
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    .line 42
    iput-object p1, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    .line 43
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 44
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/PixelConverter;)V
    .registers 3
    .parameter "pc"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    .line 38
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    .line 48
    iget-object v0, p1, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    .line 49
    return-void
.end method

.method private transformTempPoint()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v1, v1, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    int-to-float v1, v1

    aput v1, v0, v2

    .line 119
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v1, v1, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    int-to-float v1, v1

    aput v1, v0, v3

    .line 120
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 121
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    aget v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    .line 122
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    aget v1, v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    .line 123
    return-void
.end method


# virtual methods
.method public fromPixels(II)Lcom/google/android/maps/GeoPoint;
    .registers 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 84
    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    monitor-enter v6

    .line 85
    :try_start_3
    iget-object v7, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    const/4 v8, 0x0

    int-to-float v9, p1

    aput v9, v7, v8

    .line 86
    iget-object v7, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    const/4 v8, 0x1

    int-to-float v9, p2

    aput v9, v7, v8

    .line 87
    iget-object v7, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 88
    iget-object v7, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    float-to-int p1, v7

    .line 89
    iget-object v7, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    float-to-int p2, v7

    .line 90
    monitor-exit v6
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_47

    .line 91
    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    .line 92
    .local v0, centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v6, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    move-result-object v1

    .line 93
    .local v1, centerXY:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    iget v6, v1, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    sub-int v2, p1, v6

    .line 94
    .local v2, dx:I
    iget v6, v1, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    sub-int v3, p2, v6

    .line 95
    .local v3, dy:I
    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v6

    invoke-virtual {v0, v2, v3, v6}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v5

    .line 96
    .local v5, tapPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    new-instance v4, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v4, v5}, Lcom/google/android/maps/GeoPoint;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    .line 97
    .local v4, point:Lcom/google/android/maps/GeoPoint;
    return-object v4

    .line 90
    .end local v0           #centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .end local v1           #centerXY:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    .end local v2           #dx:I
    .end local v3           #dy:I
    .end local v4           #point:Lcom/google/android/maps/GeoPoint;
    .end local v5           #tapPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :catchall_47
    move-exception v7

    :try_start_48
    monitor-exit v6
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v7
.end method

.method getInverseMatrix()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public metersToEquatorPixels(F)F
    .registers 5
    .parameter "meters"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    float-to-int v2, p1

    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getPixelsForDistance(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    return v0
.end method

.method resetMatrix()V
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 163
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 164
    return-void
.end method

.method setMatricesFrom(Lcom/google/android/maps/PixelConverter;)V
    .registers 4
    .parameter "pc"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 54
    return-void
.end method

.method setMatrix(Landroid/graphics/Matrix;FLcom/google/android/maps/GeoPoint;FF)V
    .registers 12
    .parameter "animationState"
    .parameter "scale"
    .parameter "fixed"
    .parameter "fixedX"
    .parameter "fixedY"

    .prologue
    .line 142
    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 144
    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    monitor-enter v2

    .line 145
    :try_start_8
    iget-object v3, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {p3}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    invoke-virtual {v3, v4, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    .line 146
    iget-object v3, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v4, v4, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v5, v5, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 147
    iget-object v3, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 148
    iget-object v3, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 149
    iget-object v3, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v3, v3, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    int-to-float v3, v3

    sub-float v0, v3, p4

    .line 150
    .local v0, correctionX:F
    iget-object v3, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v3, v3, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    int-to-float v3, v3

    sub-float v1, v3, p5

    .line 151
    .local v1, correctionY:F
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_6a

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 153
    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 156
    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 157
    const-string v2, "PixelConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting singular matrix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_69
    return-void

    .line 151
    .end local v0           #correctionX:F
    .end local v1           #correctionY:F
    :catchall_6a
    move-exception v3

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v3
.end method

.method public toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 4
    .parameter "in"
    .parameter "out"

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/maps/PixelConverter;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .registers 8
    .parameter "in"
    .parameter "out"
    .parameter "transform"

    .prologue
    .line 69
    if-nez p2, :cond_7

    new-instance p2, Landroid/graphics/Point;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 70
    .restart local p2
    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    monitor-enter v0

    .line 71
    :try_start_a
    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    invoke-virtual {v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    .line 72
    if-eqz p3, :cond_1a

    invoke-direct {p0}, Lcom/google/android/maps/PixelConverter;->transformTempPoint()V

    .line 73
    :cond_1a
    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v1, v1, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 74
    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    iget v1, v1, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    iput v1, p2, Landroid/graphics/Point;->y:I

    .line 75
    monitor-exit v0

    return-object p2

    .line 76
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_28

    throw v1
.end method
