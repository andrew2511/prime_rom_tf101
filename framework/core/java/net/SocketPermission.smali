.class public final Ljava/net/SocketPermission;
.super Ljava/security/Permission;
.source "SocketPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final HIGHEST_PORT:I = 0xffff

.field private static final LOWEST_PORT:I = 0x0

.field static final SP_ACCEPT:I = 0x4

.field static final SP_CONNECT:I = 0x1

.field static final SP_LISTEN:I = 0x2

.field static final SP_RESOLVE:I = 0x8

.field private static final actionNames:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x63faafcb61acf6beL


# instance fields
.field private actions:Ljava/lang/String;

.field transient actionsMask:I

.field transient hostName:Ljava/lang/String;

.field transient ipString:Ljava/lang/String;

.field private transient isPartialWild:Z

.field private transient isWild:Z

.field transient portMax:I

.field transient portMin:I

.field transient resolved:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 78
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "connect"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "listen"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "accept"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "resolve"

    aput-object v2, v0, v1

    sput-object v0, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "host"
    .parameter "action"

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "localhost"

    :goto_8
    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/SocketPermission;->portMin:I

    .line 101
    const v0, 0xffff

    iput v0, p0, Ljava/net/SocketPermission;->portMax:I

    .line 105
    const/16 v0, 0x8

    iput v0, p0, Ljava/net/SocketPermission;->actionsMask:I

    .line 124
    invoke-direct {p0, p1}, Ljava/net/SocketPermission;->getHostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    .line 125
    if-nez p2, :cond_27

    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_25
    move-object v0, p1

    .line 123
    goto :goto_8

    .line 128
    :cond_27
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 132
    :cond_33
    invoke-direct {p0, p2}, Ljava/net/SocketPermission;->setActions(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, p2}, Ljava/net/SocketPermission;->toCanonicalActionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketPermission;->actions:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Ljava/net/SocketPermission;->parsePort(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private getHostString(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3a

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 406
    const/4 v3, -0x1

    .line 407
    .local v3, idx:I
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 408
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_34

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2a

    if-ne v6, v7, :cond_34

    move v6, v9

    :goto_1d
    iput-boolean v6, p0, Ljava/net/SocketPermission;->isPartialWild:Z

    .line 409
    iget-boolean v6, p0, Ljava/net/SocketPermission;->isPartialWild:Z

    if-eqz v6, :cond_43

    .line 410
    iput-boolean v9, p0, Ljava/net/SocketPermission;->resolved:Z

    .line 411
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_36

    move v6, v9

    :goto_2c
    iput-boolean v6, p0, Ljava/net/SocketPermission;->isWild:Z

    .line 412
    iget-boolean v6, p0, Ljava/net/SocketPermission;->isWild:Z

    if-eqz v6, :cond_38

    move-object v6, p1

    .line 457
    :goto_33
    return-object v6

    :cond_34
    move v6, v8

    .line 408
    goto :goto_1d

    :cond_36
    move v6, v8

    .line 411
    goto :goto_2c

    .line 415
    :cond_38
    if-le v3, v10, :cond_3e

    .line 416
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 418
    :cond_3e
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_33

    .line 421
    :cond_43
    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 423
    .local v5, lastIdx:I
    if-ne v3, v5, :cond_54

    .line 424
    if-eq v10, v3, :cond_4f

    .line 426
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 428
    :cond_4f
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_33

    .line 431
    :cond_54
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_72

    move v4, v9

    .line 432
    .local v4, isFirstBracket:Z
    :goto_5d
    if-nez v4, :cond_a0

    .line 434
    const/4 v1, 0x0

    .line 435
    .local v1, colonNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_74

    .line 436
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_6f

    .line 437
    add-int/lit8 v1, v1, 0x1

    .line 435
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .end local v1           #colonNum:I
    .end local v2           #i:I
    .end local v4           #isFirstBracket:Z
    :cond_72
    move v4, v8

    .line 431
    goto :goto_5d

    .line 441
    .restart local v1       #colonNum:I
    .restart local v2       #i:I
    .restart local v4       #isFirstBracket:Z
    :cond_74
    const/16 v6, 0x8

    if-ne v6, v1, :cond_7c

    .line 442
    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 444
    :cond_7c
    invoke-static {p1}, Ljava/net/SocketPermission;->isIP6AddressInFullForm(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 445
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_33

    .line 447
    :cond_87
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid port number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 450
    .end local v1           #colonNum:I
    .end local v2           #i:I
    :cond_a0
    const/16 v6, 0x5d

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 451
    .local v0, bbracketIdx:I
    if-ne v10, v0, :cond_c1

    .line 453
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid port number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 455
    :cond_c1
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 456
    invoke-static {p1}, Ljava/net/SocketPermission;->isValidIP6Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d3

    .line 457
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_33

    .line 459
    :cond_d3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid port number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private getIPString(Z)Ljava/lang/String;
    .registers 3
    .parameter "isCheck"

    .prologue
    .line 377
    iget-boolean v0, p0, Ljava/net/SocketPermission;->resolved:Z

    if-nez v0, :cond_f

    .line 379
    :try_start_4
    iget-object v0, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/net/InetAddress;->getHostNameInternal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketPermission;->ipString:Ljava/lang/String;
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_c} :catch_12

    .line 383
    :goto_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocketPermission;->resolved:Z

    .line 385
    :cond_f
    iget-object v0, p0, Ljava/net/SocketPermission;->ipString:Ljava/lang/String;

    return-object v0

    .line 380
    :catch_12
    move-exception v0

    goto :goto_c
.end method

.method private static isIP6AddressInFullForm(Ljava/lang/String;)Z
    .registers 4
    .parameter "ipAddress"

    .prologue
    const/4 v2, 0x0

    .line 484
    invoke-static {p0}, Ljava/net/SocketPermission;->isValidIP6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 485
    const-string v1, "::"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 486
    .local v0, doubleColonIndex:I
    if-ltz v0, :cond_11

    move v1, v2

    .line 492
    .end local v0           #doubleColonIndex:I
    :goto_10
    return v1

    .line 490
    .restart local v0       #doubleColonIndex:I
    :cond_11
    const/4 v1, 0x1

    goto :goto_10

    .end local v0           #doubleColonIndex:I
    :cond_13
    move v1, v2

    .line 492
    goto :goto_10
.end method

.method private static isValidHexChar(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 463
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_10

    const/16 v0, 0x46

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static isValidIP4Word(Ljava/lang/String;)Z
    .registers 7
    .parameter "word"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_11

    :cond_f
    move v2, v4

    .line 480
    :goto_10
    return v2

    .line 471
    :cond_11
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 472
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 473
    .local v0, c:C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_24

    const/16 v2, 0x39

    if-le v0, v2, :cond_26

    :cond_24
    move v2, v4

    .line 474
    goto :goto_10

    .line 471
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 477
    .end local v0           #c:C
    :cond_29
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_33

    move v2, v4

    .line 478
    goto :goto_10

    :cond_33
    move v2, v5

    .line 480
    goto :goto_10
.end method

.method private static isValidIP6Address(Ljava/lang/String;)Z
    .registers 14
    .parameter "ipAddress"

    .prologue
    .line 496
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 497
    .local v3, length:I
    const/4 v1, 0x0

    .line 498
    .local v1, doubleColon:Z
    const/4 v4, 0x0

    .line 499
    .local v4, numberOfColons:I
    const/4 v6, 0x0

    .line 500
    .local v6, numberOfPeriods:I
    const/4 v5, 0x0

    .line 501
    .local v5, numberOfPercent:I
    const-string v9, ""

    .line 502
    .local v9, word:Ljava/lang/String;
    const/4 v0, 0x0

    .line 503
    .local v0, c:C
    const/4 v8, 0x0

    .line 504
    .local v8, prevChar:C
    const/4 v7, 0x0

    .line 506
    .local v7, offset:I
    const/4 v2, 0x2

    if-ge v3, v2, :cond_1c

    .line 507
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .local v12, offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .line 634
    .end local v12           #offset:I
    .local v4, offset:I
    :goto_1b
    return v7

    .line 510
    .end local v2           #numberOfPercent:I
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_1c
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, v3, :cond_190

    .line 511
    move v8, v0

    .line 512
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 513
    sparse-switch v0, :sswitch_data_1f2

    .line 599
    if-nez v5, :cond_17d

    .line 600
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-le v10, v11, :cond_16a

    .line 601
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto :goto_1b

    .line 517
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :sswitch_3c
    if-eqz v2, :cond_4a

    .line 518
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto :goto_1b

    .line 520
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_4a
    const/4 v10, 0x1

    sub-int v10, v3, v10

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5d

    if-eq v10, v11, :cond_61

    .line 521
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto :goto_1b

    .line 523
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_61
    const/4 v7, 0x1

    .line 524
    const/4 v10, 0x4

    if-ge v3, v10, :cond_f4

    .line 525
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto :goto_1b

    .line 531
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :sswitch_71
    const/4 v10, 0x1

    sub-int v10, v3, v10

    if-eq v2, v10, :cond_82

    .line 532
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto :goto_1b

    .line 534
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_82
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5b

    if-eq v10, v11, :cond_f4

    .line 535
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto :goto_1b

    .line 541
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :sswitch_97
    add-int/lit8 v6, v6, 0x1

    .line 542
    const/4 v10, 0x3

    if-le v6, v10, :cond_a9

    .line 543
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 545
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_a9
    invoke-static {v9}, Ljava/net/SocketPermission;->isValidIP4Word(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_bc

    .line 546
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 548
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_bc
    const/4 v10, 0x6

    if-eq v4, v10, :cond_ce

    if-nez v1, :cond_ce

    .line 549
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 553
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_ce
    const/4 v10, 0x7

    if-ne v4, v10, :cond_f2

    add-int/lit8 v10, v7, 0x0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_f2

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_f2

    .line 555
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 557
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_f2
    const-string v9, ""

    .line 510
    :cond_f4
    :goto_f4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    .line 561
    :sswitch_f8
    add-int/lit8 v4, v4, 0x1

    .line 562
    const/4 v10, 0x7

    if-le v4, v10, :cond_10a

    .line 563
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 565
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_10a
    if-lez v6, :cond_119

    .line 566
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 568
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_119
    const/16 v10, 0x3a

    if-ne v8, v10, :cond_12d

    .line 569
    if-eqz v1, :cond_12c

    .line 570
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 572
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_12c
    const/4 v1, 0x1

    .line 574
    :cond_12d
    const-string v9, ""

    .line 575
    goto :goto_f4

    .line 577
    :sswitch_130
    if-nez v4, :cond_13f

    .line 578
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 580
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_13f
    add-int/lit8 v5, v5, 0x1

    .line 583
    add-int/lit8 v10, v2, 0x1

    if-lt v10, v3, :cond_152

    .line 586
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 589
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_152
    add-int/lit8 v10, v2, 0x1

    :try_start_154
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15b
    .catch Ljava/lang/NumberFormatException; {:try_start_154 .. :try_end_15b} :catch_15c

    goto :goto_f4

    .line 590
    :catch_15c
    move-exception p0

    .line 594
    .local p0, e:Ljava/lang/NumberFormatException;
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 603
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_16a
    invoke-static {v0}, Ljava/net/SocketPermission;->isValidHexChar(C)Z

    move-result v10

    if-nez v10, :cond_17d

    .line 604
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 607
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_17d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .end local v9           #word:Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #word:Ljava/lang/String;
    goto/16 :goto_f4

    .line 612
    :cond_190
    if-lez v6, :cond_1a8

    .line 613
    const/4 p0, 0x3

    if-ne v6, p0, :cond_19b

    .end local p0           #ipAddress:Ljava/lang/String;
    invoke-static {v9}, Ljava/net/SocketPermission;->isValidIP4Word(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1e5

    .line 614
    :cond_19b
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 619
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_1a8
    const/4 v2, 0x7

    if-eq v4, v2, :cond_1ba

    .end local v2           #i:I
    if-nez v1, :cond_1ba

    .line 620
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 626
    .end local v2           #numberOfPercent:I
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_1ba
    if-nez v5, :cond_1e5

    .line 627
    const-string v2, ""

    if-ne v9, v2, :cond_1e5

    const/4 v2, 0x1

    sub-int v2, v3, v2

    sub-int/2addr v2, v7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v10, 0x3a

    if-ne v2, v10, :cond_1e5

    const/4 v2, 0x2

    sub-int v2, v3, v2

    sub-int/2addr v2, v7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .end local p0           #ipAddress:Ljava/lang/String;
    const/16 v2, 0x3a

    if-eq p0, v2, :cond_1e5

    .line 629
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .restart local v2       #numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 634
    .end local v2           #numberOfPercent:I
    .end local p0           #c:C
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    :cond_1e5
    const/4 p0, 0x1

    move v2, v5

    .end local v5           #numberOfPercent:I
    .restart local v2       #numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .restart local p0       #c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 513
    :sswitch_data_1f2
    .sparse-switch
        0x25 -> :sswitch_130
        0x2e -> :sswitch_97
        0x3a -> :sswitch_f8
        0x5b -> :sswitch_3c
        0x5d -> :sswitch_71
    .end sparse-switch
.end method

.method private parsePort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "hostPort"
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x50

    const/4 v7, 0x0

    .line 296
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, port:Ljava/lang/String;
    const-string v1, ""

    .line 299
    .local v1, emptyString:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 301
    iput v8, p0, Ljava/net/SocketPermission;->portMin:I

    .line 302
    iput v8, p0, Ljava/net/SocketPermission;->portMax:I

    .line 342
    :cond_17
    :goto_17
    return-void

    .line 306
    :cond_18
    const-string v6, ":*"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 308
    iput v7, p0, Ljava/net/SocketPermission;->portMin:I

    .line 309
    const v6, 0xffff

    iput v6, p0, Ljava/net/SocketPermission;->portMax:I

    goto :goto_17

    .line 314
    :cond_28
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 315
    const/16 v6, 0x2d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 316
    .local v2, negIdx:I
    move-object v5, v1

    .line 317
    .local v5, strPortMin:Ljava/lang/String;
    move-object v4, v1

    .line 318
    .local v4, strPortMax:Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v6, v2, :cond_88

    .line 320
    move-object v5, v3

    .line 321
    move-object v4, v3

    .line 333
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Ljava/net/SocketPermission;->portMin:I

    .line 334
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Ljava/net/SocketPermission;->portMax:I

    .line 336
    iget v6, p0, Ljava/net/SocketPermission;->portMin:I

    iget v7, p0, Ljava/net/SocketPermission;->portMax:I

    if-le v6, v7, :cond_17

    .line 337
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MinPort is greater than MaxPort: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_6d} :catch_6d

    .line 339
    :catch_6d
    move-exception v6

    move-object v0, v6

    .line 340
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid port number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 323
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_88
    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 324
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 326
    const-string v5, "0"

    .line 328
    :cond_9a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 329
    const-string v4, "65535"

    goto :goto_3a
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 662
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 664
    iput-boolean v0, p0, Ljava/net/SocketPermission;->isPartialWild:Z

    .line 665
    iput-boolean v0, p0, Ljava/net/SocketPermission;->isWild:Z

    .line 666
    iput v0, p0, Ljava/net/SocketPermission;->portMin:I

    .line 667
    const v0, 0xffff

    iput v0, p0, Ljava/net/SocketPermission;->portMax:I

    .line 668
    const/16 v0, 0x8

    iput v0, p0, Ljava/net/SocketPermission;->actionsMask:I

    .line 669
    invoke-virtual {p0}, Ljava/net/SocketPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/SocketPermission;->getHostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    .line 670
    invoke-virtual {p0}, Ljava/net/SocketPermission;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljava/net/SocketPermission;->parsePort(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Ljava/net/SocketPermission;->actions:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/SocketPermission;->setActions(Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method private setActions(Ljava/lang/String;)V
    .registers 12
    .parameter "actions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 235
    :cond_6
    return-void

    .line 209
    :cond_7
    const/4 v3, 0x1

    .line 211
    .local v3, parsing:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v6, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, pos:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 213
    .local v2, length:I
    :cond_12
    :goto_12
    if-eqz v3, :cond_6

    .line 215
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    move v5, v4

    .line 216
    .end local v4           #pos:I
    .local v5, pos:I
    :goto_19
    if-ge v5, v2, :cond_2a

    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, c:C
    const/16 v7, 0x2c

    if-eq v1, v7, :cond_2b

    .line 217
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto :goto_19

    .end local v1           #c:C
    :cond_2a
    move v4, v5

    .line 219
    .end local v5           #pos:I
    .restart local v4       #pos:I
    :cond_2b
    if-ne v4, v2, :cond_2e

    .line 220
    const/4 v3, 0x0

    .line 222
    :cond_2e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, action:Ljava/lang/String;
    sget-object v7, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 224
    iget v7, p0, Ljava/net/SocketPermission;->actionsMask:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/net/SocketPermission;->actionsMask:I

    goto :goto_12

    .line 225
    :cond_4c
    sget-object v7, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 226
    iget v7, p0, Ljava/net/SocketPermission;->actionsMask:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Ljava/net/SocketPermission;->actionsMask:I

    goto :goto_12

    .line 227
    :cond_5e
    sget-object v7, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 228
    iget v7, p0, Ljava/net/SocketPermission;->actionsMask:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Ljava/net/SocketPermission;->actionsMask:I

    goto :goto_12

    .line 229
    :cond_70
    sget-object v7, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    const/16 v8, 0x8

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 232
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private toCanonicalActionString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "action"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/16 v2, 0x2c

    .line 353
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    iget v1, p0, Ljava/net/SocketPermission;->actionsMask:I

    if-ne v1, v4, :cond_18

    .line 354
    :cond_13
    sget-object v1, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    aget-object v1, v1, v4

    .line 373
    :goto_17
    return-object v1

    .line 357
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v0, sb:Ljava/lang/StringBuilder;
    iget v1, p0, Ljava/net/SocketPermission;->actionsMask:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_2d

    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    sget-object v1, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_2d
    iget v1, p0, Ljava/net/SocketPermission;->actionsMask:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_3d

    .line 363
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    sget-object v1, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_3d
    iget v1, p0, Ljava/net/SocketPermission;->actionsMask:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v6, :cond_4d

    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    sget-object v1, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_4d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    sget-object v1, Ljava/net/SocketPermission;->actionNames:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/SocketPermission;->actions:Ljava/lang/String;

    goto :goto_17
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 658
    return-void
.end method


# virtual methods
.method checkHost(Ljava/net/SocketPermission;)Z
    .registers 7
    .parameter "sp"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 642
    iget-boolean v1, p0, Ljava/net/SocketPermission;->isPartialWild:Z

    if-eqz v1, :cond_24

    .line 643
    iget-boolean v1, p0, Ljava/net/SocketPermission;->isWild:Z

    if-eqz v1, :cond_c

    move v1, v4

    .line 652
    :goto_b
    return v1

    .line 646
    :cond_c
    iget-object v1, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, v4

    .line 647
    .local v0, length:I
    iget-object v1, p1, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v3, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_b

    .line 652
    .end local v0           #length:I
    :cond_24
    invoke-direct {p0, v3}, Ljava/net/SocketPermission;->getIPString(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Ljava/net/SocketPermission;->ipString:Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/net/SocketPermission;->getIPString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    :cond_36
    iget-object v1, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    :cond_40
    move v1, v4

    goto :goto_b

    :cond_42
    move v1, v3

    goto :goto_b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "other"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 171
    :goto_5
    return v2

    .line 154
    :cond_6
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_14

    :cond_12
    move v2, v4

    .line 155
    goto :goto_5

    .line 157
    :cond_14
    move-object v0, p1

    check-cast v0, Ljava/net/SocketPermission;

    move-object v1, v0

    .line 158
    .local v1, sp:Ljava/net/SocketPermission;
    iget-object v2, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    iget-object v3, v1, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 159
    invoke-direct {p0, v5}, Ljava/net/SocketPermission;->getIPString(Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Ljava/net/SocketPermission;->ipString:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/net/SocketPermission;->getIPString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    :cond_34
    move v2, v4

    .line 160
    goto :goto_5

    .line 163
    :cond_36
    iget v2, p0, Ljava/net/SocketPermission;->actionsMask:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4c

    .line 164
    iget v2, p0, Ljava/net/SocketPermission;->portMin:I

    iget v3, v1, Ljava/net/SocketPermission;->portMin:I

    if-eq v2, v3, :cond_44

    move v2, v4

    .line 165
    goto :goto_5

    .line 167
    :cond_44
    iget v2, p0, Ljava/net/SocketPermission;->portMax:I

    iget v3, v1, Ljava/net/SocketPermission;->portMax:I

    if-eq v2, v3, :cond_4c

    move v2, v4

    .line 168
    goto :goto_5

    .line 171
    :cond_4c
    iget v2, p0, Ljava/net/SocketPermission;->actionsMask:I

    iget v3, v1, Ljava/net/SocketPermission;->actionsMask:I

    if-ne v2, v3, :cond_54

    move v2, v5

    goto :goto_5

    :cond_54
    move v2, v4

    goto :goto_5
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Ljava/net/SocketPermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Ljava/net/SocketPermission;->hostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/SocketPermission;->actionsMask:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/net/SocketPermission;->portMin:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/net/SocketPermission;->portMax:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 8
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    .line 254
    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/net/SocketPermission;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_12

    .line 261
    .local v2, sp:Ljava/net/SocketPermission;
    if-eqz v2, :cond_10

    iget v3, p0, Ljava/net/SocketPermission;->actionsMask:I

    iget v4, v2, Ljava/net/SocketPermission;->actionsMask:I

    and-int/2addr v3, v4

    iget v4, v2, Ljava/net/SocketPermission;->actionsMask:I

    if-eq v3, v4, :cond_15

    :cond_10
    move v3, v5

    .line 274
    .end local v2           #sp:Ljava/net/SocketPermission;
    :goto_11
    return v3

    .line 255
    :catch_12
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    move v3, v5

    .line 256
    goto :goto_11

    .line 267
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #sp:Ljava/net/SocketPermission;
    :cond_15
    invoke-virtual {p1}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v3

    const-string v4, "resolve"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 268
    iget v3, v2, Ljava/net/SocketPermission;->portMin:I

    iget v4, p0, Ljava/net/SocketPermission;->portMin:I

    if-lt v3, v4, :cond_2d

    iget v3, v2, Ljava/net/SocketPermission;->portMax:I

    iget v4, p0, Ljava/net/SocketPermission;->portMax:I

    if-le v3, v4, :cond_2f

    :cond_2d
    move v3, v5

    .line 269
    goto :goto_11

    .line 274
    :cond_2f
    invoke-virtual {p0, v2}, Ljava/net/SocketPermission;->checkHost(Ljava/net/SocketPermission;)Z

    move-result v3

    goto :goto_11
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 285
    new-instance v0, Ljava/net/SocketPermissionCollection;

    invoke-direct {v0}, Ljava/net/SocketPermissionCollection;-><init>()V

    return-object v0
.end method
