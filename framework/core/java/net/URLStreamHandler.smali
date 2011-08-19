.class public abstract Ljava/net/URLStreamHandler;
.super Ljava/lang/Object;
.source "URLStreamHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendHex(Ljava/lang/StringBuilder;I)V
    .registers 6
    .parameter "stringBuilder"
    .parameter "b"

    .prologue
    .line 414
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    const-string v1, "%0"

    :goto_13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    return-void

    .line 415
    :cond_1b
    const-string v1, "%"

    goto :goto_13
.end method

.method private fixEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "s"
    .parameter "extraPermittedChars"

    .prologue
    const/16 v10, 0x7f

    .line 358
    const/4 v7, 0x0

    .line 359
    .local v7, result:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 361
    .local v3, copiedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_95

    .line 362
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 364
    .local v2, c:C
    const/16 v8, 0x25

    if-ne v2, v8, :cond_18

    .line 365
    add-int/lit8 v4, v4, 0x2

    .line 361
    :cond_15
    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 370
    :cond_18
    const/16 v8, 0x61

    if-lt v2, v8, :cond_20

    const/16 v8, 0x7a

    if-le v2, v8, :cond_15

    :cond_20
    const/16 v8, 0x41

    if-lt v2, v8, :cond_28

    const/16 v8, 0x5a

    if-le v2, v8, :cond_15

    :cond_28
    const/16 v8, 0x30

    if-lt v2, v8, :cond_30

    const/16 v8, 0x39

    if-le v2, v8, :cond_15

    :cond_30
    const/16 v8, 0x2d

    if-eq v2, v8, :cond_15

    const/16 v8, 0x5f

    if-eq v2, v8, :cond_15

    const/16 v8, 0x2e

    if-eq v2, v8, :cond_15

    const/16 v8, 0x21

    if-eq v2, v8, :cond_15

    const/16 v8, 0x7e

    if-eq v2, v8, :cond_15

    const/16 v8, 0x2a

    if-eq v2, v8, :cond_15

    const/16 v8, 0x27

    if-eq v2, v8, :cond_15

    const/16 v8, 0x28

    if-eq v2, v8, :cond_15

    const/16 v8, 0x29

    if-eq v2, v8, :cond_15

    .line 377
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_15

    .line 382
    if-le v2, v10, :cond_69

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v8

    if-nez v8, :cond_69

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 389
    :cond_69
    if-nez v7, :cond_70

    .line 390
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #result:Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .restart local v7       #result:Ljava/lang/StringBuilder;
    :cond_70
    invoke-virtual {v7, p1, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 394
    if-ge v2, v10, :cond_7b

    .line 395
    invoke-direct {p0, v7, v2}, Ljava/net/URLStreamHandler;->appendHex(Ljava/lang/StringBuilder;I)V

    .line 402
    :cond_78
    add-int/lit8 v3, v4, 0x1

    goto :goto_15

    .line 397
    :cond_7b
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_89
    if-ge v5, v6, :cond_78

    aget-byte v1, v0, v5

    .line 398
    .local v1, b:B
    and-int/lit16 v8, v1, 0xff

    invoke-direct {p0, v7, v8}, Ljava/net/URLStreamHandler;->appendHex(Ljava/lang/StringBuilder;I)V

    .line 397
    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    .line 405
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v2           #c:C
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_95
    if-nez v7, :cond_99

    move-object v8, p1

    .line 409
    :goto_98
    return-object v8

    .line 408
    :cond_99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, p1, v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_98
.end method

.method private static getHost(Ljava/net/URL;)Ljava/lang/String;
    .registers 4
    .parameter "url"

    .prologue
    .line 533
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, host:Ljava/lang/String;
    const-string v1, "file"

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 535
    const-string v0, "localhost"

    .line 537
    :cond_1a
    return-object v0
.end method


# virtual methods
.method protected equals(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 6
    .parameter "url1"
    .parameter "url2"

    .prologue
    const/4 v2, 0x0

    .line 431
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    .line 434
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_8

    :cond_27
    move v0, v2

    goto :goto_8
.end method

.method protected getDefaultPort()I
    .registers 2

    .prologue
    .line 445
    const/4 v0, -0x1

    return v0
.end method

.method protected getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;
    .registers 6
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 457
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move-object v2, v3

    .line 463
    .end local v1           #host:Ljava/lang/String;
    :goto_e
    return-object v2

    .line 461
    .restart local v1       #host:Ljava/lang/String;
    :cond_f
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_12} :catch_14

    move-result-object v2

    goto :goto_e

    .line 462
    .end local v1           #host:Ljava/lang/String;
    :catch_14
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/net/UnknownHostException;
    move-object v2, v3

    .line 463
    goto :goto_e
.end method

.method protected hashCode(Ljava/net/URL;)I
    .registers 3
    .parameter "url"

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 8
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v4, 0x1

    .line 490
    invoke-static {p1}, Ljava/net/URLStreamHandler;->getHost(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, aHost:Ljava/lang/String;
    invoke-static {p2}, Ljava/net/URLStreamHandler;->getHost(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, bHost:Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v4

    .line 507
    :goto_12
    return v3

    .line 506
    :cond_13
    invoke-virtual {p0, p1}, Ljava/net/URLStreamHandler;->getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v1

    .line 507
    .local v1, aResolved:Ljava/net/InetAddress;
    if-eqz v1, :cond_25

    invoke-virtual {p0, p2}, Ljava/net/URLStreamHandler;->getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    move v3, v4

    goto :goto_12

    :cond_25
    const/4 v3, 0x0

    goto :goto_12
.end method

.method protected abstract openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 4
    .parameter "u"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .registers 33
    .parameter "u"
    .parameter "str"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 89
    const-string v3, "//"

    move-object/from16 v0, p2

    move-object v1, v3

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/16 v3, 0x2f

    add-int/lit8 v4, p3, 0x2

    move-object/from16 v0, p2

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2f

    const v3, -0x7fffffff

    move/from16 v0, p4

    move v1, v3

    if-gt v0, v1, :cond_2f

    .line 92
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    const/4 v4, 0x2

    sub-int v4, p4, v4

    sub-int v4, v4, p3

    invoke-direct {v3, v4}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    .line 94
    :cond_2f
    move/from16 v0, p4

    move/from16 v1, p3

    if-ge v0, v1, :cond_45

    .line 95
    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    if-eq v0, v1, :cond_1c8

    .line 96
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3}, Ljava/lang/SecurityException;-><init>()V

    throw v3

    .line 100
    :cond_45
    const-string v21, ""

    .line 101
    .local v21, parseString:Ljava/lang/String;
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_51

    .line 102
    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 104
    :cond_51
    sub-int p4, p4, p3

    .line 105
    const/16 v16, 0x0

    .line 108
    .local v16, fileIdx:I
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, host:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    move-result v7

    .line 110
    .local v7, port:I
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v12

    .line 111
    .local v12, ref:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 112
    .local v10, file:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, query:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, authority:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, userInfo:Ljava/lang/String;
    const/16 v3, 0x23

    const/4 v4, 0x0

    move-object/from16 v0, v21

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v26

    .line 117
    .local v26, refIdx:I
    const-string v3, "//"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 118
    const/16 v18, 0x2

    .line 119
    .local v18, hostIdx:I
    const/4 v7, -0x1

    .line 120
    const/16 v3, 0x2f

    move-object/from16 v0, v21

    move v1, v3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 121
    const/16 v3, 0x3f

    move-object/from16 v0, v21

    move v1, v3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v25

    .line 122
    .local v25, questionMarkIndex:I
    const/4 v3, -0x1

    move/from16 v0, v25

    move v1, v3

    if-eq v0, v1, :cond_b4

    const/4 v3, -0x1

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_b2

    move/from16 v0, v16

    move/from16 v1, v25

    if-le v0, v1, :cond_b4

    .line 123
    :cond_b2
    move/from16 v16, v25

    .line 125
    :cond_b4
    const/4 v3, -0x1

    move/from16 v0, v16

    move v1, v3

    if-ne v0, v1, :cond_be

    .line 126
    move/from16 v16, p4

    .line 128
    const-string v10, ""

    .line 130
    :cond_be
    move/from16 v17, v16

    .line 131
    .local v17, hostEnd:I
    const/4 v3, -0x1

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_d2

    move/from16 v0, v26

    move/from16 v1, v16

    if-ge v0, v1, :cond_d2

    .line 132
    move/from16 v17, v26

    .line 133
    move/from16 v16, v26

    .line 134
    const-string v10, ""

    .line 136
    :cond_d2
    const/16 v3, 0x40

    move-object/from16 v0, v21

    move v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v27

    .line 137
    .local v27, userIdx:I
    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 138
    const/4 v3, -0x1

    move/from16 v0, v27

    move v1, v3

    if-eq v0, v1, :cond_f9

    .line 139
    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 140
    add-int/lit8 v18, v27, 0x1

    .line 143
    :cond_f9
    const/16 v3, 0x5d

    move-object/from16 v0, v21

    move v1, v3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 144
    .local v14, endOfIPv6Addr:I
    move v0, v14

    move/from16 v1, v17

    if-lt v0, v1, :cond_10a

    .line 145
    const/4 v14, -0x1

    .line 149
    :cond_10a
    const/16 v22, -0x1

    .line 150
    .local v22, portIdx:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_1c9

    .line 151
    add-int/lit8 v20, v14, 0x1

    .line 152
    .local v20, maybeColon:I
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_125

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_125

    .line 153
    move/from16 v22, v20

    .line 159
    .end local v20           #maybeColon:I
    :cond_125
    :goto_125
    const/4 v3, -0x1

    move/from16 v0, v22

    move v1, v3

    if-eq v0, v1, :cond_131

    move/from16 v0, v22

    move/from16 v1, v17

    if-le v0, v1, :cond_1d6

    .line 160
    :cond_131
    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 172
    .end local v14           #endOfIPv6Addr:I
    .end local v17           #hostEnd:I
    .end local v18           #hostIdx:I
    .end local v22           #portIdx:I
    .end local v25           #questionMarkIndex:I
    .end local v27           #userIdx:I
    :cond_13b
    :goto_13b
    const/4 v3, -0x1

    move/from16 v0, v26

    move v1, v3

    if-le v0, v1, :cond_14c

    .line 173
    add-int/lit8 v3, v26, 0x1

    move-object/from16 v0, v21

    move v1, v3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 175
    :cond_14c
    const/4 v3, -0x1

    move/from16 v0, v26

    move v1, v3

    if-ne v0, v1, :cond_1fa

    move/from16 v15, p4

    .line 177
    .local v15, fileEnd:I
    :goto_154
    const/16 v3, 0x3f

    move-object/from16 v0, v21

    move v1, v3

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v24

    .line 178
    .local v24, queryIdx:I
    const/4 v13, 0x0

    .line 179
    .local v13, canonicalize:Z
    const/4 v3, -0x1

    move/from16 v0, v24

    move v1, v3

    if-le v0, v1, :cond_209

    .line 180
    add-int/lit8 v3, v24, 0x1

    move-object/from16 v0, v21

    move v1, v3

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 181
    if-nez v24, :cond_18c

    if-eqz v10, :cond_18c

    .line 182
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1fe

    .line 183
    const-string v10, "/"

    .line 187
    :cond_17b
    :goto_17b
    const/16 v3, 0x2f

    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v19, v3, 0x1

    .line 188
    .local v19, last:I
    const/4 v3, 0x0

    move-object v0, v10

    move v1, v3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 190
    .end local v19           #last:I
    :cond_18c
    move/from16 v15, v24

    .line 197
    :cond_18e
    :goto_18e
    const/4 v3, -0x1

    move/from16 v0, v16

    move v1, v3

    if-le v0, v1, :cond_1af

    .line 198
    move/from16 v0, v16

    move/from16 v1, p4

    if-ge v0, v1, :cond_20d

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_20d

    .line 199
    move-object/from16 v0, v21

    move/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 217
    :cond_1af
    :goto_1af
    if-nez v10, :cond_1b3

    .line 218
    const-string v10, ""

    .line 221
    :cond_1b3
    if-nez v6, :cond_1b7

    .line 222
    const-string v6, ""

    .line 225
    :cond_1b7
    if-eqz v13, :cond_1bd

    .line 227
    invoke-static {v10}, Lorg/apache/harmony/luni/util/URLUtil;->canonicalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 230
    :cond_1bd
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v12}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v6           #host:Ljava/lang/String;
    .end local v7           #port:I
    .end local v8           #authority:Ljava/lang/String;
    .end local v9           #userInfo:Ljava/lang/String;
    .end local v10           #file:Ljava/lang/String;
    .end local v11           #query:Ljava/lang/String;
    .end local v12           #ref:Ljava/lang/String;
    .end local v13           #canonicalize:Z
    .end local v15           #fileEnd:I
    .end local v16           #fileIdx:I
    .end local v21           #parseString:Ljava/lang/String;
    .end local v24           #queryIdx:I
    .end local v26           #refIdx:I
    :cond_1c8
    return-void

    .line 156
    .restart local v6       #host:Ljava/lang/String;
    .restart local v7       #port:I
    .restart local v8       #authority:Ljava/lang/String;
    .restart local v9       #userInfo:Ljava/lang/String;
    .restart local v10       #file:Ljava/lang/String;
    .restart local v11       #query:Ljava/lang/String;
    .restart local v12       #ref:Ljava/lang/String;
    .restart local v14       #endOfIPv6Addr:I
    .restart local v16       #fileIdx:I
    .restart local v17       #hostEnd:I
    .restart local v18       #hostIdx:I
    .restart local v21       #parseString:Ljava/lang/String;
    .restart local v22       #portIdx:I
    .restart local v25       #questionMarkIndex:I
    .restart local v26       #refIdx:I
    .restart local v27       #userIdx:I
    :cond_1c9
    const/16 v3, 0x3a

    move-object/from16 v0, v21

    move v1, v3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v22

    goto/16 :goto_125

    .line 162
    :cond_1d6
    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 163
    add-int/lit8 v3, v22, 0x1

    move-object/from16 v0, v21

    move v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 164
    .local v23, portString:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1f4

    .line 165
    const/4 v7, -0x1

    goto/16 :goto_13b

    .line 167
    :cond_1f4
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_13b

    .end local v14           #endOfIPv6Addr:I
    .end local v17           #hostEnd:I
    .end local v18           #hostIdx:I
    .end local v22           #portIdx:I
    .end local v23           #portString:Ljava/lang/String;
    .end local v25           #questionMarkIndex:I
    .end local v27           #userIdx:I
    :cond_1fa
    move/from16 v15, v26

    .line 175
    goto/16 :goto_154

    .line 184
    .restart local v13       #canonicalize:Z
    .restart local v15       #fileEnd:I
    .restart local v24       #queryIdx:I
    :cond_1fe
    const-string v3, "/"

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 185
    const/4 v13, 0x1

    goto/16 :goto_17b

    .line 193
    :cond_209
    if-eqz v26, :cond_18e

    .line 194
    const/4 v11, 0x0

    goto :goto_18e

    .line 200
    :cond_20d
    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_1af

    .line 201
    if-nez v10, :cond_22a

    .line 202
    const-string v10, ""

    .line 208
    :cond_216
    :goto_216
    const/16 v3, 0x2f

    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v19, v3, 0x1

    .line 209
    .restart local v19       #last:I
    if-nez v19, :cond_23d

    .line 210
    move-object/from16 v0, v21

    move/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_1af

    .line 203
    .end local v19           #last:I
    :cond_22a
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_233

    .line 204
    const-string v10, "/"

    goto :goto_216

    .line 205
    :cond_233
    const-string v3, "/"

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_216

    .line 206
    const/4 v13, 0x1

    goto :goto_216

    .line 212
    .restart local v19       #last:I
    :cond_23d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object v0, v10

    move v1, v4

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    move/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1af
.end method

.method protected sameFile(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 5
    .parameter "url1"
    .parameter "url2"

    .prologue
    .line 522
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Ljava/net/URL;->getEffectivePort()I

    move-result v0

    invoke-virtual {p2}, Ljava/net/URL;->getEffectivePort()I

    move-result v1

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "u"
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .parameter "ref"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    iget-object v0, p1, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-eq p0, v0, :cond_a

    .line 257
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 259
    :cond_a
    invoke-virtual/range {p1 .. p6}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "u"
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "authority"
    .parameter "userInfo"
    .parameter "file"
    .parameter "query"
    .parameter "ref"

    .prologue
    .line 288
    iget-object v0, p1, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-eq p0, v0, :cond_a

    .line 289
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 291
    :cond_a
    invoke-virtual/range {p1 .. p9}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method protected toExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .registers 3
    .parameter "url"

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;
    .registers 8
    .parameter "url"
    .parameter "escapeIllegalCharacters"

    .prologue
    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v3, result:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, authority:Ljava/lang/String;
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 314
    const-string v4, "//"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    if-eqz p2, :cond_2a

    .line 316
    const-string v4, "$,;@&=+:[]"

    invoke-direct {p0, v0, v4}, Ljava/net/URLStreamHandler;->fixEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_2a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_2d
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, fileAndQuery:Ljava/lang/String;
    if-eqz v1, :cond_3e

    .line 323
    if-eqz p2, :cond_3b

    .line 324
    const-string v4, "$,;@&=+:/?"

    invoke-direct {p0, v1, v4}, Ljava/net/URLStreamHandler;->fixEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    :cond_3b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_3e
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, ref:Ljava/lang/String;
    if-eqz v2, :cond_54

    .line 331
    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    if-eqz p2, :cond_51

    .line 333
    const-string v4, "$,;@&=+:/?[]"

    invoke-direct {p0, v2, v4}, Ljava/net/URLStreamHandler;->fixEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    :cond_51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
