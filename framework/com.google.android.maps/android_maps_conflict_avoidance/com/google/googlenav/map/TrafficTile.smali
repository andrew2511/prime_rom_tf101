.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
.super Ljava/lang/Object;
.source "TrafficTile.java"


# instance fields
.field private dataTime:J

.field private lastAccess:J

.field private final location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->dataTime:J

    .line 55
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 56
    return-void
.end method


# virtual methods
.method public getDataTime()J
    .registers 3

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isEmpty()Z

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
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->dataTime:J

    goto :goto_12
.end method

.method getLastAccess()J
    .registers 3

    .prologue
    .line 172
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->lastAccess:J

    return-wide v0
.end method

.method public getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    return-object v0
.end method

.method public getTrafficRoads()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    return-object v0
.end method

.method public isComplete()Z
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    array-length v0, v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public readData([B)V
    .registers 15
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    const/4 v11, 0x0

    const/4 v12, 0x6

    invoke-direct {v10, p1, v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 121
    .local v0, dataInputStream:Ljava/io/DataInputStream;
    const v10, 0x54524133

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    if-eq v10, v11, :cond_1d

    .line 122
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Bad traffic header"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 126
    :cond_1d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 128
    .local v3, inflatedDataSize:I
    const/4 v9, 0x6

    .line 129
    .local v9, startOfDeflatedBytes:I
    array-length v10, p1

    sub-int v4, v10, v9

    .line 132
    .local v4, lengthOfDeflatedBytes:I
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/util/RuntimeCheck;->isTest()Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 138
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, p1, v9, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v1, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 146
    .local v1, dis:Ljava/io/DataInput;
    :goto_35
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v8

    .line 147
    .local v8, roadwayPropertyLength:I
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v6

    .line 148
    .local v6, roadPointLength:I
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v5

    .line 149
    .local v5, numRoadways:I
    new-array v7, v5, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    .line 150
    .local v7, roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_44
    if-ge v2, v5, :cond_58

    .line 153
    invoke-static {v1, v8, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->readTrafficRoad(Ljava/io/DataInput;II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    move-result-object v10

    aput-object v10, v7, v2

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 141
    .end local v1           #dis:Ljava/io/DataInput;
    .end local v2           #i:I
    .end local v5           #numRoadways:I
    .end local v6           #roadPointLength:I
    .end local v7           #roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .end local v8           #roadwayPropertyLength:I
    :cond_4f
    invoke-static {p1, v9, v4, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->inflate([BIII)[B

    move-result-object v10

    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    move-result-object v1

    .restart local v1       #dis:Ljava/io/DataInput;
    goto :goto_35

    .line 157
    .restart local v2       #i:I
    .restart local v5       #numRoadways:I
    .restart local v6       #roadPointLength:I
    .restart local v7       #roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .restart local v8       #roadwayPropertyLength:I
    :cond_58
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v10

    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v10

    invoke-interface {v10}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->setData(J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;)V

    .line 159
    return-void
.end method

.method protected setData(J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;)V
    .registers 4
    .parameter "time"
    .parameter "roads"

    .prologue
    .line 105
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->dataTime:J

    .line 106
    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    .line 107
    return-void
.end method

.method public setLastAccess(J)V
    .registers 3
    .parameter "time"

    .prologue
    .line 165
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->lastAccess:J

    .line 166
    return-void
.end method
