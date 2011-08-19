.class Lcom/skyhookwireless/_sdkpb;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lorg/apache/http/conn/ssl/SSLSocketFactory;

.field private _sdkb:Ljava/lang/Thread;

.field private _sdkc:Lcom/skyhookwireless/_sdkrb;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x6b

    const/16 v12, 0xd

    const/4 v11, 0x0

    const/16 v10, 0xe

    const/4 v9, 0x1

    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "\u0008sklz\u0002oi-b\nxk\u007fk\u000f!}bm\u0000dz"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_29

    move v3, v11

    :cond_0
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_0
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_0

    move v7, v10

    :goto_1
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_1

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_0

    :cond_1
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_2
    if-gt v2, v3, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "\u0008n`ck\u0008u]bm\u0000dz%\'Q!mlm\u0003dj-m\u0004o`hm\u001fhac.\u0005nz-h\u0004s.yf\u000e!|di\u0003u.ea\u0018u.b|Kqa\u007fz"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_28

    move v3, v11

    :cond_2
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_3
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_1

    move v7, v10

    :goto_4
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_3

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_3

    :cond_3
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_5
    if-gt v2, v3, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x2

    const-string v2, "\u0008n`ck\u0008u]bm\u0000dz%\'Q!|hz\u001es`d`\u000c!`hyKbac`\u000ebzhjKrane\u000eu"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_27

    move v4, v11

    :cond_4
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_6
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2

    move v8, v10

    :goto_7
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_5

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_6

    :cond_5
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_8
    if-gt v3, v4, :cond_4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0008n`ck\u0008u]bm\u0000dz%\'Q!}bm\u0000!~l|\nlkyk\u0019!jbk\u0018o)y.\u0006`znfKbonf\u000ee.~a\u0008jky"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_26

    move v4, v11

    :cond_6
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_9
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_3

    move v8, v10

    :goto_a
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_7

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_9

    :cond_7
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_b
    if-gt v3, v4, :cond_6

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0008n`ck\u0008u]bm\u0000dz%\'Q!|hz\u001es`d`\u000c!mlm\u0003dj-m\u0004o`hm\u001fhac"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_25

    move v4, v11

    :cond_8
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_c
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_4

    move v8, v10

    :goto_d
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_9

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_c

    :cond_9
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_e
    if-gt v3, v4, :cond_8

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u001bskna\u0005oknzK`b\u007fk\new-g\u0005!~\u007fa\u000csk~}"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_24

    move v4, v11

    :cond_a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_f
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_5

    move v8, v10

    :goto_10
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_f

    :cond_b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_11
    if-gt v3, v4, :cond_a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0008sklz\u000eRane\u000eu&$4Ksky{\u0019ogciKokz.\u0018nmfk\u001f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_23

    move v4, v11

    :cond_c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_12
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_6

    move v8, v10

    :goto_13
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_12

    :cond_d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_14
    if-gt v3, v4, :cond_c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0008sklz\u000eRane\u000eu&$4Koa-m\nbfhjKrane\u000eu"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_22

    move v4, v11

    :cond_e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_15
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_7

    move v8, v10

    :goto_16
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_15

    :cond_f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_17
    if-gt v3, v4, :cond_e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0008sklz\u000eRane\u000eu&$4Ksky{\u0019ogciKbonf\u000ee.na\u0005oknz\u0002n`"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_21

    move v4, v11

    :cond_10
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_18
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_8

    move v8, v10

    :goto_19
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_11

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_18

    :cond_11
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_1a
    if-gt v3, v4, :cond_10

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0008sklz\u000eRane\u000eu&$4Kbonf\u000ee.~a\u0008jky.\nm|ho\u000fx.na\u0005r{`k\u000f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_20

    move v4, v11

    :cond_12
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_1b
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_9

    move v8, v10

    :goto_1c
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_13

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_1b

    :cond_13
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_1d
    if-gt v3, v4, :cond_12

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u0008mkl`\u001eq&$"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_1f

    move v4, v11

    :cond_14
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_1e
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_a

    move v8, v10

    :goto_1f
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_15

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_1e

    :cond_15
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_20
    if-gt v3, v4, :cond_14

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u0002ozh|\u0019t~yk\u000f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_1e

    move v4, v11

    :cond_16
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_21
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_b

    move v8, v10

    :goto_22
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_17

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_21

    :cond_17
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_23
    if-gt v3, v4, :cond_16

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u0008nc}b\u000eukNa\u0005oknz\u0002n`%\'Kr{nm\u000er}k{\u0007"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_1d

    move v4, v11

    :cond_18
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_24
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_c

    move v8, v10

    :goto_25
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_19

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_24

    :cond_19
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_26
    if-gt v3, v4, :cond_18

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "\tmane\u0002oi-a\u0005!~h`\u000fh`j.\u0008n`ck\u0008ugb`"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_1c

    move v3, v11

    :cond_1a
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_27
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_d

    move v7, v10

    :goto_28
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_1b

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_27

    :cond_1b
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_29
    if-gt v2, v3, :cond_1a

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    sput-object v0, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v13

    goto/16 :goto_1

    :pswitch_1
    move v7, v9

    goto/16 :goto_1

    :pswitch_2
    move v7, v10

    goto/16 :goto_1

    :pswitch_3
    move v7, v12

    goto/16 :goto_1

    :pswitch_4
    move v7, v13

    goto/16 :goto_4

    :pswitch_5
    move v7, v9

    goto/16 :goto_4

    :pswitch_6
    move v7, v10

    goto/16 :goto_4

    :pswitch_7
    move v7, v12

    goto/16 :goto_4

    :pswitch_8
    move v8, v13

    goto/16 :goto_7

    :pswitch_9
    move v8, v9

    goto/16 :goto_7

    :pswitch_a
    move v8, v10

    goto/16 :goto_7

    :pswitch_b
    move v8, v12

    goto/16 :goto_7

    :pswitch_c
    move v8, v13

    goto/16 :goto_a

    :pswitch_d
    move v8, v9

    goto/16 :goto_a

    :pswitch_e
    move v8, v10

    goto/16 :goto_a

    :pswitch_f
    move v8, v12

    goto/16 :goto_a

    :pswitch_10
    move v8, v13

    goto/16 :goto_d

    :pswitch_11
    move v8, v9

    goto/16 :goto_d

    :pswitch_12
    move v8, v10

    goto/16 :goto_d

    :pswitch_13
    move v8, v12

    goto/16 :goto_d

    :pswitch_14
    move v8, v13

    goto/16 :goto_10

    :pswitch_15
    move v8, v9

    goto/16 :goto_10

    :pswitch_16
    move v8, v10

    goto/16 :goto_10

    :pswitch_17
    move v8, v12

    goto/16 :goto_10

    :pswitch_18
    move v8, v13

    goto/16 :goto_13

    :pswitch_19
    move v8, v9

    goto/16 :goto_13

    :pswitch_1a
    move v8, v10

    goto/16 :goto_13

    :pswitch_1b
    move v8, v12

    goto/16 :goto_13

    :pswitch_1c
    move v8, v13

    goto/16 :goto_16

    :pswitch_1d
    move v8, v9

    goto/16 :goto_16

    :pswitch_1e
    move v8, v10

    goto/16 :goto_16

    :pswitch_1f
    move v8, v12

    goto/16 :goto_16

    :pswitch_20
    move v8, v13

    goto/16 :goto_19

    :pswitch_21
    move v8, v9

    goto/16 :goto_19

    :pswitch_22
    move v8, v10

    goto/16 :goto_19

    :pswitch_23
    move v8, v12

    goto/16 :goto_19

    :pswitch_24
    move v8, v13

    goto/16 :goto_1c

    :pswitch_25
    move v8, v9

    goto/16 :goto_1c

    :pswitch_26
    move v8, v10

    goto/16 :goto_1c

    :pswitch_27
    move v8, v12

    goto/16 :goto_1c

    :pswitch_28
    move v8, v13

    goto/16 :goto_1f

    :pswitch_29
    move v8, v9

    goto/16 :goto_1f

    :pswitch_2a
    move v8, v10

    goto/16 :goto_1f

    :pswitch_2b
    move v8, v12

    goto/16 :goto_1f

    :pswitch_2c
    move v8, v13

    goto/16 :goto_22

    :pswitch_2d
    move v8, v9

    goto/16 :goto_22

    :pswitch_2e
    move v8, v10

    goto/16 :goto_22

    :pswitch_2f
    move v8, v12

    goto/16 :goto_22

    :pswitch_30
    move v8, v13

    goto/16 :goto_25

    :pswitch_31
    move v8, v9

    goto/16 :goto_25

    :pswitch_32
    move v8, v10

    goto/16 :goto_25

    :pswitch_33
    move v8, v12

    goto/16 :goto_25

    :pswitch_34
    move v7, v13

    goto/16 :goto_28

    :pswitch_35
    move v7, v9

    goto/16 :goto_28

    :pswitch_36
    move v7, v10

    goto/16 :goto_28

    :pswitch_37
    move v7, v12

    goto/16 :goto_28

    :cond_1c
    move v3, v11

    goto/16 :goto_29

    :cond_1d
    move v4, v11

    goto/16 :goto_26

    :cond_1e
    move v4, v11

    goto/16 :goto_23

    :cond_1f
    move v4, v11

    goto/16 :goto_20

    :cond_20
    move v4, v11

    goto/16 :goto_1d

    :cond_21
    move v4, v11

    goto/16 :goto_1a

    :cond_22
    move v4, v11

    goto/16 :goto_17

    :cond_23
    move v4, v11

    goto/16 :goto_14

    :cond_24
    move v4, v11

    goto/16 :goto_11

    :cond_25
    move v4, v11

    goto/16 :goto_e

    :cond_26
    move v4, v11

    goto/16 :goto_b

    :cond_27
    move v4, v11

    goto/16 :goto_8

    :cond_28
    move v3, v11

    goto/16 :goto_5

    :cond_29
    move v3, v11

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
    .end packed-switch
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdka:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    return-void
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkpb;Lcom/skyhookwireless/_sdkrb;)Lcom/skyhookwireless/_sdkrb;
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;

    return-object p1
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkpb;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkpb;->_sdkb:Ljava/lang/Thread;

    return-object p1
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkpb;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdka:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    return-object v0
.end method

.method private _sdka()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/skyhookwireless/_sdkmb;->_sdke:I

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/skyhookwireless/_sdkpb;->_sdkb:Ljava/lang/Thread;

    if-nez v1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/skyhookwireless/_sdkpb;->_sdkb:Ljava/lang/Thread;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    :cond_1
    :try_start_1
    sget-object v4, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v5, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    const/16 v6, 0xd

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v7

    :goto_1
    move v4, v2

    :goto_2
    if-eqz v4, :cond_1

    if-nez v0, :cond_4

    if-eqz v3, :cond_2

    :try_start_2
    invoke-direct {p0}, Lcom/skyhookwireless/_sdkpb;->_sdkb()V

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    iput-object v8, p0, Lcom/skyhookwireless/_sdkpb;->_sdkb:Ljava/lang/Thread;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v3

    :try_start_4
    sget-object v4, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v5, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    const/16 v6, 0xb

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v3, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    iput-object v8, p0, Lcom/skyhookwireless/_sdkpb;->_sdkb:Ljava/lang/Thread;

    throw v0

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method private static _sdka(Lcom/skyhookwireless/_sdkrb;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrb;->_sdka:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrb;->_sdka:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized _sdkb()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkpb;->_sdka(Lcom/skyhookwireless/_sdkrb;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static _sdkb(Lcom/skyhookwireless/_sdkrb;)V
    .locals 0

    invoke-static {p0}, Lcom/skyhookwireless/_sdkpb;->_sdka(Lcom/skyhookwireless/_sdkrb;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized _sdka(Ljava/net/URL;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/skyhookwireless/_sdkpb;->_sdkb:Ljava/lang/Thread;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;

    if-eqz v2, :cond_2

    :cond_0
    sget-object v0, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->getDefaultPort()I

    move-result v1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/skyhookwireless/_sdkqb;

    invoke-direct {v2, p0, v0, v1}, Lcom/skyhookwireless/_sdkqb;-><init>(Lcom/skyhookwireless/_sdkpb;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdkb:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/apache/http/conn/ConnectTimeoutException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkpb;->_sdka()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkrb;->_sdka:Ljava/net/Socket;

    if-ne p1, v0, :cond_3

    :cond_0
    if-nez p4, :cond_1

    if-nez p5, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;

    iget v0, v0, Lcom/skyhookwireless/_sdkrb;->_sdkd:I

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkrb;->_sdkc:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkpb;->_sdkb()V

    sget v0, Lcom/skyhookwireless/_sdkmb;->_sdke:I

    if-eqz v0, :cond_4

    :cond_2
    sget-object v0, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkrb;->_sdka:Ljava/net/Socket;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_3
    sget-object v0, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdka:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lcom/skyhookwireless/_sdkmb;->_sdke:I

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkpb;->_sdka()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;

    if-nez v1, :cond_0

    sget-object v1, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;

    iget-boolean v1, v1, Lcom/skyhookwireless/_sdkrb;->_sdkb:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkrb;->_sdka:Ljava/net/Socket;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/skyhookwireless/_sdkrb;->_sdkb:Z

    iget-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdkc:Lcom/skyhookwireless/_sdkrb;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkrb;->_sdka:Ljava/net/Socket;

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdka:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/skyhookwireless/_sdkmb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkpb;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdka:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/_sdkpb;->_sdka:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method
