.class public Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;
.super Ljava/lang/Object;
.source "JpegUtil.java"


# static fields
.field private static final JPEG_QUANT_TABLES:[[B

.field private static final imageIoScaleFactor:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x40

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->JPEG_QUANT_TABLES:[[B

    .line 81
    const/16 v0, 0x65

    new-array v0, v0, [I

    fill-array-data v0, :array_6a

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->imageIoScaleFactor:[I

    return-void

    .line 31
    nop

    :array_22
    .array-data 0x1
        0x10t
        0xbt
        0xct
        0xet
        0xct
        0xat
        0x10t
        0xet
        0xdt
        0xet
        0x12t
        0x11t
        0x10t
        0x13t
        0x18t
        0x28t
        0x1at
        0x18t
        0x16t
        0x16t
        0x18t
        0x31t
        0x23t
        0x25t
        0x1dt
        0x28t
        0x3at
        0x33t
        0x3dt
        0x3ct
        0x39t
        0x33t
        0x38t
        0x37t
        0x40t
        0x48t
        0x5ct
        0x4et
        0x40t
        0x44t
        0x57t
        0x45t
        0x37t
        0x38t
        0x50t
        0x6dt
        0x51t
        0x57t
        0x5ft
        0x62t
        0x67t
        0x68t
        0x67t
        0x3et
        0x4dt
        0x71t
        0x79t
        0x70t
        0x64t
        0x78t
        0x5ct
        0x65t
        0x67t
        0x63t
    .end array-data

    :array_46
    .array-data 0x1
        0x11t
        0x12t
        0x12t
        0x18t
        0x15t
        0x18t
        0x2ft
        0x1at
        0x1at
        0x2ft
        0x63t
        0x42t
        0x38t
        0x42t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
    .end array-data

    .line 81
    :array_6a
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x64t
        0x1t 0x0t 0x0t 0x32t
        0x81t 0x55t 0x55t 0x21t
        0x1t 0x0t 0x0t 0x19t
        0x1t 0x0t 0x0t 0x14t
        0xc1t 0xaat 0xaat 0x10t
        0x91t 0x24t 0x49t 0xet
        0x1t 0x0t 0x80t 0xct
        0xc1t 0x71t 0x1ct 0xbt
        0x1t 0x0t 0x0t 0xat
        0xd1t 0x45t 0x17t 0x9t
        0x61t 0x55t 0x55t 0x8t
        0x19t 0x3bt 0xb1t 0x7t
        0x49t 0x92t 0x24t 0x7t
        0xa9t 0xaat 0xaat 0x6t
        0x1t 0x0t 0x40t 0x6t
        0xe1t 0xe1t 0xe1t 0x5t
        0xe1t 0x38t 0x8et 0x5t
        0x51t 0x5et 0x43t 0x5t
        0x1t 0x0t 0x0t 0x5t
        0x31t 0xct 0xc3t 0x4t
        0xe9t 0xa2t 0x8bt 0x4t
        0x21t 0xbt 0x59t 0x4t
        0xb1t 0xaat 0x2at 0x4t
        0x1t 0x0t 0x0t 0x4t
        0x8dt 0x9dt 0xd8t 0x3t
        0xedt 0x25t 0xb4t 0x3t
        0x25t 0x49t 0x92t 0x3t
        0x39t 0xc2t 0x72t 0x3t
        0x55t 0x55t 0x55t 0x3t
        0x75t 0xcet 0x39t 0x3t
        0x1t 0x0t 0x20t 0x3t
        0xf1t 0xc1t 0x7t 0x3t
        0xf1t 0xf0t 0xf0t 0x2t
        0xb9t 0x6dt 0xdbt 0x2t
        0x71t 0x1ct 0xc7t 0x2t
        0x55t 0xe4t 0xb3t 0x2t
        0x29t 0xaft 0xa1t 0x2t
        0x9t 0x69t 0x90t 0x2t
        0x1t 0x0t 0x80t 0x2t
        0xe9t 0x63t 0x70t 0x2t
        0x19t 0x86t 0x61t 0x2t
        0x4dt 0x59t 0x53t 0x2t
        0x75t 0xd1t 0x45t 0x2t
        0x91t 0xe3t 0x38t 0x2t
        0x91t 0x85t 0x2ct 0x2t
        0x4dt 0xaet 0x20t 0x2t
        0x59t 0x55t 0x15t 0x2t
        0xf1t 0x72t 0xat 0x2t
        0x1t 0x0t 0x0t 0x2t
        0x91t 0xc2t 0xf5t 0x1t
        0x21t 0x85t 0xebt 0x1t
        0xb1t 0x47t 0xe1t 0x1t
        0x3dt 0xat 0xd7t 0x1t
        0xcdt 0xcct 0xcct 0x1t
        0x5dt 0x8ft 0xc2t 0x1t
        0xedt 0x51t 0xb8t 0x1t
        0x7dt 0x14t 0xaet 0x1t
        0xdt 0xd7t 0xa3t 0x1t
        0x99t 0x99t 0x99t 0x1t
        0x29t 0x5ct 0x8ft 0x1t
        0xb9t 0x1et 0x85t 0x1t
        0x49t 0xe1t 0x7at 0x1t
        0xd9t 0xa3t 0x70t 0x1t
        0x69t 0x66t 0x66t 0x1t
        0xf5t 0x28t 0x5ct 0x1t
        0x85t 0xebt 0x51t 0x1t
        0x15t 0xaet 0x47t 0x1t
        0xa5t 0x70t 0x3dt 0x1t
        0x35t 0x33t 0x33t 0x1t
        0xc5t 0xf5t 0x28t 0x1t
        0x51t 0xb8t 0x1et 0x1t
        0xe1t 0x7at 0x14t 0x1t
        0x71t 0x3dt 0xat 0x1t
        0x1t 0x0t 0x0t 0x1t
        0x91t 0xc2t 0xf5t 0x0t
        0x21t 0x85t 0xebt 0x0t
        0xb1t 0x47t 0xe1t 0x0t
        0x3dt 0xat 0xd7t 0x0t
        0xcdt 0xcct 0xcct 0x0t
        0x5dt 0x8ft 0xc2t 0x0t
        0xedt 0x51t 0xb8t 0x0t
        0x7dt 0x14t 0xaet 0x0t
        0xdt 0xd7t 0xa3t 0x0t
        0x99t 0x99t 0x99t 0x0t
        0x29t 0x5ct 0x8ft 0x0t
        0xb9t 0x1et 0x85t 0x0t
        0x49t 0xe1t 0x7at 0x0t
        0xd9t 0xa3t 0x70t 0x0t
        0x69t 0x66t 0x66t 0x0t
        0xf5t 0x28t 0x5ct 0x0t
        0x85t 0xebt 0x51t 0x0t
        0x15t 0xaet 0x47t 0x0t
        0xa5t 0x70t 0x3dt 0x0t
        0x35t 0x33t 0x33t 0x0t
        0xc5t 0xf5t 0x28t 0x0t
        0x51t 0xb8t 0x1et 0x0t
        0xe1t 0x7at 0x14t 0x0t
        0x71t 0x3dt 0xat 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getQuantTable(III)[B
    .registers 11
    .parameter "quantType"
    .parameter "quality"
    .parameter "qualityAlgorithm"

    .prologue
    const/16 v7, 0x40

    .line 188
    const-class v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;

    monitor-enter v4

    mul-int/lit16 v5, p0, 0x9a

    mul-int/lit8 v6, p2, 0x4d

    add-int/2addr v5, v6

    const/16 v6, 0x18

    sub-int v6, p1, v6

    add-int v0, v5, v6

    .line 189
    .local v0, index:I
    const/16 v5, 0x40

    :try_start_12
    new-array v2, v5, [B

    .line 190
    .local v2, qtable:[B
    sget-object v5, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->JPEG_QUANT_TABLES:[[B

    aget-object v3, v5, p0

    .line 191
    .local v3, rawTable:[B
    const/4 v1, 0x0

    .local v1, j:I
    :goto_19
    if-ge v1, v7, :cond_28

    .line 192
    aget-byte v5, v3, v1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5, p1, p2}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->getScaledQuantizationFactor(III)B

    move-result v5

    aput-byte v5, v2, v1
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_2a

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 195
    :cond_28
    monitor-exit v4

    return-object v2

    .line 188
    .end local v1           #j:I
    .end local v2           #qtable:[B
    .end local v3           #rawTable:[B
    :catchall_2a
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method public static getScaledQuantizationFactor(III)B
    .registers 9
    .parameter "q"
    .parameter "quality"
    .parameter "qualityAlgorithm"

    .prologue
    const/16 v3, 0x1388

    .line 139
    packed-switch p2, :pswitch_data_54

    .line 165
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "qualityAlgorithm"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :pswitch_d
    const/16 v2, 0x63

    if-ne p0, v2, :cond_1d

    const/16 v2, 0x24

    if-ne p1, v2, :cond_1d

    .line 147
    const/16 v1, 0x8a

    .line 169
    .local v1, val:I
    :goto_17
    const/4 v2, 0x1

    if-ge v1, v2, :cond_4c

    .line 170
    const/4 v1, 0x1

    .line 174
    :cond_1b
    :goto_1b
    int-to-byte v2, v1

    return v2

    .line 149
    .end local v1           #val:I
    :cond_1d
    int-to-long v2, p0

    sget-object v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->imageIoScaleFactor:[I

    aget v4, v4, p1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 152
    .restart local v1       #val:I
    goto :goto_17

    .line 156
    .end local v1           #val:I
    :pswitch_30
    const/16 v2, 0x32

    if-ge p1, v2, :cond_41

    .line 157
    div-int v2, v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 161
    .local v0, iscale:I
    :goto_3a
    mul-int v2, p0, v0

    add-int/lit8 v2, v2, 0x32

    div-int/lit8 v1, v2, 0x64

    .line 162
    .restart local v1       #val:I
    goto :goto_17

    .line 159
    .end local v0           #iscale:I
    .end local v1           #val:I
    :cond_41
    const/16 v2, 0xc8

    mul-int/lit8 v3, p1, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0       #iscale:I
    goto :goto_3a

    .line 171
    .end local v0           #iscale:I
    .restart local v1       #val:I
    :cond_4c
    const/16 v2, 0xff

    if-le v1, v2, :cond_1b

    .line 172
    const/16 v1, 0xff

    goto :goto_1b

    .line 139
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_d
        :pswitch_30
    .end packed-switch
.end method

.method static prependStandardHeader([BII[BILandroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;)V
    .registers 14
    .parameter "src"
    .parameter "soff"
    .parameter "len"
    .parameter "dst"
    .parameter "doff"
    .parameter "params"

    .prologue
    .line 218
    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getVariant()I

    move-result v2

    .line 219
    .local v2, variant:I
    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getWidth()I

    move-result v3

    .line 220
    .local v3, width:I
    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getHeight()I

    move-result v4

    .line 221
    .local v4, height:I
    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getQuality()I

    move-result v5

    .line 222
    .local v5, quality:I
    invoke-virtual {p5}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->getQualityAlgorithm()I

    move-result v6

    .line 223
    .local v6, qualityAlgorithm:I
    if-eqz v2, :cond_1e

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1e
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->getHeaderLength(I)I

    move-result v7

    .line 230
    .local v7, hlen:I
    add-int v0, p4, v7

    invoke-static {p0, p1, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p3

    move v1, p4

    .line 232
    invoke-static/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->generate([BIIIIII)I

    .line 234
    return-void
.end method

.method public static uncompactJpeg([B)[B
    .registers 3
    .parameter "compactJpegData"

    .prologue
    .line 382
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->uncompactJpeg([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static uncompactJpeg([BII)[B
    .registers 16
    .parameter "compactJpegData"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 333
    aget-byte v0, p0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    const/16 v1, -0x28

    if-ne v0, v1, :cond_15

    .line 336
    new-array v0, p2, [B

    .line 337
    .local v0, data:[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 366
    .end local v0           #data:[B
    .end local p0
    .end local p1
    :goto_14
    return-object p0

    .line 341
    .restart local p0
    .restart local p1
    :cond_15
    aget-byte v0, p0, p1

    const/16 v1, 0x43

    if-ne v0, v1, :cond_33

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    const/16 v1, 0x4a

    if-ne v0, v1, :cond_33

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_33

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    const/16 v1, 0x47

    if-eq v0, v1, :cond_3b

    .line 343
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Input is not in compact JPEG format"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 346
    .restart local p0
    .restart local p1
    :cond_3b
    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    and-int/lit16 v1, v0, 0xff

    .line 347
    .local v1, variant:I
    add-int/lit8 v0, p1, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    .line 349
    .local v2, width:I
    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, p1, 0x8

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v0

    .line 351
    .local v3, height:I
    add-int/lit8 v0, p1, 0x9

    aget-byte v0, p0, v0

    and-int/lit16 v4, v0, 0xff

    .line 352
    .local v4, quality:I
    add-int/lit8 v0, p1, 0xa

    aget-byte v0, p0, v0

    and-int/lit16 v5, v0, 0xff

    .line 356
    .local v5, qualityAlgorithm:I
    :try_start_6b
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->getHeaderLength(I)I
    :try_end_6e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_6e} :catch_89

    move-result v6

    .line 361
    .local v6, hlen:I
    add-int v0, v6, p2

    const/16 v7, 0xb

    sub-int/2addr v0, v7

    new-array v10, v0, [B

    .line 362
    .local v10, jpegData:[B
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;

    invoke-direct/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;-><init>(IIIIII)V

    .line 364
    .local v0, params:Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;
    add-int/lit8 v8, p1, 0xb

    const/16 p1, 0xb

    sub-int v9, p2, p1

    const/4 v11, 0x0

    move-object v7, p0

    move-object v12, v0

    invoke-static/range {v7 .. v12}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->prependStandardHeader([BII[BILandroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;)V

    .end local p1
    move-object p0, v10

    .line 366
    goto :goto_14

    .line 357
    .end local v0           #params:Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;
    .end local v6           #hlen:I
    .end local v10           #jpegData:[B
    .restart local p1
    :catch_89
    move-exception p0

    .line 358
    .local p0, e:Ljava/lang/IllegalArgumentException;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #e:Ljava/lang/IllegalArgumentException;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown variant "

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
