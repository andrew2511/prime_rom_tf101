.class final Lcom/skyhookwireless/_sdkb;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final _sdka:Lcom/skyhookwireless/_sdkrc;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x40

    const/16 v12, 0x1a

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "6\u0011|)%/\u0017m``/\u0019x,`%"

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

    move v7, v11

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

    const-string v1, " \u0016~2j(\u001c4.`5Vm)c(VM\tC\u0008\'I\u0014D\u0015=E\u0003M\u00006]\u0005A"

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

    move v7, v11

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

    const-string v2, "2\u001b{.%3\u001di5i5\u000b:$l%\u0016=4%\"\u0017t4d(\u0016:4m$Xy/k/\u001dy4`%X[\u0010)a\u0019~$l/\u001f:)q"

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

    move v8, v11

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

    const-string v2, "6\u0011|)%%\u0011i!g-\u001d~`a4\ns.ba\u000by!k"

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

    move v8, v11

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

    const-string v2, "-\u0019n%v5Xi#d/Xh%v4\u0014n3% \n\u007f``,\u0008n9"

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

    move v8, v11

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

    const-string v1, "6\u0011|)%/\u0017m`a(\u000b{\"i$\u001c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_24

    move v3, v9

    :cond_a
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_f
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_5

    move v7, v11

    :goto_10
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_b

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_f

    :cond_b
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_11
    if-gt v2, v3, :cond_a

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x6

    const-string v2, "2\u001b{.%\"\u0017w0i$\u000c\u007f`r(\u000cr`"

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

    move v8, v11

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

    const-string v2, "2\u001b{.k$\u001c:!u2B:"

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

    move v8, v11

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

    const-string v2, " \u0016~2j(\u001c4.`5Vm)c(VI\u0003D\u000f\'H\u0005V\u00144N\u0013"

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

    move v8, v11

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

    const-string v2, "&\u0017n`p/\u001db0`\"\u000c\u007f$%(\u0016n%k5B:"

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

    move v8, v11

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

    const-string v2, "6\u0011|)%2\u000c{4`a\u001br!k&\u001d~z"

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

    move v8, v11

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

    const-string v2, "&\u0017n``7\u001dt4%6\u0010s,`a\u001bv/v$\u001c"

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

    move v8, v11

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

    const-string v2, "$\nh/wa\u0011t`r(\u001es`g3\u0017{$f \u000bn`w$\u001b\u007f)s$\n"

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

    move v8, v11

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

    const-string v2, "a9J3"

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

    move v8, v11

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

    sput-object v0, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v7, 0x41

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x78

    goto/16 :goto_1

    :pswitch_2
    move v7, v12

    goto/16 :goto_1

    :pswitch_3
    move v7, v13

    goto/16 :goto_1

    :pswitch_4
    const/16 v7, 0x41

    goto/16 :goto_4

    :pswitch_5
    const/16 v7, 0x78

    goto/16 :goto_4

    :pswitch_6
    move v7, v12

    goto/16 :goto_4

    :pswitch_7
    move v7, v13

    goto/16 :goto_4

    :pswitch_8
    const/16 v8, 0x41

    goto/16 :goto_7

    :pswitch_9
    const/16 v8, 0x78

    goto/16 :goto_7

    :pswitch_a
    move v8, v12

    goto/16 :goto_7

    :pswitch_b
    move v8, v13

    goto/16 :goto_7

    :pswitch_c
    const/16 v8, 0x41

    goto/16 :goto_a

    :pswitch_d
    const/16 v8, 0x78

    goto/16 :goto_a

    :pswitch_e
    move v8, v12

    goto/16 :goto_a

    :pswitch_f
    move v8, v13

    goto/16 :goto_a

    :pswitch_10
    const/16 v8, 0x41

    goto/16 :goto_d

    :pswitch_11
    const/16 v8, 0x78

    goto/16 :goto_d

    :pswitch_12
    move v8, v12

    goto/16 :goto_d

    :pswitch_13
    move v8, v13

    goto/16 :goto_d

    :pswitch_14
    const/16 v7, 0x41

    goto/16 :goto_10

    :pswitch_15
    const/16 v7, 0x78

    goto/16 :goto_10

    :pswitch_16
    move v7, v12

    goto/16 :goto_10

    :pswitch_17
    move v7, v13

    goto/16 :goto_10

    :pswitch_18
    const/16 v8, 0x41

    goto/16 :goto_13

    :pswitch_19
    const/16 v8, 0x78

    goto/16 :goto_13

    :pswitch_1a
    move v8, v12

    goto/16 :goto_13

    :pswitch_1b
    move v8, v13

    goto/16 :goto_13

    :pswitch_1c
    const/16 v8, 0x41

    goto/16 :goto_16

    :pswitch_1d
    const/16 v8, 0x78

    goto/16 :goto_16

    :pswitch_1e
    move v8, v12

    goto/16 :goto_16

    :pswitch_1f
    move v8, v13

    goto/16 :goto_16

    :pswitch_20
    const/16 v8, 0x41

    goto/16 :goto_19

    :pswitch_21
    const/16 v8, 0x78

    goto/16 :goto_19

    :pswitch_22
    move v8, v12

    goto/16 :goto_19

    :pswitch_23
    move v8, v13

    goto/16 :goto_19

    :pswitch_24
    const/16 v8, 0x41

    goto/16 :goto_1c

    :pswitch_25
    const/16 v8, 0x78

    goto/16 :goto_1c

    :pswitch_26
    move v8, v12

    goto/16 :goto_1c

    :pswitch_27
    move v8, v13

    goto/16 :goto_1c

    :pswitch_28
    const/16 v8, 0x41

    goto/16 :goto_1f

    :pswitch_29
    const/16 v8, 0x78

    goto/16 :goto_1f

    :pswitch_2a
    move v8, v12

    goto/16 :goto_1f

    :pswitch_2b
    move v8, v13

    goto/16 :goto_1f

    :pswitch_2c
    const/16 v8, 0x41

    goto/16 :goto_22

    :pswitch_2d
    const/16 v8, 0x78

    goto/16 :goto_22

    :pswitch_2e
    move v8, v12

    goto/16 :goto_22

    :pswitch_2f
    move v8, v13

    goto/16 :goto_22

    :pswitch_30
    const/16 v8, 0x41

    goto/16 :goto_25

    :pswitch_31
    const/16 v8, 0x78

    goto/16 :goto_25

    :pswitch_32
    move v8, v12

    goto/16 :goto_25

    :pswitch_33
    move v8, v13

    goto/16 :goto_25

    :pswitch_34
    const/16 v8, 0x41

    goto/16 :goto_28

    :pswitch_35
    const/16 v8, 0x78

    goto/16 :goto_28

    :pswitch_36
    move v8, v12

    goto/16 :goto_28

    :pswitch_37
    move v8, v13

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
    move v3, v9

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

