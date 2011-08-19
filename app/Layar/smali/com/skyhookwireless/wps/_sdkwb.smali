.class final Lcom/skyhookwireless/wps/_sdkwb;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkb:J

.field private final _sdkc:Lcom/skyhookwireless/wps/_sdkx;

.field private final _sdkd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/skyhookwireless/wps/_sdkz;",
            "Lcom/skyhookwireless/wps/_sdkxb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x57

    const/16 v12, 0x54

    const/16 v11, 0x29

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\\996\u001cLw,;PM241\u0004Lw>=\u001cLmx"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_29

    move v3, v9

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

    const/16 v7, 0x70

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

    aput-object v1, v0, v9

    const-string v1, "M241\u0004Lw,=\u001cLw"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_28

    move v3, v9

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

    const/16 v7, 0x70

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

    aput-object v1, v0, v10

    const/4 v1, 0x2

    const-string v2, "[25;\u0006@9?t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_27

    move v4, v9

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

    const/16 v8, 0x70

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

    const-string v2, "[25;\u0006@9?t\u0004@;=t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_26

    move v4, v9

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

    const/16 v8, 0x70

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

    const-string v2, "\t1*;\u001d\t478\u001cL4,=\u001fG"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_25

    move v4, v9

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

    const/16 v8, 0x70

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

    const-string v2, "\t>+t\u0002L\'45\u0013L3x6\t\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_24

    move v4, v9

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

    const/16 v8, 0x70

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

    const-string v2, "H#,1\u001dY#=0P]8x5\u0014Mw,=\u001cLw/<\u0019J?x=\u0003\t64&\u0015H3!t\u001cF6<1\u0014"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_23

    move v4, v9

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

    const/16 v8, 0x70

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

    const-string v2, "\t>+t\u001fE3=&P]?9:PL/1\'\u0004@9?t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_22

    move v4, v9

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

    const/16 v8, 0x70

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

    const-string v2, "H3<=\u001eNw,=\u001cLw"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_21

    move v4, v9

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

    const/16 v8, 0x70

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

    const-string v2, "]>41P"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_20

    move v4, v9

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

    const/16 v8, 0x70

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

    const-string v2, "\t#7t\u0013F;41\u0013]>7:"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1f

    move v4, v9

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

    const/16 v8, 0x70

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

    const-string v2, "\u0005w<1\u001cL#1:\u0017\t#01PO>41^\u0007y"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1e

    move v4, v9

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

    const/16 v8, 0x70

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

    const-string v2, "]?=t\u0003@-=t\u001fOw,<\u0015\t#18\u0015Zw=,\u0013L2<1\u0014\t&-;\u0004H{x$\u001fY\'1:\u0017\t#01Pe\u0005\rt\u0004@;=z^\u0007"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1d

    move v4, v9

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

    const/16 v8, 0x70

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

    const/16 v1, 0xd

    const-string v2, "O618\u0015Mw,;PF\'=:P"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1c

    move v4, v9

    :cond_1a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_27
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_d

    const/16 v8, 0x70

    :goto_28
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_1b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_27

    :cond_1b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_29
    if-gt v3, v4, :cond_1a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v11

    goto/16 :goto_1

    :pswitch_1
    move v7, v13

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x58

    goto/16 :goto_1

    :pswitch_3
    move v7, v12

    goto/16 :goto_1

    :pswitch_4
    move v7, v11

    goto/16 :goto_4

    :pswitch_5
    move v7, v13

    goto/16 :goto_4

    :pswitch_6
    const/16 v7, 0x58

    goto/16 :goto_4

    :pswitch_7
    move v7, v12

    goto/16 :goto_4

    :pswitch_8
    move v8, v11

    goto/16 :goto_7

    :pswitch_9
    move v8, v13

    goto/16 :goto_7

    :pswitch_a
    const/16 v8, 0x58

    goto/16 :goto_7

    :pswitch_b
    move v8, v12

    goto/16 :goto_7

    :pswitch_c
    move v8, v11

    goto/16 :goto_a

    :pswitch_d
    move v8, v13

    goto/16 :goto_a

    :pswitch_e
    const/16 v8, 0x58

    goto/16 :goto_a

    :pswitch_f
    move v8, v12

    goto/16 :goto_a

    :pswitch_10
    move v8, v11

    goto/16 :goto_d

    :pswitch_11
    move v8, v13

    goto/16 :goto_d

    :pswitch_12
    const/16 v8, 0x58

    goto/16 :goto_d

    :pswitch_13
    move v8, v12

    goto/16 :goto_d

    :pswitch_14
    move v8, v11

    goto/16 :goto_10

    :pswitch_15
    move v8, v13

    goto/16 :goto_10

    :pswitch_16
    const/16 v8, 0x58

    goto/16 :goto_10

    :pswitch_17
    move v8, v12

    goto/16 :goto_10

    :pswitch_18
    move v8, v11

    goto/16 :goto_13

    :pswitch_19
    move v8, v13

    goto/16 :goto_13

    :pswitch_1a
    const/16 v8, 0x58

    goto/16 :goto_13

    :pswitch_1b
    move v8, v12

    goto/16 :goto_13

    :pswitch_1c
    move v8, v11

    goto/16 :goto_16

    :pswitch_1d
    move v8, v13

    goto/16 :goto_16

    :pswitch_1e
    const/16 v8, 0x58

    goto/16 :goto_16

    :pswitch_1f
    move v8, v12

    goto/16 :goto_16

    :pswitch_20
    move v8, v11

    goto/16 :goto_19

    :pswitch_21
    move v8, v13

    goto/16 :goto_19

    :pswitch_22
    const/16 v8, 0x58

    goto/16 :goto_19

    :pswitch_23
    move v8, v12

    goto/16 :goto_19

    :pswitch_24
    move v8, v11

    goto/16 :goto_1c

    :pswitch_25
    move v8, v13

    goto/16 :goto_1c

    :pswitch_26
    const/16 v8, 0x58

    goto/16 :goto_1c

    :pswitch_27
    move v8, v12

    goto/16 :goto_1c

    :pswitch_28
    move v8, v11

    goto/16 :goto_1f

    :pswitch_29
    move v8, v13

    goto/16 :goto_1f

    :pswitch_2a
    const/16 v8, 0x58

    goto/16 :goto_1f

    :pswitch_2b
    move v8, v12

    goto/16 :goto_1f

    :pswitch_2c
    move v8, v11

    goto/16 :goto_22

    :pswitch_2d
    move v8, v13

    goto/16 :goto_22

    :pswitch_2e
    const/16 v8, 0x58

    goto/16 :goto_22

    :pswitch_2f
    move v8, v12

    goto/16 :goto_22

    :pswitch_30
    move v8, v11

    goto/16 :goto_25

    :pswitch_31
    move v8, v13

    goto/16 :goto_25

    :pswitch_32
    const/16 v8, 0x58

    goto/16 :goto_25

    :pswitch_33
    move v8, v12

    goto/16 :goto_25

    :pswitch_34
    move v8, v11

    goto/16 :goto_28

    :pswitch_35
    move v8, v13

    goto/16 :goto_28

    :pswitch_36
    const/16 v8, 0x58

    goto/16 :goto_28

    :pswitch_37
    move v8, v12

    goto/16 :goto_28

    :cond_1c
    move v4, v9

    goto/16 :goto_29

    :cond_1d
    move v4, v9

    goto/16 :goto_26

    :cond_1e
    move v4, v9

    goto/16 :goto_23

    :cond_1f
    move v4, v9

    goto/16 :goto_20

    :cond_20
    move v4, v9

    goto/16 :goto_1d

    :cond_21
    move v4, v9

    goto/16 :goto_1a

    :cond_22
    move v4, v9

    goto/16 :goto_17

    :cond_23
    move v4, v9

    goto/16 :goto_14

    :cond_24
    move v4, v9

    goto/16 :goto_11

    :cond_25
    move v4, v9

    goto/16 :goto_e

    :cond_26
    move v4, v9

    goto/16 :goto_b

    :cond_27
    move v4, v9

    goto/16 :goto_8

    :cond_28
    move v3, v9

    goto/16 :goto_5

    :cond_29
    move v3, v9

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

