.class Lorg/jivesoftware/smack/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/Base64$OutputStream;
    }
.end annotation


# static fields
.field private static final ALPHABET:[B

.field private static final DECODABET:[B

.field private static final _NATIVE_ALPHABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 103
    const/16 v2, 0x40

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lorg/jivesoftware/smack/util/Base64;->_NATIVE_ALPHABET:[B

    .line 125
    :try_start_0
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    .local v0, __bytes:[B
    :goto_0
    sput-object v0, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    .line 138
    const/16 v2, 0x7f

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    sput-object v2, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    return-void

    .line 128
    .end local v0           #__bytes:[B
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 129
    .local v1, use:Ljava/io/UnsupportedEncodingException;
    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->_NATIVE_ALPHABET:[B

    .restart local v0       #__bytes:[B
    goto :goto_0

    .line 103
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

    .line 138
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
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method static synthetic access$100()[B
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    return-object v0
.end method

.method static synthetic access$200([BI[BI)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lorg/jivesoftware/smack/util/Base64;->decode4to3([BI[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$300([B[BI)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14
    .parameter "s"

    .prologue
    const/4 v13, 0x0

    .line 724
    :try_start_0
    const-string v11, "UTF-8"

    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 732
    .local v5, bytes:[B
    :goto_0
    array-length v11, v5

    invoke-static {v5, v13, v11}, Lorg/jivesoftware/smack/util/Base64;->decode([BII)[B

    move-result-object v5

    .line 736
    if-eqz v5, :cond_0

    array-length v11, v5

    const/4 v12, 0x4

    if-lt v11, v12, :cond_0

    .line 738
    aget-byte v11, v5, v13

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x1

    aget-byte v12, v5, v12

    shl-int/lit8 v12, v12, 0x8

    const v13, 0xff00

    and-int/2addr v12, v13

    or-int v8, v11, v12

    .line 739
    .local v8, head:I
    const v11, 0x8b1f

    if-ne v11, v8, :cond_0

    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    .line 742
    .local v6, gzis:Ljava/util/zip/GZIPInputStream;
    const/4 v2, 0x0

    .line 743
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x800

    new-array v4, v11, [B

    .line 747
    .local v4, buffer:[B
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 748
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    .line 749
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    :try_start_3
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    .line 751
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .local v7, gzis:Ljava/util/zip/GZIPInputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v7, v4}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v9

    .local v9, length:I
    if-ltz v9, :cond_1

    .line 752
    const/4 v11, 0x0

    invoke-virtual {v3, v4, v11, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 759
    .end local v9           #length:I
    :catch_0
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .line 764
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 769
    :goto_3
    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 774
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 783
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #buffer:[B
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .end local v8           #head:I
    :cond_0
    :goto_5
    return-object v5

    .line 726
    .end local v5           #bytes:[B
    :catch_1
    move-exception v11

    move-object v10, v11

    .line 727
    .local v10, uee:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .restart local v5       #bytes:[B
    goto :goto_0

    .line 756
    .end local v10           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #buffer:[B
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v8       #head:I
    .restart local v9       #length:I
    :cond_1
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v5

    .line 764
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 769
    :goto_6
    :try_start_a
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 774
    :goto_7
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    .line 775
    :catch_2
    move-exception v11

    goto :goto_5

    .line 763
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .end local v9           #length:I
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    :catchall_0
    move-exception v11

    .line 764
    :goto_8
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 769
    :goto_9
    :try_start_d
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 774
    :goto_a
    :try_start_e
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 777
    :goto_b
    throw v11

    .line 765
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v9       #length:I
    :catch_3
    move-exception v11

    goto :goto_6

    .line 770
    :catch_4
    move-exception v11

    goto :goto_7

    .line 765
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .end local v9           #length:I
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    :catch_5
    move-exception v11

    goto :goto_3

    .line 770
    :catch_6
    move-exception v11

    goto :goto_4

    .line 775
    :catch_7
    move-exception v11

    goto :goto_5

    .line 765
    :catch_8
    move-exception v12

    goto :goto_9

    .line 770
    :catch_9
    move-exception v12

    goto :goto_a

    .line 775
    :catch_a
    move-exception v12

    goto :goto_b

    .line 763
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .line 759
    :catch_b
    move-exception v11

    goto :goto_2

    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_c
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_d
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method

.method public static decode([BII)[B
    .locals 13
    .parameter "source"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v11, 0x0

    .line 669
    mul-int/lit8 v10, p2, 0x3

    div-int/lit8 v4, v10, 0x4

    .line 670
    .local v4, len34:I
    new-array v6, v4, [B

    .line 671
    .local v6, outBuff:[B
    const/4 v7, 0x0

    .line 673
    .local v7, outBuffPosn:I
    const/4 v10, 0x4

    new-array v0, v10, [B

    .line 674
    .local v0, b4:[B
    const/4 v1, 0x0

    .line 678
    .local v1, b4Posn:I
    move v3, p1

    .local v3, i:I
    move v2, v1

    .end local v1           #b4Posn:I
    .local v2, b4Posn:I
    :goto_0
    add-int v10, p1, p2

    if-ge v3, v10, :cond_3

    .line 679
    aget-byte v10, p0, v3

    and-int/lit8 v10, v10, 0x7f

    int-to-byte v8, v10

    .line 680
    .local v8, sbiCrop:B
    sget-object v10, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    aget-byte v9, v10, v8

    .line 682
    .local v9, sbiDecode:B
    const/4 v10, -0x5

    if-lt v9, v10, :cond_0

    .line 685
    const/4 v10, -0x1

    if-lt v9, v10, :cond_1

    .line 686
    add-int/lit8 v1, v2, 0x1

    .end local v2           #b4Posn:I
    .restart local v1       #b4Posn:I
    aput-byte v8, v0, v2

    .line 687
    const/4 v10, 0x3

    if-le v1, v10, :cond_2

    .line 688
    invoke-static {v0, v11, v6, v7}, Lorg/jivesoftware/smack/util/Base64;->decode4to3([BI[BI)I

    move-result v10

    add-int/2addr v7, v10

    .line 689
    const/4 v1, 0x0

    .line 692
    const/16 v10, 0x3d

    if-ne v8, v10, :cond_2

    .line 707
    .end local v8           #sbiCrop:B
    .end local v9           #sbiDecode:B
    :goto_1
    new-array v5, v7, [B

    .line 708
    .local v5, out:[B
    invoke-static {v6, v11, v5, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v5

    .line 709
    .end local v5           #out:[B
    :goto_2
    return-object v10

    .line 701
    .end local v1           #b4Posn:I
    .restart local v2       #b4Posn:I
    .restart local v8       #sbiCrop:B
    .restart local v9       #sbiDecode:B
    :cond_0
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad Base64 input character at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-byte v12, p0, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(decimal)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 703
    const/4 v10, 0x0

    move v1, v2

    .end local v2           #b4Posn:I
    .restart local v1       #b4Posn:I
    goto :goto_2

    .end local v1           #b4Posn:I
    .restart local v2       #b4Posn:I
    :cond_1
    move v1, v2

    .line 678
    .end local v2           #b4Posn:I
    .restart local v1       #b4Posn:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #b4Posn:I
    .restart local v2       #b4Posn:I
    goto :goto_0

    .end local v8           #sbiCrop:B
    .end local v9           #sbiDecode:B
    :cond_3
    move v1, v2

    .end local v2           #b4Posn:I
    .restart local v1       #b4Posn:I
    goto :goto_1
.end method

.method private static decode4to3([BI[BI)I
    .locals 6
    .parameter "source"
    .parameter "srcOffset"
    .parameter "destination"
    .parameter "destOffset"

    .prologue
    const/16 v3, 0x3d

    .line 592
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_0

    .line 597
    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    aget-byte v3, p0, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    sget-object v3, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int v1, v2, v3

    .line 600
    .local v1, outBuff:I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 601
    const/4 v2, 0x1

    .line 649
    .end local v1           #outBuff:I
    :goto_0
    return v2

    .line 605
    :cond_0
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_1

    .line 611
    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    aget-byte v3, p0, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    sget-object v3, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    sget-object v3, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int v1, v2, v3

    .line 615
    .restart local v1       #outBuff:I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 616
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 617
    const/4 v2, 0x2

    goto :goto_0

    .line 630
    .end local v1           #outBuff:I
    :cond_1
    :try_start_0
    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    aget-byte v3, p0, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    sget-object v3, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    sget-object v3, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    sget-object v3, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 635
    .restart local v1       #outBuff:I
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 636
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 637
    add-int/lit8 v2, p3, 0x2

    int-to-byte v3, v1

    aput-byte v3, p2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    const/4 v2, 0x3

    goto :goto_0

    .line 640
    .end local v1           #outBuff:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 641
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    aget-byte v5, p0, p1

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 643
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 645
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 647
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/util/Base64;->DECODABET:[B

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 649
    const/4 v2, -0x1

    goto/16 :goto_0
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

    .line 256
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

    .line 260
    .local v0, inBuff:I
    packed-switch p2, :pswitch_data_0

    .line 283
    :goto_3
    return-object p3

    .end local v0           #inBuff:I
    :cond_0
    move v1, v3

    .line 256
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    .line 262
    .restart local v0       #inBuff:I
    :pswitch_0
    sget-object v1, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 263
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 264
    add-int/lit8 v1, p4, 0x2

    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 265
    add-int/lit8 v1, p4, 0x3

    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    and-int/lit8 v3, v0, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    goto :goto_3

    .line 269
    :pswitch_1
    sget-object v1, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 270
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 271
    add-int/lit8 v1, p4, 0x2

    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 272
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_3

    .line 276
    :pswitch_2
    sget-object v1, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 277
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lorg/jivesoftware/smack/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 278
    add-int/lit8 v1, p4, 0x2

    aput-byte v4, p3, v1

    .line 279
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_3

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encode3to4([B[BI)[B
    .locals 1
    .parameter "b4"
    .parameter "threeBytes"
    .parameter "numSigBytes"

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-static {p1, v0, p2, p0, v0}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BI)[B

    .line 215
    return-object p0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 8
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"

    .prologue
    .line 474
    and-int/lit8 v2, p3, 0x8

    .line 475
    .local v2, dontBreakLines:I
    and-int/lit8 p3, p3, 0x2

    .line 478
    .local p3, gzip:I
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 481
    .local v3, gzos:Ljava/util/zip/GZIPOutputStream;
    const/4 p3, 0x0

    .line 485
    .local p3, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v0, Lorg/jivesoftware/smack/util/Base64$OutputStream;

    or-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    .line 487
    .end local v2           #dontBreakLines:I
    .end local p3           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local v0, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :try_start_2
    new-instance p3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    .line 489
    .end local v3           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local p3, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    invoke-virtual {p3, p0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 490
    invoke-virtual {p3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e

    .line 498
    :try_start_4
    invoke-virtual {p3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 503
    .end local p0
    :goto_0
    :try_start_5
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 508
    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 516
    :goto_2
    :try_start_7
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .end local p1
    const-string p2, "UTF-8"

    .end local p2
    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1

    .line 558
    .end local v0           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local p3           #gzos:Ljava/util/zip/GZIPOutputStream;
    :goto_3
    return-object p0

    .line 492
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #dontBreakLines:I
    .restart local v3       #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local p0
    .restart local p1
    .restart local p2
    .local p3, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p1, v0

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local p1, baos:Ljava/io/ByteArrayOutputStream;
    move-object p0, p3

    .end local p3           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local p0, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    move-object p3, v3

    .line 493
    .end local v2           #dontBreakLines:I
    .end local v3           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local p2, e:Ljava/io/IOException;
    .local p3, gzos:Ljava/util/zip/GZIPOutputStream;
    :goto_4
    :try_start_8
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 494
    const/4 p2, 0x0

    .line 498
    .end local p2           #e:Ljava/io/IOException;
    :try_start_9
    invoke-virtual {p3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 503
    .end local p3           #gzos:Ljava/util/zip/GZIPOutputStream;
    :goto_5
    :try_start_a
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 508
    .end local p0           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :goto_6
    :try_start_b
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :goto_7
    move-object p0, p2

    .line 511
    goto :goto_3

    .line 497
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #dontBreakLines:I
    .restart local v3       #gzos:Ljava/util/zip/GZIPOutputStream;
    .local p0, source:[B
    .local p1, off:I
    .local p2, len:I
    .local p3, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :catchall_0
    move-exception p0

    move-object p2, v3

    .end local v3           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local p2, gzos:Ljava/util/zip/GZIPOutputStream;
    move-object p1, v0

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local p1, baos:Ljava/io/ByteArrayOutputStream;
    move-object v7, p0

    move-object p0, p3

    .end local p3           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local p0, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    move-object p3, v7

    .line 498
    .end local v2           #dontBreakLines:I
    :goto_8
    :try_start_c
    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 503
    .end local p2           #gzos:Ljava/util/zip/GZIPOutputStream;
    :goto_9
    :try_start_d
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/Base64$OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 508
    .end local p0           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :goto_a
    :try_start_e
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 511
    :goto_b
    throw p3

    .line 518
    .end local p1           #baos:Ljava/io/ByteArrayOutputStream;
    .local v0, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .local p3, gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception p0

    .line 519
    .local p0, uue:Ljava/io/UnsupportedEncodingException;
    new-instance p0, Ljava/lang/String;

    .end local p0           #uue:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_3

    .line 526
    .end local v0           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #dontBreakLines:I
    .local p0, source:[B
    .local p1, off:I
    .local p2, len:I
    .local p3, gzip:I
    :cond_0
    if-nez v2, :cond_2

    const/4 p3, 0x1

    .line 528
    .local p3, breakLines:Z
    :goto_c
    mul-int/lit8 v0, p2, 0x4

    div-int/lit8 v0, v0, 0x3

    .line 529
    .local v0, len43:I
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_3

    const/4 v1, 0x4

    :goto_d
    add-int/2addr v1, v0

    if-eqz p3, :cond_4

    div-int/lit8 v0, v0, 0x4c

    .end local v0           #len43:I
    :goto_e
    add-int/2addr v0, v1

    new-array v4, v0, [B

    .line 533
    .local v4, outBuff:[B
    const/4 v0, 0x0

    .line 534
    .local v0, d:I
    const/4 v1, 0x0

    .line 535
    .local v1, e:I
    const/4 v2, 0x2

    sub-int v2, p2, v2

    .line 536
    .local v2, len2:I
    const/4 v3, 0x0

    .line 537
    .local v3, lineLength:I
    :goto_f
    if-ge v0, v2, :cond_5

    .line 538
    add-int v5, v0, p1

    const/4 v6, 0x3

    invoke-static {p0, v5, v6, v4, v1}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BI)[B

    .line 540
    add-int/lit8 v3, v3, 0x4

    .line 541
    if-eqz p3, :cond_1

    const/16 v5, 0x4c

    if-ne v3, v5, :cond_1

    .line 542
    add-int/lit8 v3, v1, 0x4

    const/16 v5, 0xa

    aput-byte v5, v4, v3

    .line 543
    .end local v3           #lineLength:I
    add-int/lit8 v1, v1, 0x1

    .line 544
    const/4 v3, 0x0

    .line 537
    .restart local v3       #lineLength:I
    :cond_1
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_f

    .line 526
    .end local v0           #d:I
    .end local v1           #e:I
    .end local v3           #lineLength:I
    .end local v4           #outBuff:[B
    .local v2, dontBreakLines:I
    .local p3, gzip:I
    :cond_2
    const/4 p3, 0x0

    goto :goto_c

    .line 529
    .local v0, len43:I
    .local p3, breakLines:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_d

    :cond_4
    const/4 v0, 0x0

    goto :goto_e

    .line 548
    .local v0, d:I
    .restart local v1       #e:I
    .local v2, len2:I
    .restart local v3       #lineLength:I
    .restart local v4       #outBuff:[B
    :cond_5
    if-ge v0, p2, :cond_6

    .line 549
    add-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-static {p0, p1, p2, v4, v1}, Lorg/jivesoftware/smack/util/Base64;->encode3to4([BII[BI)[B

    .line 550
    .end local p1           #off:I
    .end local p2           #len:I
    add-int/lit8 p0, v1, 0x4

    .line 555
    .end local v1           #e:I
    .local p0, e:I
    :goto_10
    :try_start_f
    new-instance p1, Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "UTF-8"

    .end local p3           #breakLines:Z
    invoke-direct {p1, v4, p2, p0, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_2

    move-object p0, p1

    goto :goto_3

    .line 557
    :catch_2
    move-exception p1

    .line 558
    .local p1, uue:Ljava/io/UnsupportedEncodingException;
    new-instance p1, Ljava/lang/String;

    .end local p1           #uue:Ljava/io/UnsupportedEncodingException;
    const/4 p2, 0x0

    invoke-direct {p1, v4, p2, p0}, Ljava/lang/String;-><init>([BII)V

    move-object p0, p1

    goto/16 :goto_3

    .line 499
    .end local v2           #len2:I
    .end local v3           #lineLength:I
    .end local v4           #outBuff:[B
    .local v0, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    .local p0, source:[B
    .local p1, off:I
    .restart local p2       #len:I
    .local p3, gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_3
    move-exception p0

    goto/16 :goto_0

    .line 504
    .end local p0           #source:[B
    :catch_4
    move-exception p0

    goto/16 :goto_1

    .line 509
    :catch_5
    move-exception p0

    goto/16 :goto_2

    .line 499
    .end local v0           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local p2           #len:I
    .local p0, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local p1, baos:Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception p3

    goto/16 :goto_5

    .line 504
    .end local p3           #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_7
    move-exception p0

    goto/16 :goto_6

    .line 509
    .end local p0           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :catch_8
    move-exception p0

    goto/16 :goto_7

    .line 499
    .restart local p0       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local p2, gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_9
    move-exception p2

    goto :goto_9

    .line 504
    .end local p2           #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_a
    move-exception p0

    goto :goto_a

    .line 509
    .end local p0           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :catch_b
    move-exception p0

    goto :goto_b

    .line 497
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .local v3, gzos:Ljava/util/zip/GZIPOutputStream;
    .local p0, source:[B
    .local p1, off:I
    .local p2, len:I
    .local p3, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :catchall_1
    move-exception p0

    move-object p2, v3

    .end local v3           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local p2, gzos:Ljava/util/zip/GZIPOutputStream;
    move-object p1, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .local p1, baos:Ljava/io/ByteArrayOutputStream;
    move-object v7, p0

    move-object p0, p3

    .end local p3           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local p0, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    move-object p3, v7

    goto/16 :goto_8

    .restart local v0       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #gzos:Ljava/util/zip/GZIPOutputStream;
    .local p0, source:[B
    .local p1, off:I
    .local p2, len:I
    :catchall_2
    move-exception p0

    move-object p3, p0

    move-object p2, v3

    .end local v3           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local p2, gzos:Ljava/util/zip/GZIPOutputStream;
    move-object p1, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .local p1, baos:Ljava/io/ByteArrayOutputStream;
    move-object p0, v0

    .end local v0           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local p0, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    goto/16 :goto_8

    .restart local v0       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .local p0, source:[B
    .local p1, off:I
    .local p2, len:I
    .local p3, gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception p0

    move-object p2, p3

    .end local p3           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local p2, gzos:Ljava/util/zip/GZIPOutputStream;
    move-object p1, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .local p1, baos:Ljava/io/ByteArrayOutputStream;
    move-object p3, p0

    move-object p0, v0

    .end local v0           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local p0, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    goto/16 :goto_8

    .local p2, e:Ljava/io/IOException;
    .restart local p3       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_4
    move-exception p2

    move-object v7, p2

    move-object p2, p3

    .end local p3           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local p2, gzos:Ljava/util/zip/GZIPOutputStream;
    move-object p3, v7

    goto/16 :goto_8

    .line 492
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #gzos:Ljava/util/zip/GZIPOutputStream;
    .local p0, source:[B
    .local p1, off:I
    .local p2, len:I
    .local p3, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    :catch_c
    move-exception p0

    move-object p2, p0

    move-object p1, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .local p1, baos:Ljava/io/ByteArrayOutputStream;
    move-object p0, p3

    .end local p3           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local p0, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    move-object p3, v3

    .end local v3           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local p3, gzos:Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_4

    .end local p3           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v0       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #gzos:Ljava/util/zip/GZIPOutputStream;
    .local p0, source:[B
    .local p1, off:I
    :catch_d
    move-exception p0

    move-object p2, p0

    move-object p3, v3

    .end local v3           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local p3       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object p1, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .local p1, baos:Ljava/io/ByteArrayOutputStream;
    move-object p0, v0

    .end local v0           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local p0, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    goto/16 :goto_4

    .restart local v0       #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .local p0, source:[B
    .local p1, off:I
    :catch_e
    move-exception p0

    move-object p2, p0

    move-object p1, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .local p1, baos:Ljava/io/ByteArrayOutputStream;
    move-object p0, v0

    .end local v0           #b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    .local p0, b64os:Lorg/jivesoftware/smack/util/Base64$OutputStream;
    goto/16 :goto_4

    .local v0, d:I
    .local v1, e:I
    .restart local v2       #len2:I
    .local v3, lineLength:I
    .restart local v4       #outBuff:[B
    .local p0, source:[B
    .local p1, off:I
    .local p3, breakLines:Z
    :cond_6
    move p0, v1

    .end local v1           #e:I
    .local p0, e:I
    goto :goto_10
.end method
