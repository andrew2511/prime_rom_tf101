.class Lcom/skyhookwireless/_sdkbc;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private _sdka:Landroid/net/wifi/WifiManager$WifiLock;

.field final _sdkb:Lcom/skyhookwireless/_sdkrc;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x3a

    const/16 v12, 0x30

    const/16 v11, 0x27

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "YH \\$T\u0000!\u00101OB\'I`VH6[`IS4D5I\t"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_20

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

    const/16 v7, 0x40

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

    const-string v1, "[D$E)HB1\u00107SA<\u0010,UD>"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_1f

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

    const/16 v7, 0x40

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

    const-string v2, "YH \\$T\u0000!\u0010!YV Y2_\u00079_#Q\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1e

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

    const/16 v8, 0x40

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

    const-string v2, "YH \\$T\u0000!\u00102_K0Q3_\u00079_#Q\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1d

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

    const/16 v8, 0x40

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

    const-string v2, "HB9U!IB1\u00107SA<\u0010,UD>"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1c

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

    const/16 v8, 0x40

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

    const-string v2, "YU0Q4_CuG)\\Nu\\/YL"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1b

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

    const/16 v8, 0x40

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

    const-string v2, "YH \\$T\u0000!\u0010)TQ:[%\u001aP<V)\u001aK:S+\u001aP<D(\u001ap\u001cv\tej\u001at\u0005et\u0016q\u000eeh\u001b|\u0019"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1a

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

    const/16 v8, 0x40

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

    const-string v2, "YH \\$T\u0000!\u0010#HB4D%\u001aFuG)\\Nu\\/YL"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_19

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

    const/16 v8, 0x40

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

    const-string v2, "YU0Q4_Cug\t|n\n}\u000f~b\nc\u0003{i\n\u007f\u000ev~uG)\\Nu\\/YL"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_18

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

    const/16 v8, 0x40

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

    const-string v2, "iL,X/ULuh\u0010i\u0007\u0002Y&S\u0007\u0019_#Q"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_17

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

    const/16 v8, 0x40

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

    const-string v2, "YU0Q4_p<V)vH6["

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_16

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

    const/16 v8, 0x40

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

    sput-object v0, Lcom/skyhookwireless/_sdkbc;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v13

    goto/16 :goto_1

    :pswitch_1
    move v7, v11

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x55

    goto/16 :goto_1

    :pswitch_3
    move v7, v12

    goto/16 :goto_1

    :pswitch_4
    move v7, v13

    goto/16 :goto_4

    :pswitch_5
    move v7, v11

    goto/16 :goto_4

    :pswitch_6
    const/16 v7, 0x55

    goto/16 :goto_4

    :pswitch_7
    move v7, v12

    goto/16 :goto_4

    :pswitch_8
    move v8, v13

    goto/16 :goto_7

    :pswitch_9
    move v8, v11

    goto/16 :goto_7

    :pswitch_a
    const/16 v8, 0x55

    goto/16 :goto_7

    :pswitch_b
    move v8, v12

    goto/16 :goto_7

    :pswitch_c
    move v8, v13

    goto/16 :goto_a

    :pswitch_d
    move v8, v11

    goto/16 :goto_a

    :pswitch_e
    const/16 v8, 0x55

    goto/16 :goto_a

    :pswitch_f
    move v8, v12

    goto/16 :goto_a

    :pswitch_10
    move v8, v13

    goto/16 :goto_d

    :pswitch_11
    move v8, v11

    goto/16 :goto_d

    :pswitch_12
    const/16 v8, 0x55

    goto/16 :goto_d

    :pswitch_13
    move v8, v12

    goto/16 :goto_d

    :pswitch_14
    move v8, v13

    goto/16 :goto_10

    :pswitch_15
    move v8, v11

    goto/16 :goto_10

    :pswitch_16
    const/16 v8, 0x55

    goto/16 :goto_10

    :pswitch_17
    move v8, v12

    goto/16 :goto_10

    :pswitch_18
    move v8, v13

    goto/16 :goto_13

    :pswitch_19
    move v8, v11

    goto/16 :goto_13

    :pswitch_1a
    const/16 v8, 0x55

    goto/16 :goto_13

    :pswitch_1b
    move v8, v12

    goto/16 :goto_13

    :pswitch_1c
    move v8, v13

    goto/16 :goto_16

    :pswitch_1d
    move v8, v11

    goto/16 :goto_16

    :pswitch_1e
    const/16 v8, 0x55

    goto/16 :goto_16

    :pswitch_1f
    move v8, v12

    goto/16 :goto_16

    :pswitch_20
    move v8, v13

    goto/16 :goto_19

    :pswitch_21
    move v8, v11

    goto/16 :goto_19

    :pswitch_22
    const/16 v8, 0x55

    goto/16 :goto_19

    :pswitch_23
    move v8, v12

    goto/16 :goto_19

    :pswitch_24
    move v8, v13

    goto/16 :goto_1c

    :pswitch_25
    move v8, v11

    goto/16 :goto_1c

    :pswitch_26
    const/16 v8, 0x55

    goto/16 :goto_1c

    :pswitch_27
    move v8, v12

    goto/16 :goto_1c

    :pswitch_28
    move v8, v13

    goto/16 :goto_1f

    :pswitch_29
    move v8, v11

    goto/16 :goto_1f

    :pswitch_2a
    const/16 v8, 0x55

    goto/16 :goto_1f

    :pswitch_2b
    move v8, v12

    goto/16 :goto_1f

    :cond_16
    move v4, v9

    goto/16 :goto_20

    :cond_17
    move v4, v9

    goto/16 :goto_1d

    :cond_18
    move v4, v9

    goto/16 :goto_1a

    :cond_19
    move v4, v9

    goto/16 :goto_17

    :cond_1a
    move v4, v9

    goto/16 :goto_14

    :cond_1b
    move v4, v9

    goto/16 :goto_11

    :cond_1c
    move v4, v9

    goto/16 :goto_e

    :cond_1d
    move v4, v9

    goto/16 :goto_b

    :cond_1e
    move v4, v9

    goto/16 :goto_8

    :cond_1f
    move v3, v9

    goto/16 :goto_5

    :cond_20
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
.end method

