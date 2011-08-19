.class public final Lcom/ecareme/utils/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# static fields
.field private static final HEXCHAR:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ecareme/utils/ByteUtils;->HEXCHAR:[C

    .line 17
    return-void

    .line 27
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static final fillRandomBytes([B)V
    .locals 4
    .parameter "bytes"

    .prologue
    const/16 v3, 0xa

    .line 602
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 603
    .local v1, ran:Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 614
    return-void

    .line 605
    :cond_0
    if-lez v0, :cond_1

    rem-int/lit8 v2, v0, 0x78

    if-nez v2, :cond_1

    .line 607
    aput-byte v3, p0, v0

    .line 603
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 611
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    goto :goto_1
.end method

.method public static final generateBytes(I)[B
    .locals 1
    .parameter "len"

    .prologue
    .line 595
    new-array v0, p0, [B

    .line 596
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/ecareme/utils/ByteUtils;->fillRandomBytes([B)V

    .line 597
    return-object v0
.end method

.method public static final generateBytesToFile(ILjava/io/File;)V
    .locals 1
    .parameter "len"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-static {p0}, Lcom/ecareme/utils/ByteUtils;->generateBytes(I)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ecareme/utils/ByteUtils;->saveBytes([BLjava/io/File;)V

    .line 591
    return-void
.end method

.method public static final generateBytesToFile(ILjava/lang/String;)V
    .locals 1
    .parameter "len"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {p0}, Lcom/ecareme/utils/ByteUtils;->generateBytes(I)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ecareme/utils/ByteUtils;->saveBytes([BLjava/lang/String;)V

    .line 586
    return-void
.end method

.method public static final getByte(CC)B
    .locals 7
    .parameter "hexChar1"
    .parameter "hexChar2"

    .prologue
    const/16 v6, 0x46

    const/16 v5, 0x39

    const/16 v4, 0x61

    const/16 v3, 0x41

    const/16 v2, 0x30

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, b:B
    if-gt v2, p0, :cond_0

    if-gt p0, v5, :cond_0

    .line 463
    sub-int v1, p0, v2

    int-to-byte v1, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    int-to-byte v0, v1

    .line 477
    :goto_0
    if-gt v2, p1, :cond_3

    if-gt p1, v5, :cond_3

    .line 479
    sub-int v1, p1, v2

    add-int/2addr v1, v0

    int-to-byte v0, v1

    .line 493
    :goto_1
    return v0

    .line 465
    :cond_0
    if-gt v4, p0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    .line 467
    sub-int v1, p0, v4

    add-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    int-to-byte v0, v1

    goto :goto_0

    .line 469
    :cond_1
    if-gt v3, p0, :cond_2

    if-gt p0, v6, :cond_2

    .line 471
    sub-int v1, p0, v3

    add-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    int-to-byte v0, v1

    goto :goto_0

    .line 475
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad Character \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" to convert to byte!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    :cond_3
    if-gt v4, p1, :cond_4

    const/16 v1, 0x66

    if-gt p1, v1, :cond_4

    .line 483
    sub-int v1, p1, v4

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    int-to-byte v0, v1

    goto :goto_1

    .line 485
    :cond_4
    if-gt v3, p1, :cond_5

    if-gt p1, v6, :cond_5

    .line 487
    sub-int v1, p1, v3

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    int-to-byte v0, v1

    goto :goto_1

    .line 491
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad Character \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" to convert to byte!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final getBytes(I[BIZ)V
    .locals 2
    .parameter "value"
    .parameter "buf"
    .parameter "pos"
    .parameter "bigEndian"

    .prologue
    .line 163
    if-eqz p3, :cond_0

    .line 165
    add-int/lit8 v0, p2, 0x3

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 166
    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 167
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 168
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 177
    :goto_0
    return-void

    .line 172
    :cond_0
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 173
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 174
    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 175
    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0
.end method

.method public static final getBytes(J[BIZ)V
    .locals 7
    .parameter "value"
    .parameter "buf"
    .parameter "pos"
    .parameter "bigEndian"

    .prologue
    const/16 v6, 0x28

    const/16 v5, 0x20

    const/16 v4, 0x18

    const/16 v3, 0x10

    const/16 v2, 0x8

    .line 267
    if-eqz p4, :cond_0

    .line 269
    add-int/lit8 v0, p3, 0x7

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 270
    add-int/lit8 v0, p3, 0x6

    ushr-long v1, p0, v2

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 271
    add-int/lit8 v0, p3, 0x5

    ushr-long v1, p0, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 272
    add-int/lit8 v0, p3, 0x4

    ushr-long v1, p0, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 273
    add-int/lit8 v0, p3, 0x3

    ushr-long v1, p0, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 274
    add-int/lit8 v0, p3, 0x2

    ushr-long v1, p0, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 275
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 276
    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 289
    :goto_0
    return-void

    .line 280
    :cond_0
    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 281
    add-int/lit8 v0, p3, 0x1

    ushr-long v1, p0, v2

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 282
    add-int/lit8 v0, p3, 0x2

    ushr-long v1, p0, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 283
    add-int/lit8 v0, p3, 0x3

    ushr-long v1, p0, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 284
    add-int/lit8 v0, p3, 0x4

    ushr-long v1, p0, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 285
    add-int/lit8 v0, p3, 0x5

    ushr-long v1, p0, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 286
    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x30

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 287
    add-int/lit8 v0, p3, 0x7

    const/16 v1, 0x38

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    goto :goto_0
.end method

.method public static final getBytes(S[BIZ)V
    .locals 2
    .parameter "value"
    .parameter "buf"
    .parameter "pos"
    .parameter "bigEndian"

    .prologue
    .line 82
    if-eqz p3, :cond_0

    .line 84
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 85
    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 90
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0
.end method

.method public static final getBytes(DZ)[B
    .locals 2
    .parameter "value"
    .parameter "bigEndian"

    .prologue
    .line 238
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/ecareme/utils/ByteUtils;->getBytes(JZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static final getBytes(FZ)[B
    .locals 1
    .parameter "value"
    .parameter "bigEndian"

    .prologue
    .line 135
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {v0, p1}, Lcom/ecareme/utils/ByteUtils;->getBytes(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static final getBytes(IZ)[B
    .locals 2
    .parameter "value"
    .parameter "bigEndian"

    .prologue
    .line 147
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 148
    .local v0, buf:[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/ecareme/utils/ByteUtils;->getBytes(I[BIZ)V

    .line 149
    return-object v0
.end method

.method public static final getBytes(JZ)[B
    .locals 2
    .parameter "value"
    .parameter "bigEndian"

    .prologue
    .line 251
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 252
    .local v0, buf:[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/ecareme/utils/ByteUtils;->getBytes(J[BIZ)V

    .line 253
    return-object v0
.end method

.method public static final getBytes(Ljava/lang/String;)[B
    .locals 5
    .parameter "hexString"

    .prologue
    .line 498
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 500
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is null or contains odd number of hex char"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 502
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 503
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 507
    return-object v0

    .line 505
    :cond_2
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Lcom/ecareme/utils/ByteUtils;->getByte(CC)B

    move-result v2

    aput-byte v2, v0, v1

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final getBytes(SZ)[B
    .locals 2
    .parameter "value"
    .parameter "bigEndian"

    .prologue
    .line 66
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 67
    .local v0, buf:[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/ecareme/utils/ByteUtils;->getBytes(S[BIZ)V

    .line 68
    return-object v0
.end method

.method public static final getDouble([BZ)D
    .locals 2
    .parameter "buf"
    .parameter "bigEndian"

    .prologue
    .line 300
    invoke-static {p0, p1}, Lcom/ecareme/utils/ByteUtils;->getLong([BZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getFloat([BZ)F
    .locals 1
    .parameter "buf"
    .parameter "bigEndian"

    .prologue
    .line 188
    invoke-static {p0, p1}, Lcom/ecareme/utils/ByteUtils;->getInt([BZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static final getHexString(B)Ljava/lang/String;
    .locals 4
    .parameter "n"

    .prologue
    .line 368
    new-instance v0, Ljava/lang/String;

    int-to-long v1, p0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/ecareme/utils/ByteUtils;->toUnsignedString(JI)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static final getHexString(C)Ljava/lang/String;
    .locals 4
    .parameter "n"

    .prologue
    .line 390
    new-instance v0, Ljava/lang/String;

    int-to-short v1, p0

    int-to-long v1, v1

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/ecareme/utils/ByteUtils;->toUnsignedString(JI)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static final getHexString(D)Ljava/lang/String;
    .locals 4
    .parameter "n"

    .prologue
    .line 443
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lcom/ecareme/utils/ByteUtils;->toUnsignedString(JI)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static final getHexString(F)Ljava/lang/String;
    .locals 4
    .parameter "n"

    .prologue
    .line 420
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/ecareme/utils/ByteUtils;->toUnsignedString(JI)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static final getHexString(I)Ljava/lang/String;
    .locals 4
    .parameter "n"

    .prologue
    .line 408
    new-instance v0, Ljava/lang/String;

    int-to-long v1, p0

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/ecareme/utils/ByteUtils;->toUnsignedString(JI)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static final getHexString(J)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 431
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {p0, p1, v1}, Lcom/ecareme/utils/ByteUtils;->toUnsignedString(JI)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static final getHexString(S)Ljava/lang/String;
    .locals 4
    .parameter "n"

    .prologue
    .line 379
    new-instance v0, Ljava/lang/String;

    int-to-long v1, p0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/ecareme/utils/ByteUtils;->toUnsignedString(JI)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static final getHexString([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 352
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 357
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 354
    :cond_0
    sget-object v2, Lcom/ecareme/utils/ByteUtils;->HEXCHAR:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    sget-object v2, Lcom/ecareme/utils/ByteUtils;->HEXCHAR:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final getInt([BIZ)I
    .locals 2
    .parameter "buf"
    .parameter "pos"
    .parameter "bigEndian"

    .prologue
    .line 213
    if-eqz p2, :cond_0

    .line 215
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 216
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 215
    or-int/2addr v0, v1

    .line 217
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 215
    or-int/2addr v0, v1

    .line 218
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 215
    or-int/2addr v0, v1

    .line 222
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 223
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 222
    or-int/2addr v0, v1

    .line 224
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 222
    or-int/2addr v0, v1

    .line 225
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    .line 222
    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public static final getInt([BZ)I
    .locals 1
    .parameter "buf"
    .parameter "bigEndian"

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ecareme/utils/ByteUtils;->getInt([BIZ)I

    move-result v0

    return v0
.end method

.method public static final getLong([BIZ)J
    .locals 10
    .parameter "buf"
    .parameter "pos"
    .parameter "bigEndian"

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0x18

    const/16 v7, 0x10

    const/16 v4, 0x8

    const-wide/16 v5, 0xff

    .line 325
    if-eqz p2, :cond_0

    .line 327
    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    .line 328
    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    shl-long/2addr v2, v4

    .line 327
    or-long/2addr v0, v2

    .line 329
    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    shl-long/2addr v2, v7

    .line 327
    or-long/2addr v0, v2

    .line 330
    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    shl-long/2addr v2, v8

    .line 327
    or-long/2addr v0, v2

    .line 331
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    shl-long/2addr v2, v9

    .line 327
    or-long/2addr v0, v2

    .line 332
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    .line 327
    or-long/2addr v0, v2

    .line 333
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    .line 327
    or-long/2addr v0, v2

    .line 334
    aget-byte v2, p0, p1

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    .line 327
    or-long/2addr v0, v2

    .line 338
    :goto_0
    return-wide v0

    :cond_0
    aget-byte v0, p0, p1

    int-to-long v0, v0

    and-long/2addr v0, v5

    .line 339
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    shl-long/2addr v2, v4

    .line 338
    or-long/2addr v0, v2

    .line 340
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    shl-long/2addr v2, v7

    .line 338
    or-long/2addr v0, v2

    .line 341
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    shl-long/2addr v2, v8

    .line 338
    or-long/2addr v0, v2

    .line 342
    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    shl-long/2addr v2, v9

    .line 338
    or-long/2addr v0, v2

    .line 343
    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    .line 338
    or-long/2addr v0, v2

    .line 344
    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    .line 338
    or-long/2addr v0, v2

    .line 345
    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    .line 338
    or-long/2addr v0, v2

    goto :goto_0
.end method

.method public static final getLong([BZ)J
    .locals 2
    .parameter "buf"
    .parameter "bigEndian"

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ecareme/utils/ByteUtils;->getLong([BIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getShort([BIZ)S
    .locals 2
    .parameter "buf"
    .parameter "pos"
    .parameter "bigEndian"

    .prologue
    .line 116
    if-eqz p2, :cond_0

    .line 118
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 122
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method

.method public static final getShort([BZ)S
    .locals 1
    .parameter "buf"
    .parameter "bigEndian"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ecareme/utils/ByteUtils;->getShort([BIZ)S

    move-result v0

    return v0
.end method

.method public static final readBytes(Ljava/io/File;)[B
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 541
    .local v1, in:Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {v1}, Lcom/ecareme/utils/ByteUtils;->readBytes(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 549
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 541
    return-object v2

    .line 543
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 549
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 550
    throw v2
.end method

.method public static final readBytes(Ljava/io/InputStream;)[B
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 512
    new-array v2, v4, [B

    .line 513
    .local v2, ret:[B
    const/16 v3, 0x800

    new-array v0, v3, [B

    .line 517
    .local v0, buf:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 518
    .local v1, len:I
    if-lez v1, :cond_0

    .line 520
    array-length v3, v2

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 521
    array-length v3, v2

    sub-int/2addr v3, v1

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 528
    :cond_0
    return-object v2
.end method

.method public static final readBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ecareme/utils/ByteUtils;->readBytes(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final saveBytes([BLjava/io/File;)V
    .locals 3
    .parameter "bytes"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 561
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 564
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {p0, v1}, Lcom/ecareme/utils/ByteUtils;->saveBytes([BLjava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 574
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 568
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 572
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 573
    throw v2
.end method

.method public static final saveBytes([BLjava/io/OutputStream;)V
    .locals 0
    .parameter "bytes"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 580
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 581
    return-void
.end method

.method public static final saveBytes([BLjava/lang/String;)V
    .locals 1
    .parameter "bytes"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ecareme/utils/ByteUtils;->saveBytes([BLjava/io/File;)V

    .line 556
    return-void
.end method

.method public static final switchEndian(I)I
    .locals 2
    .parameter "i"

    .prologue
    .line 45
    const/high16 v0, -0x100

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    .line 46
    const/high16 v1, 0xff

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    .line 45
    or-int/2addr v0, v1

    .line 47
    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    .line 45
    or-int/2addr v0, v1

    .line 48
    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 45
    or-int/2addr v0, v1

    return v0
.end method

.method public static final switchEndian(J)J
    .locals 12
    .parameter "l"

    .prologue
    const-wide/32 v10, 0xff00

    const/16 v9, 0x38

    const/16 v8, 0x28

    const/16 v7, 0x18

    const/16 v6, 0x8

    .line 32
    ushr-long v0, p0, v9

    .line 33
    ushr-long v2, p0, v8

    and-long/2addr v2, v10

    .line 32
    or-long/2addr v0, v2

    .line 34
    ushr-long v2, p0, v7

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    .line 32
    or-long/2addr v0, v2

    .line 35
    ushr-long v2, p0, v6

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    .line 32
    or-long/2addr v0, v2

    .line 36
    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    shl-long/2addr v2, v6

    .line 32
    or-long/2addr v0, v2

    .line 37
    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p0

    shl-long/2addr v2, v7

    .line 32
    or-long/2addr v0, v2

    .line 38
    and-long v2, p0, v10

    shl-long/2addr v2, v8

    .line 32
    or-long/2addr v0, v2

    .line 39
    shl-long v2, p0, v9

    .line 32
    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static final switchEndian(S)S
    .locals 2
    .parameter "i"

    .prologue
    .line 53
    const v0, 0xff00

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x8

    .line 54
    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 53
    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static final toUnsignedString(JI)[C
    .locals 4
    .parameter "x"
    .parameter "length"

    .prologue
    .line 448
    new-array v0, p2, [C

    .line 449
    .local v0, c:[C
    array-length v1, v0

    .line 450
    .local v1, pos:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    .line 455
    return-object v0

    .line 452
    :cond_0
    sget-object v2, Lcom/ecareme/utils/ByteUtils;->HEXCHAR:[C

    long-to-int v3, p0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 453
    const/4 v2, 0x4

    ushr-long/2addr p0, v2

    goto :goto_0
.end method
