.class public final Ljavax/obex/ObexHelper;
.super Ljava/lang/Object;
.source "ObexHelper.java"


# static fields
.field public static final BASE_PACKET_LENGTH:I = 0x3

.field public static final MAX_PACKET_SIZE_INT:I = 0xfffe

.field public static final OBEX_AUTH_REALM_CHARSET_ASCII:I = 0x0

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_1:I = 0x1

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_2:I = 0x2

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_3:I = 0x3

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_4:I = 0x4

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_5:I = 0x5

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_6:I = 0x6

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_7:I = 0x7

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_8:I = 0x8

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_9:I = 0x9

.field public static final OBEX_AUTH_REALM_CHARSET_UNICODE:I = 0xff

.field public static final OBEX_OPCODE_ABORT:I = 0xff

.field public static final OBEX_OPCODE_CONNECT:I = 0x80

.field public static final OBEX_OPCODE_DISCONNECT:I = 0x81

.field public static final OBEX_OPCODE_GET:I = 0x3

.field public static final OBEX_OPCODE_GET_FINAL:I = 0x83

.field public static final OBEX_OPCODE_PUT:I = 0x2

.field public static final OBEX_OPCODE_PUT_FINAL:I = 0x82

.field public static final OBEX_OPCODE_RESERVED:I = 0x4

.field public static final OBEX_OPCODE_RESERVED_FINAL:I = 0x84

