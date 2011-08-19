.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
.super Ljava/lang/Object;
.source "MapTile.java"


# static fields
.field private static final CJPG_HEADER:[B

.field protected static final LAYER_DATA_HEADER:[B

.field private static loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private static notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private static notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private static textSize:I

.field private static final unicolorTiles:Ljava/util/Hashtable;


# instance fields
.field private baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private completePaintCount:I

.field private data:[B

.field private firstPaintTime:J

.field private hasScaledImage:Z

.field private imageVersion:I

.field private isBaseMapImageRecyclable:Z

.field private isMapImageRecyclable:Z

.field private isPreCached:Z

.field private final isTemp:Z

.field private lastAccessTime:J

.field private lastPaintTime:J

.field private layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

.field private final location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private requested:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->unicolorTiles:Ljava/util/Hashtable;

    .line 69
    const/4 v0, 0x1

    sput v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->textSize:I

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->CJPG_HEADER:[B

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->LAYER_DATA_HEADER:[B

    return-void

    .line 72
    nop

    :array_1c
    .array-data 0x1
        0x43t
        0x4at
        0x50t
        0x47t
    .end array-data

    .line 76
    :array_22
    .array-data 0x1
        0x4ct
        0x54t
        0x49t
        0x50t
        0xat
    .end array-data
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V
    .registers 4
    .parameter "location"
    .parameter "tempImage"

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    .registers 7
    .parameter "location"
    .parameter "tempImage"
    .parameter "isTemp"

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->requested:Z

    .line 189
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    .line 190
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isBaseMapImageRecyclable:Z

    .line 240
    invoke-static {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->verifyTileDimensions(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V

    .line 241
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 242
    iput-boolean p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isTemp:Z

    .line 243
    invoke-direct {p0, p2, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    .line 244
    if-eqz p2, :cond_20

    const/4 v0, 0x1

    :goto_17
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    .line 245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    .line 246
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    .line 247
    return-void

    :cond_20
    move v0, v2

    .line 244
    goto :goto_17
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)V
    .registers 6
    .parameter "location"
    .parameter "imageData"

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->requested:Z

    .line 189
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    .line 190
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isBaseMapImageRecyclable:Z

    .line 256
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 257
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isTemp:Z

    .line 258
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    .line 259
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    .line 260
    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setData([B)V

    .line 261
    return-void
.end method

.method private static createTempImages()V
    .registers 4

    .prologue
    const/16 v3, 0x100

    .line 713
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    move-result-object v0

    .line 720
    :try_start_a
    const-string v1, "/loading_tile_android.png"

    invoke-interface {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createUnscaledImage(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v1

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    .line 721
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_17

    .line 734
    :goto_16
    return-void

    .line 728
    :catch_17
    move-exception v1

    .line 731
    const/4 v2, 0x0

    invoke-interface {v0, v3, v3, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage(IIZ)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    .line 732
    const-string v0, "MAP"

    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method private static equalBytes([BI[B)Z
    .registers 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "reference"

    .prologue
    const/4 v3, 0x0

    .line 741
    array-length v1, p0

    array-length v2, p2

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_8

    move v1, v3

    .line 749
    :goto_7
    return v1

    .line 744
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    array-length v1, p2

    if-ge v0, v1, :cond_19

    .line 745
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_16

    move v1, v3

    .line 746
    goto :goto_7

    .line 744
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 749
    :cond_19
    const/4 v1, 0x1

    goto :goto_7
.end method

.method private extractLayerTileAndImageData()[B
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 402
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    .line 406
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->LAYER_DATA_HEADER:[B

    invoke-static {v1, v7, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->equalBytes([BI[B)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 408
    :try_start_d
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->LAYER_DATA_HEADER:[B

    array-length v1, v1

    .line 410
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 411
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v3, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/util/ConversionUtil;->byteArrayToInt([B)I

    move-result v2

    .line 414
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 416
    add-int/lit8 v1, v1, 0x4

    .line 417
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    invoke-direct {v4, v5, v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 419
    add-int/2addr v1, v3

    .line 420
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    array-length v3, v3

    sub-int/2addr v3, v1

    new-array v0, v3, [B

    .line 421
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v3, v1, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    if-gez v2, :cond_7f

    .line 424
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 428
    :goto_3f
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->LAYER_TILE_INFO_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    .line 429
    invoke-virtual {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    .line 432
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 433
    new-array v3, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    move v4, v7

    .line 434
    :goto_51
    if-ge v4, v1, :cond_62

    .line 435
    new-instance v5, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    aput-object v5, v3, v4

    .line 434
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 439
    :cond_62
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-direct {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    .line 440
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    invoke-virtual {v1, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->setLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_70} :catch_71

    .line 446
    :cond_70
    :goto_70
    return-object v0

    .line 441
    :catch_71
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 442
    const/4 v2, 0x0

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    .line 443
    const-string v2, "IOException reading layer data"

    invoke-static {v2, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_70

    :cond_7f
    move-object v1, v4

    goto :goto_3f
.end method

.method private static getImageFromCjpg([B)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 5
    .parameter

    .prologue
    .line 810
    :try_start_0
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->uncompactJpeg([B)[B

    move-result-object v0

    .line 811
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage([BII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    .line 815
    :goto_12
    return-object v0

    .line 813
    :catch_13
    move-exception v0

    .line 814
    const-string v1, "MAP"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 815
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getNotAvailableImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    goto :goto_12
.end method

.method private static getImageFromUnicolor([B)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 15
    .parameter "unicolorData"

    .prologue
    const/16 v13, 0x100

    const/4 v12, 0x0

    .line 777
    array-length v10, p0

    const/4 v11, 0x3

    if-ge v10, v11, :cond_c

    .line 779
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getNotAvailableImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v10

    .line 799
    :goto_b
    return-object v10

    .line 781
    :cond_c
    aget-byte v10, p0, v12

    and-int/lit16 v8, v10, 0xff

    .line 782
    .local v8, red:I
    const/4 v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v5, v10, 0xff

    .line 783
    .local v5, green:I
    const/4 v10, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v0, v10, 0xff

    .line 784
    .local v0, blue:I
    shl-int/lit8 v10, v8, 0x10

    shl-int/lit8 v11, v5, 0x8

    or-int/2addr v10, v11

    or-int v1, v10, v0

    .line 785
    .local v1, color:I
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 786
    .local v2, colorKey:Ljava/lang/Integer;
    sget-object v10, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->unicolorTiles:Ljava/util/Hashtable;

    invoke-virtual {v10, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .line 787
    .local v9, ref:Ljava/lang/ref/WeakReference;
    if-eqz v9, :cond_3a

    .line 788
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    .line 789
    .local v6, image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    if-eqz v6, :cond_3a

    move-object v10, v6

    .line 790
    goto :goto_b

    .line 793
    .end local v6           #image:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_3a
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v10

    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    move-result-object v3

    .line 794
    .local v3, factory:Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;
    invoke-interface {v3, v13, v13, v12}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage(IIZ)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v7

    .line 795
    .local v7, img:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    invoke-interface {v7}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;

    move-result-object v4

    .line 796
    .local v4, gcs:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;
    invoke-interface {v4, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->setColor(I)V

    .line 797
    invoke-interface {v4, v12, v12, v13, v13}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->fillRect(IIII)V

    .line 798
    sget-object v10, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->unicolorTiles:Ljava/util/Hashtable;

    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, v2, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v7

    .line 799
    goto :goto_b
.end method

.method private static getNotAvailableImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 3

    .prologue
    const/16 v2, 0x100

    .line 757
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    move-result-object v0

    .line 758
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-nez v1, :cond_16

    .line 761
    :try_start_e
    const-string v1, "/no_tile_256.png"

    invoke-interface {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createUnscaledImage(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v1

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_19

    .line 770
    :cond_16
    :goto_16
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    return-object v0

    .line 763
    :catch_19
    move-exception v1

    .line 765
    invoke-interface {v0, v2, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage(II)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    .line 766
    const-string v0, "MAP"

    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method private getTempImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 2

    .prologue
    .line 621
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v0, :cond_8

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-nez v0, :cond_b

    .line 622
    :cond_8
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->createTempImages()V

    .line 625
    :cond_b
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isTemp:Z

    if-eqz v0, :cond_12

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    goto :goto_11
.end method

.method public static getTextSize()I
    .registers 1

    .prologue
    .line 851
    sget v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->textSize:I

    return v0
.end method

.method public static read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .registers 5
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v2

    .line 652
    .local v2, location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 653
    .local v1, length:I
    new-array v0, v1, [B

    .line 654
    .local v0, data:[B
    invoke-interface {p0, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 656
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    invoke-direct {v3, v2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)V

    return-object v3
.end method

.method private setBaseMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    .registers 4
    .parameter "image"
    .parameter "isRecyclable"

    .prologue
    .line 502
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isBaseMapImageRecyclable:Z

    if-eqz v0, :cond_d

    .line 503
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->recycle()V

    .line 505
    :cond_d
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    .line 506
    iput-boolean p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isBaseMapImageRecyclable:Z

    .line 507
    return-void
.end method

.method private setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    .registers 4
    .parameter "image"
    .parameter "isRecyclable"

    .prologue
    .line 489
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    if-eqz v0, :cond_d

    .line 490
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->recycle()V

    .line 492
    :cond_d
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    .line 493
    iput-boolean p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    .line 494
    return-void
.end method

.method public static setTextSize(I)V
    .registers 1
    .parameter "desiredTextSize"

    .prologue
    .line 843
    sput p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->textSize:I

    .line 844
    return-void
.end method

.method private static verifyTileDimensions(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x100

    .line 515
    if-eqz p0, :cond_3b

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_10

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getWidth()I

    move-result v0

    if-eq v0, v1, :cond_3b

    .line 517
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong image size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_3b
    return-void
.end method


# virtual methods
.method public declared-synchronized compact()V
    .registers 3

    .prologue
    .line 283
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getRequested()Z

    move-result v0

    if-nez v0, :cond_25

    .line 284
    :cond_d
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v0, :cond_16

    .line 285
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    .line 287
    :cond_16
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v0, :cond_1f

    .line 288
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setBaseMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    .line 290
    :cond_1f
    const/4 v0, 0x0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 293
    :cond_25
    monitor-exit p0

    return-void

    .line 283
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized createImage()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 365
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    if-eqz v3, :cond_1d

    .line 367
    :cond_a
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->extractLayerTileAndImageData()[B

    move-result-object v1

    .line 375
    .local v1, imageData:[B
    array-length v3, v1

    if-nez v3, :cond_1f

    .line 376
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getNotAvailableImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    .line 377
    .local v0, createdImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    const/4 v2, 0x0

    .line 389
    .local v2, isRecyclable:Z
    :goto_16
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IZ)V

    .line 391
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_4f

    .line 393
    .end local v0           #createdImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .end local v1           #imageData:[B
    .end local v2           #isRecyclable:Z
    :cond_1d
    monitor-exit p0

    return-void

    .line 378
    .restart local v1       #imageData:[B
    :cond_1f
    :try_start_1f
    array-length v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_29

    .line 379
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageFromUnicolor([B)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    .line 380
    .restart local v0       #createdImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    const/4 v2, 0x0

    .restart local v2       #isRecyclable:Z
    goto :goto_16

    .line 381
    .end local v0           #createdImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .end local v2           #isRecyclable:Z
    :cond_29
    const/4 v3, 0x0

    sget-object v4, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->CJPG_HEADER:[B

    invoke-static {v1, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->equalBytes([BI[B)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 382
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageFromCjpg([B)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    .line 383
    .restart local v0       #createdImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eq v0, v3, :cond_3d

    const/4 v3, 0x1

    move v2, v3

    .restart local v2       #isRecyclable:Z
    :goto_3c
    goto :goto_16

    .end local v2           #isRecyclable:Z
    :cond_3d
    move v2, v5

    goto :goto_3c

    .line 385
    .end local v0           #createdImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_3f
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v1

    invoke-interface {v3, v1, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage([BII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_4c
    .catchall {:try_start_1f .. :try_end_4c} :catchall_4f

    move-result-object v0

    .line 387
    .restart local v0       #createdImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    const/4 v2, 0x1

    .restart local v2       #isRecyclable:Z
    goto :goto_16

    .line 365
    .end local v0           #createdImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .end local v1           #imageData:[B
    .end local v2           #isRecyclable:Z
    :catchall_4f
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 661
    if-ne p0, p1, :cond_6

    move v2, v4

    .line 669
    :goto_5
    return v2

    .line 664
    :cond_6
    instance-of v2, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    if-nez v2, :cond_c

    move v2, v3

    .line 665
    goto :goto_5

    .line 668
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-object v1, v0

    .line 669
    .local v1, imageTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-nez v2, :cond_1c

    iget-object v2, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-nez v2, :cond_1a

    move v2, v4

    goto :goto_5

    :cond_1a
    move v2, v3

    goto :goto_5

    :cond_1c
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    iget-object v3, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5
.end method

.method public getCompletePaintCount()I
    .registers 2

    .prologue
    .line 352
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    return v0
.end method

.method public getDataSize()I
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFirstPaintTime()J
    .registers 3

    .prologue
    .line 344
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->firstPaintTime:J

    return-wide v0
.end method

.method public getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 3

    .prologue
    .line 558
    const-wide/high16 v0, -0x8000

    invoke-virtual {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage(J)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public getImage(J)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 8
    .parameter "accessTime"

    .prologue
    .line 574
    const/4 v1, 0x0

    .line 576
    .local v1, handleOutOfMemory:Z
    monitor-enter p0

    .line 577
    const-wide/high16 v3, -0x8000

    cmp-long v3, p1, v3

    if-nez v3, :cond_36

    .line 578
    :try_start_8
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v3

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    .line 585
    :goto_16
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v3, :cond_1e

    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    if-eqz v3, :cond_27

    :cond_1e
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_39

    move-result v3

    if-eqz v3, :cond_27

    .line 588
    :try_start_24
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->createImage()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_39
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24 .. :try_end_27} :catch_3c

    .line 596
    :cond_27
    :goto_27
    :try_start_27
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-nez v3, :cond_3f

    .line 598
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getTempImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v2

    .line 602
    .local v2, returnValue:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_39

    .line 603
    if-eqz v1, :cond_35

    .line 605
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->handleOutOfMemory()V

    .line 607
    :cond_35
    return-object v2

    .line 580
    .end local v2           #returnValue:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_36
    :try_start_36
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    goto :goto_16

    .line 602
    :catchall_39
    move-exception v3

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_39

    throw v3

    .line 589
    :catch_3c
    move-exception v0

    .line 592
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x1

    goto :goto_27

    .line 600
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_3f
    :try_start_3f
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_39

    .restart local v2       #returnValue:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    goto :goto_2f
.end method

.method public getImageVersion()I
    .registers 2

    .prologue
    .line 541
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    return v0
.end method

.method public getIsPreCached()Z
    .registers 2

    .prologue
    .line 825
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isPreCached:Z

    return v0
.end method

.method public getLastAccessTime()J
    .registers 3

    .prologue
    .line 307
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    return-wide v0
.end method

.method public getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    return-object v0
.end method

.method public getRequested()Z
    .registers 2

    .prologue
    .line 833
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->requested:Z

    return v0
.end method

.method public hasImage()Z
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasRenderedImage()Z
    .registers 3

    .prologue
    .line 707
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasScaledImage()Z
    .registers 2

    .prologue
    .line 549
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 675
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isComplete()Z
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public removeScaledImage()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    if-eqz v0, :cond_b

    .line 265
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    .line 268
    :cond_b
    return-void
.end method

.method public restoreBaseImage()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 532
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    .line 533
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    .line 534
    return-void
.end method

.method public declared-synchronized setData([B)V
    .registers 4
    .parameter

    .prologue
    .line 688
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 689
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tile already complete"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 688
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 691
    :cond_12
    const/4 v0, 0x0

    :try_start_13
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    .line 692
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    .line 696
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setBaseMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    .line 697
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    if-nez v0, :cond_25

    .line 698
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_f

    .line 700
    :cond_25
    monitor-exit p0

    return-void
.end method

.method public setImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IZ)V
    .registers 4
    .parameter "image"
    .parameter "imageVersion"
    .parameter "isRecyclable"

    .prologue
    .line 461
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->verifyTileDimensions(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V

    .line 462
    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    .line 463
    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setImageVersion(I)V

    .line 464
    return-void
.end method

.method public setImageVersion(I)V
    .registers 4
    .parameter "imageVersion"

    .prologue
    .line 472
    if-nez p1, :cond_c

    .line 473
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setBaseMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    .line 480
    :cond_c
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    .line 481
    return-void
.end method

.method public final setLastAccessTime(J)V
    .registers 3
    .parameter "lastAccessTime"

    .prologue
    .line 311
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    .line 312
    return-void
.end method

.method public setPaint(JJ)V
    .registers 11
    .parameter "mapPaintTime"
    .parameter "lastMapPaintTime"

    .prologue
    const-wide/16 v4, 0x0

    .line 327
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    if-nez v0, :cond_18

    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastPaintTime:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_18

    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastPaintTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 329
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->firstPaintTime:J

    .line 331
    :cond_18
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->firstPaintTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_20

    .line 332
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->firstPaintTime:J

    .line 334
    :cond_20
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastPaintTime:J

    .line 337
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    if-nez v0, :cond_39

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_39

    .line 339
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    .line 341
    :cond_39
    return-void
.end method

.method public setRequested(Z)V
    .registers 2
    .parameter "requested"

    .prologue
    .line 829
    iput-boolean p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->requested:Z

    .line 830
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    if-eqz v1, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    const-string v1, "B?"

    goto :goto_29
.end method

.method public write(Ljava/io/DataOutput;)V
    .registers 3
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->write(Ljava/io/DataOutput;)V

    .line 637
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 638
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 639
    return-void
.end method
