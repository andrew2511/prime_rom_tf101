.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
.super Ljava/lang/Object;
.source "FlashEntry.java"


# static fields
.field static SIZE_IN_CATALOG:I


# instance fields
.field private final dataSize:I

.field private flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

.field private final tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private time:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/16 v0, 0x10

    sput v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->SIZE_IN_CATALOG:I

    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    .registers 6
    .parameter "mapTile"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v0

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLastAccessTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getDataSize()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JI)V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JI)V
    .registers 5
    .parameter "tile"
    .parameter "time"
    .parameter "dataSize"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 47
    invoke-virtual {p0, p2, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->setLastAccessTime(J)V

    .line 48
    iput p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    .line 49
    return-void
.end method

.method public static readFromCatalog(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .registers 7
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 114
    .local v2, time:I
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 115
    .local v0, dataSize:I
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v1

    .line 117
    .local v1, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    int-to-long v4, v2

    invoke-direct {v3, v1, v4, v5, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JI)V

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 148
    :goto_5
    return v2

    .line 138
    :cond_6
    instance-of v2, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    if-nez v2, :cond_c

    move v2, v4

    .line 139
    goto :goto_5

    .line 142
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-object v1, v0

    .line 144
    .local v1, flashEntry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    iget v3, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    if-eq v2, v3, :cond_18

    move v2, v4

    .line 145
    goto :goto_5

    .line 148
    :cond_18
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-nez v2, :cond_24

    iget-object v2, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-nez v2, :cond_22

    move v2, v5

    goto :goto_5

    :cond_22
    move v2, v4

    goto :goto_5

    :cond_24
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iget-object v3, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5
.end method

.method public getByteSize()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getFlashRecord()Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    return-object v0
.end method

.method public getLastAccessTime()J
    .registers 5

    .prologue
    .line 80
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->time:I

    int-to-long v0, v0

    const-wide/32 v2, 0x424b1f68

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 155
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->hashCode()I

    move-result v1

    move v0, v1

    .line 156
    .local v0, result:I
    :goto_b
    mul-int/lit8 v1, v0, 0x1d

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    add-int v0, v1, v2

    .line 157
    return v0

    .line 155
    .end local v0           #result:I
    :cond_12
    const/4 v1, 0x0

    move v0, v1

    goto :goto_b
.end method

.method public setFlashRecord(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V
    .registers 4
    .parameter "newRecord"

    .prologue
    .line 53
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    if-eqz v0, :cond_c

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FlashRecord already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_c
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    .line 58
    return-void
.end method

.method public setLastAccessTime(J)V
    .registers 7
    .parameter "time"

    .prologue
    .line 72
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/32 v2, 0x424b1f68

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->time:I

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getByteSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToCatalog(Ljava/io/DataOutput;)V
    .registers 3
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->time:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 130
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 131
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->write(Ljava/io/DataOutput;)V

    .line 132
    return-void
.end method
