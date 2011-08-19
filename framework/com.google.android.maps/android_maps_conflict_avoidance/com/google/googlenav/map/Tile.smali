.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
.super Ljava/lang/Object;
.source "Tile.java"


# static fields
.field private static final CACHE_SIZES:[I

.field private static tileObjectCache:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private static tileObjectCacheSize:I


# instance fields
.field private final flags:B

.field private final hashCode:I

.field private final xIndex:I

.field private final yIndex:I

.field private final zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 120
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    .line 155
    const/4 v0, 0x1

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->initializeTileObjectCache(I)V

    .line 156
    return-void

    .line 120
    :array_e
    .array-data 0x4
        0x83t 0x0t 0x0t 0x0t
        0x1t 0x1t 0x0t 0x0t
        0x9t 0x2t 0x0t 0x0t
        0x7t 0x4t 0x0t 0x0t
        0x5t 0x8t 0x0t 0x0t
        0x3t 0x10t 0x0t 0x0t
        0x11t 0x20t 0x0t 0x0t
        0x1bt 0x40t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;I)V
    .registers 8
    .parameter "flags"
    .parameter "xIndex"
    .parameter "yIndex"
    .parameter "zoom"
    .parameter "hashCode"

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    if-nez p4, :cond_d

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zoom cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_d
    iput-byte p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    .line 218
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    .line 219
    iput p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    .line 220
    iput-object p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    .line 221
    iput p5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->hashCode:I

    .line 222
    return-void
.end method

.method private static calculateHashCode(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;I)I
    .registers 6
    .parameter "xIndex"
    .parameter "yIndex"
    .parameter "zoom"
    .parameter "flags"

    .prologue
    .line 391
    mul-int/lit8 v0, p0, 0x1d

    xor-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x1d

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p3

    return v0
.end method

.method private static getCacheSizeFromMinCacheSize(I)I
    .registers 6
    .parameter "minSize"

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    array-length v2, v2

    if-ge v0, v2, :cond_11

    .line 139
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    aget v1, v2, v0

    .line 141
    .local v1, prime:I
    if-lt v1, p0, :cond_e

    move v2, v1

    .line 145
    .end local v1           #prime:I
    :goto_d
    return v2

    .line 138
    .restart local v1       #prime:I
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    .end local v1           #prime:I
    :cond_11
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget v2, v2, v3

    goto :goto_d
.end method

.method public static getSatType()B
    .registers 1

    .prologue
    .line 226
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->isChinaVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x6

    goto :goto_7
.end method

.method public static getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .registers 12
    .parameter "flags"
    .parameter "xIndex"
    .parameter "yIndex"
    .parameter "zoom"

    .prologue
    .line 189
    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    rem-int/2addr p1, v1

    .line 190
    if-gez p1, :cond_10

    .line 191
    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    add-int/2addr p1, v1

    .line 194
    :cond_10
    invoke-static {p1, p2, p3, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->calculateHashCode(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;I)I

    move-result v5

    .line 195
    .local v5, hashCode:I
    sget v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCacheSize:I

    rem-int v6, v5, v1

    .line 196
    .local v6, objectCacheIndex:I
    if-gez v6, :cond_1d

    .line 197
    sget v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCacheSize:I

    add-int/2addr v6, v1

    .line 199
    :cond_1d
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCache:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    aget-object v0, v1, v6

    .line 200
    .local v0, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    if-eqz v0, :cond_35

    iget-byte v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    if-ne v1, p0, :cond_35

    iget v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    if-ne v1, p1, :cond_35

    iget v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    if-ne v1, p2, :cond_35

    iget-object v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    if-ne v1, p3, :cond_35

    move-object v7, v0

    .line 209
    .end local v0           #tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .local v7, tile:Ljava/lang/Object;
    :goto_34
    return-object v7

    .line 207
    .end local v7           #tile:Ljava/lang/Object;
    .restart local v0       #tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_35
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .end local v0           #tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;-><init>(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;I)V

    .line 208
    .restart local v0       #tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCache:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    aput-object v0, v1, v6

    move-object v7, v0

    .line 209
    .restart local v7       #tile:Ljava/lang/Object;
    goto :goto_34
.end method

.method public static getTile(BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .registers 5
    .parameter "flags"
    .parameter "oldTile"

    .prologue
    .line 177
    iget v0, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    iget v1, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    iget-object v2, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-static {p0, v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v0

    return-object v0
.end method

.method public static getTile(BLandroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .registers 5
    .parameter "flags"
    .parameter "point"
    .parameter "zoom"

    .prologue
    .line 166
    invoke-static {p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    invoke-static {p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v1

    invoke-static {p0, v0, v1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v0

    return-object v0
.end method

.method public static getXTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .registers 3
    .parameter "point"
    .parameter "zoom"

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public static getYTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .registers 3
    .parameter "point"
    .parameter "zoom"

    .prologue
    .line 424
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public static initializeTileObjectCache(I)V
    .registers 3
    .parameter "workingSetSize"

    .prologue
    .line 110
    mul-int/lit8 v0, p0, 0x6

    .line 111
    .local v0, minCacheSize:I
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getCacheSizeFromMinCacheSize(I)I

    move-result v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCacheSize:I

    .line 112
    sget v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCacheSize:I

    new-array v1, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCache:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 113
    return-void
.end method

.method public static read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .registers 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    :try_start_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v1

    return-object v1

    .line 353
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 354
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 374
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 382
    :goto_5
    return v2

    .line 377
    :cond_6
    instance-of v2, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-nez v2, :cond_c

    move v2, v4

    .line 378
    goto :goto_5

    .line 381
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-object v1, v0

    .line 382
    .local v1, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    iget v3, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    if-ne v2, v3, :cond_2a

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    iget v3, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    if-ne v2, v3, :cond_2a

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    iget-object v3, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    if-ne v2, v3, :cond_2a

    iget-byte v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    iget-byte v3, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    if-ne v2, v3, :cond_2a

    move v2, v5

    goto :goto_5

    :cond_2a
    move v2, v4

    goto :goto_5
.end method

.method public getFlags()B
    .registers 2

    .prologue
    .line 238
    iget-byte v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    return v0
.end method

.method public getXIndex()I
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    return v0
.end method

.method public getXPixelTopLeft()I
    .registers 2

    .prologue
    .line 288
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    mul-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public getYIndex()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    return v0
.end method

.method public getYPixelTopLeft()I
    .registers 2

    .prologue
    .line 295
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    mul-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    return-object v0
.end method

.method public getZoomParent()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .registers 8

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, newTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v1

    .line 306
    .local v1, newZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    if-eqz v1, :cond_25

    .line 307
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    .line 308
    .local v2, x:I
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    .line 312
    .local v3, y:I
    if-gez v2, :cond_17

    .line 313
    add-int/lit8 v2, v2, -0x1

    .line 315
    :cond_17
    if-gez v3, :cond_1b

    .line 316
    add-int/lit8 v3, v3, -0x1

    .line 319
    :cond_1b
    iget-byte v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    div-int/lit8 v5, v2, 0x2

    div-int/lit8 v6, v3, 0x2

    invoke-static {v4, v5, v6, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v0

    .line 322
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_25
    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 387
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->hashCode:I

    return v0
.end method

.method public notValid()Z
    .registers 3

    .prologue
    .line 400
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    if-ltz v0, :cond_10

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    if-lt v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTraffic()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .registers 2

    .prologue
    .line 329
    const/4 v0, 0x4

    invoke-static {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/DataOutput;)V
    .registers 3
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    iget-byte v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 368
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 369
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 370
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 371
    return-void
.end method
