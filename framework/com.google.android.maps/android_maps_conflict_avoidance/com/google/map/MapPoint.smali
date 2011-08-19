.class public Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
.super Ljava/lang/Object;
.source "MapPoint.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/map/Geometry;


# static fields
.field private static final PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

.field static mercatorValues:[I

.field static reverseMercatorValues:[I


# instance fields
.field private final latitudeE6:I

.field private final longitudeE6:I

.field private final pixelCoordX:I

.field private final pixelCoordY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    .line 62
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    .line 71
    const/16 v0, 0x16

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    .line 72
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustLongitude(I)I

    move-result p2

    .line 128
    const v0, 0x4c4b400

    if-le p1, v0, :cond_f

    .line 129
    const p1, 0x4c4b400

    .line 132
    :cond_f
    const v0, -0x4c4b400

    if-ge p1, v0, :cond_17

    .line 133
    const p1, -0x4c4b400

    .line 136
    :cond_17
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    .line 137
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    .line 138
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-static {p2, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixelFromLon(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    .line 139
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-static {p1, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixelFromLat(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    .line 140
    return-void
.end method

.method public constructor <init>(III)V
    .registers 7
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "zoomLevel"

    .prologue
    const/16 v2, 0x16

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-static {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    .line 152
    .local v0, zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v1

    invoke-static {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustPixelX(II)I

    move-result p1

    .line 153
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v1

    invoke-static {p2, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustPixelY(II)I

    move-result p2

    .line 154
    invoke-virtual {v0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    .line 156
    invoke-virtual {v0, p2, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    .line 158
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-static {v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitudeFromY(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    .line 159
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-static {v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitudeFromX(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    .line 160
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 9
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "zoomLevel"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const/16 v2, 0x16

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p5}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustLongitude(I)I

    move-result p5

    .line 175
    iput p4, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    .line 176
    iput p5, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    .line 177
    invoke-static {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    .line 178
    .local v0, zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v1

    invoke-static {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustPixelX(II)I

    move-result p1

    .line 179
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v1

    invoke-static {p2, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustPixelY(II)I

    move-result p2

    .line 180
    invoke-virtual {v0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    .line 182
    invoke-virtual {v0, p2, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    .line 184
    return-void
.end method

.method private static adjustLongitude(I)I
    .registers 3
    .parameter "longitude"

    .prologue
    const v1, 0x15752a00

    .line 80
    :goto_3
    const v0, -0xaba9500

    if-ge p0, v0, :cond_a

    .line 81
    add-int/2addr p0, v1

    goto :goto_3

    .line 83
    :cond_a
    :goto_a
    const v0, 0xaba9500

    if-le p0, v0, :cond_11

    .line 84
    sub-int/2addr p0, v1

    goto :goto_a

    .line 86
    :cond_11
    return p0
.end method

.method private static adjustPixelX(II)I
    .registers 2
    .parameter "pixelX"
    .parameter "equatorPixels"

    .prologue
    .line 95
    :goto_0
    if-lt p0, p1, :cond_4

    .line 96
    sub-int/2addr p0, p1

    goto :goto_0

    .line 98
    :cond_4
    :goto_4
    if-gez p0, :cond_8

    .line 99
    add-int/2addr p0, p1

    goto :goto_4

    .line 101
    :cond_8
    return p0
.end method

.method private static adjustPixelY(II)I
    .registers 3
    .parameter "pixelY"
    .parameter "equatorPixels"

    .prologue
    .line 111
    if-gez p0, :cond_4

    .line 112
    const/4 v0, 0x0

    .line 116
    :goto_3
    return v0

    .line 113
    :cond_4
    if-lt p0, p1, :cond_a

    .line 114
    const/4 v0, 0x1

    sub-int v0, p1, v0

    goto :goto_3

    :cond_a
    move v0, p0

    .line 116
    goto :goto_3
.end method

.method private static getLatitudeFromY(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .registers 11
    .parameter "y"
    .parameter "zoom"

    .prologue
    .line 417
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getReverseMercatorValues()[I

    move-result-object v1

    .line 419
    .local v1, data:[I
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int p0, v0, p0

    invoke-static {p0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelsToMercator(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    .end local p0
    move-result v3

    .line 420
    .local v3, mercator:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const p1, 0x4c4b40

    div-int/2addr p0, p1

    .end local p1
    add-int/lit8 v2, p0, 0x1

    .line 423
    .local v2, indexFloor:I
    array-length p0, v1

    const/4 p1, 0x2

    sub-int/2addr p0, p1

    if-lt v2, p0, :cond_29

    .line 424
    if-lez v3, :cond_25

    const p0, 0x4c4b400

    .line 450
    .end local v1           #data:[I
    :cond_24
    :goto_24
    return p0

    .line 424
    .restart local v1       #data:[I
    :cond_25
    const p0, -0x4c4b400

    goto :goto_24

    .line 427
    :cond_29
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const p1, 0x4c4b40

    rem-int v4, p0, p1

    .line 428
    .local v4, yDiff:I
    const/4 p0, 0x1

    sub-int p0, v2, p0

    aget p0, v1, p0

    mul-int/lit8 p0, p0, -0x1

    aget p1, v1, v2

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p0, p1

    add-int/lit8 p1, v2, 0x1

    aget p1, v1, p1

    mul-int/lit8 p1, p1, 0x3

    sub-int/2addr p0, p1

    add-int/lit8 p1, v2, 0x2

    aget p1, v1, p1

    add-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x6

    .line 432
    .local p0, cubicA:I
    const/4 p1, 0x1

    sub-int p1, v2, p1

    aget p1, v1, p1

    mul-int/lit8 p1, p1, 0x3

    aget v0, v1, v2

    mul-int/lit8 v0, v0, 0x6

    sub-int/2addr p1, v0

    add-int/lit8 v0, v2, 0x1

    aget v0, v1, v0

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x6

    .line 435
    .local p1, cubicB:I
    const/4 v0, 0x1

    sub-int v0, v2, v0

    aget v0, v1, v0

    mul-int/lit8 v0, v0, -0x2

    aget v5, v1, v2

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v0, v5

    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v0, v5

    add-int/lit8 v5, v2, 0x2

    aget v5, v1, v5

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x6

    .line 439
    .local v0, cubicC:I
    aget v1, v1, v2

    .line 440
    .local v1, cubicD:I
    int-to-long v5, p0

    int-to-long v7, v4

    mul-long/2addr v5, v7

    int-to-long v7, v4

    mul-long/2addr v5, v7

    const-wide/32 v7, 0x4c4b40

    div-long/2addr v5, v7

    int-to-long v7, v4

    mul-long/2addr v5, v7

    const-wide/32 v7, 0x4c4b40

    div-long/2addr v5, v7

    const-wide/32 v7, 0x4c4b40

    div-long/2addr v5, v7

    int-to-long p0, p1

    int-to-long v7, v4

    mul-long/2addr p0, v7

    int-to-long v7, v4

    mul-long/2addr p0, v7

    const-wide/32 v7, 0x4c4b40

    div-long/2addr p0, v7

    .end local p0           #cubicA:I
    const-wide/32 v7, 0x4c4b40

    div-long/2addr p0, v7

    add-long/2addr p0, v5

    int-to-long v5, v0

    int-to-long v7, v4

    mul-long v4, v5, v7

    const-wide/32 v6, 0x4c4b40

    div-long/2addr v4, v6

    .end local v4           #yDiff:I
    add-long/2addr p0, v4

    int-to-long v0, v1

    add-long/2addr p0, v0

    long-to-int p0, p0

    .line 446
    .local p0, latitude:I
    const p1, 0x4c4b400

    if-le p0, p1, :cond_b2

    .line 447
    .end local v0           #cubicC:I
    .end local p1           #cubicB:I
    const p0, 0x4c4b400

    .line 449
    :cond_b2
    if-gez v3, :cond_24

    neg-int p0, p0

    goto/16 :goto_24
.end method

.method private static getLongitudeFromX(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .registers 6
    .parameter "x"
    .parameter "zoom"

    .prologue
    .line 485
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x15752a00

    mul-long/2addr v0, v2

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getMapPointFromXY(III)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .registers 4
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "zoomLevel"

    .prologue
    .line 815
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-direct {v0, p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(III)V

    return-object v0
.end method

.method private static getMercatorIndex(I)I
    .registers 3
    .parameter "latitude"

    .prologue
    .line 639
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xf4240

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static getMercatorValues()[I
    .registers 4

    .prologue
    .line 223
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    if-nez v2, :cond_1a

    .line 224
    const/16 v2, 0x54

    new-array v2, v2, [I

    sput-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    .line 227
    const/16 v2, 0xfd

    :try_start_c
    new-array v1, v2, [B

    fill-array-data v1, :array_28

    .line 246
    .local v1, mercbytes:[B
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    move-result-object v2

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->readMercatorValues(Ljava/io/DataInput;[I)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_1d

    .line 252
    .end local v1           #mercbytes:[B
    :cond_1a
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    return-object v2

    .line 247
    :catch_1d
    move-exception v2

    move-object v0, v2

    .line 248
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t read mercator.dat"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    nop

    :array_28
    .array-data 0x1
        0xfft
        0xf0t
        0xbdt
        0x8dt
        0xft
        0x42t
        0x73t
        0xft
        0x42t
        0x73t
        0xft
        0x43t
        0xa3t
        0xft
        0x46t
        0x6t
        0xft
        0x49t
        0x99t
        0xft
        0x4et
        0x61t
        0xft
        0x54t
        0x5et
        0xft
        0x5bt
        0x93t
        0xft
        0x64t
        0x2t
        0xft
        0x6dt
        0xb0t
        0xft
        0x78t
        0x9ft
        0xft
        0x84t
        0xd4t
        0xft
        0x92t
        0x54t
        0xft
        0xa1t
        0x26t
        0xft
        0xb1t
        0x4et
        0xft
        0xc2t
        0xd3t
        0xft
        0xd5t
        0xbdt
        0xft
        0xeat
        0x15t
        0xft
        0xfft
        0xe1t
        0x10t
        0x17t
        0x2dt
        0x10t
        0x30t
        0x1t
        0x10t
        0x4at
        0x6bt
        0x10t
        0x66t
        0x74t
        0x10t
        0x84t
        0x2bt
        0x10t
        0xa3t
        0x9ct
        0x10t
        0xc4t
        0xd7t
        0x10t
        0xe7t
        0xedt
        0x11t
        0xct
        0xeet
        0x11t
        0x33t
        0xect
        0x11t
        0x5ct
        0xfct
        0x11t
        0x88t
        0x34t
        0x11t
        0xb5t
        0xa9t
        0x11t
        0xe5t
        0x76t
        0x12t
        0x17t
        0xb4t
        0x12t
        0x4ct
        0x81t
        0x12t
        0x83t
        0xfdt
        0x12t
        0xbet
        0x46t
        0x12t
        0xfbt
        0x84t
        0x13t
        0x3bt
        0xdbt
        0x13t
        0x7ft
        0x77t
        0x13t
        0xc6t
        0x86t
        0x14t
        0x11t
        0x38t
        0x14t
        0x5ft
        0xc4t
        0x14t
        0xb2t
        0x64t
        0x15t
        0x9t
        0x57t
        0x15t
        0x64t
        0xe5t
        0x15t
        0xc5t
        0x56t
        0x16t
        0x2at
        0xfft
        0x16t
        0x96t
        0x3at
        0x17t
        0x7t
        0x6dt
        0x17t
        0x7ft
        0x2t
        0x17t
        0xfdt
        0x75t
        0x18t
        0x83t
        0x48t
        0x19t
        0x11t
        0x14t
        0x19t
        0xa7t
        0x78t
        0x1at
        0x47t
        0x2et
        0x1at
        0xf1t
        0x3t
        0x1bt
        0xa5t
        0xd9t
        0x1ct
        0x66t
        0xb3t
        0x1dt
        0x34t
        0xb3t
        0x1et
        0x11t
        0x1ft
        0x1et
        0xfdt
        0x6ft
        0x1ft
        0xfbt
        0x4at
        0x21t
        0xct
        0x97t
        0x22t
        0x33t
        0x88t
        0x23t
        0x72t
        0xa5t
        0x24t
        0xcct
        0xe2t
        0x26t
        0x45t
        0xb4t
        0x27t
        0xe1t
        0x2at
        0x29t
        0xa4t
        0x19t
        0x2bt
        0x94t
        0x46t
        0x2dt
        0xb8t
        0xa5t
        0x30t
        0x19t
        0xact
        0x32t
        0xc1t
        0xc1t
        0x35t
        0xbdt
        0xd1t
        0x39t
        0x1et
        0x1ct
        0x3ct
        0xf7t
        0x69t
        0x41t
        0x64t
        0xa0t
        0x46t
        0x89t
        0x52t
        0x4ct
        0x95t
        0x73t
        0x53t
        0xcbt
        0x4ft
        0x5ct
        0x89t
        0x34t
        0x67t
        0x5at
        0xct
    .end array-data
.end method

.method private static getReverseMercatorValues()[I
    .registers 4

    .prologue
    .line 351
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    if-nez v2, :cond_1a

    .line 352
    const/16 v2, 0x8d

    new-array v2, v2, [I

    sput-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    .line 355
    const/16 v2, 0x1a8

    :try_start_c
    new-array v1, v2, [B

    fill-array-data v1, :array_28

    .line 392
    .local v1, latBytes:[B
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    move-result-object v2

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->readMercatorValues(Ljava/io/DataInput;[I)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_1d

    .line 398
    .end local v1           #latBytes:[B
    :cond_1a
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    return-object v2

    .line 393
    :catch_1d
    move-exception v2

    move-object v0, v2

    .line 394
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "rmercator.dat is incorrect"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 355
    nop

    :array_28
    .array-data 0x1
        0xfft
        0xe4t
        0x89t
        0xe8t
        0x1bt
        0x76t
        0x18t
        0x1bt
        0x76t
        0x18t
        0x1bt
        0x6ft
        0x2at
        0x1bt
        0x61t
        0x55t
        0x1bt
        0x4ct
        0xaet
        0x1bt
        0x31t
        0x4bt
        0x1bt
        0xft
        0x4ft
        0x1at
        0xe6t
        0xe6t
        0x1at
        0xb8t
        0x3dt
        0x1at
        0x83t
        0x8et
        0x1at
        0x49t
        0x16t
        0x1at
        0x9t
        0x19t
        0x19t
        0xc3t
        0xddt
        0x19t
        0x79t
        0xaft
        0x19t
        0x2at
        0xdet
        0x18t
        0xd7t
        0xbat
        0x18t
        0x80t
        0x99t
        0x18t
        0x25t
        0xcdt
        0x17t
        0xc7t
        0xaet
        0x17t
        0x66t
        0x8dt
        0x17t
        0x2t
        0xc0t
        0x16t
        0x9ct
        0x9bt
        0x16t
        0x34t
        0x6dt
        0x15t
        0xcat
        0x86t
        0x15t
        0x5ft
        0x30t
        0x14t
        0xf2t
        0xb8t
        0x14t
        0x85t
        0x61t
        0x14t
        0x17t
        0x6ft
        0x13t
        0xa9t
        0x21t
        0x13t
        0x3at
        0xb4t
        0x12t
        0xcct
        0x5et
        0x12t
        0x5et
        0x55t
        0x11t
        0xf0t
        0xc8t
        0x11t
        0x83t
        0xe6t
        0x11t
        0x17t
        0xd6t
        0x10t
        0xact
        0xc0t
        0x10t
        0x42t
        0xc3t
        0xft
        0xdat
        0x2t
        0xft
        0x72t
        0x96t
        0xft
        0xct
        0x99t
        0xet
        0xa8t
        0x20t
        0xet
        0x45t
        0x40t
        0xdt
        0xe4t
        0x7t
        0xdt
        0x84t
        0x86t
        0xdt
        0x26t
        0xc6t
        0xct
        0xcat
        0xd3t
        0xct
        0x70t
        0xb5t
        0xct
        0x18t
        0x71t
        0xbt
        0xc2t
        0xat
        0xbt
        0x6dt
        0x87t
        0xbt
        0x1at
        0xe5t
        0xat
        0xcat
        0x28t
        0xat
        0x7bt
        0x4dt
        0xat
        0x2et
        0x52t
        0x9t
        0xe3t
        0x34t
        0x9t
        0x99t
        0xf0t
        0x9t
        0x52t
        0x82t
        0x9t
        0xct
        0xe3t
        0x8t
        0xc9t
        0xet
        0x8t
        0x86t
        0xfet
        0x8t
        0x46t
        0xaat
        0x8t
        0x8t
        0xdt
        0x7t
        0xcbt
        0x1et
        0x7t
        0x8ft
        0xd7t
        0x7t
        0x56t
        0x2dt
        0x7t
        0x1et
        0x1bt
        0x6t
        0xe7t
        0x98t
        0x6t
        0xb2t
        0x9at
        0x6t
        0x7ft
        0x1at
        0x6t
        0x4dt
        0xft
        0x6t
        0x1ct
        0x72t
        0x5t
        0xedt
        0x38t
        0x5t
        0xbft
        0x59t
        0x5t
        0x92t
        0xcet
        0x5t
        0x67t
        0x8et
        0x5t
        0x3dt
        0x91t
        0x5t
        0x14t
        0xcdt
        0x4t
        0xedt
        0x3bt
        0x4t
        0xc6t
        0xd5t
        0x4t
        0xa1t
        0x8ft
        0x4t
        0x7dt
        0x66t
        0x4t
        0x5at
        0x4et
        0x4t
        0x38t
        0x41t
        0x4t
        0x17t
        0x3at
        0x3t
        0xf7t
        0x2ft
        0x3t
        0xd8t
        0x1at
        0x3t
        0xb9t
        0xf3t
        0x3t
        0x9ct
        0xb5t
        0x3t
        0x80t
        0x58t
        0x3t
        0x64t
        0xd7t
        0x3t
        0x4at
        0x2bt
        0x3t
        0x30t
        0x4ct
        0x3t
        0x17t
        0x37t
        0x2t
        0xfet
        0xe4t
        0x2t
        0xe7t
        0x4ft
        0x2t
        0xd0t
        0x72t
        0x2t
        0xbat
        0x46t
        0x2t
        0xa4t
        0xc8t
        0x2t
        0x8ft
        0xf1t
        0x2t
        0x7bt
        0xbdt
        0x2t
        0x68t
        0x28t
        0x2t
        0x55t
        0x2bt
        0x2t
        0x42t
        0xc3t
        0x2t
        0x30t
        0xect
        0x2t
        0x1ft
        0xa0t
        0x2t
        0xet
        0xddt
        0x1t
        0xfet
        0x9ct
        0x1t
        0xeet
        0xdct
        0x1t
        0xdft
        0x96t
        0x1t
        0xd0t
        0xcbt
        0x1t
        0xc2t
        0x72t
        0x1t
        0xb4t
        0x8at
        0x1t
        0xa7t
        0x11t
        0x1t
        0x9at
        0x1t
        0x1t
        0x8dt
        0x58t
        0x1t
        0x81t
        0x12t
        0x1t
        0x75t
        0x2ft
        0x1t
        0x69t
        0xa7t
        0x1t
        0x5et
        0x7ct
        0x1t
        0x53t
        0xa8t
        0x1t
        0x49t
        0x2at
        0x1t
        0x3et
        0xfft
        0x1t
        0x35t
        0x23t
        0x1t
        0x2bt
        0x97t
        0x1t
        0x22t
        0x54t
        0x1t
        0x19t
        0x5bt
        0x1t
        0x10t
        0xaat
        0x1t
        0x8t
        0x3ct
        0x1t
        0x0t
        0x11t
        0x0t
        0xf8t
        0x28t
        0x0t
        0xf0t
        0x7ct
        0x0t
        0xe9t
        0xdt
        0x0t
        0xe1t
        0xd8t
        0x0t
        0xdat
        0xdet
        0x0t
        0xd4t
        0x19t
        0x0t
        0xcdt
        0x8bt
        0x0t
        0xc7t
        0x30t
        0x0t
        0xc1t
        0x8t
        0x0t
        0xbbt
        0x10t
        0x0t
        0xb5t
        0x47t
    .end array-data
.end method

.method public static getXPixelFromLon(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .registers 8
    .parameter "longitude"
    .parameter "zoom"

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    int-to-long v2, p0

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x15752a00

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getYPixelFromLat(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .registers 11
    .parameter "latitude"
    .parameter "zoom"

    .prologue
    .line 288
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getMercatorIndex(I)I

    move-result v3

    .line 290
    .local v3, indexFloor:I
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xf4240

    rem-int v4, v0, v1

    .line 292
    .local v4, latDiff:I
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getMercatorValues()[I

    move-result-object v5

    .line 294
    .local v5, values:[I
    const/4 v0, 0x1

    sub-int v0, v3, v0

    aget v0, v5, v0

    mul-int/lit8 v0, v0, -0x1

    aget v1, v5, v3

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x1

    aget v1, v5, v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x2

    aget v1, v5, v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    .line 299
    .local v0, cubicA:I
    const/4 v1, 0x1

    sub-int v1, v3, v1

    aget v1, v5, v1

    mul-int/lit8 v1, v1, 0x3

    aget v2, v5, v3

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    aget v2, v5, v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x6

    .line 303
    .local v1, cubicB:I
    const/4 v2, 0x1

    sub-int v2, v3, v2

    aget v2, v5, v2

    mul-int/lit8 v2, v2, -0x2

    aget v6, v5, v3

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v2, v6

    add-int/lit8 v6, v3, 0x1

    aget v6, v5, v6

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v2, v6

    add-int/lit8 v6, v3, 0x2

    aget v6, v5, v6

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x6

    .line 308
    .local v2, cubicC:I
    aget v3, v5, v3

    .line 310
    .local v3, cubicD:I
    int-to-long v5, v0

    int-to-long v7, v4

    mul-long/2addr v5, v7

    int-to-long v7, v4

    mul-long/2addr v5, v7

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    .end local v5           #values:[I
    int-to-long v7, v4

    mul-long/2addr v5, v7

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    int-to-long v0, v1

    int-to-long v7, v4

    mul-long/2addr v0, v7

    int-to-long v7, v4

    mul-long/2addr v0, v7

    const-wide/32 v7, 0xf4240

    div-long/2addr v0, v7

    .end local v0           #cubicA:I
    const-wide/32 v7, 0xf4240

    div-long/2addr v0, v7

    add-long/2addr v0, v5

    int-to-long v5, v2

    int-to-long v7, v4

    mul-long v4, v5, v7

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .end local v4           #latDiff:I
    add-long/2addr v0, v4

    int-to-long v2, v3

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 317
    .local v0, mercatorY:I
    if-gez p0, :cond_9f

    .line 318
    .end local v2           #cubicC:I
    neg-int p0, v0

    .line 327
    .end local v0           #mercatorY:I
    .local p0, mercatorY:I
    :goto_8c
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-static {p0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorToPixelsTimesTen(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result p0

    .end local p0           #mercatorY:I
    div-int/lit8 p0, p0, 0xa

    int-to-long p0, p0

    sub-long p0, v0, p0

    long-to-int p0, p0

    .line 330
    .local p0, pixelY:I
    return p0

    .restart local v0       #mercatorY:I
    .local p0, latitude:I
    :cond_9f
    move p0, v0

    .end local v0           #mercatorY:I
    .local p0, mercatorY:I
    goto :goto_8c
.end method

.method public static latLonToString(II)Ljava/lang/String;
    .registers 4
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->e6ToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->e6ToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static mercatorToPixelsTimesTen(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .registers 6
    .parameter "mercatorValue"
    .parameter "zoom"

    .prologue
    .line 633
    int-to-long v0, p0

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x15752a00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static pixelsToMercator(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .registers 6
    .parameter "pixelValue"
    .parameter "zoom"

    .prologue
    .line 646
    int-to-long v0, p0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static readMercatorValues(Ljava/io/DataInput;[I)V
    .registers 6
    .parameter "dis"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    aput v2, p1, v1

    .line 463
    const/4 v0, 0x1

    .local v0, i:I
    :goto_8
    array-length v1, p1

    if-ge v0, v1, :cond_28

    .line 464
    const/4 v1, 0x1

    sub-int v1, v0, v1

    aget v1, p1, v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    or-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 469
    :cond_28
    return-void
.end method

.method public static readPoint(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .registers 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(II)V

    return-object v0
.end method

.method public static writePoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Ljava/io/DataOutput;)V
    .registers 3
    .parameter "point"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 771
    if-eqz p0, :cond_7

    .line 772
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->writePoint(Ljava/io/DataOutput;)V

    .line 777
    :goto_6
    return-void

    .line 774
    :cond_7
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 775
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_6
.end method

.method private writePoint(Ljava/io/DataOutput;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 821
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 822
    return-void
.end method


# virtual methods
.method public distanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)J
    .registers 10
    .parameter "point"

    .prologue
    const-wide/16 v6, 0x64

    .line 666
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    iget v1, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    iget v3, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    iget v3, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    iget v5, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 825
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 835
    :goto_5
    return v2

    .line 828
    :cond_6
    instance-of v2, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    if-nez v2, :cond_c

    move v2, v4

    .line 829
    goto :goto_5

    .line 832
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-object v1, v0

    .line 835
    .local v1, mapPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    iget v3, v1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    iget v3, v1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    if-eq v2, v3, :cond_28

    :cond_1c
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    iget v3, v1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    if-ne v2, v3, :cond_2a

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    iget v3, v1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    if-ne v2, v3, :cond_2a

    :cond_28
    move v2, v5

    goto :goto_5

    :cond_2a
    move v2, v4

    goto :goto_5
.end method

.method public getDefiningPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .registers 1

    .prologue
    .line 791
    return-object p0
.end method

.method public getLatitude()I
    .registers 2

    .prologue
    .line 403
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    return v0
.end method

.method public getLongitude()I
    .registers 2

    .prologue
    .line 473
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    return v0
.end method

.method public getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .registers 5
    .parameter "zoom"

    .prologue
    .line 200
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v0

    return v0
.end method

.method public getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .registers 5
    .parameter "zoom"

    .prologue
    .line 340
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 842
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    .line 843
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1d

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    add-int v0, v1, v2

    .line 844
    return v0
.end method

.method public pixelDistanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)J
    .registers 11
    .parameter "point"
    .parameter "zoom"

    .prologue
    .line 758
    invoke-virtual {p1, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v2

    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v3

    sub-int v0, v2, v3

    .line 759
    .local v0, xDiff:I
    invoke-virtual {p1, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v2

    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v3

    sub-int v1, v2, v3

    .line 760
    .local v1, yDiff:I
    int-to-long v2, v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    int-to-long v4, v1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .registers 14
    .parameter "xPixel"
    .parameter "yPixel"
    .parameter "zoom"

    .prologue
    const/16 v3, 0x16

    .line 593
    invoke-virtual {p3, p1, v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v0

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    add-int v1, v0, v6

    .line 595
    .local v1, newX:I
    invoke-virtual {p3, p2, v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    move-result v0

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    add-int v2, v0, v6

    .line 599
    .local v2, newY:I
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    .line 600
    .local v4, newLatitude:I
    if-eqz p2, :cond_1c

    .line 601
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-static {v2, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitudeFromY(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v4

    .line 603
    :cond_1c
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    .line 604
    .local v5, newLongitude:I
    if-eqz p1, :cond_2d

    .line 605
    int-to-long v6, p1

    const-wide/32 v8, 0x15752a00

    mul-long/2addr v6, v8

    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v0

    int-to-long v8, v0

    div-long/2addr v6, v8

    long-to-int v0, v6

    add-int/2addr v5, v0

    .line 608
    :cond_2d
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(IIIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 491
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latLonToString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