.method constructor <init>(Lcom/skyhookwireless/wps/WPSAuthentication;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/skyhookwireless/wps/_sdkwb;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    iput-wide p2, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkb:J

    new-instance v0, Lcom/skyhookwireless/wps/_sdkx;

    invoke-direct {v0, p1}, Lcom/skyhookwireless/wps/_sdkx;-><init>(Lcom/skyhookwireless/wps/WPSAuthentication;)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkc:Lcom/skyhookwireless/wps/_sdkx;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkd:Ljava/util/Map;

    return-void
.end method

.method private _sdka()J
    .locals 6

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkfc;->_sdke:Z

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkd:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/io/File;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkxb;

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkd()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v1, v4

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    :cond_1
    move-wide v0, v1

    return-wide v0
.end method

.method private _sdka(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/skyhookwireless/wps/_sdkz;",
            "Lcom/skyhookwireless/wps/_sdkxb;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkxb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkxb;->_sdka()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkxb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkc:Lcom/skyhookwireless/wps/_sdkx;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkz;

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/wps/_sdkx;->_sdka(Lcom/skyhookwireless/wps/_sdkz;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkxb;

    invoke-direct {p0, v0}, Lcom/skyhookwireless/wps/_sdkwb;->_sdkc(Lcom/skyhookwireless/wps/_sdkxb;)V

    return-void
.end method

.method private _sdkb()V
    .locals 6

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkc:Lcom/skyhookwireless/wps/_sdkx;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkx;->_sdka()Lcom/skyhookwireless/wps/_sdkz;

    move-result-object v1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkd:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkxb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkd()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkd:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private _sdkc(Lcom/skyhookwireless/wps/_sdkxb;)V
    .locals 5

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkd()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized _sdka(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkcb;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkfc;->_sdke:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdkzb;

    iget-object v6, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkc:Lcom/skyhookwireless/wps/_sdkx;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkzb;->_sdka()Lcom/skyhookwireless/_sdkyb;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/skyhookwireless/wps/_sdkx;->_sdka(Lcom/skyhookwireless/_sdkyb;)Lcom/skyhookwireless/_sdked;

    move-result-object v6

    if-nez v1, :cond_4

    if-eqz v6, :cond_3

    iget-object v0, v6, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    iget-object v7, v6, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v4, :cond_3

    iget-object v0, v6, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    check-cast v0, Lcom/skyhookwireless/wps/_sdkz;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v9, v4

    move-object v4, v0

    move v0, v9

    :goto_1
    if-eqz v1, :cond_6

    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkd:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    check-cast v0, Lcom/skyhookwireless/wps/_sdkxb;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkxb;->_sdka()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_4
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, ""

    goto :goto_4

    :cond_2
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v4

    move-object v4, v5

    goto :goto_1

    :cond_4
    move-object v0, v6

    goto :goto_3

    :cond_5
    move-object v0, v5

    goto :goto_2

    :cond_6
    move-object v5, v4

    move v4, v0

    goto :goto_0
.end method

.method declared-synchronized _sdka(Lcom/skyhookwireless/wps/_sdkxb;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/skyhookwireless/wps/_sdkfc;->_sdke:Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/skyhookwireless/wps/_sdkxb;

    invoke-virtual {v1, p1}, Lcom/skyhookwireless/wps/_sdkxb;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v2, :cond_b

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdka(Lcom/skyhookwireless/wps/_sdkxb;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb()I

    move-result v4

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb()I

    move-result v5

    if-gt v4, v5, :cond_4

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdka()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdka()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v0}, Lcom/skyhookwireless/wps/_sdkwb;->_sdka(Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    if-eqz v2, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdka()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdka()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/_sdkwb;->_sdkc(Lcom/skyhookwireless/wps/_sdkxb;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    if-eqz v2, :cond_0

    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdka()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkd()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkc:Lcom/skyhookwireless/wps/_sdkx;

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/wps/_sdkx;->_sdka(Ljava/lang/String;)Lcom/skyhookwireless/wps/_sdkz;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkd:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkwb;->_sdka()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkb:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkwb;->z:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkwb;->_sdkb()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_a

    goto/16 :goto_0

    :cond_b
    move v0, v4

    goto/16 :goto_1
.end method

.method declared-synchronized _sdkb(Lcom/skyhookwireless/wps/_sdkxb;)Lcom/skyhookwireless/wps/_sdkxb;
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkfc;->_sdke:Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkwb;->_sdkd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkxb;

    invoke-virtual {p1, v0}, Lcom/skyhookwireless/wps/_sdkxb;->_sdka(Lcom/skyhookwireless/wps/_sdkxb;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