.field public static final OBEX_OPCODE_SETPATH:I = 0x85


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static computeAuthenticationChallenge([BLjava/lang/String;ZZ)[B
    .registers 13
    .parameter "nonce"
    .parameter "realm"
    .parameter "access"
    .parameter "userID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x10

    const/4 v6, 0x1

    const/16 v5, 0x14

    const/4 v4, 0x0

    .line 943
    const/4 v0, 0x0

    .line 945
    .local v0, authChall:[B
    array-length v1, p0

    if-eq v1, v7, :cond_13

    .line 946
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Nonce must be 16 bytes long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 967
    :cond_13
    if-nez p1, :cond_3d

    .line 968
    const/16 v1, 0x15

    new-array v0, v1, [B

    .line 981
    :goto_19
    aput-byte v4, v0, v4

    .line 982
    aput-byte v7, v0, v6

    .line 983
    invoke-static {p0, v4, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 986
    const/16 v1, 0x12

    aput-byte v6, v0, v1

    .line 987
    const/16 v1, 0x13

    aput-byte v6, v0, v1

    .line 988
    aput-byte v4, v0, v5

    .line 990
    if-nez p2, :cond_33

    .line 991
    aget-byte v1, v0, v5

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 993
    :cond_33
    if-eqz p3, :cond_3c

    .line 994
    aget-byte v1, v0, v5

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 997
    :cond_3c
    return-object v0

    .line 970
    :cond_3d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-lt v1, v2, :cond_4d

    .line 971
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Realm must be less then 255 bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 973
    :cond_4d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-array v0, v1, [B

    .line 974
    const/16 v1, 0x15

    aput-byte v8, v0, v1

    .line 975
    const/16 v1, 0x16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 976
    const/16 v1, 0x17

    aput-byte v6, v0, v1

    .line 977
    const-string v1, "ISO8859_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_19
.end method

.method public static computeMd5Hash([B)[B
    .registers 4
    .parameter "in"

    .prologue
    .line 920
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 921
    .local v1, md5:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    return-object v2

    .line 922
    .end local v1           #md5:Ljava/security/MessageDigest;
    :catch_b
    move-exception v2

    move-object v0, v2

    .line 923
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static convertToByteArray(J)[B
    .registers 8
    .parameter "l"

    .prologue
    const-wide/16 v4, 0xff

    .line 782
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 784
    .local v0, b:[B
    const/4 v1, 0x0

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 785
    const/4 v1, 0x1

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 786
    const/4 v1, 0x2

    const/16 v2, 0x8

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 787
    const/4 v1, 0x3

    and-long v2, v4, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 789
    return-object v0
.end method

.method public static convertToLong([B)J
    .registers 10
    .parameter "b"

    .prologue
    .line 759
    const-wide/16 v3, 0x0

    .line 760
    .local v3, result:J
    const-wide/16 v5, 0x0

    .line 761
    .local v5, value:J
    const-wide/16 v1, 0x0

    .line 763
    .local v1, power:J
    array-length v7, p0

    const/4 v8, 0x1

    sub-int v0, v7, v8

    .local v0, i:I
    :goto_a
    if-ltz v0, :cond_22

    .line 764
    aget-byte v7, p0, v0

    int-to-long v5, v7

    .line 765
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_18

    .line 766
    const-wide/16 v7, 0x100

    add-long/2addr v5, v7

    .line 769
    :cond_18
    long-to-int v7, v1

    shl-long v7, v5, v7

    or-long/2addr v3, v7

    .line 770
    const-wide/16 v7, 0x8

    add-long/2addr v1, v7

    .line 763
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 773
    :cond_22
    return-wide v3
.end method

.method public static convertToUnicode([BZ)Ljava/lang/String;
    .registers 9
    .parameter "b"
    .parameter "includesNull"

    .prologue
    .line 878
    if-eqz p0, :cond_5

    array-length v5, p0

    if-nez v5, :cond_7

    .line 879
    :cond_5
    const/4 v5, 0x0

    .line 909
    :goto_6
    return-object v5

    .line 881
    :cond_7
    array-length v0, p0

    .line 882
    .local v0, arrayLength:I
    rem-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_14

    .line 883
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Byte array not of a valid form"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 885
    :cond_14
    shr-int/lit8 v0, v0, 0x1

    .line 886
    if-eqz p1, :cond_1a

    .line 887
    add-int/lit8 v0, v0, -0x1

    .line 890
    :cond_1a
    new-array v1, v0, [C

    .line 891
    .local v1, c:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, v0, :cond_45

    .line 892
    mul-int/lit8 v5, v2, 0x2

    aget-byte v4, p0, v5

    .line 893
    .local v4, upper:I
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v3, p0, v5

    .line 894
    .local v3, lower:I
    if-gez v4, :cond_2d

    .line 895
    add-int/lit16 v4, v4, 0x100

    .line 897
    :cond_2d
    if-gez v3, :cond_31

    .line 898
    add-int/lit16 v3, v3, 0x100

    .line 902
    :cond_31
    if-nez v4, :cond_3c

    if-nez v3, :cond_3c

    .line 903
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_6

    .line 906
    :cond_3c
    shl-int/lit8 v5, v4, 0x8

    or-int/2addr v5, v3

    int-to-char v5, v5

    aput-char v5, v1, v2

    .line 891
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 909
    .end local v3           #lower:I
    .end local v4           #upper:I
    :cond_45
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_6
.end method

.method public static convertToUnicodeByteArray(Ljava/lang/String;)[B
    .registers 7
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 799
    if-nez p0, :cond_5

    .line 800
    const/4 v3, 0x0

    .line 814
    :goto_4
    return-object v3

    .line 803
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 804
    .local v0, c:[C
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 805
    .local v2, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    array-length v3, v0

    if-ge v1, v3, :cond_29

    .line 806
    mul-int/lit8 v3, v1, 0x2

    aget-char v4, v0, v1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 807
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v4, v0, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 805
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 811
    :cond_29
    array-length v3, v2

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    aput-byte v5, v2, v3

    .line 812
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aput-byte v5, v2, v3

    move-object v3, v2

    .line 814
    goto :goto_4
.end method

.method public static createHeader(Ljavax/obex/HeaderSet;Z)[B
    .registers 16
    .parameter "head"
    .parameter "nullOut"

    .prologue
    .line 336
    const/4 v5, 0x0

    .line 337
    .local v5, intHeader:Ljava/lang/Long;
    const/4 v6, 0x0

    .line 338
    .local v6, stringHeader:Ljava/lang/String;
    const/4 v3, 0x0

    .line 339
    .local v3, dateHeader:Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 340
    .local v2, byteHeader:Ljava/lang/Byte;
    const/4 v1, 0x0

    .line 341
    .local v1, buffer:Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .line 342
    .local v9, value:[B
    const/4 v4, 0x0

    .line 343
    .local v4, result:[B
    const/4 v4, 0x2

    new-array v7, v4, [B

    .line 345
    .end local v4           #result:[B
    .local v7, lengthArray:[B
    const/4 v4, 0x0

    .line 346
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 347
    .local v8, out:Ljava/io/ByteArrayOutputStream;
    move-object v4, p0

    .line 354
    :try_start_11
    iget-object p0, v4, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .end local p0
    if-eqz p0, :cond_27

    const/16 p0, 0x46

    invoke-virtual {v4, p0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_27

    .line 356
    const/16 p0, -0x35

    invoke-virtual {v8, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 357
    iget-object p0, v4, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-virtual {v8, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 361
    :cond_27
    const/16 p0, 0xc0

    invoke-virtual {v4, p0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/Long;

    move-object v5, v0

    .line 362
    if-eqz v5, :cond_4d4

    .line 363
    const/16 p0, -0x40

    invoke-virtual {v8, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 364
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B
    :try_end_3f
    .catchall {:try_start_11 .. :try_end_3f} :catchall_438
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3f} :catch_101

    move-result-object p0

    .line 365
    .end local v9           #value:[B
    .local p0, value:[B
    :try_start_40
    invoke-virtual {v8, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 366
    if-eqz p1, :cond_4b

    .line 367
    const/16 v9, 0xc0

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 372
    :cond_4b
    :goto_4b
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 373
    if-eqz v6, :cond_4d1

    .line 374
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 375
    invoke-static {v6}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B
    :try_end_5d
    .catchall {:try_start_40 .. :try_end_5d} :catchall_44d
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_5d} :catch_493

    move-result-object v9

    .line 376
    .end local p0           #value:[B
    .restart local v9       #value:[B
    :try_start_5e
    array-length p0, v9

    add-int/lit8 p0, p0, 0x3

    .line 377
    .local p0, length:I
    const/4 v10, 0x0

    shr-int/lit8 v11, p0, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 378
    const/4 v10, 0x1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v7, v10

    .line 379
    .end local p0           #length:I
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 380
    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 381
    if-eqz p1, :cond_7c

    .line 382
    const/4 p0, 0x1

    const/4 v10, 0x0

    invoke-virtual {v4, p0, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 387
    :cond_7c
    :goto_7c
    const/16 p0, 0x42

    invoke-virtual {v4, p0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 388
    if-eqz v6, :cond_b6

    .line 389
    const/16 p0, 0x42

    invoke-virtual {v8, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_8d
    .catchall {:try_start_5e .. :try_end_8d} :catchall_438
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_8d} :catch_101

    .line 391
    :try_start_8d
    const-string p0, "ISO8859_1"

    invoke-virtual {v6, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_438
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8d .. :try_end_92} :catch_ff
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_92} :catch_101

    move-result-object v9

    .line 396
    :try_start_93
    array-length p0, v9

    add-int/lit8 p0, p0, 0x4

    .line 397
    .restart local p0       #length:I
    const/4 v10, 0x0

    shr-int/lit8 v11, p0, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 398
    const/4 v10, 0x1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v7, v10

    .line 399
    .end local p0           #length:I
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 400
    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 401
    const/4 p0, 0x0

    invoke-virtual {v8, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 402
    if-eqz p1, :cond_b6

    .line 403
    const/16 p0, 0x42

    const/4 v10, 0x0

    invoke-virtual {v4, p0, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_b6
    .catchall {:try_start_93 .. :try_end_b6} :catchall_438
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_b6} :catch_101

    :cond_b6
    move-object p0, v9

    .line 408
    .end local v9           #value:[B
    .local p0, value:[B
    const/16 v9, 0xc3

    :try_start_b9
    invoke-virtual {v4, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Long;

    move-object v5, v0

    .line 409
    if-eqz v5, :cond_db

    .line 410
    const/16 v9, -0x3d

    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 411
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object p0

    .line 412
    invoke-virtual {v8, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 413
    if-eqz p1, :cond_db

    .line 414
    const/16 v9, 0xc3

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_db
    .catchall {:try_start_b9 .. :try_end_db} :catchall_44d
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_db} :catch_493

    :cond_db
    move-object v10, p0

    .line 419
    .end local p0           #value:[B
    .local v10, value:[B
    const/16 p0, 0x44

    :try_start_de
    invoke-virtual {v4, p0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/Calendar;

    move-object v3, v0

    .line 420
    if-eqz v3, :cond_4cd

    .line 426
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_ed
    .catchall {:try_start_de .. :try_end_ed} :catchall_457
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_ed} :catch_49c

    .line 427
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .local p0, buffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    :try_start_ee
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 428
    .local v9, temp:I
    move v1, v9

    .local v1, i:I
    :goto_f3
    const/16 v11, 0x3e8

    if-ge v1, v11, :cond_110

    .line 429
    const-string v11, "0"

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_fc
    .catchall {:try_start_ee .. :try_end_fc} :catchall_460
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_fc} :catch_3c4

    .line 428
    mul-int/lit8 v1, v1, 0xa

    goto :goto_f3

    .line 392
    .end local v10           #value:[B
    .end local p0           #buffer:Ljava/lang/StringBuffer;
    .local v1, buffer:Ljava/lang/StringBuffer;
    .local v9, value:[B
    :catch_ff
    move-exception p0

    .line 393
    .local p0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_100
    throw p0
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_438
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_101} :catch_101

    .line 663
    .end local p0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_101
    move-exception p0

    move-object p0, v1

    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .local p0, buffer:Ljava/lang/StringBuffer;
    move-object p1, v2

    .end local v2           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v4, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v4, stringHeader:Ljava/lang/String;
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, v9

    .line 665
    .end local v9           #value:[B
    .local v5, value:[B
    :goto_108
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 667
    .local v3, result:[B
    :try_start_10c
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_10f} :catch_448

    .line 672
    :goto_10f
    return-object v3

    .line 431
    .local v1, i:I
    .local v2, byteHeader:Ljava/lang/Byte;
    .local v3, dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .local v5, intHeader:Ljava/lang/Long;
    .restart local v6       #stringHeader:Ljava/lang/String;
    .local v9, temp:I
    .restart local v10       #value:[B
    .local p1, nullOut:Z
    :cond_110
    :try_start_110
    invoke-virtual {p0, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 432
    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    .end local v1           #i:I
    move-result v1

    .line 433
    .end local v9           #temp:I
    .local v1, temp:I
    const/16 v9, 0xa

    if-ge v1, v9, :cond_121

    .line 434
    const-string v9, "0"

    invoke-virtual {p0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    :cond_121
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 437
    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    .end local v1           #temp:I
    move-result v1

    .line 438
    .restart local v1       #temp:I
    const/16 v9, 0xa

    if-ge v1, v9, :cond_132

    .line 439
    const-string v9, "0"

    invoke-virtual {p0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    :cond_132
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 442
    const-string v1, "T"

    .end local v1           #temp:I
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    const/16 v1, 0xb

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 444
    .restart local v1       #temp:I
    const/16 v9, 0xa

    if-ge v1, v9, :cond_149

    .line 445
    const-string v9, "0"

    invoke-virtual {p0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    :cond_149
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 448
    const/16 v1, 0xc

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    .end local v1           #temp:I
    move-result v1

    .line 449
    .restart local v1       #temp:I
    const/16 v9, 0xa

    if-ge v1, v9, :cond_15b

    .line 450
    const-string v9, "0"

    invoke-virtual {p0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    :cond_15b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 453
    const/16 v1, 0xd

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    .end local v1           #temp:I
    move-result v1

    .line 454
    .restart local v1       #temp:I
    const/16 v9, 0xa

    if-ge v1, v9, :cond_16d

    .line 455
    const-string v9, "0"

    invoke-virtual {p0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    :cond_16d
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 459
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .end local v1           #temp:I
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v9, "UTC"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_185

    .line 460
    const-string v1, "Z"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_185
    .catchall {:try_start_110 .. :try_end_185} :catchall_460
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_185} :catch_3c4

    .line 464
    :cond_185
    :try_start_185
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "ISO8859_1"

    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_18e
    .catchall {:try_start_185 .. :try_end_18e} :catchall_460
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_185 .. :try_end_18e} :catch_3c2
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_18e} :catch_3c4

    move-result-object v9

    .line 469
    .end local v10           #value:[B
    .local v9, value:[B
    :try_start_18f
    array-length v1, v9

    add-int/lit8 v1, v1, 0x3

    .line 470
    .local v1, length:I
    const/4 v10, 0x0

    shr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 471
    const/4 v10, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v7, v10

    .line 472
    .end local v1           #length:I
    const/16 v1, 0x44

    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 473
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 474
    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 475
    if-eqz p1, :cond_1b3

    .line 476
    const/16 v1, 0x44

    const/4 v10, 0x0

    invoke-virtual {v4, v1, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1b3
    .catchall {:try_start_18f .. :try_end_1b3} :catchall_469
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_1b3} :catch_4a5

    :cond_1b3
    move-object v1, v9

    .line 481
    .end local v9           #value:[B
    .local v1, value:[B
    :goto_1b4
    const/16 v9, 0xc4

    :try_start_1b6
    invoke-virtual {v4, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/Calendar;

    move-object v3, v0

    .line 482
    if-eqz v3, :cond_1df

    .line 483
    const/16 v9, 0xc4

    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 492
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v1

    .line 493
    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 494
    if-eqz p1, :cond_1df

    .line 495
    const/16 v9, 0xc4

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 500
    :cond_1df
    const/4 v9, 0x5

    invoke-virtual {v4, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 501
    if-eqz v6, :cond_211

    .line 502
    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 503
    invoke-static {v6}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B
    :try_end_1f1
    .catchall {:try_start_1b6 .. :try_end_1f1} :catchall_472
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1f1} :catch_4ad

    move-result-object v9

    .line 504
    .end local v1           #value:[B
    .restart local v9       #value:[B
    :try_start_1f2
    array-length v1, v9

    add-int/lit8 v1, v1, 0x3

    .line 505
    .local v1, length:I
    const/4 v10, 0x0

    shr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 506
    const/4 v10, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v7, v10

    .line 507
    .end local v1           #length:I
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 508
    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 509
    if-eqz p1, :cond_210

    .line 510
    const/4 v1, 0x5

    const/4 v10, 0x0

    invoke-virtual {v4, v1, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_210
    .catchall {:try_start_1f2 .. :try_end_210} :catchall_469
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_210} :catch_4a5

    :cond_210
    move-object v1, v9

    .line 515
    .end local v9           #value:[B
    .local v1, value:[B
    :cond_211
    const/16 v9, 0x46

    :try_start_213
    invoke-virtual {v4, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    check-cast v9, [B
    :try_end_21b
    .catchall {:try_start_213 .. :try_end_21b} :catchall_472
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_21b} :catch_4ad

    .line 516
    .end local v1           #value:[B
    .restart local v9       #value:[B
    if-eqz v9, :cond_241

    .line 517
    const/16 v1, 0x46

    :try_start_21f
    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 518
    array-length v1, v9

    add-int/lit8 v1, v1, 0x3

    .line 519
    .local v1, length:I
    const/4 v10, 0x0

    shr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 520
    const/4 v10, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v7, v10

    .line 521
    .end local v1           #length:I
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 522
    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 523
    if-eqz p1, :cond_241

    .line 524
    const/16 v1, 0x46

    const/4 v10, 0x0

    invoke-virtual {v4, v1, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 529
    :cond_241
    const/16 v1, 0x47

    invoke-virtual {v4, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v9, v0

    .line 530
    if-eqz v9, :cond_273

    .line 531
    const/16 v1, 0x47

    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 532
    array-length v1, v9

    add-int/lit8 v1, v1, 0x3

    .line 533
    .restart local v1       #length:I
    const/4 v10, 0x0

    shr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 534
    const/4 v10, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v7, v10

    .line 535
    .end local v1           #length:I
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 536
    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 537
    if-eqz p1, :cond_273

    .line 538
    const/16 v1, 0x47

    const/4 v10, 0x0

    invoke-virtual {v4, v1, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 543
    :cond_273
    const/16 v1, 0x4a

    invoke-virtual {v4, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v9, v0

    .line 544
    if-eqz v9, :cond_2a5

    .line 545
    const/16 v1, 0x4a

    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 546
    array-length v1, v9

    add-int/lit8 v1, v1, 0x3

    .line 547
    .restart local v1       #length:I
    const/4 v10, 0x0

    shr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 548
    const/4 v10, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v7, v10

    .line 549
    .end local v1           #length:I
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 550
    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 551
    if-eqz p1, :cond_2a5

    .line 552
    const/16 v1, 0x4a

    const/4 v10, 0x0

    invoke-virtual {v4, v1, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 557
    :cond_2a5
    const/16 v1, 0x4c

    invoke-virtual {v4, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v9, v0

    .line 558
    if-eqz v9, :cond_2d7

    .line 559
    const/16 v1, 0x4c

    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 560
    array-length v1, v9

    add-int/lit8 v1, v1, 0x3

    .line 561
    .restart local v1       #length:I
    const/4 v10, 0x0

    shr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 562
    const/4 v10, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v7, v10

    .line 563
    .end local v1           #length:I
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 564
    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 565
    if-eqz p1, :cond_2d7

    .line 566
    const/16 v1, 0x4c

    const/4 v10, 0x0

    invoke-virtual {v4, v1, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 571
    :cond_2d7
    const/16 v1, 0x4f

    invoke-virtual {v4, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v9, v0

    .line 572
    if-eqz v9, :cond_309

    .line 573
    const/16 v1, 0x4f

    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 574
    array-length v1, v9

    add-int/lit8 v1, v1, 0x3

    .line 575
    .restart local v1       #length:I
    const/4 v10, 0x0

    shr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 576
    const/4 v10, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v7, v10

    .line 577
    .end local v1           #length:I
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 578
    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 579
    if-eqz p1, :cond_309

    .line 580
    const/16 v1, 0x4f

    const/4 v10, 0x0

    invoke-virtual {v4, v1, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_309
    .catchall {:try_start_21f .. :try_end_309} :catchall_469
    .catch Ljava/io/IOException; {:try_start_21f .. :try_end_309} :catch_4a5

    .line 585
    :cond_309
    const/4 v1, 0x0

    .local v1, i:I
    move-object v10, v9

    .end local v9           #value:[B
    .restart local v10       #value:[B
    move v13, v1

    .end local v1           #i:I
    .local v13, i:I
    move-object v1, v2

    .end local v2           #byteHeader:Ljava/lang/Byte;
    .local v1, byteHeader:Ljava/lang/Byte;
    move v2, v13

    .end local v13           #i:I
    .local v2, i:I
    :goto_30e
    const/16 v9, 0x10

    if-ge v2, v9, :cond_3cc

    .line 588
    add-int/lit8 v9, v2, 0x30

    :try_start_314
    invoke-virtual {v4, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_31a
    .catchall {:try_start_314 .. :try_end_31a} :catchall_47b
    .catch Ljava/io/IOException; {:try_start_314 .. :try_end_31a} :catch_4b5

    .line 589
    .end local v6           #stringHeader:Ljava/lang/String;
    .local v9, stringHeader:Ljava/lang/String;
    if-eqz v9, :cond_345

    .line 590
    int-to-byte v6, v2

    add-int/lit8 v6, v6, 0x30

    :try_start_31f
    invoke-virtual {v8, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 591
    invoke-static {v9}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 592
    array-length v6, v10

    add-int/lit8 v6, v6, 0x3

    .line 593
    .local v6, length:I
    const/4 v11, 0x0

    shr-int/lit8 v12, v6, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v7, v11

    .line 594
    const/4 v11, 0x1

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v11

    .line 595
    .end local v6           #length:I
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 596
    invoke-virtual {v8, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 597
    if-eqz p1, :cond_345

    .line 598
    add-int/lit8 v6, v2, 0x30

    const/4 v11, 0x0

    invoke-virtual {v4, v6, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_345
    .catchall {:try_start_31f .. :try_end_345} :catchall_483
    .catch Ljava/io/IOException; {:try_start_31f .. :try_end_345} :catch_4bd

    :cond_345
    move-object v6, v10

    .line 603
    .end local v10           #value:[B
    .local v6, value:[B
    add-int/lit8 v10, v2, 0x70

    :try_start_348
    invoke-virtual {v4, v10}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    check-cast v10, [B
    :try_end_350
    .catchall {:try_start_348 .. :try_end_350} :catchall_48b
    .catch Ljava/io/IOException; {:try_start_348 .. :try_end_350} :catch_4c5

    .line 604
    .end local v6           #value:[B
    .restart local v10       #value:[B
    if-eqz v10, :cond_377

    .line 605
    int-to-byte v6, v2

    add-int/lit8 v6, v6, 0x70

    :try_start_355
    invoke-virtual {v8, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 606
    array-length v6, v10

    add-int/lit8 v6, v6, 0x3

    .line 607
    .local v6, length:I
    const/4 v11, 0x0

    shr-int/lit8 v12, v6, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v7, v11

    .line 608
    const/4 v11, 0x1

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v11

    .line 609
    .end local v6           #length:I
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 610
    invoke-virtual {v8, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 611
    if-eqz p1, :cond_377

    .line 612
    add-int/lit8 v6, v2, 0x70

    const/4 v11, 0x0

    invoke-virtual {v4, v6, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 617
    :cond_377
    add-int/lit16 v6, v2, 0xb0

    invoke-virtual {v4, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Byte;

    move-object v1, v0

    .line 618
    if-eqz v1, :cond_398

    .line 619
    int-to-byte v6, v2

    add-int/lit16 v6, v6, 0xb0

    invoke-virtual {v8, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 620
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-virtual {v8, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 621
    if-eqz p1, :cond_398

    .line 622
    add-int/lit16 v6, v2, 0xb0

    const/4 v11, 0x0

    invoke-virtual {v4, v6, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 627
    :cond_398
    add-int/lit16 v6, v2, 0xf0

    invoke-virtual {v4, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Long;

    move-object v5, v0

    .line 628
    if-eqz v5, :cond_3bd

    .line 629
    int-to-byte v6, v2

    add-int/lit16 v6, v6, 0xf0

    invoke-virtual {v8, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 630
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 631
    if-eqz p1, :cond_3bd

    .line 632
    add-int/lit16 v6, v2, 0xf0

    const/4 v11, 0x0

    invoke-virtual {v4, v6, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_3bd
    .catchall {:try_start_355 .. :try_end_3bd} :catchall_483
    .catch Ljava/io/IOException; {:try_start_355 .. :try_end_3bd} :catch_4bd

    .line 585
    :cond_3bd
    add-int/lit8 v2, v2, 0x1

    move-object v6, v9

    .end local v9           #stringHeader:Ljava/lang/String;
    .local v6, stringHeader:Ljava/lang/String;
    goto/16 :goto_30e

    .line 465
    .end local v1           #byteHeader:Ljava/lang/Byte;
    .local v2, byteHeader:Ljava/lang/Byte;
    :catch_3c2
    move-exception p1

    .line 466
    .local p1, e:Ljava/io/UnsupportedEncodingException;
    :try_start_3c3
    throw p1
    :try_end_3c4
    .catchall {:try_start_3c3 .. :try_end_3c4} :catchall_460
    .catch Ljava/io/IOException; {:try_start_3c3 .. :try_end_3c4} :catch_3c4

    .line 663
    .end local p1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_3c4
    move-exception p1

    move-object p1, v2

    .end local v2           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    move-object v4, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v4, stringHeader:Ljava/lang/String;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, v10

    .end local v10           #value:[B
    .local v5, value:[B
    goto/16 :goto_108

    .line 638
    .local v1, byteHeader:Ljava/lang/Byte;
    .local v2, i:I
    .restart local v3       #dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .local v5, intHeader:Ljava/lang/Long;
    .restart local v6       #stringHeader:Ljava/lang/String;
    .restart local v10       #value:[B
    .local p1, nullOut:Z
    :cond_3cc
    :try_start_3cc
    iget-object v2, v4, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .end local v2           #i:I
    if-eqz v2, :cond_3f5

    .line 639
    const/16 v2, 0x4d

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 640
    iget-object v2, v4, Ljavax/obex/HeaderSet;->mAuthChall:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x3

    .line 641
    .local v2, length:I
    const/4 v9, 0x0

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 642
    const/4 v9, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v7, v9

    .line 643
    .end local v2           #length:I
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 644
    iget-object v2, v4, Ljavax/obex/HeaderSet;->mAuthChall:[B

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 645
    if-eqz p1, :cond_3f5

    .line 646
    const/4 v2, 0x0

    iput-object v2, v4, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 651
    :cond_3f5
    iget-object v2, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    if-eqz v2, :cond_41e

    .line 652
    const/16 v2, 0x4e

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 653
    iget-object v2, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x3

    .line 654
    .restart local v2       #length:I
    const/4 v9, 0x0

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 655
    const/4 v9, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v7, v9

    .line 656
    .end local v2           #length:I
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 657
    iget-object v2, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 658
    if-eqz p1, :cond_41e

    .line 659
    const/4 p1, 0x0

    iput-object p1, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B
    :try_end_41e
    .catchall {:try_start_3cc .. :try_end_41e} :catchall_47b
    .catch Ljava/io/IOException; {:try_start_3cc .. :try_end_41e} :catch_4b5

    .line 665
    .end local p1           #nullOut:Z
    :cond_41e
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 667
    .local p1, result:[B
    :try_start_422
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_425
    .catch Ljava/lang/Exception; {:try_start_422 .. :try_end_425} :catch_42e

    move-object v4, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v4, stringHeader:Ljava/lang/String;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, v10

    .end local v10           #value:[B
    .local v5, value:[B
    move-object v13, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v13, dateHeader:Ljava/util/Calendar;
    move-object v3, p1

    .end local p1           #result:[B
    .local v3, result:[B
    move-object p1, v1

    .end local v1           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v1, v13

    .line 669
    .end local v13           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    goto/16 :goto_10f

    .line 668
    .end local v2           #intHeader:Ljava/lang/Long;
    .local v1, byteHeader:Ljava/lang/Byte;
    .local v3, dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .local v5, intHeader:Ljava/lang/Long;
    .restart local v6       #stringHeader:Ljava/lang/String;
    .restart local v10       #value:[B
    .local p1, result:[B
    :catch_42e
    move-exception v2

    move-object v4, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v4, stringHeader:Ljava/lang/String;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .restart local v2       #intHeader:Ljava/lang/Long;
    move-object v5, v10

    .end local v10           #value:[B
    .local v5, value:[B
    move-object v13, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .restart local v13       #dateHeader:Ljava/util/Calendar;
    move-object v3, p1

    .end local p1           #result:[B
    .local v3, result:[B
    move-object p1, v1

    .end local v1           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v1, v13

    .line 670
    .end local v13           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    goto/16 :goto_10f

    .line 665
    .end local p0           #buffer:Ljava/lang/StringBuffer;
    .local v1, buffer:Ljava/lang/StringBuffer;
    .local v2, byteHeader:Ljava/lang/Byte;
    .local v3, dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .local v5, intHeader:Ljava/lang/Long;
    .restart local v6       #stringHeader:Ljava/lang/String;
    .local v9, value:[B
    .local p1, nullOut:Z
    :catchall_438
    move-exception p0

    move-object v4, v9

    .end local v9           #value:[B
    .local v4, value:[B
    move-object p1, v2

    .end local v2           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, p0

    move-object p0, v1

    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .restart local p0       #buffer:Ljava/lang/StringBuffer;
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    move-object v3, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v3, stringHeader:Ljava/lang/String;
    :goto_440
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 667
    .local p0, result:[B
    :try_start_444
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_447
    .catch Ljava/lang/Exception; {:try_start_444 .. :try_end_447} :catch_44b

    .line 669
    .end local p0           #result:[B
    :goto_447
    throw v5

    .line 668
    .local v3, result:[B
    .local v4, stringHeader:Ljava/lang/String;
    .local v5, value:[B
    .local p0, buffer:Ljava/lang/StringBuffer;
    :catch_448
    move-exception v6

    goto/16 :goto_10f

    .end local v5           #value:[B
    .local v3, stringHeader:Ljava/lang/String;
    .local v4, value:[B
    .local p0, result:[B
    :catch_44b
    move-exception p0

    goto :goto_447

    .line 665
    .local v1, buffer:Ljava/lang/StringBuffer;
    .local v2, byteHeader:Ljava/lang/Byte;
    .local v3, dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .local v5, intHeader:Ljava/lang/Long;
    .restart local v6       #stringHeader:Ljava/lang/String;
    .local p0, value:[B
    .local p1, nullOut:Z
    :catchall_44d
    move-exception p1

    move-object v4, p0

    .end local p0           #value:[B
    .local v4, value:[B
    move-object p0, v1

    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .local p0, buffer:Ljava/lang/StringBuffer;
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    move-object v3, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v3, stringHeader:Ljava/lang/String;
    move-object v13, p1

    move-object p1, v2

    .end local v2           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, v13

    goto :goto_440

    .end local p0           #buffer:Ljava/lang/StringBuffer;
    .local v1, buffer:Ljava/lang/StringBuffer;
    .local v2, byteHeader:Ljava/lang/Byte;
    .local v3, dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .restart local v5       #intHeader:Ljava/lang/Long;
    .restart local v6       #stringHeader:Ljava/lang/String;
    .restart local v10       #value:[B
    .local p1, nullOut:Z
    :catchall_457
    move-exception p0

    move-object v4, v10

    .end local v10           #value:[B
    .local v4, value:[B
    move-object p1, v2

    .end local v2           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, p0

    move-object p0, v1

    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .restart local p0       #buffer:Ljava/lang/StringBuffer;
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    move-object v3, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v3, stringHeader:Ljava/lang/String;
    goto :goto_440

    .end local v1           #dateHeader:Ljava/util/Calendar;
    .end local p1           #byteHeader:Ljava/lang/Byte;
    .local v2, byteHeader:Ljava/lang/Byte;
    .local v3, dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .restart local v5       #intHeader:Ljava/lang/Long;
    .restart local v6       #stringHeader:Ljava/lang/String;
    .restart local v10       #value:[B
    :catchall_460
    move-exception p1

    move-object v4, v10

    .end local v10           #value:[B
    .local v4, value:[B
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .restart local v1       #dateHeader:Ljava/util/Calendar;
    move-object v3, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v3, stringHeader:Ljava/lang/String;
    move-object v13, p1

    move-object p1, v2

    .end local v2           #byteHeader:Ljava/lang/Byte;
    .restart local p1       #byteHeader:Ljava/lang/Byte;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, v13

    goto :goto_440

    .end local v1           #dateHeader:Ljava/util/Calendar;
    .local v2, byteHeader:Ljava/lang/Byte;
    .local v3, dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .restart local v5       #intHeader:Ljava/lang/Long;
    .restart local v6       #stringHeader:Ljava/lang/String;
    .restart local v9       #value:[B
    .local p1, nullOut:Z
    :catchall_469
    move-exception p1

    move-object v4, v9

    .end local v9           #value:[B
    .local v4, value:[B
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .restart local v1       #dateHeader:Ljava/util/Calendar;
    move-object v3, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v3, stringHeader:Ljava/lang/String;
    move-object v13, p1

    move-object p1, v2

    .end local v2           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, v13

    goto :goto_440

    .local v1, value:[B
    .local v2, byteHeader:Ljava/lang/Byte;
    .local v3, dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .restart local v5       #intHeader:Ljava/lang/Long;
    .restart local v6       #stringHeader:Ljava/lang/String;
    .local p1, nullOut:Z
    :catchall_472
    move-exception p1

    move-object v4, v1

    .end local v1           #value:[B
    .local v4, value:[B
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    move-object v3, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v3, stringHeader:Ljava/lang/String;
    move-object v13, p1

    move-object p1, v2

    .end local v2           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, v13

    goto :goto_440

    .end local v2           #intHeader:Ljava/lang/Long;
    .end local p1           #byteHeader:Ljava/lang/Byte;
    .local v1, byteHeader:Ljava/lang/Byte;
    .local v3, dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .restart local v5       #intHeader:Ljava/lang/Long;
    .restart local v6       #stringHeader:Ljava/lang/String;
    .restart local v10       #value:[B
    :catchall_47b
    move-exception p1

    move-object v4, v10

    .end local v10           #value:[B
    .local v4, value:[B
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .restart local v2       #intHeader:Ljava/lang/Long;
    move-object v5, p1

    move-object p1, v1

    .end local v1           #byteHeader:Ljava/lang/Byte;
    .restart local p1       #byteHeader:Ljava/lang/Byte;
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    move-object v3, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v3, stringHeader:Ljava/lang/String;
    goto :goto_440

    .local v1, byteHeader:Ljava/lang/Byte;
    .local v2, i:I
    .local v3, dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .restart local v5       #intHeader:Ljava/lang/Long;
    .local v9, stringHeader:Ljava/lang/String;
    .restart local v10       #value:[B
    .local p1, nullOut:Z
    :catchall_483
    move-exception p1

    move-object v4, v10

    .end local v10           #value:[B
    .local v4, value:[B
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, p1

    move-object p1, v1

    .end local v1           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    move-object v3, v9

    .end local v9           #stringHeader:Ljava/lang/String;
    .local v3, stringHeader:Ljava/lang/String;
    goto :goto_440

    .local v1, byteHeader:Ljava/lang/Byte;
    .local v2, i:I
    .local v3, dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .restart local v5       #intHeader:Ljava/lang/Long;
    .local v6, value:[B
    .restart local v9       #stringHeader:Ljava/lang/String;
    .local p1, nullOut:Z
    :catchall_48b
    move-exception p1

    move-object v4, v6

    .end local v6           #value:[B
    .local v4, value:[B
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, p1

    move-object p1, v1

    .end local v1           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    move-object v3, v9

    .end local v9           #stringHeader:Ljava/lang/String;
    .local v3, stringHeader:Ljava/lang/String;
    goto :goto_440

    .line 663
    .local v1, buffer:Ljava/lang/StringBuffer;
    .local v2, byteHeader:Ljava/lang/Byte;
    .local v3, dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .restart local v5       #intHeader:Ljava/lang/Long;
    .local v6, stringHeader:Ljava/lang/String;
    .local p0, value:[B
    .local p1, nullOut:Z
    :catch_493
    move-exception p1

    move-object p1, v2

    .end local v2           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v4, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v4, stringHeader:Ljava/lang/String;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, p0

    .end local p0           #value:[B
    .local v5, value:[B
    move-object p0, v1

    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .local p0, buffer:Ljava/lang/StringBuffer;
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    goto/16 :goto_108

    .end local p0           #buffer:Ljava/lang/StringBuffer;
    .local v1, buffer:Ljava/lang/StringBuffer;
    .local v2, byteHeader:Ljava/lang/Byte;
    .restart local v3       #dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .local v5, intHeader:Ljava/lang/Long;
    .restart local v6       #stringHeader:Ljava/lang/String;
    .restart local v10       #value:[B
    .local p1, nullOut:Z
    :catch_49c
    move-exception p0

    move-object p0, v1

    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .restart local p0       #buffer:Ljava/lang/StringBuffer;
    move-object p1, v2

    .end local v2           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v4, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v4, stringHeader:Ljava/lang/String;
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, v10

    .end local v10           #value:[B
    .local v5, value:[B
    goto/16 :goto_108

    .end local v1           #dateHeader:Ljava/util/Calendar;
    .local v2, byteHeader:Ljava/lang/Byte;
    .restart local v3       #dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .local v5, intHeader:Ljava/lang/Long;
    .restart local v6       #stringHeader:Ljava/lang/String;
    .local v9, value:[B
    .local p1, nullOut:Z
    :catch_4a5
    move-exception p1

    move-object p1, v2

    .end local v2           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .restart local v1       #dateHeader:Ljava/util/Calendar;
    move-object v4, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v4, stringHeader:Ljava/lang/String;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, v9

    .end local v9           #value:[B
    .local v5, value:[B
    goto/16 :goto_108

    .local v1, value:[B
    .local v2, byteHeader:Ljava/lang/Byte;
    .restart local v3       #dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .local v5, intHeader:Ljava/lang/Long;
    .restart local v6       #stringHeader:Ljava/lang/String;
    .local p1, nullOut:Z
    :catch_4ad
    move-exception p1

    move-object p1, v2

    .end local v2           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v4, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v4, stringHeader:Ljava/lang/String;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, v1

    .end local v1           #value:[B
    .local v5, value:[B
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    goto/16 :goto_108

    .end local v2           #intHeader:Ljava/lang/Long;
    .end local p1           #byteHeader:Ljava/lang/Byte;
    .local v1, byteHeader:Ljava/lang/Byte;
    .restart local v3       #dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .local v5, intHeader:Ljava/lang/Long;
    .restart local v6       #stringHeader:Ljava/lang/String;
    .restart local v10       #value:[B
    :catch_4b5
    move-exception p1

    move-object p1, v1

    .end local v1           #byteHeader:Ljava/lang/Byte;
    .restart local p1       #byteHeader:Ljava/lang/Byte;
    move-object v4, v6

    .end local v6           #stringHeader:Ljava/lang/String;
    .local v4, stringHeader:Ljava/lang/String;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .restart local v2       #intHeader:Ljava/lang/Long;
    move-object v5, v10

    .end local v10           #value:[B
    .local v5, value:[B
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    goto/16 :goto_108

    .local v1, byteHeader:Ljava/lang/Byte;
    .local v2, i:I
    .restart local v3       #dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .local v5, intHeader:Ljava/lang/Long;
    .local v9, stringHeader:Ljava/lang/String;
    .restart local v10       #value:[B
    .local p1, nullOut:Z
    :catch_4bd
    move-exception p1

    move-object p1, v1

    .end local v1           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v4, v9

    .end local v9           #stringHeader:Ljava/lang/String;
    .local v4, stringHeader:Ljava/lang/String;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, v10

    .end local v10           #value:[B
    .local v5, value:[B
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    goto/16 :goto_108

    .local v1, byteHeader:Ljava/lang/Byte;
    .local v2, i:I
    .restart local v3       #dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .local v5, intHeader:Ljava/lang/Long;
    .local v6, value:[B
    .restart local v9       #stringHeader:Ljava/lang/String;
    .local p1, nullOut:Z
    :catch_4c5
    move-exception p1

    move-object p1, v1

    .end local v1           #byteHeader:Ljava/lang/Byte;
    .local p1, byteHeader:Ljava/lang/Byte;
    move-object v4, v9

    .end local v9           #stringHeader:Ljava/lang/String;
    .local v4, stringHeader:Ljava/lang/String;
    move-object v2, v5

    .end local v5           #intHeader:Ljava/lang/Long;
    .local v2, intHeader:Ljava/lang/Long;
    move-object v5, v6

    .end local v6           #value:[B
    .local v5, value:[B
    move-object v1, v3

    .end local v3           #dateHeader:Ljava/util/Calendar;
    .local v1, dateHeader:Ljava/util/Calendar;
    goto/16 :goto_108

    .end local p0           #buffer:Ljava/lang/StringBuffer;
    .local v1, buffer:Ljava/lang/StringBuffer;
    .local v2, byteHeader:Ljava/lang/Byte;
    .restart local v3       #dateHeader:Ljava/util/Calendar;
    .local v4, headImpl:Ljavax/obex/HeaderSet;
    .local v5, intHeader:Ljava/lang/Long;
    .local v6, stringHeader:Ljava/lang/String;
    .restart local v10       #value:[B
    .local p1, nullOut:Z
    :cond_4cd
    move-object p0, v1

    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .restart local p0       #buffer:Ljava/lang/StringBuffer;
    move-object v1, v10

    .end local v10           #value:[B
    .local v1, value:[B
    goto/16 :goto_1b4

    .local v1, buffer:Ljava/lang/StringBuffer;
    .local p0, value:[B
    :cond_4d1
    move-object v9, p0

    .end local p0           #value:[B
    .local v9, value:[B
    goto/16 :goto_7c

    :cond_4d4
    move-object p0, v9

    .end local v9           #value:[B
    .restart local p0       #value:[B
    goto/16 :goto_4b
.end method

.method public static findHeaderEnd([BII)I
    .registers 9
    .parameter "headerArray"
    .parameter "start"
    .parameter "maxSize"

    .prologue
    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, fullLength:I
    const/4 v3, -0x1

    .line 690
    .local v3, lastLength:I
    move v2, p1

    .line 691
    .local v2, index:I
    const/4 v4, 0x0

    .line 693
    .local v4, length:I
    :goto_4
    if-ge v0, p2, :cond_51

    array-length v5, p0

    if-ge v2, v5, :cond_51

    .line 694
    aget-byte v5, p0, v2

    if-gez v5, :cond_3a

    aget-byte v5, p0, v2

    add-int/lit16 v5, v5, 0x100

    move v1, v5

    .line 695
    .local v1, headerID:I
    :goto_12
    move v3, v0

    .line 697
    and-int/lit16 v5, v1, 0xc0

    sparse-switch v5, :sswitch_data_5c

    goto :goto_4

    .line 703
    :sswitch_19
    add-int/lit8 v2, v2, 0x1

    .line 704
    aget-byte v5, p0, v2

    if-gez v5, :cond_3e

    aget-byte v5, p0, v2

    add-int/lit16 v5, v5, 0x100

    move v4, v5

    .line 706
    :goto_24
    shl-int/lit8 v4, v4, 0x8

    .line 707
    add-int/lit8 v2, v2, 0x1

    .line 708
    aget-byte v5, p0, v2

    if-gez v5, :cond_42

    aget-byte v5, p0, v2

    add-int/lit16 v5, v5, 0x100

    :goto_30
    add-int/2addr v4, v5

    .line 710
    add-int/lit8 v4, v4, -0x3

    .line 711
    add-int/lit8 v2, v2, 0x1

    .line 712
    add-int/2addr v2, v4

    .line 713
    add-int/lit8 v5, v4, 0x3

    add-int/2addr v0, v5

    .line 714
    goto :goto_4

    .line 694
    .end local v1           #headerID:I
    :cond_3a
    aget-byte v5, p0, v2

    move v1, v5

    goto :goto_12

    .line 704
    .restart local v1       #headerID:I
    :cond_3e
    aget-byte v5, p0, v2

    move v4, v5

    goto :goto_24

    .line 708
    :cond_42
    aget-byte v5, p0, v2

    goto :goto_30

    .line 718
    :sswitch_45
    add-int/lit8 v2, v2, 0x1

    .line 719
    add-int/lit8 v2, v2, 0x1

    .line 720
    add-int/lit8 v0, v0, 0x2

    .line 721
    goto :goto_4

    .line 725
    :sswitch_4c
    add-int/lit8 v2, v2, 0x5

    .line 726
    add-int/lit8 v0, v0, 0x5

    goto :goto_4

    .line 736
    .end local v1           #headerID:I
    :cond_51
    if-nez v3, :cond_59

    .line 743
    if-ge v0, p2, :cond_57

    .line 744
    array-length v5, p0

    .line 749
    :goto_56
    return v5

    .line 746
    :cond_57
    const/4 v5, -0x1

    goto :goto_56

    .line 749
    :cond_59
    add-int v5, v3, p1

    goto :goto_56

    .line 697
    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_19
        0x40 -> :sswitch_19
        0x80 -> :sswitch_45
        0xc0 -> :sswitch_4c
    .end sparse-switch
.end method

.method public static findTag(B[B)I
    .registers 6
    .parameter "tag"
    .parameter "value"

    .prologue
    const/4 v3, -0x1

    .line 848
    const/4 v1, 0x0

    .line 850
    .local v1, length:I
    if-nez p1, :cond_6

    move v2, v3

    .line 865
    :goto_5
    return v2

    .line 854
    :cond_6
    const/4 v0, 0x0

    .line 856
    .local v0, index:I
    :goto_7
    array-length v2, p1

    if-ge v0, v2, :cond_18

    aget-byte v2, p1, v0

    if-eq v2, p0, :cond_18

    .line 857
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v1, v2, 0xff

    .line 858
    add-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    goto :goto_7

    .line 861
    :cond_18
    array-length v2, p1

    if-lt v0, v2, :cond_1d

    move v2, v3

    .line 862
    goto :goto_5

    :cond_1d
    move v2, v0

    .line 865
    goto :goto_5
.end method

.method public static getTagValue(B[B)[B
    .registers 6
    .parameter "tag"
    .parameter "triplet"

    .prologue
    .line 826
    invoke-static {p0, p1}, Ljavax/obex/ObexHelper;->findTag(B[B)I

    move-result v0

    .line 827
    .local v0, index:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    .line 828
    const/4 v3, 0x0

    .line 838
    :goto_8
    return-object v3

    .line 831
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 832
    aget-byte v3, p1, v0

    and-int/lit16 v1, v3, 0xff

    .line 834
    .local v1, length:I
    new-array v2, v1, [B

    .line 835
    .local v2, result:[B
    add-int/lit8 v0, v0, 0x1

    .line 836
    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    .line 838
    goto :goto_8
.end method

.method public static updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B
    .registers 12
    .parameter "header"
    .parameter "headerArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, index:I
    const/4 v3, 0x0

    .line 163
    .local v3, length:I
    const/4 v4, 0x0

    .line 164
    .local v4, value:[B
    const/4 v0, 0x0

    .line 165
    .local v0, body:[B
    move-object v1, p0

    .local v1, headerImpl:Ljavax/obex/HeaderSet;
    move-object p0, v0

    .end local v0           #body:[B
    .local p0, body:[B
    move-object v5, v4

    .line 167
    .end local v4           #value:[B
    .local v5, value:[B
    :goto_7
    :try_start_7
    array-length v0, p1

    if-ge v2, v0, :cond_19f

    .line 168
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    .line 169
    .local v0, headerID:I
    and-int/lit16 v4, v0, 0xc0

    sparse-switch v4, :sswitch_data_1a2

    move v0, v2

    .end local v2           #index:I
    .local v0, index:I
    move v2, v3

    .end local v3           #length:I
    .local v2, length:I
    move-object v3, v5

    .end local v5           #value:[B
    .local v3, value:[B
    :goto_16
    move-object v5, v3

    .end local v3           #value:[B
    .restart local v5       #value:[B
    move v3, v2

    .end local v2           #length:I
    .local v3, length:I
    move v2, v0

    .line 313
    .end local v0           #index:I
    .local v2, index:I
    goto :goto_7

    .line 182
    .local v0, headerID:I
    :sswitch_1a
    const/4 v4, 0x1

    .line 183
    .local v4, trimTail:Z
    add-int/lit8 v2, v2, 0x1

    .line 184
    aget-byte v3, p1, v2

    .end local v3           #length:I
    and-int/lit16 v3, v3, 0xff

    .line 185
    .restart local v3       #length:I
    shl-int/lit8 v3, v3, 0x8

    .line 186
    add-int/lit8 v2, v2, 0x1

    .line 187
    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v3, v6

    .line 188
    add-int/lit8 v3, v3, -0x3

    .line 189
    add-int/lit8 v2, v2, 0x1

    .line 190
    new-array v5, v3, [B

    .line 191
    const/4 v6, 0x0

    invoke-static {p1, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    if-eqz v3, :cond_3f

    if-lez v3, :cond_40

    const/4 v6, 0x1

    sub-int v6, v3, v6

    aget-byte v6, v5, v6

    if-eqz v6, :cond_40

    .line 193
    :cond_3f
    const/4 v4, 0x0

    .line 195
    :cond_40
    packed-switch v0, :pswitch_data_1b4

    .line 258
    :pswitch_43
    and-int/lit16 v4, v0, 0xc0

    if-nez v4, :cond_130

    .line 259
    .end local v4           #trimTail:Z
    const/4 v4, 0x1

    invoke-static {v5, v4}, Ljavax/obex/ObexHelper;->convertToUnicode([BZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_4f} :catch_65

    .line 266
    .end local v0           #headerID:I
    :goto_4f
    add-int v0, v2, v3

    .end local v2           #index:I
    .local v0, index:I
    move v2, v3

    .end local v3           #length:I
    .local v2, length:I
    move-object v3, v5

    .line 267
    .end local v5           #value:[B
    .local v3, value:[B
    goto :goto_16

    .line 199
    .local v0, headerID:I
    .local v2, index:I
    .local v3, length:I
    .restart local v4       #trimTail:Z
    .restart local v5       #value:[B
    :pswitch_54
    if-nez v4, :cond_71

    .line 200
    :try_start_56
    new-instance v4, Ljava/lang/String;

    .end local v4           #trimTail:Z
    const/4 v6, 0x0

    array-length v7, v5

    const-string v8, "ISO8859_1"

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v0, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_62
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_56 .. :try_end_62} :catch_63
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_62} :catch_65

    goto :goto_4f

    .line 206
    :catch_63
    move-exception p1

    .line 207
    .local p1, e:Ljava/io/UnsupportedEncodingException;
    :try_start_64
    throw p1
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_65} :catch_65

    .line 317
    .end local v0           #headerID:I
    .end local p1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_65
    move-exception p1

    move v1, v3

    .end local v3           #length:I
    .local v1, length:I
    move v0, v2

    .end local v2           #index:I
    .local v0, index:I
    move-object v2, v5

    .line 318
    .end local v5           #value:[B
    .local v2, value:[B
    .local p1, e:Ljava/io/IOException;
    :goto_69
    new-instance p0, Ljava/io/IOException;

    .end local p0           #body:[B
    const-string p1, "Header was not formatted properly"

    .end local p1           #e:Ljava/io/IOException;
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    .local v0, headerID:I
    .local v1, headerImpl:Ljavax/obex/HeaderSet;
    .local v2, index:I
    .restart local v3       #length:I
    .restart local v4       #trimTail:Z
    .restart local v5       #value:[B
    .restart local p0       #body:[B
    .local p1, headerArray:[B
    :cond_71
    :try_start_71
    new-instance v4, Ljava/lang/String;

    .end local v4           #trimTail:Z
    const/4 v6, 0x0

    array-length v7, v5

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const-string v8, "ISO8859_1"

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v0, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_7f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_71 .. :try_end_7f} :catch_63
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7f} :catch_65

    goto :goto_4f

    .line 212
    .restart local v4       #trimTail:Z
    :pswitch_80
    :try_start_80
    new-array v0, v3, [B

    .end local v0           #headerID:I
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 213
    iget-object v0, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    const/4 v4, 0x0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4f

    .line 218
    .restart local v0       #headerID:I
    :pswitch_8b
    new-array v0, v3, [B

    .end local v0           #headerID:I
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 219
    iget-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/4 v4, 0x0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4f

    .line 226
    .restart local v0       #headerID:I
    :pswitch_96
    add-int/lit8 v4, v3, 0x1

    new-array p0, v4, [B

    .line 227
    .end local v4           #trimTail:Z
    const/4 v4, 0x0

    int-to-byte v0, v0

    aput-byte v0, p0, v4

    .line 228
    .end local v0           #headerID:I
    const/4 v0, 0x1

    invoke-static {p1, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_a2} :catch_65

    goto :goto_4f

    .line 233
    .restart local v0       #headerID:I
    .restart local v4       #trimTail:Z
    :pswitch_a3
    :try_start_a3
    new-instance v0, Ljava/lang/String;

    .end local v0           #headerID:I
    const-string v4, "ISO8859_1"

    .end local v4           #trimTail:Z
    invoke-direct {v0, v5, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 234
    .local v0, dateString:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 235
    .local v4, temp:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_c9

    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_c9

    .line 237
    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 239
    :cond_c9
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 241
    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x6

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 243
    const/4 v6, 0x5

    const/4 v7, 0x6

    const/16 v8, 0x8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 245
    const/16 v6, 0xb

    const/16 v7, 0x9

    const/16 v8, 0xb

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 247
    const/16 v6, 0xc

    const/16 v7, 0xb

    const/16 v8, 0xd

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 249
    const/16 v6, 0xd

    const/16 v7, 0xd

    const/16 v8, 0xf

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0           #dateString:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 251
    const/16 v0, 0x44

    invoke-virtual {v1, v0, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_12c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a3 .. :try_end_12c} :catch_12e
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_12c} :catch_65

    goto/16 :goto_4f

    .line 252
    .end local v4           #temp:Ljava/util/Calendar;
    :catch_12e
    move-exception p1

    .line 253
    .local p1, e:Ljava/io/UnsupportedEncodingException;
    :try_start_12f
    throw p1

    .line 262
    .local v0, headerID:I
    .local p1, headerArray:[B
    :cond_130
    invoke-virtual {v1, v0, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_133} :catch_65

    goto/16 :goto_4f

    .line 274
    :sswitch_135
    add-int/lit8 v2, v2, 0x1

    .line 276
    :try_start_137
    aget-byte v4, p1, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_140} :catch_1a0
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_140} :catch_65

    .line 280
    .end local v0           #headerID:I
    :goto_140
    add-int/lit8 v0, v2, 0x1

    .end local v2           #index:I
    .local v0, index:I
    move v2, v3

    .end local v3           #length:I
    .local v2, length:I
    move-object v3, v5

    .line 281
    .end local v5           #value:[B
    .local v3, value:[B
    goto/16 :goto_16

    .line 289
    .local v0, headerID:I
    .local v2, index:I
    .local v3, length:I
    .restart local v5       #value:[B
    :sswitch_146
    add-int/lit8 v2, v2, 0x1

    .line 290
    const/4 v4, 0x4

    :try_start_149
    new-array v4, v4, [B
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14b} :catch_65

    .line 291
    .end local v5           #value:[B
    .local v4, value:[B
    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_14d
    invoke-static {p1, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_150} :catch_180

    .line 293
    const/16 v5, 0xc4

    if-eq v0, v5, :cond_186

    .line 296
    const/16 v5, 0xcb

    if-ne v0, v5, :cond_16b

    .line 297
    const/4 v0, 0x4

    :try_start_159
    new-array v0, v0, [B

    .end local v0           #headerID:I
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 298
    const/4 v0, 0x0

    iget-object v5, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    :goto_165
    add-int/lit8 v0, v2, 0x4

    .end local v2           #index:I
    .local v0, index:I
    move v2, v3

    .end local v3           #length:I
    .local v2, length:I
    move-object v3, v4

    .end local v4           #value:[B
    .local v3, value:[B
    goto/16 :goto_16

    .line 300
    .local v0, headerID:I
    .local v2, index:I
    .local v3, length:I
    .restart local v4       #value:[B
    :cond_16b
    invoke-static {v4}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_176} :catch_177
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_176} :catch_180

    goto :goto_165

    .line 308
    .end local v0           #headerID:I
    :catch_177
    move-exception p1

    .line 310
    .local p1, e:Ljava/lang/Exception;
    :try_start_178
    new-instance p1, Ljava/io/IOException;

    .end local p1           #e:Ljava/lang/Exception;
    const-string v0, "Header was not formatted properly"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_180} :catch_180

    .line 317
    :catch_180
    move-exception p1

    move v1, v3

    .end local v3           #length:I
    .local v1, length:I
    move v0, v2

    .end local v2           #index:I
    .local v0, index:I
    move-object v2, v4

    .end local v4           #value:[B
    .local v2, value:[B
    goto/16 :goto_69

    .line 304
    .local v0, headerID:I
    .local v1, headerImpl:Ljavax/obex/HeaderSet;
    .local v2, index:I
    .restart local v3       #length:I
    .restart local v4       #value:[B
    .local p1, headerArray:[B
    :cond_186
    :try_start_186
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 305
    .local v0, temp:Ljava/util/Calendar;
    new-instance v5, Ljava/util/Date;

    invoke-static {v4}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 306
    const/16 v5, 0xc4

    invoke-virtual {v1, v5, v0}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_19e} :catch_177
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_19e} :catch_180

    goto :goto_165

    .line 321
    .end local v0           #temp:Ljava/util/Calendar;
    .end local v4           #value:[B
    .restart local v5       #value:[B
    :cond_19f
    return-object p0

    .line 277
    .local v0, headerID:I
    :catch_1a0
    move-exception v0

    goto :goto_140

    .line 169
    :sswitch_data_1a2
    .sparse-switch
        0x0 -> :sswitch_1a
        0x40 -> :sswitch_1a
        0x80 -> :sswitch_135
        0xc0 -> :sswitch_146
    .end sparse-switch

    .line 195
    :pswitch_data_1b4
    .packed-switch 0x42
        :pswitch_54
        :pswitch_43
        :pswitch_a3
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_96
        :pswitch_96
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_80
        :pswitch_8b
    .end packed-switch
.end method
