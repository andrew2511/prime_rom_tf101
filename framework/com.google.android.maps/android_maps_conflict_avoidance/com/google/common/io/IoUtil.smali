.class public Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;
.super Ljava/lang/Object;
.source "IoUtil.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->HEX_DIGITS:[C

    return-void

    :array_a
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
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static createDataInputFromBytes([B)Ljava/io/DataInput;
    .registers 2
    .parameter "bytes"

    .prologue
    .line 941
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;-><init>([B)V

    return-object v0
.end method

.method public static decodeUtf8([BIIZ)Ljava/lang/String;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v10, 0xd800

    const/16 v9, 0x80

    const/4 v8, 0x1

    .line 545
    new-instance v0, Ljava/lang/StringBuffer;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, p1

    .line 548
    :goto_e
    if-ge v1, p2, :cond_b5

    .line 549
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 550
    const/16 v3, 0x7f

    if-gt v1, v3, :cond_20

    .line 551
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_e

    .line 552
    :cond_20
    const/16 v3, 0xf5

    if-lt v1, v3, :cond_34

    .line 553
    if-nez p3, :cond_2e

    .line 554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_2e
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_e

    .line 558
    :cond_34
    const/16 v3, 0xe0

    .line 561
    const/16 v4, 0x1f

    move v5, v8

    move v6, v3

    move v3, v4

    move v4, v9

    .line 562
    :goto_3c
    if-lt v1, v6, :cond_4d

    .line 563
    shr-int/lit8 v6, v6, 0x1

    or-int/lit16 v6, v6, 0x80

    .line 564
    if-ne v5, v8, :cond_4b

    const/4 v7, 0x4

    :goto_45
    shl-int/2addr v4, v7

    .line 565
    add-int/lit8 v5, v5, 0x1

    .line 566
    shr-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 564
    :cond_4b
    const/4 v7, 0x5

    goto :goto_45

    .line 568
    :cond_4d
    and-int/2addr v1, v3

    .line 570
    const/4 v3, 0x0

    move v11, v3

    move v3, v2

    move v2, v1

    move v1, v11

    :goto_53
    if-ge v1, v5, :cond_7e

    .line 571
    shl-int/lit8 v2, v2, 0x6

    .line 572
    if-lt v3, p2, :cond_63

    .line 573
    if-nez p3, :cond_7b

    .line 574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_63
    if-nez p3, :cond_73

    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xc0

    if-eq v6, v9, :cond_73

    .line 579
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_73
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    move v3, v6

    .line 570
    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 586
    :cond_7e
    if-nez p3, :cond_82

    if-lt v2, v4, :cond_89

    :cond_82
    if-lt v2, v10, :cond_91

    const v1, 0xdfff

    if-gt v2, v1, :cond_91

    .line 587
    :cond_89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_91
    const v1, 0xffff

    if-gt v2, v1, :cond_9d

    .line 591
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    goto/16 :goto_e

    .line 593
    :cond_9d
    const/high16 v1, 0x1

    sub-int v1, v2, v1

    .line 594
    shr-int/lit8 v2, v1, 0xa

    or-int/2addr v2, v10

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 595
    const v2, 0xdc00

    and-int/lit16 v1, v1, 0x3ff

    or-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    goto/16 :goto_e

    .line 599
    :cond_b5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeUtf8(Ljava/lang/String;[BI)I
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0xd800

    const v7, 0xfc00

    .line 472
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 473
    const/4 v1, 0x0

    move v2, p2

    :goto_c
    if-ge v1, v0, :cond_bc

    .line 474
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 477
    if-lt v3, v8, :cond_bd

    const v4, 0xdfff

    if-gt v3, v4, :cond_bd

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_bd

    .line 478
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 483
    and-int v5, v4, v7

    and-int v6, v3, v7

    xor-int/2addr v5, v6

    const/16 v6, 0x400

    if-ne v5, v6, :cond_bd

    .line 485
    add-int/lit8 v1, v1, 0x1

    .line 488
    and-int v5, v4, v7

    if-ne v5, v8, :cond_35

    move v9, v4

    move v4, v3

    move v3, v9

    .line 494
    :cond_35
    and-int/lit16 v3, v3, 0x3ff

    shl-int/lit8 v3, v3, 0xa

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    const/high16 v4, 0x1

    add-int/2addr v3, v4

    move v9, v3

    move v3, v1

    move v1, v9

    .line 497
    :goto_42
    const/16 v4, 0x7f

    if-gt v1, v4, :cond_53

    .line 498
    if-eqz p1, :cond_4b

    .line 499
    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 501
    :cond_4b
    add-int/lit8 v1, v2, 0x1

    .line 473
    :goto_4d
    add-int/lit8 v2, v3, 0x1

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_c

    .line 502
    :cond_53
    const/16 v4, 0x7ff

    if-gt v1, v4, :cond_6c

    .line 504
    if-eqz p1, :cond_69

    .line 505
    shr-int/lit8 v4, v1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 506
    add-int/lit8 v4, v2, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    .line 508
    :cond_69
    add-int/lit8 v1, v2, 0x2

    goto :goto_4d

    .line 509
    :cond_6c
    const v4, 0xffff

    if-gt v1, v4, :cond_91

    .line 511
    if-eqz p1, :cond_8e

    .line 512
    shr-int/lit8 v4, v1, 0xc

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 513
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 514
    add-int/lit8 v4, v2, 0x2

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    .line 516
    :cond_8e
    add-int/lit8 v1, v2, 0x3

    goto :goto_4d

    .line 518
    :cond_91
    if-eqz p1, :cond_b9

    .line 519
    shr-int/lit8 v4, v1, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 520
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 521
    add-int/lit8 v4, v2, 0x2

    shr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 522
    add-int/lit8 v4, v2, 0x3

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    .line 524
    :cond_b9
    add-int/lit8 v1, v2, 0x4

    goto :goto_4d

    .line 528
    :cond_bc
    return v2

    :cond_bd
    move v9, v3

    move v3, v1

    move v1, v9

    goto :goto_42
.end method

.method public static encodeUtf8(Ljava/lang/String;)[B
    .registers 5
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 456
    const/4 v2, 0x0

    invoke-static {p0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    .line 457
    .local v0, len:I
    new-array v1, v0, [B

    .line 458
    .local v1, result:[B
    invoke-static {p0, v1, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    .line 459
    return-object v1
.end method

.method public static inflate([BIII)[B
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 958
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [B

    .line 959
    invoke-static {p0, p1, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 960
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v3, p2, 0x1

    invoke-direct {v2, v0, v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 964
    new-array v1, p3, [B

    move v2, v4

    move v3, p3

    .line 971
    :goto_1b
    if-lez v3, :cond_27

    :try_start_1d
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_27

    .line 972
    sub-int/2addr v3, v4

    .line 973
    add-int/2addr v2, v4

    goto :goto_1b

    .line 975
    :cond_27
    if-eqz v3, :cond_57

    .line 976
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] bytes, but only read ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_52
    .catchall {:try_start_1d .. :try_end_52} :catchall_52

    .line 980
    :catchall_52
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1

    :cond_57
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 982
    return-object v1
.end method
