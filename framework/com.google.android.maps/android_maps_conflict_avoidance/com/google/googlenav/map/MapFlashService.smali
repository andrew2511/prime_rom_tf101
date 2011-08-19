.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;
.super Ljava/lang/Object;
.source "MapFlashService.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;


# instance fields
.field private catalogRecordBytes:I

.field private catalogUpdatedSinceLastWrite:Z

.field private final flashRecords:Ljava/util/Vector;

.field private highestRecordId:I

.field private lastChangedTime:J

.field private final mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

.field private maxFlashSize:I

.field private maxRecordBlocks:I

.field private needsScavenge:Z

.field private nextPersistTime:J

.field private final recordStoreBaseName:Ljava/lang/String;

.field private final store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

.field private textSize:I

.field private tileEdition:I

.field private final tileToRecordMap:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;Ljava/lang/String;II)V
    .registers 11
    .parameter "mapService"
    .parameter "recordStoreBaseName"
    .parameter "maxFlashSize"
    .parameter "maxRecordStores"

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v2

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    .line 122
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    .line 125
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    .line 129
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    .line 133
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    .line 137
    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    .line 140
    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    .line 214
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    .line 215
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    .line 216
    const/16 v2, 0x7d0

    sub-int v2, p3, v2

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    .line 217
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v2

    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    .line 218
    .local v0, now:J
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->lastChangedTime:J

    .line 219
    const-wide/16 v2, 0x841

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    .line 220
    sub-int v2, p4, v4

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    .line 222
    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    .line 223
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->readCatalog()V

    .line 224
    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->needsScavenge:Z

    .line 225
    return-void
.end method

.method private addToFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V
    .registers 7
    .parameter "newRecord"

    .prologue
    .line 842
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v2

    .line 844
    .local v2, numEntries:I
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    .line 845
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    .line 846
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 848
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    if-ge v1, v2, :cond_2b

    .line 849
    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    .line 850
    .local v0, entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 852
    .end local v0           #entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :cond_2b
    return-void
.end method