.method private constructor <init>(Lcom/skyhookwireless/_sdkrc;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/skyhookwireless/_sdkrc;Lcom/skyhookwireless/_sdkac;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/skyhookwireless/_sdkb;-><init>(Lcom/skyhookwireless/_sdkrc;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v3, 0x0

    const/4 v8, 0x1

    sget v6, Lcom/skyhookwireless/_sdkyb;->_sdkc:I

    :try_start_0
    iget-object v7, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkrc;->_sdkc()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    monitor-exit v7

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdkc(Lcom/skyhookwireless/_sdkrc;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkrc;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;Z)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v4

    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    iget-object v5, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v5}, Lcom/skyhookwireless/_sdkrc;->_sdkd(Lcom/skyhookwireless/_sdkrc;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;Ljava/util/List;JLcom/skyhookwireless/_sdkub;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdkc(Lcom/skyhookwireless/_sdkrc;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;Landroid/net/wifi/WifiInfo;JLcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdkzb;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    iget-object v2, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkrc;->_sdkd(Lcom/skyhookwireless/_sdkrc;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;Ljava/util/List;Lcom/skyhookwireless/_sdkzb;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkrc;->_sdkd(Lcom/skyhookwireless/_sdkrc;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkrc;->_sdkd(Lcom/skyhookwireless/_sdkrc;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdke(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkbc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkbc;->_sdkc()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdke(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkbc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkbc;->_sdkb()V

    :cond_7
    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdkub;

    if-eqz v6, :cond_f

    move v0, v8

    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkrc;->_sdkc(Lcom/skyhookwireless/_sdkrc;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v2}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_8
    if-ne v1, v9, :cond_9

    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    sget-object v2, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v6, :cond_e

    move v0, v8

    :cond_9
    if-ne v1, v8, :cond_b

    iget-object v1, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkrc;->_sdkf(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkub;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdkub;

    if-eqz v6, :cond_e

    move v0, v8

    :cond_a
    iget-object v1, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_b
    :goto_2
    if-eqz v6, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/_sdkb;->z:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    :cond_d
    :goto_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    :try_start_4
    iget-object v0, p0, Lcom/skyhookwireless/_sdkb;->_sdka:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdkg(Lcom/skyhookwireless/_sdkrc;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_e
    move v0, v8

    goto :goto_2

    :cond_f
    move v0, v8

    goto :goto_3

    :cond_10
    move v0, v3

    goto/16 :goto_1
.end method
