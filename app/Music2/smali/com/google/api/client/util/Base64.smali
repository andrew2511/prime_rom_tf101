.class public Lcom/google/api/client/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final ALPHABET:[B = null

.field private static final DECODABET:[B = null

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final WHITE_SPACE_ENC:B = -0x5t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    .line 221
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/api/client/util/Base64;->DECODABET:[B

    return-void

    .line 203
    nop

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 221
    :array_1
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
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
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)[B
    .locals 2
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/api/client/util/Base64;->decode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BII)[B
    .locals 9
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    if-nez p0, :cond_0

    .line 584
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0
    const-string p1, "Cannot decode null source array."

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 586
    .restart local p0
    .restart local p1
    :cond_0
    if-ltz p1, :cond_1

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_2

    .line 587
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source array with length %d cannot have offset of %d and process %d bytes."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length p0, p0

    .end local p0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .end local p1
    aput-object p1, v2, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    .restart local p0
    .restart local p1
    :cond_2
    if-nez p2, :cond_3

    .line 592
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 637
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .line 593
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_3
    const/4 v0, 0x4

    if-ge p2, v0, :cond_4

    .line 594
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Base64-encoded string must have at least four characters, but length specified was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 598
    .restart local p0
    .restart local p1
    :cond_4
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 599
    .local v0, len34:I
    new-array v4, v0, [B

    .line 600
    .local v4, outBuff:[B
    const/4 v3, 0x0

    .line 602
    .local v3, outBuffPosn:I
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 603
    .local v0, b4:[B
    const/4 v1, 0x0

    .line 604
    .local v1, b4Posn:I
    const/4 v2, 0x0

    .line 605
    .local v2, i:I
    const/4 v5, 0x0

    .line 607
    .local v5, sbiDecode:B
    move v2, p1

    move v8, v5

    .end local v5           #sbiDecode:B
    .local v8, sbiDecode:B
    move v5, v3

    .end local v3           #outBuffPosn:I
    .local v5, outBuffPosn:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    move v2, v1

    .end local v1           #b4Posn:I
    .local v2, b4Posn:I
    move v1, v8

    .end local v8           #sbiDecode:B
    .local v1, sbiDecode:B
    :goto_1
    add-int v6, p1, p2

    if-ge v3, v6, :cond_9

    .line 609
    sget-object v1, Lcom/google/api/client/util/Base64;->DECODABET:[B

    .end local v1           #sbiDecode:B
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v1, v6

    .line 614
    .local v6, sbiDecode:B
    const/4 v1, -0x5

    if-lt v6, v1, :cond_5

    .line 615
    const/4 v1, -0x1

    if-lt v6, v1, :cond_8

    .line 616
    add-int/lit8 v1, v2, 0x1

    .end local v2           #b4Posn:I
    .local v1, b4Posn:I
    aget-byte v7, p0, v3

    aput-byte v7, v0, v2

    .line 617
    const/4 v2, 0x3

    if-le v1, v2, :cond_7

    .line 618
    const/4 v1, 0x0

    invoke-static {v0, v1, v4, v5}, Lcom/google/api/client/util/Base64;->decode4to3([BI[BI)I

    .end local v1           #b4Posn:I
    move-result v1

    add-int v2, v5, v1

    .line 619
    .end local v5           #outBuffPosn:I
    .local v2, outBuffPosn:I
    const/4 v1, 0x0

    .line 622
    .restart local v1       #b4Posn:I
    aget-byte v5, p0, v3

    const/16 v7, 0x3d

    if-ne v5, v7, :cond_6

    move p2, v6

    .end local v6           #sbiDecode:B
    .local p2, sbiDecode:B
    move p0, v1

    .end local v1           #b4Posn:I
    .local p0, b4Posn:I
    move p1, v2

    .line 635
    .end local v2           #outBuffPosn:I
    .local p1, outBuffPosn:I
    :goto_2
    new-array p0, p1, [B

    .line 636
    .local p0, out:[B
    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {v4, p2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 630
    .local v2, b4Posn:I
    .restart local v5       #outBuffPosn:I
    .restart local v6       #sbiDecode:B
    .local p0, source:[B
    .local p1, off:I
    .local p2, len:I
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .end local p1           #off:I
    const-string p2, "Bad Base64 input character decimal %d in array position %d"

    .end local p2           #len:I
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .end local v0           #b4:[B
    const/4 v1, 0x0

    aget-byte p0, p0, v3

    .end local p0           #source:[B
    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .end local v5           #outBuffPosn:I
    .restart local v0       #b4:[B
    .restart local v1       #b4Posn:I
    .local v2, outBuffPosn:I
    .restart local p0       #source:[B
    .restart local p1       #off:I
    .restart local p2       #len:I
    :cond_6
    move v5, v2

    .line 607
    .end local v2           #outBuffPosn:I
    .restart local v5       #outBuffPosn:I
    :cond_7
    :goto_3
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    move v2, v1

    .end local v1           #b4Posn:I
    .local v2, b4Posn:I
    move v1, v6

    .end local v6           #sbiDecode:B
    .local v1, sbiDecode:B
    goto :goto_1

    .end local v1           #sbiDecode:B
    .restart local v6       #sbiDecode:B
    :cond_8
    move v1, v2

    .end local v2           #b4Posn:I
    .local v1, b4Posn:I
    goto :goto_3

    .end local v6           #sbiDecode:B
    .local v1, sbiDecode:B
    .restart local v2       #b4Posn:I
    :cond_9
    move p2, v1

    .end local v1           #sbiDecode:B
    .local p2, sbiDecode:B
    move p0, v2

    .end local v2           #b4Posn:I
    .local p0, b4Posn:I
    move p1, v5

    .end local v5           #outBuffPosn:I
    .local p1, outBuffPosn:I
    goto :goto_2
.end method

.method private static decode4to3([BI[BI)I
    .locals 7
    .parameter "source"
    .parameter "srcOffset"
    .parameter "destination"
    .parameter "destOffset"

    .prologue
    const/16 v3, 0x3d

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 474
    if-nez p0, :cond_0

    .line 475
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Source array was null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    :cond_0
    if-nez p2, :cond_1

    .line 478
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Destination array was null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_1
    if-ltz p1, :cond_2

    add-int/lit8 v1, p1, 0x3

    array-length v2, p0

    if-lt v1, v2, :cond_3

    .line 481
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Source array with length %d cannot have offset of %d and still process four bytes."

    new-array v3, v4, [Ljava/lang/Object;

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 484
    :cond_3
    if-ltz p3, :cond_4

    add-int/lit8 v1, p3, 0x2

    array-length v2, p2

    if-lt v1, v2, :cond_5

    .line 485
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Destination array with length %d cannot have offset of %d and still store three bytes."

    new-array v3, v4, [Ljava/lang/Object;

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 491
    :cond_5
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    if-ne v1, v3, :cond_6

    .line 495
    sget-object v1, Lcom/google/api/client/util/Base64;->DECODABET:[B

    aget-byte v2, p0, p1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    sget-object v2, Lcom/google/api/client/util/Base64;->DECODABET:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int v0, v1, v2

    .line 498
    .local v0, outBuff:I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    move v1, v5

    .line 534
    :goto_0
    return v1

    .line 503
    .end local v0           #outBuff:I
    :cond_6
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v3, :cond_7

    .line 508
    sget-object v1, Lcom/google/api/client/util/Base64;->DECODABET:[B

    aget-byte v2, p0, p1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    sget-object v2, Lcom/google/api/client/util/Base64;->DECODABET:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    sget-object v2, Lcom/google/api/client/util/Base64;->DECODABET:[B

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    or-int v0, v1, v2

    .line 512
    .restart local v0       #outBuff:I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 513
    add-int/lit8 v1, p3, 0x1

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    move v1, v4

    .line 514
    goto :goto_0

    .line 524
    .end local v0           #outBuff:I
    :cond_7
    sget-object v1, Lcom/google/api/client/util/Base64;->DECODABET:[B

    aget-byte v2, p0, p1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    sget-object v2, Lcom/google/api/client/util/Base64;->DECODABET:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    sget-object v2, Lcom/google/api/client/util/Base64;->DECODABET:[B

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    sget-object v2, Lcom/google/api/client/util/Base64;->DECODABET:[B

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 530
    .restart local v0       #outBuff:I
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 531
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 532
    add-int/lit8 v1, p3, 0x2

    int-to-byte v2, v0

    aput-byte v2, p2, v1

    .line 534
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static encode([B)[B
    .locals 2
    .parameter "source"

    .prologue
    .line 349
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/api/client/util/Base64;->encode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[B
    .locals 7
    .parameter "source"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 369
    if-nez p0, :cond_0

    .line 370
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0
    const-string p1, "Cannot serialize a null array."

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 373
    .restart local p0
    .restart local p1
    :cond_0
    if-gez p1, :cond_1

    .line 374
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot have negative offset: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 377
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_1
    if-gez p2, :cond_2

    .line 378
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot have length offset: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 381
    .restart local p0
    .restart local p1
    :cond_2
    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_3

    .line 382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have offset of %d and length of %d with array of length %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .end local p1
    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .end local p2
    aput-object p2, v2, p1

    const/4 p1, 0x2

    array-length p0, p0

    .end local p0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_3
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_4

    const/4 v1, 0x4

    :goto_0
    add-int/2addr v0, v1

    .line 397
    .local v0, encLen:I
    new-array v4, v0, [B

    .line 400
    .local v4, outBuff:[B
    const/4 v0, 0x0

    .line 401
    .local v0, d:I
    const/4 v1, 0x0

    .line 402
    .local v1, e:I
    const/4 v2, 0x2

    sub-int v2, p2, v2

    .line 403
    .local v2, len2:I
    const/4 v3, 0x0

    .line 404
    .local v3, lineLength:I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 405
    add-int v5, v0, p1

    const/4 v6, 0x3

    invoke-static {p0, v5, v6, v4, v1}, Lcom/google/api/client/util/Base64;->encode3to4([BII[BI)[B

    .line 407
    add-int/lit8 v3, v3, 0x4

    .line 404
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 396
    .end local v0           #d:I
    .end local v1           #e:I
    .end local v2           #len2:I
    .end local v3           #lineLength:I
    .end local v4           #outBuff:[B
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 410
    .restart local v0       #d:I
    .restart local v1       #e:I
    .restart local v2       #len2:I
    .restart local v3       #lineLength:I
    .restart local v4       #outBuff:[B
    :cond_5
    if-ge v0, p2, :cond_7

    .line 411
    add-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2, v4, v1}, Lcom/google/api/client/util/Base64;->encode3to4([BII[BI)[B

    .line 412
    .end local p1
    .end local p2
    add-int/lit8 p0, v1, 0x4

    .line 417
    .end local v1           #e:I
    .local p0, e:I
    :goto_2
    array-length p1, v4

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    if-gt p0, p1, :cond_6

    .line 422
    new-array p1, p0, [B

    .line 423
    .local p1, finalOut:[B
    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {v4, p2, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v0           #d:I
    move-object p0, p1

    .line 428
    .end local p0           #e:I
    .end local p1           #finalOut:[B
    :goto_3
    return-object p0

    .restart local v0       #d:I
    .restart local p0       #e:I
    :cond_6
    move-object p0, v4

    goto :goto_3

    .restart local v1       #e:I
    .local p0, source:[B
    .local p1, off:I
    .restart local p2
    :cond_7
    move p0, v1

    .end local v1           #e:I
    .local p0, e:I
    goto :goto_2
.end method

.method private static encode3to4([BII[BI)[B
    .locals 5
    .parameter "source"
    .parameter "srcOffset"
    .parameter "numSigBytes"
    .parameter "destination"
    .parameter "destOffset"

    .prologue
    const/16 v4, 0x3d

    const/4 v3, 0x0

    .line 302
    if-lez p2, :cond_0

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    const/4 v2, 0x2

    if-le p2, v2, :cond_2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    :goto_2
    or-int v0, v1, v2

    .line 306
    .local v0, inBuff:I
    packed-switch p2, :pswitch_data_0

    .line 330
    :goto_3
    return-object p3

    .end local v0           #inBuff:I
    :cond_0
    move v1, v3

    .line 302
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    .line 309
    .restart local v0       #inBuff:I
    :pswitch_0
    sget-object v1, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 310
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 311
    add-int/lit8 v1, p4, 0x2

    sget-object v2, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 312
    add-int/lit8 v1, p4, 0x3

    sget-object v2, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    and-int/lit8 v3, v0, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    goto :goto_3

    .line 316
    :pswitch_1
    sget-object v1, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 317
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 318
    add-int/lit8 v1, p4, 0x2

    sget-object v2, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 319
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_3

    .line 323
    :pswitch_2
    sget-object v1, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 324
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lcom/google/api/client/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 325
    add-int/lit8 v1, p4, 0x2

    aput-byte v4, p3, v1

    .line 326
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_3

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
