.class public final Ljavax/obex/HeaderSet;
.super Ljava/lang/Object;
.source "HeaderSet.java"


# static fields
.field public static final APPLICATION_PARAMETER:I = 0x4c

.field public static final AUTH_CHALLENGE:I = 0x4d

.field public static final AUTH_RESPONSE:I = 0x4e

.field public static final BODY:I = 0x48

.field public static final CONNECTION_ID:I = 0xcb

.field public static final COUNT:I = 0xc0

.field public static final DESCRIPTION:I = 0x5

.field public static final END_OF_BODY:I = 0x49

.field public static final HTTP:I = 0x47

.field public static final LENGTH:I = 0xc3

.field public static final NAME:I = 0x1

.field public static final OBJECT_CLASS:I = 0x4f

.field public static final TARGET:I = 0x46

.field public static final TIME_4_BYTE:I = 0xc4

.field public static final TIME_ISO_8601:I = 0x44

.field public static final TYPE:I = 0x42

.field public static final WHO:I = 0x4a


# instance fields
.field private mAppParam:[B

.field public mAuthChall:[B

.field public mAuthResp:[B

.field private mByteTime:Ljava/util/Calendar;

.field private mByteUserDefined:[Ljava/lang/Byte;

.field public mConnectionID:[B

.field private mCount:Ljava/lang/Long;

.field private mDescription:Ljava/lang/String;

.field private mHttpHeader:[B

.field private mIntegerUserDefined:[Ljava/lang/Long;

.field private mIsoTime:Ljava/util/Calendar;

.field private mLength:Ljava/lang/Long;

.field private mName:Ljava/lang/String;

.field private mObjectClass:[B

.field private final mRandom:Ljava/security/SecureRandom;

.field private mSequenceUserDefined:[[B

.field private mTarget:[B

.field private mType:Ljava/lang/String;

.field private mUnicodeUserDefined:[Ljava/lang/String;

.field private mWho:[B

.field nonce:[B

.field public responseCode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x10

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ljavax/obex/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    .line 230
    new-array v0, v1, [[B

    iput-object v0, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    .line 231
    new-array v0, v1, [Ljava/lang/Byte;

    iput-object v0, p0, Ljavax/obex/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    .line 232
    new-array v0, v1, [Ljava/lang/Long;

    iput-object v0, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Ljavax/obex/HeaderSet;->responseCode:I

    .line 234
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Ljavax/obex/HeaderSet;->mRandom:Ljava/security/SecureRandom;

    .line 235
    return-void
.end method


# virtual methods
.method public createAuthenticationChallenge(Ljava/lang/String;ZZ)V
    .registers 8
    .parameter "realm"
    .parameter "userID"
    .parameter "access"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    .line 602
    new-array v1, v3, [B

    iput-object v1, p0, Ljavax/obex/HeaderSet;->nonce:[B

    .line 603
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v3, :cond_17

    .line 604
    iget-object v1, p0, Ljavax/obex/HeaderSet;->nonce:[B

    iget-object v2, p0, Ljavax/obex/HeaderSet;->mRandom:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 607
    :cond_17
    iget-object v1, p0, Ljavax/obex/HeaderSet;->nonce:[B

    invoke-static {v1, p1, p3, p2}, Ljavax/obex/ObexHelper;->computeAuthenticationChallenge([BLjava/lang/String;ZZ)[B

    move-result-object v1

    iput-object v1, p0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 608
    return-void
.end method

.method public getHeader(I)Ljava/lang/Object;
    .registers 7
    .parameter "headerID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xf0

    const/16 v3, 0xb0

    const/16 v2, 0x70

    const/16 v1, 0x30

    .line 446
    sparse-switch p1, :sswitch_data_6c

    .line 473
    if-lt p1, v1, :cond_3c

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_3c

    .line 474
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    .line 486
    :goto_17
    return-object v0

    .line 448
    :sswitch_18
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mCount:Ljava/lang/Long;

    goto :goto_17

    .line 450
    :sswitch_1b
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mName:Ljava/lang/String;

    goto :goto_17

    .line 452
    :sswitch_1e
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mType:Ljava/lang/String;

    goto :goto_17

    .line 454
    :sswitch_21
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mLength:Ljava/lang/Long;

    goto :goto_17

    .line 456
    :sswitch_24
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mIsoTime:Ljava/util/Calendar;

    goto :goto_17

    .line 458
    :sswitch_27
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mByteTime:Ljava/util/Calendar;

    goto :goto_17

    .line 460
    :sswitch_2a
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mDescription:Ljava/lang/String;

    goto :goto_17

    .line 462
    :sswitch_2d
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    goto :goto_17

    .line 464
    :sswitch_30
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    goto :goto_17

    .line 466
    :sswitch_33
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mWho:[B

    goto :goto_17

    .line 468
    :sswitch_36
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    goto :goto_17

    .line 470
    :sswitch_39
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    goto :goto_17

    .line 477
    :cond_3c
    if-lt p1, v2, :cond_49

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_49

    .line 478
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    sub-int v1, p1, v2

    aget-object v0, v0, v1

    goto :goto_17

    .line 481
    :cond_49
    if-lt p1, v3, :cond_56

    const/16 v0, 0xbf

    if-gt p1, v0, :cond_56

    .line 482
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    sub-int v1, p1, v3

    aget-object v0, v0, v1

    goto :goto_17

    .line 485
    :cond_56
    if-lt p1, v4, :cond_63

    const/16 v0, 0xff

    if-gt p1, v0, :cond_63

    .line 486
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    sub-int v1, p1, v4

    aget-object v0, v0, v1

    goto :goto_17

    .line 488
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Header Identifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    nop

    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_1b
        0x5 -> :sswitch_2a
        0x42 -> :sswitch_1e
        0x44 -> :sswitch_24
        0x46 -> :sswitch_2d
        0x47 -> :sswitch_30
        0x4a -> :sswitch_33
        0x4c -> :sswitch_39
        0x4f -> :sswitch_36
        0xc0 -> :sswitch_18
        0xc3 -> :sswitch_21
        0xc4 -> :sswitch_27
    .end sparse-switch
.end method

.method public getHeaderList()[I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xc0

    .line 504
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 506
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mCount:Ljava/lang/Long;

    if-eqz v4, :cond_e

    .line 507
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 509
    :cond_e
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mName:Ljava/lang/String;

    if-eqz v4, :cond_16

    .line 510
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 512
    :cond_16
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mType:Ljava/lang/String;

    if-eqz v4, :cond_1f

    .line 513
    const/16 v4, 0x42

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 515
    :cond_1f
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mLength:Ljava/lang/Long;

    if-eqz v4, :cond_28

    .line 516
    const/16 v4, 0xc3

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 518
    :cond_28
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mIsoTime:Ljava/util/Calendar;

    if-eqz v4, :cond_31

    .line 519
    const/16 v4, 0x44

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 521
    :cond_31
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mByteTime:Ljava/util/Calendar;

    if-eqz v4, :cond_3a

    .line 522
    const/16 v4, 0xc4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 524
    :cond_3a
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mDescription:Ljava/lang/String;

    if-eqz v4, :cond_42

    .line 525
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 527
    :cond_42
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    if-eqz v4, :cond_4b

    .line 528
    const/16 v4, 0x46

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 530
    :cond_4b
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    if-eqz v4, :cond_54

    .line 531
    const/16 v4, 0x47

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 533
    :cond_54
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mWho:[B

    if-eqz v4, :cond_5d

    .line 534
    const/16 v4, 0x4a

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 536
    :cond_5d
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    if-eqz v4, :cond_66

    .line 537
    const/16 v4, 0x4c

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 539
    :cond_66
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    if-eqz v4, :cond_6f

    .line 540
    const/16 v4, 0x4f

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 543
    :cond_6f
    const/16 v1, 0x30

    .local v1, i:I
    :goto_71
    const/16 v4, 0x40

    if-ge v1, v4, :cond_85

    .line 544
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    const/16 v5, 0x30

    sub-int v5, v1, v5

    aget-object v4, v4, v5

    if-eqz v4, :cond_82

    .line 545
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 543
    :cond_82
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 549
    :cond_85
    const/16 v1, 0x70

    :goto_87
    const/16 v4, 0x80

    if-ge v1, v4, :cond_9b

    .line 550
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    const/16 v5, 0x70

    sub-int v5, v1, v5

    aget-object v4, v4, v5

    if-eqz v4, :cond_98

    .line 551
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 549
    :cond_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    .line 555
    :cond_9b
    const/16 v1, 0xb0

    :goto_9d
    if-ge v1, v6, :cond_af

    .line 556
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    const/16 v5, 0xb0

    sub-int v5, v1, v5

    aget-object v4, v4, v5

    if-eqz v4, :cond_ac

    .line 557
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 555
    :cond_ac
    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    .line 561
    :cond_af
    const/16 v1, 0xf0

    :goto_b1
    const/16 v4, 0x100

    if-ge v1, v4, :cond_c5

    .line 562
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    const/16 v5, 0xf0

    sub-int v5, v1, v5

    aget-object v4, v4, v5

    if-eqz v4, :cond_c2

    .line 563
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 561
    :cond_c2
    add-int/lit8 v1, v1, 0x1

    goto :goto_b1

    .line 567
    :cond_c5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 568
    .local v0, headers:[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 570
    if-eqz v0, :cond_d1

    array-length v4, v0

    if-nez v4, :cond_d3

    .line 571
    :cond_d1
    const/4 v4, 0x0

    .line 581
    :goto_d2
    return-object v4

    .line 574
    :cond_d3
    array-length v4, v0

    new-array v3, v4, [I

    .line 575
    .local v3, result:[I
    const/4 v1, 0x0

    :goto_d7
    array-length v4, v0

    if-ge v1, v4, :cond_e3

    .line 578
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_d7

    :cond_e3
    move-object v4, v3

    .line 581
    goto :goto_d2
.end method

.method public getResponseCode()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    iget v0, p0, Ljavax/obex/HeaderSet;->responseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 623
    new-instance v0, Ljava/io/IOException;

    const-string v1, "May not be called on a server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_d
    iget v0, p0, Ljavax/obex/HeaderSet;->responseCode:I

    return v0
.end method

.method public setHeader(ILjava/lang/Object;)V
    .registers 14
    .parameter "headerID"
    .parameter "headerValue"

    .prologue
    const-wide/16 v9, 0x0

    const/16 v8, 0xf0

    const/16 v7, 0x70

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 251
    const-wide/16 v1, -0x1

    .line 253
    .local v1, temp:J
    sparse-switch p1, :sswitch_data_266

    .line 375
    const/16 v3, 0x30

    if-lt p1, v3, :cond_1bb

    const/16 v3, 0x3f

    if-gt p1, v3, :cond_1bb

    .line 376
    if-eqz p2, :cond_1af

    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_1af

    .line 377
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unicode String User Defined must be a String"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    :sswitch_23
    instance-of v3, p2, Ljava/lang/Long;

    if-nez v3, :cond_34

    .line 256
    if-nez p2, :cond_2c

    .line 257
    iput-object v5, p0, Ljavax/obex/HeaderSet;->mCount:Ljava/lang/Long;

    .line 430
    .end local p2
    :goto_2b
    return-void

    .line 260
    .restart local p2
    :cond_2c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Count must be a Long"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    :cond_34
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 263
    cmp-long v3, v1, v9

    if-ltz v3, :cond_49

    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-lez v3, :cond_51

    .line 264
    :cond_49
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Count must be between 0 and 0xFFFFFFFF"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :cond_51
    check-cast p2, Ljava/lang/Long;

    .end local p2
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mCount:Ljava/lang/Long;

    goto :goto_2b

    .line 269
    .restart local p2
    :sswitch_56
    if-eqz p2, :cond_64

    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_64

    .line 270
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Name must be a String"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 272
    :cond_64
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mName:Ljava/lang/String;

    goto :goto_2b

    .line 275
    .restart local p2
    :sswitch_69
    if-eqz p2, :cond_77

    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_77

    .line 276
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Type must be a String"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 278
    :cond_77
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mType:Ljava/lang/String;

    goto :goto_2b

    .line 281
    .restart local p2
    :sswitch_7c
    instance-of v3, p2, Ljava/lang/Long;

    if-nez v3, :cond_8d

    .line 282
    if-nez p2, :cond_85

    .line 283
    iput-object v5, p0, Ljavax/obex/HeaderSet;->mLength:Ljava/lang/Long;

    goto :goto_2b

    .line 286
    :cond_85
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Length must be a Long"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 288
    :cond_8d
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 289
    cmp-long v3, v1, v9

    if-ltz v3, :cond_a2

    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-lez v3, :cond_aa

    .line 290
    :cond_a2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Length must be between 0 and 0xFFFFFFFF"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 292
    :cond_aa
    check-cast p2, Ljava/lang/Long;

    .end local p2
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mLength:Ljava/lang/Long;

    goto/16 :goto_2b

    .line 295
    .restart local p2
    :sswitch_b0
    if-eqz p2, :cond_be

    instance-of v3, p2, Ljava/util/Calendar;

    if-nez v3, :cond_be

    .line 296
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Time ISO 8601 must be a Calendar"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 298
    :cond_be
    check-cast p2, Ljava/util/Calendar;

    .end local p2
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mIsoTime:Ljava/util/Calendar;

    goto/16 :goto_2b

    .line 301
    .restart local p2
    :sswitch_c4
    if-eqz p2, :cond_d2

    instance-of v3, p2, Ljava/util/Calendar;

    if-nez v3, :cond_d2

    .line 302
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Time 4 Byte must be a Calendar"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 304
    :cond_d2
    check-cast p2, Ljava/util/Calendar;

    .end local p2
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mByteTime:Ljava/util/Calendar;

    goto/16 :goto_2b

    .line 307
    .restart local p2
    :sswitch_d8
    if-eqz p2, :cond_e6

    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_e6

    .line 308
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Description must be a String"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 310
    :cond_e6
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mDescription:Ljava/lang/String;

    goto/16 :goto_2b

    .line 313
    .restart local p2
    :sswitch_ec
    if-nez p2, :cond_f2

    .line 314
    iput-object v5, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    goto/16 :goto_2b

    .line 316
    :cond_f2
    instance-of v3, p2, [B

    if-nez v3, :cond_fe

    .line 317
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Target must be a byte array"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 319
    :cond_fe
    move-object v0, p2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    .line 320
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    iget-object v4, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    array-length v4, v4

    invoke-static {p2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2b

    .line 325
    :sswitch_113
    if-nez p2, :cond_119

    .line 326
    iput-object v5, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    goto/16 :goto_2b

    .line 328
    :cond_119
    instance-of v3, p2, [B

    if-nez v3, :cond_125

    .line 329
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "HTTP must be a byte array"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 331
    :cond_125
    move-object v0, p2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    .line 332
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    iget-object v4, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    array-length v4, v4

    invoke-static {p2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2b

    .line 337
    :sswitch_13a
    if-nez p2, :cond_140

    .line 338
    iput-object v5, p0, Ljavax/obex/HeaderSet;->mWho:[B

    goto/16 :goto_2b

    .line 340
    :cond_140
    instance-of v3, p2, [B

    if-nez v3, :cond_14c

    .line 341
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "WHO must be a byte array"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 343
    :cond_14c
    move-object v0, p2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Ljavax/obex/HeaderSet;->mWho:[B

    .line 344
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mWho:[B

    iget-object v4, p0, Ljavax/obex/HeaderSet;->mWho:[B

    array-length v4, v4

    invoke-static {p2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2b

    .line 349
    :sswitch_161
    if-nez p2, :cond_167

    .line 350
    iput-object v5, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    goto/16 :goto_2b

    .line 352
    :cond_167
    instance-of v3, p2, [B

    if-nez v3, :cond_173

    .line 353
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Object Class must be a byte array"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 355
    :cond_173
    move-object v0, p2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    .line 356
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    iget-object v4, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    array-length v4, v4

    invoke-static {p2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2b

    .line 361
    :sswitch_188
    if-nez p2, :cond_18e

    .line 362
    iput-object v5, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    goto/16 :goto_2b

    .line 364
    :cond_18e
    instance-of v3, p2, [B

    if-nez v3, :cond_19a

    .line 365
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Application Parameter must be a byte array"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 368
    :cond_19a
    move-object v0, p2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    .line 369
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    iget-object v4, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    array-length v4, v4

    invoke-static {p2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2b

    .line 380
    :cond_1af
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    const/16 v4, 0x30

    sub-int v4, p1, v4

    check-cast p2, Ljava/lang/String;

    .end local p2
    aput-object p2, v3, v4

    goto/16 :goto_2b

    .line 385
    .restart local p2
    :cond_1bb
    if-lt p1, v7, :cond_1f8

    const/16 v3, 0x7f

    if-gt p1, v3, :cond_1f8

    .line 387
    if-nez p2, :cond_1cb

    .line 388
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    sub-int v4, p1, v7

    aput-object v5, v3, v4

    goto/16 :goto_2b

    .line 390
    :cond_1cb
    instance-of v3, p2, [B

    if-nez v3, :cond_1d7

    .line 391
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Byte Sequence User Defined must be a byte array"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 394
    :cond_1d7
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    sub-int v5, p1, v7

    move-object v0, p2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    array-length v3, v3

    new-array v3, v3, [B

    aput-object v3, v4, v5

    .line 395
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    sub-int v4, p1, v7

    aget-object v3, v3, v4

    iget-object v4, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    sub-int v5, p1, v7

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {p2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2b

    .line 402
    :cond_1f8
    const/16 v3, 0xb0

    if-lt p1, v3, :cond_21a

    const/16 v3, 0xbf

    if-gt p1, v3, :cond_21a

    .line 403
    if-eqz p2, :cond_20e

    instance-of v3, p2, Ljava/lang/Byte;

    if-nez v3, :cond_20e

    .line 404
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "ByteUser Defined must be a Byte"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 406
    :cond_20e
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    const/16 v4, 0xb0

    sub-int v4, p1, v4

    check-cast p2, Ljava/lang/Byte;

    .end local p2
    aput-object p2, v3, v4

    goto/16 :goto_2b

    .line 412
    .restart local p2
    :cond_21a
    if-lt p1, v8, :cond_25d

    const/16 v3, 0xff

    if-gt p1, v3, :cond_25d

    .line 413
    instance-of v3, p2, Ljava/lang/Long;

    if-nez v3, :cond_236

    .line 414
    if-nez p2, :cond_22e

    .line 415
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    sub-int v4, p1, v8

    aput-object v5, v3, v4

    goto/16 :goto_2b

    .line 418
    :cond_22e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Integer User Defined must be a Long"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 420
    :cond_236
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 421
    cmp-long v3, v1, v9

    if-ltz v3, :cond_24b

    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-lez v3, :cond_253

    .line 422
    :cond_24b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Integer User Defined must be between 0 and 0xFFFFFFFF"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 425
    :cond_253
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    sub-int v4, p1, v8

    check-cast p2, Ljava/lang/Long;

    .end local p2
    aput-object p2, v3, v4

    goto/16 :goto_2b

    .line 428
    .restart local p2
    :cond_25d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid Header Identifier"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    nop

    :sswitch_data_266
    .sparse-switch
        0x1 -> :sswitch_56
        0x5 -> :sswitch_d8
        0x42 -> :sswitch_69
        0x44 -> :sswitch_b0
        0x46 -> :sswitch_ec
        0x47 -> :sswitch_113
        0x4a -> :sswitch_13a
        0x4c -> :sswitch_188
        0x4f -> :sswitch_161
        0xc0 -> :sswitch_23
        0xc3 -> :sswitch_7c
        0xc4 -> :sswitch_c4
    .end sparse-switch
.end method