.method constructor <init>(Lcom/skyhookwireless/_sdkrc;Landroid/net/wifi/WifiManager;)V
    .locals 5

    iput-object p1, p0, Lcom/skyhookwireless/_sdkbc;->_sdkb:Lcom/skyhookwireless/_sdkrc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-class v0, Landroid/net/wifi/WifiManager;

    sget-object v1, Lcom/skyhookwireless/_sdkbc;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/skyhookwireless/_sdkbc;->z:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager$WifiLock;

    iput-object v0, p0, Lcom/skyhookwireless/_sdkbc;->_sdka:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-static {p1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkbc;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkbc;->_sdka:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkbc;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget-object v0, Lcom/skyhookwireless/_sdkbc;->z:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkbc;->_sdka:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-static {p1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkbc;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {p1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkbc;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkbc;->_sdka:Landroid/net/wifi/WifiManager$WifiLock;

    goto :goto_1
.end method


# virtual methods
.method public _sdka()V
    .locals 4

    iget-object v0, p0, Lcom/skyhookwireless/_sdkbc;->_sdka:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkbc;->_sdka:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkbc;->_sdkb:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkbc;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkbc;->_sdkb:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkbc;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public _sdkb()V
    .locals 4

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkbc;->_sdkc()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkbc;->_sdka:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkbc;->_sdkb:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkbc;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkbc;->_sdkb:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkbc;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public _sdkc()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkbc;->_sdka:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkbc;->_sdka:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkbc;->_sdkb:Lcom/skyhookwireless/_sdkrc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkbc;->z:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v0, v3

    goto :goto_0
.end method
