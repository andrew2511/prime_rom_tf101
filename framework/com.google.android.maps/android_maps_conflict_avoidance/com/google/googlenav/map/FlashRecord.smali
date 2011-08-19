.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
.super Ljava/lang/Object;
.source "FlashRecord.java"


# static fields
.field private static final lastCacheDataLock:Ljava/lang/Object;

.field private static lastCachedData:[B

.field private static lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;


# instance fields
.field private final flashEntries:Ljava/util/Vector;

.field private recordId:I

.field private unverified:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 75
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCachedData:[B

    .line 80
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCacheDataLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    .line 91
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    .line 92
    return-void
.end method

.method static clearDataCache()V
    .registers 2

    .prologue
    .line 503
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCacheDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCachedData:[B

    .line 505
    const/4 v1, 0x0

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    .line 506
    monitor-exit v0

    .line 507
    return-void

    .line 506
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private loadTileFromDataEntry([BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .registers 12
    .parameter "recordBlock"
    .parameter "desiredTile"

    .prologue
    const/4 v8, 0x0

    .line 323
    const/4 v6, 0x0

    .line 325
    .local v6, result:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    if-eqz p1, :cond_7

    array-length v7, p1

    if-nez v7, :cond_9

    :cond_7
    move-object v7, v8

    .line 363
    :goto_8
    return-object v7

    .line 331
    :cond_9
    :try_start_9
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    move-result-object v1

    .line 332
    .local v1, dis:Ljava/io/DataInput;
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 334
    .local v3, entries:I
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v7

    if-eq v3, v7, :cond_19

    move-object v7, v8

    .line 336
    goto :goto_8

    .line 339
    :cond_19
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1a
    if-ge v5, v3, :cond_46

    .line 340
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v0

    .line 342
    .local v0, currentTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    iget-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z

    if-eqz v7, :cond_37

    .line 343
    new-instance v4, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    invoke-direct {v4, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    .line 344
    .local v4, flashEntry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_37

    move-object v7, v8

    .line 346
    goto :goto_8

    .line 350
    .end local v4           #flashEntry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :cond_37
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 351
    move-object v6, v0

    .line 352
    iget-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z

    if-nez v7, :cond_4b

    .line 358
    .end local v0           #currentTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :cond_46
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_49} :catch_4e

    .end local v1           #dis:Ljava/io/DataInput;
    .end local v3           #entries:I
    .end local v5           #i:I
    :goto_49
    move-object v7, v6

    .line 363
    goto :goto_8

    .line 339
    .restart local v0       #currentTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v1       #dis:Ljava/io/DataInput;
    .restart local v3       #entries:I
    .restart local v5       #i:I
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 359
    .end local v0           #currentTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v1           #dis:Ljava/io/DataInput;
    .end local v3           #entries:I
    .end local v5           #i:I
    :catch_4e
    move-exception v7

    move-object v2, v7

    .line 360
    .local v2, e:Ljava/io/IOException;
    const-string v7, "FLASH"

    invoke-static {v7, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_49
.end method

.method public static readFromCatalog(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .registers 8
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 268
    .local v0, entries:I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    .line 269
    .local v4, recordIndex:I
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    invoke-direct {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;-><init>()V

    .line 271
    .local v3, flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    const/4 v1, 0x0

    .local v1, entry:I
    :goto_e
    if-ge v1, v0, :cond_25

    .line 272
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->readFromCatalog(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v2

    .line 273
    .local v2, flashEntry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v3, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->addEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 274
    new-instance v5, Ljava/io/IOException;

    const-string v6, "FlashRecord full"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 271
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 277
    .end local v2           #flashEntry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :cond_25
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z

    .line 278
    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    .line 280
    return-object v3
.end method


# virtual methods
.method public addEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;)Z
    .registers 4
    .parameter "entry"

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_d

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 104
    :cond_d
    const/4 v0, 0x0

    .line 109
    :goto_e
    return v0

    .line 107
    :cond_f
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p1, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->setFlashRecord(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V

    .line 109
    const/4 v0, 0x1

    goto :goto_e
.end method

.method createDataEntry(Ljava/util/Hashtable;)[B
    .registers 9
    .parameter "tileMap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v6, 0x11940

    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 380
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 381
    .local v1, dos:Ljava/io/DataOutputStream;
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v5

    .line 383
    .local v5, numEntries:I
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 384
    const/4 v3, 0x0

    .local v3, i:I
    :goto_15
    if-ge v3, v5, :cond_2f

    .line 385
    invoke-virtual {p0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v2

    .line 386
    .local v2, entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    .line 387
    .local v4, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    if-nez v4, :cond_29

    .line 388
    const/4 v6, 0x0

    .line 393
    .end local v2           #entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .end local v4           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :goto_28
    return-object v6

    .line 390
    .restart local v2       #entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .restart local v4       #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :cond_29
    invoke-virtual {v4, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->write(Ljava/io/DataOutput;)V

    .line 384
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 393
    .end local v2           #entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .end local v4           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :cond_2f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_28
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .parameter "o"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 226
    if-ne p0, p1, :cond_6

    move v6, v9

    .line 252
    :goto_5
    return v6

    .line 229
    :cond_6
    instance-of v6, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    if-nez v6, :cond_c

    move v6, v8

    .line 230
    goto :goto_5

    .line 233
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-object v2, v0

    .line 235
    .local v2, flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    iget v7, v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    if-eq v6, v7, :cond_18

    move v6, v8

    .line 236
    goto :goto_5

    .line 239
    :cond_18
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v4

    .line 240
    .local v4, numEntries:I
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v6

    if-eq v4, v6, :cond_24

    move v6, v8

    .line 241
    goto :goto_5

    .line 244
    :cond_24
    iget-object v5, v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    .line 245
    .local v5, otherEntries:Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_27
    if-ge v3, v4, :cond_40

    .line 246
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    .line 247
    .local v1, flashEntry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    move v6, v8

    .line 248
    goto :goto_5

    .line 245
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .end local v1           #flashEntry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :cond_40
    move v6, v9

    .line 252
    goto :goto_5
.end method

.method public getDataSize()I
    .registers 5

    .prologue
    .line 147
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 148
    .local v1, numEntries:I
    const/4 v2, 0x1

    .line 150
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_16

    .line 151
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getByteSize()I

    move-result v3

    add-int/2addr v2, v3

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 154
    :cond_16
    return v2
.end method

.method public getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 131
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    return-object p0
.end method

.method public getEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .registers 5
    .parameter "location"

    .prologue
    .line 117
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 118
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    .line 119
    .local v0, entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object v2, v0

    .line 124
    .end local v0           #entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :goto_18
    return-object v2

    .line 117
    .restart local v0       #entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    .end local v0           #entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public getRecordId()I
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    return v0
.end method

.method public getScore(J)J
    .registers 11
    .parameter "currentTime"

    .prologue
    .line 190
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 191
    .local v2, numEntries:I
    const-wide/16 v3, 0x0

    .line 193
    .local v3, scores:J
    if-lez v2, :cond_25

    .line 194
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v2, :cond_21

    .line 195
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    .line 196
    .local v0, entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v5

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getLastAccessTime()J

    move-result-wide v6

    invoke-static {v5, p1, p2, v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getScore(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JJ)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 204
    .end local v0           #entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :cond_21
    int-to-long v5, v2

    div-long v5, v3, v5

    .line 207
    .end local v1           #i:I
    :goto_24
    return-wide v5

    :cond_25
    const-wide v5, 0x7fffffffffffffffL

    goto :goto_24
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 257
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    return v0
.end method

.method isSaved()Z
    .registers 3

    .prologue
    .line 170
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public loadTile(Ljava/lang/String;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .registers 7
    .parameter "blockName"
    .parameter "desiredTile"

    .prologue
    const/4 v3, 0x0

    .line 414
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    move-object v1, v3

    .line 445
    :goto_7
    return-object v1

    .line 418
    :cond_8
    const/4 v0, 0x0

    .line 422
    .local v0, recordBlock:[B
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCacheDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_c
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    invoke-virtual {p0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 424
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCachedData:[B

    .line 426
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_36

    .line 428
    if-nez v0, :cond_32

    .line 429
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B

    move-result-object v0

    .line 432
    if-eqz v0, :cond_32

    array-length v1, v0

    if-eqz v1, :cond_32

    .line 433
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCacheDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_2d
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCachedData:[B

    .line 435
    sput-object p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    .line 436
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_39

    .line 440
    :cond_32
    if-nez v0, :cond_3c

    move-object v1, v3

    .line 442
    goto :goto_7

    .line 426
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2

    .line 436
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2

    .line 445
    :cond_3c
    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->loadTileFromDataEntry([BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v1

    goto :goto_7
.end method

.method public numEntries()I
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method setUnsaved()V
    .registers 2

    .prologue
    .line 179
    const/4 v0, -0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    .line 180
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeRecord(Ljava/lang/String;I[B)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 463
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_d
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlockX([BLjava/lang/String;)I

    .line 471
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    .line 472
    return-void
.end method

.method public writeToCatalog(Ljava/io/DataOutput;)V
    .registers 7
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    .line 294
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t write unsaved FlashRecord"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 297
    :cond_d
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v2

    .line 299
    .local v2, numEntries:I
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 300
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 301
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1a
    if-ge v1, v2, :cond_26

    .line 302
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    .line 303
    .local v0, entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->writeToCatalog(Ljava/io/DataOutput;)V

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 305
    .end local v0           #entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :cond_26
    return-void
.end method
