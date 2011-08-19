.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.source "BaseTileRequest.java"


# instance fields
.field protected final createTime:J

.field private final requestType:I

.field private stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

.field private textSize:I

.field private writeLatency:I


# direct methods
.method protected constructor <init>(IB)V
    .registers 7
    .parameter "requestType"
    .parameter "flags"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;-><init>()V

    .line 34
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    .line 50
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tile-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    shl-int/2addr v2, p2

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->formatTileTypesForLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, stopwatchName:Ljava/lang/String;
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    const-string v2, "t"

    const/16 v3, 0x16

    invoke-direct {v1, v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;-><init>(Ljava/lang/String;Ljava/lang/String;S)V

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    .line 56
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->start()V

    .line 57
    return-void
.end method

.method private static formatTileTypesForLog(I)Ljava/lang/String;
    .registers 3
    .parameter "tileTypes"

    .prologue
    .line 205
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 206
    .local v0, result:Ljava/util/Vector;
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_e

    .line 207
    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 209
    :cond_e
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_17

    .line 210
    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 213
    :cond_17
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_20

    .line 214
    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 217
    :cond_20
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_29

    .line 218
    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 221
    :cond_29
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_32

    .line 222
    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 224
    :cond_32
    const-string v1, ","

    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->join(Ljava/util/Vector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private readImageData(Ljava/io/DataInput;)[B
    .registers 4
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 191
    .local v1, tileSize:I
    new-array v0, v1, [B

    .line 194
    .local v0, imageBytes:[B
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 195
    return-object v0
.end method


# virtual methods
.method public getRequestType()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    return v0
.end method

.method protected abstract handleEndOfResponse(I)V
.end method

.method protected abstract processDownloadedTile(ILandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .registers 22
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/16 v18, 0x0

    .line 100
    .local v18, tileIndex:I
    :try_start_2
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v4

    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v12

    .line 101
    .local v12, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    move-wide v4, v0

    sub-long v4, v12, v4

    long-to-int v6, v4

    .line 102
    .local v6, firstByteLatency:I
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v17

    .line 103
    .local v17, tileEdition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->textSize:I

    move v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->setTileEditionAndTextSize(II)V

    .line 105
    const/4 v8, 0x0

    .line 106
    .local v8, tileCount:I
    const/4 v9, 0x0

    .line 107
    .local v9, totalSize:I
    const/16 v19, 0x0

    .line 108
    .local v19, tileTypes:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    move v4, v0

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_63

    .line 112
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v16

    .line 113
    .local v16, responseCode:I
    if-eqz v16, :cond_5f

    .line 115
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server returned: "

    .end local v6           #firstByteLatency:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_56
    .catchall {:try_start_2 .. :try_end_56} :catchall_56

    .line 155
    .end local v8           #tileCount:I
    .end local v9           #totalSize:I
    .end local v12           #now:J
    .end local v16           #responseCode:I
    .end local v17           #tileEdition:I
    .end local v19           #tileTypes:I
    :catchall_56
    move-exception v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->handleEndOfResponse(I)V

    throw v4

    .line 117
    .restart local v6       #firstByteLatency:I
    .restart local v8       #tileCount:I
    .restart local v9       #totalSize:I
    .restart local v12       #now:J
    .restart local v16       #responseCode:I
    .restart local v17       #tileEdition:I
    .restart local v19       #tileTypes:I
    :cond_5f
    :try_start_5f
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v8

    .line 121
    .end local v16           #responseCode:I
    :cond_63
    const/16 v18, 0x0

    :goto_65
    move/from16 v0, v18

    move v1, v8

    if-ge v0, v1, :cond_7e

    .line 123
    invoke-static/range {p1 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v11

    .line 124
    .local v11, location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    invoke-direct/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->readImageData(Ljava/io/DataInput;)[B

    move-result-object v10

    .line 125
    .local v10, imageBytes:[B
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object v2, v11

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->processDownloadedTile(ILandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)Z

    move-result v4

    if-eqz v4, :cond_af

    .line 147
    .end local v10           #imageBytes:[B
    .end local v11           #location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_7e
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v4

    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v14

    .line 148
    .local v14, now2:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    move-wide v4, v0

    sub-long v4, v14, v4

    long-to-int v7, v4

    .line 150
    .local v7, lastByteLatency:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    move-object v4, v0

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->stop()V

    .line 152
    invoke-static/range {v19 .. v19}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->formatTileTypesForLog(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->writeLatency:I

    move v5, v0

    invoke-static/range {v4 .. v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmLogger;->logTimingTileLatency(Ljava/lang/String;IIIII)V
    :try_end_a6
    .catchall {:try_start_5f .. :try_end_a6} :catchall_56

    .line 155
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->handleEndOfResponse(I)V

    .line 158
    const/4 v4, 0x1

    return v4

    .line 134
    .end local v7           #lastByteLatency:I
    .end local v14           #now2:J
    .restart local v10       #imageBytes:[B
    .restart local v11       #location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_af
    :try_start_af
    array-length v4, v10

    add-int/2addr v9, v4

    .line 142
    const/4 v4, 0x1

    invoke-virtual {v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getFlags()B
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_56

    move-result v5

    shl-int/2addr v4, v5

    or-int v19, v19, v4

    .line 121
    add-int/lit8 v18, v18, 0x1

    goto :goto_65
.end method

.method protected abstract setTileEditionAndTextSize(II)V
.end method

.method protected writeRequestForTiles([Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Ljava/io/DataOutput;)V
    .registers 11
    .parameter "tileList"
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    const/16 v7, 0x1a

    if-ne v6, v7, :cond_2a

    .line 71
    array-length v6, p1

    invoke-interface {p2, v6}, Ljava/io/DataOutput;->writeShort(I)V

    .line 72
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getTextSize()I

    move-result v6

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->textSize:I

    .line 73
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->textSize:I

    invoke-interface {p2, v6}, Ljava/io/DataOutput;->writeShort(I)V

    .line 74
    const/16 v6, 0x100

    invoke-interface {p2, v6}, Ljava/io/DataOutput;->writeShort(I)V

    .line 76
    const-wide/16 v0, 0xa2f

    .line 83
    .local v0, format:J
    sget-object v6, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/LocalLanguageTileLab;->INSTANCE:Landroid_maps_conflict_avoidance/com/google/googlenav/labs/LocalLanguageTileLab;

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/LocalLanguageTileLab;->isActive()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 84
    const-wide/16 v6, 0x2000

    or-long/2addr v0, v6

    .line 86
    :cond_27
    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 89
    .end local v0           #format:J
    :cond_2a
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2b
    array-length v6, p1

    if-ge v2, v6, :cond_36

    .line 90
    aget-object v5, p1, v2

    .line 91
    .local v5, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    invoke-virtual {v5, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->write(Ljava/io/DataOutput;)V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 93
    .end local v5           #tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_36
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v6

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v6

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v3

    .line 94
    .local v3, now:J
    iget-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    sub-long v6, v3, v6

    long-to-int v6, v6

    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->writeLatency:I

    .line 95
    return-void
.end method
