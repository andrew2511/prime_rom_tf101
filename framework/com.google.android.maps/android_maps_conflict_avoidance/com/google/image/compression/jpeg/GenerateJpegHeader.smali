.class public Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;
.super Ljava/lang/Object;
.source "GenerateJpegHeader.java"


# static fields
.field private static final JPEG_STANDARD_HEADER:[B

.field private static JPEG_STANDARD_HEADER_CHROMINANCE_QUANT_OFFSET:I

.field private static JPEG_STANDARD_HEADER_LUMINANCE_QUANT_OFFSET:I

.field private static JPEG_STANDARD_HEADER_Y_X_OFFSET:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const/16 v0, 0x26f

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER:[B

    .line 227
    const/16 v0, 0xa3

    sput v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER_Y_X_OFFSET:I

    .line 232
    const/16 v0, 0x19

    sput v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER_LUMINANCE_QUANT_OFFSET:I

    .line 237
    const/16 v0, 0x5e

    sput v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER_CHROMINANCE_QUANT_OFFSET:I

    return-void

    .line 76
    :array_16
    .array-data 0x1
        0xfft
        0xd8t
        0xfft
        0xe0t
        0x0t
        0x10t
        0x4at
        0x46t
        0x49t
        0x46t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0xfft
        0xdbt
        0x0t
        0x43t
        0x0t
        0x8t
        0x6t
        0x6t
        0x7t
        0x6t
        0x5t
        0x8t
        0x7t
        0x7t
        0x7t
        0x9t
        0x9t
        0x8t
        0xat
        0xct
        0x14t
        0xdt
        0xct
        0xbt
        0xbt
        0xct
        0x19t
        0x12t
        0x13t
        0xft
        0x14t
        0x1dt
        0x1at
        0x1ft
        0x1et
        0x1dt
        0x1at
        0x1ct
        0x1ct
        0x20t
        0x24t
        0x2et
        0x27t
        0x20t
        0x22t
        0x2ct
        0x23t
        0x1ct
        0x1ct
        0x28t
        0x37t
        0x29t
        0x2ct
        0x30t
        0x31t
        0x34t
        0x34t
        0x34t
        0x1ft
        0x27t
        0x39t
        0x3dt
        0x38t
        0x32t
        0x3ct
        0x2et
        0x33t
        0x34t
        0x32t
        0xfft
        0xdbt
        0x0t
        0x43t
        0x1t
        0x9t
        0x9t
        0x9t
        0xct
        0xbt
        0xct
        0x18t
        0xdt
        0xdt
        0x18t
        0x32t
        0x21t
        0x1ct
        0x21t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0x32t
        0xfft
        0xc0t
        0x0t
        0x11t
        0x8t
        0x0t
        0x40t
        0x0t
        0x40t
        0x3t
        0x1t
        0x22t
        0x0t
        0x2t
        0x11t
        0x1t
        0x3t
        0x11t
        0x1t
        0xfft
        0xc4t
        0x0t
        0x1ft
        0x0t
        0x0t
        0x1t
        0x5t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xfft
        0xc4t
        0x0t
        0xb5t
        0x10t
        0x0t
        0x2t
        0x1t
        0x3t
        0x3t
        0x2t
        0x4t
        0x3t
        0x5t
        0x5t
        0x4t
        0x4t
        0x0t
        0x0t
        0x1t
        0x7dt
        0x1t
        0x2t
        0x3t
        0x0t
        0x4t
        0x11t
        0x5t
        0x12t
        0x21t
        0x31t
        0x41t
        0x6t
        0x13t
        0x51t
        0x61t
        0x7t
        0x22t
        0x71t
        0x14t
        0x32t
        0x81t
        0x91t
        0xa1t
        0x8t
        0x23t
        0x42t
        0xb1t
        0xc1t
        0x15t
        0x52t
        0xd1t
        0xf0t
        0x24t
        0x33t
        0x62t
        0x72t
        0x82t
        0x9t
        0xat
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x83t
        0x84t
        0x85t
        0x86t
        0x87t
        0x88t
        0x89t
        0x8at
        0x92t
        0x93t
        0x94t
        0x95t
        0x96t
        0x97t
        0x98t
        0x99t
        0x9at
        0xa2t
        0xa3t
        0xa4t
        0xa5t
        0xa6t
        0xa7t
        0xa8t
        0xa9t
        0xaat
        0xb2t
        0xb3t
        0xb4t
        0xb5t
        0xb6t
        0xb7t
        0xb8t
        0xb9t
        0xbat
        0xc2t
        0xc3t
        0xc4t
        0xc5t
        0xc6t
        0xc7t
        0xc8t
        0xc9t
        0xcat
        0xd2t
        0xd3t
        0xd4t
        0xd5t
        0xd6t
        0xd7t
        0xd8t
        0xd9t
        0xdat
        0xe1t
        0xe2t
        0xe3t
        0xe4t
        0xe5t
        0xe6t
        0xe7t
        0xe8t
        0xe9t
        0xeat
        0xf1t
        0xf2t
        0xf3t
        0xf4t
        0xf5t
        0xf6t
        0xf7t
        0xf8t
        0xf9t
        0xfat
        0xfft
        0xc4t
        0x0t
        0x1ft
        0x1t
        0x0t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xfft
        0xc4t
        0x0t
        0xb5t
        0x11t
        0x0t
        0x2t
        0x1t
        0x2t
        0x4t
        0x4t
        0x3t
        0x4t
        0x7t
        0x5t
        0x4t
        0x4t
        0x0t
        0x1t
        0x2t
        0x77t
        0x0t
        0x1t
        0x2t
        0x3t
        0x11t
        0x4t
        0x5t
        0x21t
        0x31t
        0x6t
        0x12t
        0x41t
        0x51t
        0x7t
        0x61t
        0x71t
        0x13t
        0x22t
        0x32t
        0x81t
        0x8t
        0x14t
        0x42t
        0x91t
        0xa1t
        0xb1t
        0xc1t
        0x9t
        0x23t
        0x33t
        0x52t
        0xf0t
        0x15t
        0x62t
        0x72t
        0xd1t
        0xat
        0x16t
        0x24t
        0x34t
        0xe1t
        0x25t
        0xf1t
        0x17t
        0x18t
        0x19t
        0x1at
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x82t
        0x83t
        0x84t
        0x85t
        0x86t
        0x87t
        0x88t
        0x89t
        0x8at
        0x92t
        0x93t
        0x94t
        0x95t
        0x96t
        0x97t
        0x98t
        0x99t
        0x9at
        0xa2t
        0xa3t
        0xa4t
        0xa5t
        0xa6t
        0xa7t
        0xa8t
        0xa9t
        0xaat
        0xb2t
        0xb3t
        0xb4t
        0xb5t
        0xb6t
        0xb7t
        0xb8t
        0xb9t
        0xbat
        0xc2t
        0xc3t
        0xc4t
        0xc5t
        0xc6t
        0xc7t
        0xc8t
        0xc9t
        0xcat
        0xd2t
        0xd3t
        0xd4t
        0xd5t
        0xd6t
        0xd7t
        0xd8t
        0xd9t
        0xdat
        0xe2t
        0xe3t
        0xe4t
        0xe5t
        0xe6t
        0xe7t
        0xe8t
        0xe9t
        0xeat
        0xf2t
        0xf3t
        0xf4t
        0xf5t
        0xf6t
        0xf7t
        0xf8t
        0xf9t
        0xfat
        0xfft
        0xdat
        0x0t
        0xct
        0x3t
        0x1t
        0x0t
        0x2t
        0x11t
        0x3t
        0x11t
        0x0t
        0x3ft
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyQuantTable([BIIII)V
    .registers 8
    .parameter "dest"
    .parameter "off"
    .parameter "quantType"
    .parameter "quality"
    .parameter "qualityAlgorithm"

    .prologue
    .line 269
    invoke-static {p2, p3, p4}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->getQuantTable(III)[B

    move-result-object v0

    .line 271
    .local v0, qtable:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    return-void
.end method

.method public static generate([BIIIIII)I
    .registers 15
    .parameter "dest"
    .parameter "off"
    .parameter "variant"
    .parameter "width"
    .parameter "height"
    .parameter "quality"
    .parameter "qualityAlgorithm"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 302
    if-eqz p2, :cond_c

    .line 303
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "variant"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    :cond_c
    const/16 v4, 0x18

    if-lt p5, v4, :cond_14

    const/16 v4, 0x64

    if-le p5, v4, :cond_1c

    .line 306
    :cond_14
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "quality"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 308
    :cond_1c
    if-eqz p6, :cond_39

    if-eq p6, v7, :cond_39

    .line 310
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "qualityAlgorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    :cond_39
    sget-object v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER:[B

    array-length v2, v4

    .line 314
    .local v2, len:I
    add-int v4, p1, v2

    array-length v5, p0

    if-le v4, v5, :cond_49

    .line 315
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v5, "dest"

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 317
    :cond_49
    sget-object v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER:[B

    invoke-static {v4, v6, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    sget v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER_Y_X_OFFSET:I

    add-int v3, p1, v4

    .line 321
    .local v3, yxOffset:I
    shr-int/lit8 v4, p3, 0x8

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 322
    add-int/lit8 v4, v3, 0x1

    and-int/lit16 v5, p3, 0xff

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 323
    add-int/lit8 v4, v3, 0x2

    shr-int/lit8 v5, p4, 0x8

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 324
    add-int/lit8 v4, v3, 0x3

    and-int/lit16 v5, p4, 0xff

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 329
    const/16 v4, 0x4b

    if-eq p5, v4, :cond_7e

    .line 331
    sget v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER_LUMINANCE_QUANT_OFFSET:I

    add-int v1, p1, v4

    .line 333
    .local v1, lOff:I
    sget v4, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER_CHROMINANCE_QUANT_OFFSET:I

    add-int v0, p1, v4

    .line 335
    .local v0, cOff:I
    invoke-static {p0, v1, v6, p5, p6}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->copyQuantTable([BIIII)V

    .line 337
    invoke-static {p0, v0, v7, p5, p6}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->copyQuantTable([BIIII)V

    .line 341
    .end local v0           #cOff:I
    .end local v1           #lOff:I
    :cond_7e
    return v2
.end method

.method public static getHeaderLength(I)I
    .registers 4
    .parameter "variant"

    .prologue
    .line 250
    if-eqz p0, :cond_1b

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1b
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/GenerateJpegHeader;->JPEG_STANDARD_HEADER:[B

    array-length v0, v0

    return v0
.end method
