.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
.super Ljava/lang/Object;
.source "TrafficRoad.java"


# instance fields
.field private final roadContent:[B


# direct methods
.method constructor <init>([B)V
    .registers 2
    .parameter "roadContent"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    .line 50
    return-void
.end method

.method private static readShortFrom([BI)I
    .registers 4
    .parameter "content"
    .parameter "startByte"

    .prologue
    .line 147
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readTrafficRoad(Ljava/io/DataInput;II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .registers 11
    .parameter "dis"
    .parameter "roadwayPropertyLength"
    .parameter "roadPointLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    .line 108
    .local v6, trafficLineWidth:I
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    .line 109
    .local v5, trafficLineBackgroundWidth:I
    const/4 v7, 0x2

    sub-int v7, p1, v7

    invoke-interface {p0, v7}, Ljava/io/DataInput;->skipBytes(I)I

    .line 112
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    .line 113
    .local v3, numPoints:I
    mul-int/lit8 v7, v3, 0x5

    add-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    .line 115
    .local v4, roadPointsContent:[B
    const/4 v1, 0x0

    .line 118
    .local v1, nextByte:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #nextByte:I
    .local v2, nextByte:I
    int-to-byte v7, v6

    aput-byte v7, v4, v1

    .line 119
    add-int/lit8 v1, v2, 0x1

    .end local v2           #nextByte:I
    .restart local v1       #nextByte:I
    int-to-byte v7, v5

    aput-byte v7, v4, v2

    .line 121
    const/4 v0, 0x0

    .local v0, i:I
    :goto_24
    if-ge v0, v3, :cond_49

    .line 124
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v7

    invoke-static {v7, v4, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->writeShortTo(I[BI)I

    move-result v1

    .line 127
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v7

    invoke-static {v7, v4, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->writeShortTo(I[BI)I

    move-result v1

    .line 130
    add-int/lit8 v2, v1, 0x1

    .end local v1           #nextByte:I
    .restart local v2       #nextByte:I
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v4, v1

    .line 133
    const/4 v7, 0x5

    sub-int v7, p2, v7

    invoke-interface {p0, v7}, Ljava/io/DataInput;->skipBytes(I)I

    .line 121
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2           #nextByte:I
    .restart local v1       #nextByte:I
    goto :goto_24

    .line 137
    :cond_49
    new-instance v7, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    invoke-direct {v7, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;-><init>([B)V

    return-object v7
.end method

.method private static writeShortTo(I[BI)I
    .registers 5
    .parameter "value"
    .parameter "content"
    .parameter "nextByte"

    .prologue
    .line 141
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, nextByte:I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 142
    add-int/lit8 p2, v0, 0x1

    .end local v0           #nextByte:I
    .restart local p2
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 143
    return p2
.end method


# virtual methods
.method public getNumPoints()I
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    array-length v0, v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getSpeedCategory(I)I
    .registers 4
    .parameter "pointIndex"

    .prologue
    .line 79
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x6

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getTrafficLineBackgroundWidth()I
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getTrafficLineWidth()I
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getXOffset(I)I
    .registers 4
    .parameter "pointIndex"

    .prologue
    .line 64
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->readShortFrom([BI)I

    move-result v0

    return v0
.end method

.method public getYOffset(I)I
    .registers 4
    .parameter "pointIndex"

    .prologue
    .line 72
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->readShortFrom([BI)I

    move-result v0

    return v0
.end method