.method private canCreateAnEmptyRecordStore()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 797
    :try_start_16
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-interface {v1, v2, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlockX([BLjava/lang/String;)I

    .line 798
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    invoke-interface {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z
    :try_end_23
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_16 .. :try_end_23} :catch_25

    .line 802
    const/4 v0, 0x1

    :goto_24
    return v0

    .line 799
    :catch_25
    move-exception v0

    move v0, v3

    .line 800
    goto :goto_24
.end method

.method private fillNewRecord(Ljava/util/Hashtable;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .registers 13
    .parameter "mapCache"
    .parameter "maxDataSize"

    .prologue
    .line 811
    new-instance v4, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    invoke-direct {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;-><init>()V

    .line 812
    .local v4, newRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    const/4 v2, 0x1

    .line 813
    .local v2, newDataSize:I
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getSortedCacheList()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v5

    .line 816
    .local v5, sortedMemoryTiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    array-length v8, v5

    const/4 v9, 0x1

    sub-int v7, v8, v9

    .local v7, tileIndex:I
    :goto_10
    if-ltz v7, :cond_3f

    .line 818
    aget-object v6, v5, v7

    .line 820
    .local v6, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3c

    .line 821
    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    .line 822
    .local v1, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 823
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    invoke-direct {v3, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    .line 824
    .local v3, newEntry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getByteSize()I

    move-result v0

    .line 825
    .local v0, entrySize:I
    add-int v8, v2, v0

    if-gt v8, p2, :cond_3c

    invoke-virtual {v4, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->addEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 827
    add-int/2addr v2, v0

    .line 817
    .end local v0           #entrySize:I
    .end local v1           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v3           #newEntry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :cond_3c
    add-int/lit8 v7, v7, -0x1

    goto :goto_10

    .line 833
    .end local v6           #tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_3f
    return-object v4
.end method

.method private findRecordIndexByID(I)I
    .registers 6
    .parameter "recordID"

    .prologue
    .line 505
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 507
    .local v2, numEntries:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_1c

    .line 508
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    .line 509
    .local v0, flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v3

    if-ne v3, p1, :cond_19

    move v3, v1

    .line 514
    .end local v0           #flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :goto_18
    return v3

    .line 507
    .restart local v0       #flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 514
    .end local v0           #flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :cond_1c
    const/4 v3, -0x1

    goto :goto_18
.end method

.method private getFlashEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .registers 4
    .parameter "location"

    .prologue
    .line 892
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    .line 894
    .local v0, record:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v1

    goto :goto_b
.end method

.method private getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .registers 3
    .parameter "index"

    .prologue
    .line 539
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    return-object p0
.end method

.method private handlePersistentStoreWriteException(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getSize()I

    move-result v0

    .line 384
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v1

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FLASH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_49

    const-string v3, " catalog"

    :goto_2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;->getType()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_48

    .line 398
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->canCreateAnEmptyRecordStore()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 399
    const/16 v1, 0x3e8

    sub-int/2addr v0, v1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    .line 404
    :cond_48
    :goto_48
    return-void

    .line 386
    :cond_49
    const-string v3, ""

    goto :goto_2b

    .line 401
    :cond_4c
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    goto :goto_48
.end method

.method private loadFlashRecordTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .registers 7
    .parameter "flashRecord"
    .parameter "desiredTile"

    .prologue
    .line 1035
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->loadTile(Ljava/lang/String;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v0

    .line 1037
    .local v0, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    if-nez v0, :cond_20

    .line 1038
    monitor-enter p0

    .line 1039
    :try_start_b
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v1

    .line 1040
    .local v1, recordId:I
    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->findRecordIndexByID(I)I

    move-result v2

    invoke-direct {p0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    .line 1041
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    .line 1044
    monitor-exit p0

    .line 1048
    .end local v1           #recordId:I
    :cond_20
    return-object v0

    .line 1044
    :catchall_21
    move-exception v2

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw v2
.end method

.method private declared-synchronized persistRecord(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;[BI)V
    .registers 8
    .parameter "newRecord"
    .parameter "newRecordData"
    .parameter "recordId"

    .prologue
    .line 769
    monitor-enter p0

    :try_start_1
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    if-nez v1, :cond_f

    .line 770
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    const/4 v2, 0x0

    new-array v2, v2, [B

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlock([BLjava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_22

    .line 774
    :cond_f
    :try_start_f
    invoke-virtual {p0, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->writeRecord(Ljava/lang/String;I[B)V

    .line 776
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->addToFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_22
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_19} :catch_25

    .line 783
    :goto_19
    monitor-exit p0

    return-void

    .line 777
    :catch_1b
    move-exception v1

    move-object v0, v1

    .line 778
    .local v0, e:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    const/4 v1, 0x0

    :try_start_1e
    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->handlePersistentStoreWriteException(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;Z)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_19

    .line 769
    .end local v0           #e:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1

    .line 779
    :catch_25
    move-exception v1

    move-object v0, v1

    .line 781
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_27
    const-string v1, "FLASH"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_22

    goto :goto_19
.end method

.method private declared-synchronized readCatalog()V
    .registers 11

    .prologue
    const/16 v9, 0xa

    .line 272
    monitor-enter p0

    const/16 v4, 0xa

    .line 275
    .local v4, formatVersion:I
    const/4 v7, 0x1

    :try_start_6
    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    .line 276
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B

    move-result-object v0

    .line 278
    .local v0, directory:[B
    if-eqz v0, :cond_1c

    .line 281
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    move-result-object v5

    .line 283
    .local v5, is:Ljava/io/DataInput;
    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_59
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_19} :catch_51

    move-result v4

    .line 284
    if-eq v4, v9, :cond_2a

    .line 307
    .end local v0           #directory:[B
    .end local v5           #is:Ljava/io/DataInput;
    :cond_1c
    :goto_1c
    :try_start_1c
    iget-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    if-eqz v7, :cond_23

    .line 309
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->eraseAll()V

    .line 311
    :cond_23
    if-eq v4, v9, :cond_28

    .line 313
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_59

    .line 316
    :cond_28
    monitor-exit p0

    return-void

    .line 287
    .restart local v0       #directory:[B
    .restart local v5       #is:Ljava/io/DataInput;
    :cond_2a
    :try_start_2a
    invoke-interface {v5}, Ljava/io/DataInput;->readBoolean()Z

    .line 288
    invoke-interface {v5}, Ljava/io/DataInput;->readShort()S

    move-result v7

    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    .line 289
    invoke-interface {v5}, Ljava/io/DataInput;->readShort()S

    move-result v7

    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    .line 290
    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 294
    .local v6, numEntries:I
    const/4 v2, 0x0

    .local v2, entry:I
    :goto_3e
    if-ge v2, v6, :cond_4a

    .line 295
    invoke-static {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->readFromCatalog(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v3

    .line 296
    .local v3, flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-direct {p0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->addToFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 299
    .end local v3           #flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :cond_4a
    array-length v7, v0

    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    .line 300
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z
    :try_end_50
    .catchall {:try_start_2a .. :try_end_50} :catchall_59
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_50} :catch_51

    goto :goto_1c

    .line 303
    .end local v0           #directory:[B
    .end local v2           #entry:I
    .end local v5           #is:Ljava/io/DataInput;
    .end local v6           #numEntries:I
    :catch_51
    move-exception v7

    move-object v1, v7

    .line 304
    .local v1, e:Ljava/io/IOException;
    :try_start_53
    const-string v7, "FLASH"

    invoke-static {v7, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_59

    goto :goto_1c

    .line 272
    .end local v1           #e:Ljava/io/IOException;
    :catchall_59
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V
    .registers 8
    .parameter "flashRecord"
    .parameter "elementIndex"

    .prologue
    .line 869
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->isSaved()Z

    move-result v3

    if-nez v3, :cond_7

    .line 883
    :cond_6
    return-void

    .line 873
    :cond_7
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v2

    .line 875
    .local v2, numEntries:I
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    .line 876
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->setUnsaved()V

    .line 877
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 879
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    if-ge v1, v2, :cond_6

    .line 880
    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    .line 881
    .local v0, entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method private static removeNameFromArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5
    .parameter "name"
    .parameter "array"

    .prologue
    const/4 v2, 0x0

    .line 481
    if-nez p1, :cond_5

    move v1, v2

    .line 492
    :goto_4
    return v1

    .line 485
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_19

    .line 486
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 487
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 488
    const/4 v1, 0x1

    goto :goto_4

    .line 485
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    move v1, v2

    .line 492
    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized close(Z)V
    .registers 4
    .parameter "saveState"

    .prologue
    .line 253
    monitor-enter p0

    if-eqz p1, :cond_9

    .line 255
    :try_start_3
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->writeCache()Z

    .line 256
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->writeCatalog()Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_b

    .line 261
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 257
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 258
    .local v0, e:Ljava/io/IOException;
    :try_start_d
    const-string v1, "FLASH"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    goto :goto_9

    .line 253
    .end local v0           #e:Ljava/io/IOException;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method doPersist(Ljava/util/Hashtable;)I
    .registers 37
    .parameter "mapCache"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object v11, v0

    fill-array-data v11, :array_29a

    .line 579
    .local v11, indicesToFree:[I
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-object/from16 v18, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    aput-object v32, v18, v31

    const/16 v31, 0x1

    const/16 v32, 0x0

    aput-object v32, v18, v31

    .line 581
    .local v18, recordsToFree:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v25

    .line 586
    .local v25, startTime:J
    monitor-enter p0

    .line 589
    :try_start_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->needsScavenge:Z

    move/from16 v31, v0

    if-eqz v31, :cond_3e

    .line 590
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->scavengeCatalog()Z

    .line 591
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->needsScavenge:Z

    .line 594
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getSize()I

    move-result v32

    sub-int v4, v31, v32

    .line 595
    .local v4, bytesAvail:I
    move v12, v4

    .line 598
    .local v12, maxDataSize:I
    const v31, 0x11940

    move v0, v4

    move/from16 v1, v31

    if-lt v0, v1, :cond_63

    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_138

    .line 600
    :cond_63
    const/16 v28, -0x1

    .line 601
    .local v28, worstIndex:I
    const/16 v21, -0x1

    .line 602
    .local v21, secondWorstIndex:I
    const-wide/high16 v29, -0x8000

    .line 603
    .local v29, worstScore:J
    const-wide/high16 v22, -0x8000

    .line 604
    .local v22, secondWorstScore:J
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v17

    .line 605
    .local v17, numEntries:I
    const/4 v10, 0x0

    .local v10, index:I
    :goto_70
    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_ab

    .line 606
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v6

    .line 607
    .local v6, flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    move-object v0, v6

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getScore(J)J

    move-result-wide v19

    .line 610
    .local v19, score:J
    const/16 v31, -0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-eq v0, v1, :cond_8f

    cmp-long v31, v19, v22

    if-lez v31, :cond_a3

    .line 611
    :cond_8f
    const/16 v31, -0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-eq v0, v1, :cond_9b

    cmp-long v31, v19, v29

    if-lez v31, :cond_a6

    .line 612
    :cond_9b
    move/from16 v21, v28

    .line 613
    move-wide/from16 v22, v29

    .line 614
    move/from16 v28, v10

    .line 615
    move-wide/from16 v29, v19

    .line 605
    :cond_a3
    :goto_a3
    add-int/lit8 v10, v10, 0x1

    goto :goto_70

    .line 617
    :cond_a6
    move/from16 v21, v10

    .line 618
    move-wide/from16 v22, v19

    goto :goto_a3

    .line 623
    .end local v6           #flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .end local v19           #score:J
    :cond_ab
    const/16 v31, -0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-eq v0, v1, :cond_cd

    .line 624
    const/16 v31, 0x0

    aput v28, v11, v31

    .line 625
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v32

    aput-object v32, v18, v31

    .line 626
    const/16 v31, 0x0

    aget-object v31, v18, v31

    invoke-virtual/range {v31 .. v31}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    move-result v31

    add-int v12, v12, v31

    .line 629
    :cond_cd
    const v31, 0x11940

    move v0, v12

    move/from16 v1, v31

    if-ge v0, v1, :cond_f7

    const/16 v31, -0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-eq v0, v1, :cond_f7

    .line 631
    const/16 v31, 0x1

    aput v21, v11, v31

    .line 632
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v32

    aput-object v32, v18, v31

    .line 633
    const/16 v31, 0x1

    aget-object v31, v18, v31

    invoke-virtual/range {v31 .. v31}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    move-result v31

    add-int v12, v12, v31

    .line 636
    :cond_f7
    const v31, 0x11940

    move v0, v12

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 640
    .end local v10           #index:I
    .end local v17           #numEntries:I
    .end local v21           #secondWorstIndex:I
    .end local v22           #secondWorstScore:J
    .end local v28           #worstIndex:I
    .end local v29           #worstScore:J
    :goto_101
    monitor-exit p0
    :try_end_102
    .catchall {:try_start_2b .. :try_end_102} :catchall_13c

    .line 642
    const/16 v31, 0x1770

    move v0, v12

    move/from16 v1, v31

    if-ge v0, v1, :cond_13f

    .line 648
    const/16 v31, 0x0

    aget-object v31, v18, v31

    if-eqz v31, :cond_135

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v32, v18, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    .line 651
    const/16 v31, 0x0

    aget-object v31, v18, v31

    const/16 v32, 0x0

    aget v32, v11, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    .line 653
    :cond_135
    const/16 v31, 0x1

    .line 759
    :goto_137
    return v31

    .line 638
    :cond_138
    const v12, 0x11940

    goto :goto_101

    .line 640
    .end local v4           #bytesAvail:I
    .end local v12           #maxDataSize:I
    :catchall_13c
    move-exception v31

    :try_start_13d
    monitor-exit p0
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_13c

    throw v31

    .line 661
    .restart local v4       #bytesAvail:I
    .restart local v12       #maxDataSize:I
    :cond_13f
    monitor-enter p1

    .line 664
    :try_start_140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->fillNewRecord(Ljava/util/Hashtable;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :try_end_153
    .catchall {:try_start_140 .. :try_end_153} :catchall_1e9

    move-result-object v13

    .line 667
    .local v13, newRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :try_start_154
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    .line 669
    monitor-exit p1
    :try_end_160
    .catchall {:try_start_154 .. :try_end_160} :catchall_1f6

    .line 675
    invoke-virtual {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    move-result v15

    .line 676
    .local v15, newRecordSize:I
    const/16 v31, 0x1770

    move v0, v15

    move/from16 v1, v31

    if-lt v0, v1, :cond_296

    .line 677
    const/4 v8, -0x1

    .line 683
    .local v8, id:I
    monitor-enter p0

    .line 684
    :try_start_16d
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getSize()I

    move-result v32

    sub-int v4, v31, v32

    .line 685
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Z

    move-object/from16 v24, v0

    fill-array-data v24, :array_2a2

    .line 686
    .local v24, shouldFree:[Z
    const/4 v5, 0x0

    .line 687
    .local v5, displaceBytes:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_186
    const/16 v31, 0x2

    move v0, v7

    move/from16 v1, v31

    if-ge v0, v1, :cond_1c1

    .line 688
    aget-object v31, v18, v7

    if-eqz v31, :cond_1ba

    aget-object v31, v18, v7

    invoke-virtual/range {v31 .. v31}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->isSaved()Z

    move-result v31

    if-eqz v31, :cond_1ba

    aget-object v31, v18, v7

    move-object/from16 v0, v31

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getScore(J)J

    move-result-wide v31

    move-object v0, v13

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getScore(J)J

    move-result-wide v33

    cmp-long v31, v31, v33

    if-lez v31, :cond_1ba

    .line 692
    const/16 v31, 0x1

    aput-boolean v31, v24, v7

    .line 693
    aget-object v31, v18, v7

    invoke-virtual/range {v31 .. v31}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    move-result v31

    add-int v5, v5, v31

    .line 695
    :cond_1ba
    add-int v31, v4, v5

    move v0, v15

    move/from16 v1, v31

    if-gt v0, v1, :cond_1f9

    .line 700
    :cond_1c1
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v16

    .line 702
    .local v16, numBlocks:I
    add-int v31, v4, v5

    move v0, v15

    move/from16 v1, v31

    if-le v0, v1, :cond_1fc

    .line 703
    const/16 v27, 0x2

    .line 735
    .local v27, status:I
    :cond_1ce
    :goto_1ce
    monitor-exit p0
    :try_end_1cf
    .catchall {:try_start_16d .. :try_end_1cf} :catchall_271

    .line 737
    if-ltz v8, :cond_1e2

    .line 739
    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->createDataEntry(Ljava/util/Hashtable;)[B

    move-result-object v14

    .line 740
    .local v14, newRecordData:[B
    if-eqz v14, :cond_1e2

    .line 748
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->persistRecord(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;[BI)V

    .line 756
    .end local v5           #displaceBytes:I
    .end local v7           #i:I
    .end local v8           #id:I
    .end local v14           #newRecordData:[B
    .end local v16           #numBlocks:I
    .end local v24           #shouldFree:[Z
    :cond_1e2
    :goto_1e2
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->writeCatalog()Z

    move/from16 v31, v27

    .line 759
    goto/16 :goto_137

    .line 667
    .end local v13           #newRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .end local v15           #newRecordSize:I
    .end local v27           #status:I
    :catchall_1e9
    move-exception v31

    :try_start_1ea
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    throw v31

    .line 669
    :catchall_1f6
    move-exception v31

    monitor-exit p1
    :try_end_1f8
    .catchall {:try_start_1ea .. :try_end_1f8} :catchall_1f6

    throw v31

    .line 687
    .restart local v5       #displaceBytes:I
    .restart local v7       #i:I
    .restart local v8       #id:I
    .restart local v13       #newRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .restart local v15       #newRecordSize:I
    .restart local v24       #shouldFree:[Z
    :cond_1f9
    add-int/lit8 v7, v7, 0x1

    goto :goto_186

    .line 705
    .restart local v16       #numBlocks:I
    :cond_1fc
    const/16 v31, 0x0

    :try_start_1fe
    aget-boolean v31, v24, v31

    if-eqz v31, :cond_274

    if-gt v15, v4, :cond_210

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_274

    .line 707
    :cond_210
    const/16 v27, 0x4

    .line 708
    .restart local v27       #status:I
    const/16 v31, 0x0

    aget-object v31, v18, v31

    invoke-virtual/range {v31 .. v31}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v8

    .line 709
    const/16 v31, 0x0

    aget-object v31, v18, v31

    const/16 v32, 0x0

    aget v32, v11, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    .line 710
    const/16 v31, 0x1

    aget-boolean v31, v24, v31

    if-eqz v31, :cond_1ce

    .line 712
    const/16 v31, 0x0

    aget v31, v11, v31

    const/16 v32, 0x1

    aget v32, v11, v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_249

    .line 713
    const/16 v31, 0x1

    aget v32, v11, v31

    const/16 v33, 0x1

    sub-int v32, v32, v33

    aput v32, v11, v31

    .line 723
    :cond_249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v32, v18, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    .line 724
    const/16 v31, 0x1

    aget-object v31, v18, v31

    const/16 v32, 0x1

    aget v32, v11, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    goto/16 :goto_1ce

    .line 735
    .end local v5           #displaceBytes:I
    .end local v7           #i:I
    .end local v16           #numBlocks:I
    .end local v24           #shouldFree:[Z
    .end local v27           #status:I
    :catchall_271
    move-exception v31

    monitor-exit p0
    :try_end_273
    .catchall {:try_start_1fe .. :try_end_273} :catchall_271

    throw v31

    .line 726
    .restart local v5       #displaceBytes:I
    .restart local v7       #i:I
    .restart local v16       #numBlocks:I
    .restart local v24       #shouldFree:[Z
    :cond_274
    :try_start_274
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-ge v0, v1, :cond_292

    .line 727
    const/16 v27, 0x3

    .line 728
    .restart local v27       #status:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    move/from16 v31, v0

    add-int/lit8 v9, v31, 0x1

    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I
    :try_end_28f
    .catchall {:try_start_274 .. :try_end_28f} :catchall_271

    .end local v8           #id:I
    .local v9, id:I
    move v8, v9

    .end local v9           #id:I
    .restart local v8       #id:I
    goto/16 :goto_1ce

    .line 733
    .end local v27           #status:I
    :cond_292
    const/16 v27, 0x5

    .restart local v27       #status:I
    goto/16 :goto_1ce

    .line 752
    .end local v5           #displaceBytes:I
    .end local v7           #i:I
    .end local v8           #id:I
    .end local v16           #numBlocks:I
    .end local v24           #shouldFree:[Z
    .end local v27           #status:I
    :cond_296
    const/16 v27, 0x0

    .restart local v27       #status:I
    goto/16 :goto_1e2

    .line 578
    :array_29a
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 685
    :array_2a2
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public declared-synchronized eraseAll()V
    .registers 3

    .prologue
    .line 416
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 417
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    .line 422
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteAllBlocks(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 423
    monitor-exit p0

    return-void

    .line 416
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFlashRecordsSize()I
    .registers 5

    .prologue
    .line 901
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 902
    .local v1, numRecords:I
    const/4 v2, 0x0

    .line 904
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_9
    if-ge v0, v1, :cond_17

    .line 905
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    move-result v3

    add-int/2addr v2, v3

    .line 904
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 907
    :cond_17
    monitor-exit p0

    return v2

    .line 901
    .end local v0           #index:I
    .end local v1           #numRecords:I
    .end local v2           #size:I
    :catchall_19
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getMapTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .registers 6
    .parameter "tile"

    .prologue
    .line 933
    const/4 v1, 0x0

    .line 934
    .local v1, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    .line 936
    .local v0, flashEntry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    if-eqz v0, :cond_20

    .line 940
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getFlashRecord()Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->loadFlashRecordTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v1

    .line 943
    if-eqz v1, :cond_20

    .line 945
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v2

    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->setLastAccessTime(J)V

    .line 950
    :cond_20
    return-object v1
.end method

.method getNumBlocks()I
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getSize()I
    .registers 3

    .prologue
    .line 916
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecordsSize()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_a

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mapChanged()V
    .registers 3

    .prologue
    .line 976
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->lastChangedTime:J

    .line 977
    return-void
.end method

.method recordBlockName(I)Ljava/lang/String;
    .registers 4
    .parameter "recordId"

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;
    .registers 3
    .parameter "flashRecord"

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized scavengeCatalog()Z
    .registers 9

    .prologue
    .line 434
    monitor-enter p0

    const/4 v5, 0x1

    .line 437
    .local v5, wasOk:Z
    :try_start_2
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->listBlocks(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, rsNames:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v6

    const/4 v7, 0x1

    sub-int v2, v6, v7

    .local v2, i:I
    :goto_11
    if-ltz v2, :cond_2c

    .line 442
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    .line 443
    .local v1, flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeNameFromArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 444
    const/4 v5, 0x0

    .line 446
    invoke-direct {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    .line 441
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 451
    .end local v1           #flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :cond_2c
    const/4 v0, 0x0

    .line 452
    .local v0, catalogInFlash:Z
    if-eqz v4, :cond_46

    .line 453
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-static {v6, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeNameFromArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 454
    const/4 v2, 0x0

    :goto_36
    array-length v6, v4

    if-ge v2, v6, :cond_46

    .line 455
    aget-object v3, v4, v2

    .line 456
    .local v3, rsName:Ljava/lang/String;
    if-eqz v3, :cond_43

    .line 457
    const/4 v5, 0x0

    .line 459
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    invoke-interface {v6, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    .line 454
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 465
    .end local v3           #rsName:Ljava/lang/String;
    :cond_46
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I
    :try_end_49
    .catchall {:try_start_2 .. :try_end_49} :catchall_51

    move-result v6

    if-lez v6, :cond_4f

    if-nez v0, :cond_4f

    .line 466
    const/4 v5, 0x0

    .line 471
    :cond_4f
    monitor-exit p0

    return v5

    .line 434
    .end local v0           #catalogInFlash:Z
    .end local v2           #i:I
    .end local v4           #rsNames:[Ljava/lang/String;
    :catchall_51
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public setTileEditionAndTextSize(II)Z
    .registers 7
    .parameter "newTileEdition"
    .parameter "newTextSize"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1063
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    if-eq p1, v1, :cond_a

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    if-ne v1, v2, :cond_12

    :cond_a
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    if-eq p2, v1, :cond_1f

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    if-eq v1, v2, :cond_1f

    :cond_12
    move v0, v3

    .line 1065
    .local v0, changed:Z
    :goto_13
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    .line 1066
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    .line 1067
    if-eqz v0, :cond_1e

    .line 1068
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->eraseAll()V

    .line 1071
    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    .line 1073
    :cond_1e
    return v0

    .line 1063
    .end local v0           #changed:Z
    :cond_1f
    const/4 v1, 0x0

    move v0, v1

    goto :goto_13
.end method

.method public writeCache()Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x841

    .line 993
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v5

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v5

    invoke-interface {v5}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v2

    .line 994
    .local v2, startTime:J
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getMapCache()Ljava/util/Hashtable;

    move-result-object v1

    .line 996
    .local v1, mapCache:Ljava/util/Hashtable;
    const/4 v0, 0x0

    .line 997
    .local v0, cachingStillActive:Z
    iget-wide v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    cmp-long v5, v5, v2

    if-gez v5, :cond_54

    iget-wide v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->lastChangedTime:J

    const-wide/16 v7, 0x5dc

    add-long/2addr v5, v7

    cmp-long v5, v5, v2

    if-gez v5, :cond_54

    .line 1000
    :try_start_24
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->doPersist(Ljava/util/Hashtable;)I
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_43

    move-result v4

    .line 1002
    .local v4, status:I
    const/4 v5, 0x3

    if-eq v4, v5, :cond_2e

    const/4 v5, 0x4

    if-ne v4, v5, :cond_40

    :cond_2e
    const/4 v5, 0x1

    move v0, v5

    .line 1006
    :goto_30
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v5

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v5

    invoke-interface {v5}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v9

    iput-wide v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    .line 1014
    .end local v4           #status:I
    :goto_3f
    return v0

    .line 1002
    .restart local v4       #status:I
    :cond_40
    const/4 v5, 0x0

    move v0, v5

    goto :goto_30

    .line 1006
    .end local v4           #status:I
    :catchall_43
    move-exception v5

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v6

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v6

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v9

    iput-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    throw v5

    .line 1011
    :cond_54
    const/4 v0, 0x1

    goto :goto_3f
.end method

.method declared-synchronized writeCatalog()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 336
    monitor-enter p0

    const/4 v5, 0x1

    .line 338
    .local v5, isOk:Z
    :try_start_3
    iget-boolean v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_5d

    if-nez v8, :cond_a

    move v8, v9

    .line 374
    :goto_8
    monitor-exit p0

    return v8

    .line 343
    :cond_a
    :try_start_a
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v6

    .line 345
    .local v6, numEntries:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 346
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 348
    .local v2, dos:Ljava/io/DataOutputStream;
    const/16 v8, 0xa

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 349
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 350
    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 351
    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 352
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 353
    const/4 v4, 0x0

    .local v4, entry:I
    :goto_31
    if-ge v4, v6, :cond_3d

    .line 354
    invoke-direct {p0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v7

    .line 355
    .local v7, record:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-virtual {v7, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->writeToCatalog(Ljava/io/DataOutput;)V

    .line 353
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 357
    .end local v7           #record:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :cond_3d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 358
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_5d

    move-result-object v1

    .line 359
    .local v1, directory:[B
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 365
    :try_start_46
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iget-object v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v8, v1, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlockX([BLjava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_5d
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_46 .. :try_end_4d} :catch_55

    .line 371
    :goto_4d
    :try_start_4d
    array-length v8, v1

    iput v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    .line 372
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    move v8, v5

    .line 374
    goto :goto_8

    .line 366
    :catch_55
    move-exception v8

    move-object v3, v8

    .line 367
    .local v3, e:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    const/4 v8, 0x1

    invoke-direct {p0, v3, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->handlePersistentStoreWriteException(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;Z)V
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_5d

    .line 368
    const/4 v5, 0x0

    goto :goto_4d

    .line 336
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #directory:[B
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .end local v3           #e:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    .end local v4           #entry:I
    .end local v6           #numEntries:I
    :catchall_5d
    move-exception v8

    monitor-exit p0

    throw v8
.end method
