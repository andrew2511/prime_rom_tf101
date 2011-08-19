.class public final Landroid_maps_conflict_avoidance/com/google/map/Zoom;
.super Ljava/lang/Object;
.source "Zoom.java"


# static fields
.field private static minZoomLevel:I

.field private static final zoomArray:[Landroid_maps_conflict_avoidance/com/google/map/Zoom;


# instance fields
.field private final equatorPixels:I

.field private final zoomLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x16

    const/4 v5, 0x1

    .line 38
    sput v5, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->minZoomLevel:I

    .line 51
    new-array v2, v6, [Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    sput-object v2, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomArray:[Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    .line 65
    const/16 v0, 0x100

    .line 66
    .local v0, equatorPixels:I
    const/4 v1, 0x1

    .local v1, zoomLevel:I
    :goto_c
    if-gt v1, v6, :cond_1e

    .line 67
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomArray:[Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    sub-int v3, v1, v5

    new-instance v4, Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-direct {v4, v1, v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;-><init>(II)V

    aput-object v4, v2, v3

    .line 68
    mul-int/lit8 v0, v0, 0x2

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 70
    :cond_1e
    return-void
.end method

.method private constructor <init>(II)V
    .registers 3
    .parameter "zoomLevel"
    .parameter "equatorPixels"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    .line 60
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    .line 61
    return-void
.end method

.method public static getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .registers 4
    .parameter "zoomLevel"

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    sget v1, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->minZoomLevel:I

    if-lt p0, v1, :cond_10

    const/16 v1, 0x16

    if-gt p0, v1, :cond_10

    .line 96
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomArray:[Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    const/4 v2, 0x1

    sub-int v2, p0, v2

    aget-object v0, v1, v2

    .line 99
    :cond_10
    return-object v0
.end method


# virtual methods
.method public changePixelsToTargetZoomlevel(II)I
    .registers 4
    .parameter "pixels"
    .parameter "zoomTargetLevel"

    .prologue
    .line 163
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    if-ge v0, p2, :cond_b

    .line 164
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    sub-int v0, p2, v0

    shl-int v0, p1, v0

    .line 166
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    sub-int/2addr v0, p2

    shr-int v0, p1, v0

    goto :goto_a
.end method

.method public getEquatorPixels()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    return v0
.end method

.method public getNextHigherZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    return-object v0
.end method

.method public getNextLowerZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .registers 3

    .prologue
    .line 175
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    return-object v0
.end method

.method public getPixelsForDistance(I)I
    .registers 6
    .parameter "meters"

    .prologue
    .line 77
    int-to-long v0, p1

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x26382e0

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getZoomLevel()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    return v0
.end method

.method public getZoomRatio(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .registers 4
    .parameter "zoomIn"

    .prologue
    .line 118
    iget v0, p1, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    div-int/2addr v0, v1

    return v0
.end method

.method public isMoreZoomedIn(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Z
    .registers 4
    .parameter "zoom"

    .prologue
    .line 142
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    iget v1, p1, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
