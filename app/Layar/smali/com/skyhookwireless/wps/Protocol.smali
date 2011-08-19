.class public abstract Lcom/skyhookwireless/wps/Protocol;
.super Ljava/lang/Object;


# static fields
.field static final synthetic _sdka:Z

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x37

    const/16 v12, 0x1b

    const/16 v11, 0x12

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0x50

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "s\u00189u~q"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_f0

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

    move v7, v12

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

    const-string v1, "s\u00184sxq"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_ef

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

    move v7, v12

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

    const-string v2, "s\u0018(axq"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_ee

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

    move v8, v12

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

    const-string v2, "s[9q%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_ed

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

    move v8, v12

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

    const-string v2, "sE+arq"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_ec

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

    move v8, v12

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

    const-string v2, "sZ6q%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_eb

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

    move v8, v12

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

    const-string v2, "s\u0018*ah&\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_ea

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

    move v8, v12

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

    const-string v2, "sC1\u007fr!Pus\u007f9V6q~q"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_e9

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

    move v8, v12

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

    const-string v2, "sT1,"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_e8

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

    move v8, v12

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

    const-string v2, "sZ;q%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_e7

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

    move v8, v12

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

    const-string v2, "s\u0018;{%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_e6

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

    move v8, v12

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

    const-string v2, "s\u0018;ww#\u001a,}l*Ef"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_e5

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

    move v8, v12

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

    const-string v2, "s\u0018,{v&Y??z+A9|x*\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_e4

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

    move v8, v12

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

    const-string v2, "sG+q%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_e3

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

    move v8, v12

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

    const/16 v1, 0xe

    const-string v2, "s\u00185qxq"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_e2

    move v4, v9

    :cond_1c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_2a
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_e

    move v8, v12

    :goto_2b
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_1d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_2a

    :cond_1d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_2c
    if-gt v3, v4, :cond_1c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "s\u00185|xq"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_e1

    move v4, v9

    :cond_1e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_2d
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_f

    move v8, v12

    :goto_2e
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_1f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_2d

    :cond_1f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_2f
    if-gt v3, v4, :cond_1e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sV?w%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_e0

    move v4, v9

    :cond_20
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_30
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_10

    move v8, v12

    :goto_31
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_21

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_30

    :cond_21
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_32
    if-gt v3, v4, :cond_20

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sT=~wbC7e~=\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_df

    move v4, v9

    :cond_22
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_33
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_11

    move v8, v12

    :goto_34
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_23

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_33

    :cond_23
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_35
    if-gt v3, v4, :cond_22

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "sV;q~<Dubt&Y,,\'\"V;,"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_de

    move v3, v9

    :cond_24
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_36
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_12

    move v7, v12

    :goto_37
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_25

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_36

    :cond_25
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_38
    if-gt v2, v3, :cond_24

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/16 v1, 0x13

    const-string v2, "s\u00189qx*D+?k ^6f%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_dd

    move v4, v9

    :cond_26
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_39
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_13

    move v8, v12

    :goto_3a
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_27

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_39

    :cond_27
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_3b
    if-gt v3, v4, :cond_26

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "s\u0018+{|!V4?h;E=||;_f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_dc

    move v4, v9

    :cond_28
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_3c
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_14

    move v8, v12

    :goto_3d
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_29

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_3c

    :cond_29
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_3e
    if-gt v3, v4, :cond_28

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "s\u00185sxq\u000b+{|!V4?h;E=||;_f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_db

    move v4, v9

    :cond_2a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_3f
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_15

    move v8, v12

    :goto_40
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_2b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_3f

    :cond_2b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_41
    if-gt v3, v4, :cond_2a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "s\u0018\u0014}x.C1}u\u001dff"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_da

    move v4, v9

    :cond_2c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_42
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_16

    move v8, v12

    :goto_43
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_2d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_42

    :cond_2d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_44
    if-gt v3, v4, :cond_2c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "m\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_d9

    move v4, v9

    :cond_2e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_45
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_17

    move v8, v12

    :goto_46
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_2f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_45

    :cond_2f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_47
    if-gt v3, v4, :cond_2e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "s\u0008 \u007fwoA=`h&X6/9~\u0019h0;*Y;}\u007f&Y?/9\u001ac\u001e?#m\u0008f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_d8

    move v4, v9

    :cond_30
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_48
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_18

    move v8, v12

    :goto_49
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_31

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_48

    :cond_31
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_4a
    if-gt v3, v4, :cond_30

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "oD,`~*Cus\u007f+E=ahb[7}p:Ge0"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_d7

    move v4, v9

    :cond_32
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_4b
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_19

    move v8, v12

    :goto_4c
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_33

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_4b

    :cond_33
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_4d
    if-gt v3, v4, :cond_32

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "s{7qz;^7|I\u001e\u0017 \u007fw!De0s;C((4`D3ks X3er=R4wh<\u0019;}v`@(a4}\u0007h\'9oA=`h&X6/9}\u0019i\"9"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_d6

    move v4, v9

    :cond_34
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_4e
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_1a

    move v8, v12

    :goto_4f
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_35

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_4e

    :cond_35
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_50
    if-gt v3, v4, :cond_34

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "sT=~wbC7e~=Df"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_d5

    move v3, v9

    :cond_36
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_51
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_1b

    move v7, v12

    :goto_52
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_37

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_51

    :cond_37
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_53
    if-gt v2, v3, :cond_36

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const/16 v1, 0x1c

    const-string v2, "s\u0018?bhb[7qz;^7|hq"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_d4

    move v4, v9

    :cond_38
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_54
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_1c

    move v8, v12

    :goto_55
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_39

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_54

    :cond_39
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_56
    if-gt v3, v4, :cond_38

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "s\u0018;ww#\u001a,}l*E+,"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_d3

    move v4, v9

    :cond_3a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_57
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_1d

    move v8, v12

    :goto_58
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_3b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_57

    :cond_3b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_59
    if-gt v3, v4, :cond_3a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "sP(a6#X;so&X6a%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_d2

    move v4, v9

    :cond_3c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_5a
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_1e

    move v8, v12

    :goto_5b
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_3d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_5a

    :cond_3d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_5c
    if-gt v3, v4, :cond_3c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "sV;q~<Dubt&Y,a%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_d1

    move v4, v9

    :cond_3e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_5d
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_1f

    move v8, v12

    :goto_5e
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_3f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_5d

    :cond_3f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_5f
    if-gt v3, v4, :cond_3e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "s\u00189qx*D+?k ^6fhq"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_d0

    move v4, v9

    :cond_40
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_60
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_20

    move v8, v12

    :goto_61
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_41

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_60

    :cond_41
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_62
    if-gt v3, v4, :cond_40

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "s\u0018\u000c{w&Y?@Jq"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_cf

    move v4, v9

    :cond_42
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_63
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_21

    move v8, v12

    :goto_64
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_43

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_63

    :cond_43
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_65
    if-gt v3, v4, :cond_42

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "m\u0017f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_ce

    move v4, v9

    :cond_44
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_66
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_22

    move v8, v12

    :goto_67
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_45

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_66

    :cond_45
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_68
    if-gt v3, v4, :cond_44

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "sc1~r!P\nC;7Z4|hr\u00150fo?\rw=h$N0}t$@1`~#R+a5,X5=l?Dw +\u007f\u0002z2m*E+{t!\nz 5~\u0007z2v.O\u000b{a*\nz"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_cd

    move v4, v9

    :cond_46
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_69
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_23

    move v8, v12

    :goto_6a
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_47

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_69

    :cond_47
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_6b
    if-gt v3, v4, :cond_46

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "sD,`~*Cus\u007f+E=ahq"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_cc

    move v4, v9

    :cond_48
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_6c
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_24

    move v8, v12

    :goto_6d
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_49

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_6c

    :cond_49
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_6e
    if-gt v3, v4, :cond_48

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "s\u0018+fi*R,?u:Z:wiq"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_cb

    move v4, v9

    :cond_4a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_6f
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_25

    move v8, v12

    :goto_70
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_4b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_6f

    :cond_4b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_71
    if-gt v3, v4, :cond_4a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "sD,so*\u0017;}\u007f*\nz"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_ca

    move v4, v9

    :cond_4c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_72
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_26

    move v8, v12

    :goto_73
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_4d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_72

    :cond_4d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_74
    if-gt v3, v4, :cond_4c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "s\u0018+fi*R,?z+S*wh<\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_c9

    move v4, v9

    :cond_4e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_75
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_27

    move v8, v12

    :goto_76
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_4f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_75

    :cond_4f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_77
    if-gt v3, v4, :cond_4e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "s\u00184so&C-v~q\u000b4}u(^,g\u007f*\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_c8

    move v4, v9

    :cond_50
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_78
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_28

    move v8, v12

    :goto_79
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_51

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_78

    :cond_51
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_7a
    if-gt v3, v4, :cond_50

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "s\u00189v\u007f=R+a6#^6w%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_c7

    move v4, v9

    :cond_52
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_7b
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_29

    move v8, v12

    :goto_7c
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_53

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_7b

    :cond_53
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_7d
    if-gt v3, v4, :cond_52

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "sb+wi\u0003X;so&X6@JoO5~u<\nzzo;Gb=4<\\!zt \\/{i*[=ahaT7\u007f48G+=)\u007f\u0007m0;9R*ar Ye0)a\u000fz,"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_c6

    move v4, v9

    :cond_54
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_7e
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2a

    move v8, v12

    :goto_7f
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_55

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_7e

    :cond_55
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_80
    if-gt v3, v4, :cond_54

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "sT7gu;E!2x S=/9"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_c5

    move v4, v9

    :cond_56
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_81
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2b

    move v8, v12

    :goto_82
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_57

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_81

    :cond_57
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_83
    if-gt v3, v4, :cond_56

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "sG7ao.[uqt+Rf"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_c4

    move v4, v9

    :cond_58
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_84
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2c

    move v8, v12

    :goto_85
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_59

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_84

    :cond_59
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_86
    if-gt v3, v4, :cond_58

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "s[7qz;^7|%s[9fr;B<w%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_c3

    move v4, v9

    :cond_5a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_87
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2d

    move v8, v12

    :goto_88
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_5b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_87

    :cond_5b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_89
    if-gt v3, v4, :cond_5a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "sD,`~*Cu|n\"U=`%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_c2

    move v4, v9

    :cond_5c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_8a
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2e

    move v8, v12

    :goto_8b
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_5d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_8a

    :cond_5d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_8c
    if-gt v3, v4, :cond_5c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "s\u0018;{o6\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_c1

    move v4, v9

    :cond_5e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_8d
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2f

    move v8, v12

    :goto_8e
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_5f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_8d

    :cond_5f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_8f
    if-gt v3, v4, :cond_5e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "s\u0018;}n!C*k%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_c0

    move v4, v9

    :cond_60
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_90
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_30

    move v8, v12

    :goto_91
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_61

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_90

    :cond_61
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_92
    if-gt v3, v4, :cond_60

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "s\u00184}u(^,g\u007f*\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_bf

    move v4, v9

    :cond_62
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_93
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_31

    move v8, v12

    :goto_94
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_63

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_93

    :cond_63
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_95
    if-gt v3, v4, :cond_62

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "sT1fbq"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_be

    move v4, v9

    :cond_64
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_96
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_32

    move v8, v12

    :goto_97
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_65

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_96

    :cond_65
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_98
    if-gt v3, v4, :cond_64

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "sV<vi*D+?w&Y=,"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_bd

    move v4, v9

    :cond_66
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_99
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_33

    move v8, v12

    :goto_9a
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_67

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_99

    :cond_67
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_9b
    if-gt v3, v4, :cond_66

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "s\u00184}x.C1}uq\u000bwGh*E\u0014}x.C1}u\u001dff"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_bc

    move v4, v9

    :cond_68
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_9c
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_34

    move v8, v12

    :goto_9d
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_69

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_9c

    :cond_69
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_9e
    if-gt v3, v4, :cond_68

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "s\u0018+fz;Rf"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_bb

    move v4, v9

    :cond_6a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_9f
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_35

    move v8, v12

    :goto_a0
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_6b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_9f

    :cond_6b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_a1
    if-gt v3, v4, :cond_6a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "s\u0018(}h;V4?x S=,"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_ba

    move v4, v9

    :cond_6c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_a2
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_36

    move v8, v12

    :goto_a3
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_6d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_a2

    :cond_6d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_a4
    if-gt v3, v4, :cond_6c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "s~\u0008^t,V,{t!e\t2c\"[6a&m_,fku\u0018wap6_7}p8^*ww*D+<x Zwek<\u0018j\"+z\u0015xd~=D1}ur\u0015j<+m"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_b9

    move v3, v9

    :cond_6e
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_a5
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_37

    move v7, v12

    :goto_a6
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_6f

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_a5

    :cond_6f
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_a7
    if-gt v2, v3, :cond_6e

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v13

    const/16 v1, 0x38

    const-string v2, "s\u0018\u0011BW T9fr Y\nC%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_b8

    move v4, v9

    :cond_70
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_a8
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_38

    move v8, v12

    :goto_a9
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_71

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_a8

    :cond_71
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_aa
    if-gt v3, v4, :cond_70

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "s\u0018+{|!V4?h;E=||;_f.z(Rf"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_b7

    move v4, v9

    :cond_72
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_ab
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_39

    move v8, v12

    :goto_ac
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_73

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_ab

    :cond_73
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_ad
    if-gt v3, v4, :cond_72

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "s\u00189u~q\u000bwsx,R+a6?X1|oq"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_b6

    move v4, v9

    :cond_74
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_ae
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_3a

    move v8, v12

    :goto_af
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_75

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_ae

    :cond_75
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_b0
    if-gt v3, v4, :cond_74

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "sP(a6#X;so&X62}&Oe5*h\u00176az;\n\u007f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_b5

    move v4, v9

    :cond_76
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_b1
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_3b

    move v8, v12

    :goto_b2
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_77

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_b1

    :cond_77
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_b3
    if-gt v3, v4, :cond_76

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "sD(w~+\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_b4

    move v4, v9

    :cond_78
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_b4
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_3c

    move v8, v12

    :goto_b5
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_79

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_b4

    :cond_79
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_b6
    if-gt v3, v4, :cond_78

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "s\u00180b~q"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_b3

    move v4, v9

    :cond_7a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_b7
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_3d

    move v8, v12

    :goto_b8
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_7b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_b7

    :cond_7b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_b9
    if-gt v3, v4, :cond_7a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "s[9fr;B<w%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_b2

    move v4, v9

    :cond_7c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_ba
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_3e

    move v8, v12

    :goto_bb
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_7d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_ba

    :cond_7d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_bc
    if-gt v3, v4, :cond_7c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "s\u00189~o&C-v~q"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_b1

    move v4, v9

    :cond_7e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_bd
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_3f

    move v8, v12

    :goto_be
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_7f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_bd

    :cond_7f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_bf
    if-gt v3, v4, :cond_7e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "s\u0018?bhb[7qz;^7|%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_b0

    move v4, v9

    :cond_80
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_c0
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_40

    move v8, v12

    :goto_c1
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_81

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_c0

    :cond_81
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_c2
    if-gt v3, v4, :cond_80

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "s_(w%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_af

    move v4, v9

    :cond_82
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_c3
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_41

    move v8, v12

    :goto_c4
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_83

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_c3

    :cond_83
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_c5
    if-gt v3, v4, :cond_82

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "s\u0018+b~*Sf"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_ae

    move v4, v9

    :cond_84
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_c6
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_42

    move v8, v12

    :goto_c7
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_85

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_c6

    :cond_85
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_c8
    if-gt v3, v4, :cond_84

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "s[7||&C-v~q"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_ad

    move v4, v9

    :cond_86
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_c9
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_43

    move v8, v12

    :goto_ca
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_87

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_c9

    :cond_87
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_cb
    if-gt v3, v4, :cond_86

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "sV4fr;B<w%"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_ac

    move v4, v9

    :cond_88
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_cc
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_44

    move v8, v12

    :goto_cd
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_89

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_cc

    :cond_89
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_ce
    if-gt v3, v4, :cond_88

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "h\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_ab

    move v4, v9

    :cond_8a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_cf
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_45

    move v8, v12

    :goto_d0
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_8b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_cf

    :cond_8b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_d1
    if-gt v3, v4, :cond_8a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "s\u00184so&C-v~q"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_aa

    move v4, v9

    :cond_8c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_d2
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_46

    move v8, v12

    :goto_d3
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_8d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_d2

    :cond_8d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_d4
    if-gt v3, v4, :cond_8c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "s\u0018-a~=Y9\u007f~q"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_a9

    move v4, v9

    :cond_8e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_d5
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_47

    move v8, v12

    :goto_d6
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_8f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_d5

    :cond_8f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_d7
    if-gt v3, v4, :cond_8e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "sE=sw\"\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_a8

    move v4, v9

    :cond_90
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_d8
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_48

    move v8, v12

    :goto_d9
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_91

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_d8

    :cond_91
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_da
    if-gt v3, v4, :cond_90

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "sD1\u007fk#Rf.n<R*|z\"Rf"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_a7

    move v4, v9

    :cond_92
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_db
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_49

    move v8, v12

    :goto_dc
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_93

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_db

    :cond_93
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_dd
    if-gt v3, v4, :cond_92

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "se=ur<C*so&X6@JoO5~u<\nzzo;Gb=4<\\!zt \\/{i*[=ahaT7\u007f48G+=)\u007f\u0007m0;9R*ar Ye0)a\u0007z,"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_a6

    move v4, v9

    :cond_94
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_de
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_4a

    move v8, v12

    :goto_df
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_95

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_de

    :cond_95
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_e0
    if-gt v3, v4, :cond_94

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "s\u0018\nw|&D,`z;^7|I\u001e\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_a5

    move v4, v9

    :cond_96
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_e1
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_4b

    move v8, v12

    :goto_e2
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_97

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_e1

    :cond_97
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_e3
    if-gt v3, v4, :cond_96

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "s\u0018*wz#Zf.4<^5bw*\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_a4

    move v4, v9

    :cond_98
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_e4
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_4c

    move v8, v12

    :goto_e5
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_99

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_e4

    :cond_99
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_e6
    if-gt v3, v4, :cond_98

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "s\u0018*wz#Zf.4<^5bw*\td=z:C0wu;^;so&X6,"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_a3

    move v4, v9

    :cond_9a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_e7
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_4d

    move v8, v12

    :goto_e8
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_9b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_e7

    :cond_9b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_e9
    if-gt v3, v4, :cond_9a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "sV-fs*Y,{x.C1}uoA=`h&X6/9}\u0019h0%sD1\u007fk#Rf.n<R*|z\"Rf"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_a2

    move v4, v9

    :cond_9c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_ea
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_4e

    move v8, v12

    :goto_eb
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_9d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_ea

    :cond_9d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_ec
    if-gt v3, v4, :cond_9c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "s\u0018-a~=Y9\u007f~q\u000b*wz#Zf"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_a1

    move v4, v9

    :cond_9e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_ed
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_4f

    move v8, v12

    :goto_ee
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_9f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_ed

    :cond_9f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_ef
    if-gt v3, v4, :cond_9e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/wps/Protocol;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_a0

    move v0, v10

    :goto_f0
    sput-boolean v0, Lcom/skyhookwireless/wps/Protocol;->_sdka:Z

    return-void

    :cond_a0
    move v0, v9

    goto :goto_f0

    :pswitch_0
    const/16 v7, 0x4f

    goto/16 :goto_1

    :pswitch_1
    move v7, v13

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x58

    goto/16 :goto_1

    :pswitch_3
    move v7, v11

    goto/16 :goto_1

    :pswitch_4
    const/16 v7, 0x4f

    goto/16 :goto_4

    :pswitch_5
    move v7, v13

    goto/16 :goto_4

    :pswitch_6
    const/16 v7, 0x58

    goto/16 :goto_4

    :pswitch_7
    move v7, v11

    goto/16 :goto_4

    :pswitch_8
    const/16 v8, 0x4f

    goto/16 :goto_7

    :pswitch_9
    move v8, v13

    goto/16 :goto_7

    :pswitch_a
    const/16 v8, 0x58

    goto/16 :goto_7

    :pswitch_b
    move v8, v11

    goto/16 :goto_7

    :pswitch_c
    const/16 v8, 0x4f

    goto/16 :goto_a

    :pswitch_d
    move v8, v13

    goto/16 :goto_a

    :pswitch_e
    const/16 v8, 0x58

    goto/16 :goto_a

    :pswitch_f
    move v8, v11

    goto/16 :goto_a

    :pswitch_10
    const/16 v8, 0x4f

    goto/16 :goto_d

    :pswitch_11
    move v8, v13

    goto/16 :goto_d

    :pswitch_12
    const/16 v8, 0x58

    goto/16 :goto_d

    :pswitch_13
    move v8, v11

    goto/16 :goto_d

    :pswitch_14
    const/16 v8, 0x4f

    goto/16 :goto_10

    :pswitch_15
    move v8, v13

    goto/16 :goto_10

    :pswitch_16
    const/16 v8, 0x58

    goto/16 :goto_10

    :pswitch_17
    move v8, v11

    goto/16 :goto_10

    :pswitch_18
    const/16 v8, 0x4f

    goto/16 :goto_13

    :pswitch_19
    move v8, v13

    goto/16 :goto_13

    :pswitch_1a
    const/16 v8, 0x58

    goto/16 :goto_13

    :pswitch_1b
    move v8, v11

    goto/16 :goto_13

    :pswitch_1c
    const/16 v8, 0x4f

    goto/16 :goto_16

    :pswitch_1d
    move v8, v13

    goto/16 :goto_16

    :pswitch_1e
    const/16 v8, 0x58

    goto/16 :goto_16

    :pswitch_1f
    move v8, v11

    goto/16 :goto_16

    :pswitch_20
    const/16 v8, 0x4f

    goto/16 :goto_19

    :pswitch_21
    move v8, v13

    goto/16 :goto_19

    :pswitch_22
    const/16 v8, 0x58

    goto/16 :goto_19

    :pswitch_23
    move v8, v11

    goto/16 :goto_19

    :pswitch_24
    const/16 v8, 0x4f

    goto/16 :goto_1c

    :pswitch_25
    move v8, v13

    goto/16 :goto_1c

    :pswitch_26
    const/16 v8, 0x58

    goto/16 :goto_1c

    :pswitch_27
    move v8, v11

    goto/16 :goto_1c

    :pswitch_28
    const/16 v8, 0x4f

    goto/16 :goto_1f

    :pswitch_29
    move v8, v13

    goto/16 :goto_1f

    :pswitch_2a
    const/16 v8, 0x58

    goto/16 :goto_1f

    :pswitch_2b
    move v8, v11

    goto/16 :goto_1f

    :pswitch_2c
    const/16 v8, 0x4f

    goto/16 :goto_22

    :pswitch_2d
    move v8, v13

    goto/16 :goto_22

    :pswitch_2e
    const/16 v8, 0x58

    goto/16 :goto_22

    :pswitch_2f
    move v8, v11

    goto/16 :goto_22

    :pswitch_30
    const/16 v8, 0x4f

    goto/16 :goto_25

    :pswitch_31
    move v8, v13

    goto/16 :goto_25

    :pswitch_32
    const/16 v8, 0x58

    goto/16 :goto_25

    :pswitch_33
    move v8, v11

    goto/16 :goto_25

    :pswitch_34
    const/16 v8, 0x4f

    goto/16 :goto_28

    :pswitch_35
    move v8, v13

    goto/16 :goto_28

    :pswitch_36
    const/16 v8, 0x58

    goto/16 :goto_28

    :pswitch_37
    move v8, v11

    goto/16 :goto_28

    :pswitch_38
    const/16 v8, 0x4f

    goto/16 :goto_2b

    :pswitch_39
    move v8, v13

    goto/16 :goto_2b

    :pswitch_3a
    const/16 v8, 0x58

    goto/16 :goto_2b

    :pswitch_3b
    move v8, v11

    goto/16 :goto_2b

    :pswitch_3c
    const/16 v8, 0x4f

    goto/16 :goto_2e

    :pswitch_3d
    move v8, v13

    goto/16 :goto_2e

    :pswitch_3e
    const/16 v8, 0x58

    goto/16 :goto_2e

    :pswitch_3f
    move v8, v11

    goto/16 :goto_2e

    :pswitch_40
    const/16 v8, 0x4f

    goto/16 :goto_31

    :pswitch_41
    move v8, v13

    goto/16 :goto_31

    :pswitch_42
    const/16 v8, 0x58

    goto/16 :goto_31

    :pswitch_43
    move v8, v11

    goto/16 :goto_31

    :pswitch_44
    const/16 v8, 0x4f

    goto/16 :goto_34

    :pswitch_45
    move v8, v13

    goto/16 :goto_34

    :pswitch_46
    const/16 v8, 0x58

    goto/16 :goto_34

    :pswitch_47
    move v8, v11

    goto/16 :goto_34

    :pswitch_48
    const/16 v7, 0x4f

    goto/16 :goto_37

    :pswitch_49
    move v7, v13

    goto/16 :goto_37

    :pswitch_4a
    const/16 v7, 0x58

    goto/16 :goto_37

    :pswitch_4b
    move v7, v11

    goto/16 :goto_37

    :pswitch_4c
    const/16 v8, 0x4f

    goto/16 :goto_3a

    :pswitch_4d
    move v8, v13

    goto/16 :goto_3a

    :pswitch_4e
    const/16 v8, 0x58

    goto/16 :goto_3a

    :pswitch_4f
    move v8, v11

    goto/16 :goto_3a

    :pswitch_50
    const/16 v8, 0x4f

    goto/16 :goto_3d

    :pswitch_51
    move v8, v13

    goto/16 :goto_3d

    :pswitch_52
    const/16 v8, 0x58

    goto/16 :goto_3d

    :pswitch_53
    move v8, v11

    goto/16 :goto_3d

    :pswitch_54
    const/16 v8, 0x4f

    goto/16 :goto_40

    :pswitch_55
    move v8, v13

    goto/16 :goto_40

    :pswitch_56
    const/16 v8, 0x58

    goto/16 :goto_40

    :pswitch_57
    move v8, v11

    goto/16 :goto_40

    :pswitch_58
    const/16 v8, 0x4f

    goto/16 :goto_43

    :pswitch_59
    move v8, v13

    goto/16 :goto_43

    :pswitch_5a
    const/16 v8, 0x58

    goto/16 :goto_43

    :pswitch_5b
    move v8, v11

    goto/16 :goto_43

    :pswitch_5c
    const/16 v8, 0x4f

    goto/16 :goto_46

    :pswitch_5d
    move v8, v13

    goto/16 :goto_46

    :pswitch_5e
    const/16 v8, 0x58

    goto/16 :goto_46

    :pswitch_5f
    move v8, v11

    goto/16 :goto_46

    :pswitch_60
    const/16 v8, 0x4f

    goto/16 :goto_49

    :pswitch_61
    move v8, v13

    goto/16 :goto_49

    :pswitch_62
    const/16 v8, 0x58

    goto/16 :goto_49

    :pswitch_63
    move v8, v11

    goto/16 :goto_49

    :pswitch_64
    const/16 v8, 0x4f

    goto/16 :goto_4c

    :pswitch_65
    move v8, v13

    goto/16 :goto_4c

    :pswitch_66
    const/16 v8, 0x58

    goto/16 :goto_4c

    :pswitch_67
    move v8, v11

    goto/16 :goto_4c

    :pswitch_68
    const/16 v8, 0x4f

    goto/16 :goto_4f

    :pswitch_69
    move v8, v13

    goto/16 :goto_4f

    :pswitch_6a
    const/16 v8, 0x58

    goto/16 :goto_4f

    :pswitch_6b
    move v8, v11

    goto/16 :goto_4f

    :pswitch_6c
    const/16 v7, 0x4f

    goto/16 :goto_52

    :pswitch_6d
    move v7, v13

    goto/16 :goto_52

    :pswitch_6e
    const/16 v7, 0x58

    goto/16 :goto_52

    :pswitch_6f
    move v7, v11

    goto/16 :goto_52

    :pswitch_70
    const/16 v8, 0x4f

    goto/16 :goto_55

    :pswitch_71
    move v8, v13

    goto/16 :goto_55

    :pswitch_72
    const/16 v8, 0x58

    goto/16 :goto_55

    :pswitch_73
    move v8, v11

    goto/16 :goto_55

    :pswitch_74
    const/16 v8, 0x4f

    goto/16 :goto_58

    :pswitch_75
    move v8, v13

    goto/16 :goto_58

    :pswitch_76
    const/16 v8, 0x58

    goto/16 :goto_58

    :pswitch_77
    move v8, v11

    goto/16 :goto_58

    :pswitch_78
    const/16 v8, 0x4f

    goto/16 :goto_5b

    :pswitch_79
    move v8, v13

    goto/16 :goto_5b

    :pswitch_7a
    const/16 v8, 0x58

    goto/16 :goto_5b

    :pswitch_7b
    move v8, v11

    goto/16 :goto_5b

    :pswitch_7c
    const/16 v8, 0x4f

    goto/16 :goto_5e

    :pswitch_7d
    move v8, v13

    goto/16 :goto_5e

    :pswitch_7e
    const/16 v8, 0x58

    goto/16 :goto_5e

    :pswitch_7f
    move v8, v11

    goto/16 :goto_5e

    :pswitch_80
    const/16 v8, 0x4f

    goto/16 :goto_61

    :pswitch_81
    move v8, v13

    goto/16 :goto_61

    :pswitch_82
    const/16 v8, 0x58

    goto/16 :goto_61

    :pswitch_83
    move v8, v11

    goto/16 :goto_61

    :pswitch_84
    const/16 v8, 0x4f

    goto/16 :goto_64

    :pswitch_85
    move v8, v13

    goto/16 :goto_64

    :pswitch_86
    const/16 v8, 0x58

    goto/16 :goto_64

    :pswitch_87
    move v8, v11

    goto/16 :goto_64

    :pswitch_88
    const/16 v8, 0x4f

    goto/16 :goto_67

    :pswitch_89
    move v8, v13

    goto/16 :goto_67

    :pswitch_8a
    const/16 v8, 0x58

    goto/16 :goto_67

    :pswitch_8b
    move v8, v11

    goto/16 :goto_67

    :pswitch_8c
    const/16 v8, 0x4f

    goto/16 :goto_6a

    :pswitch_8d
    move v8, v13

    goto/16 :goto_6a

    :pswitch_8e
    const/16 v8, 0x58

    goto/16 :goto_6a

    :pswitch_8f
    move v8, v11

    goto/16 :goto_6a

    :pswitch_90
    const/16 v8, 0x4f

    goto/16 :goto_6d

    :pswitch_91
    move v8, v13

    goto/16 :goto_6d

    :pswitch_92
    const/16 v8, 0x58

    goto/16 :goto_6d

    :pswitch_93
    move v8, v11

    goto/16 :goto_6d

    :pswitch_94
    const/16 v8, 0x4f

    goto/16 :goto_70

    :pswitch_95
    move v8, v13

    goto/16 :goto_70

    :pswitch_96
    const/16 v8, 0x58

    goto/16 :goto_70

    :pswitch_97
    move v8, v11

    goto/16 :goto_70

    :pswitch_98
    const/16 v8, 0x4f

    goto/16 :goto_73

    :pswitch_99
    move v8, v13

    goto/16 :goto_73

    :pswitch_9a
    const/16 v8, 0x58

    goto/16 :goto_73

    :pswitch_9b
    move v8, v11

    goto/16 :goto_73

    :pswitch_9c
    const/16 v8, 0x4f

    goto/16 :goto_76

    :pswitch_9d
    move v8, v13

    goto/16 :goto_76

    :pswitch_9e
    const/16 v8, 0x58

    goto/16 :goto_76

    :pswitch_9f
    move v8, v11

    goto/16 :goto_76

    :pswitch_a0
    const/16 v8, 0x4f

    goto/16 :goto_79

    :pswitch_a1
    move v8, v13

    goto/16 :goto_79

    :pswitch_a2
    const/16 v8, 0x58

    goto/16 :goto_79

    :pswitch_a3
    move v8, v11

    goto/16 :goto_79

    :pswitch_a4
    const/16 v8, 0x4f

    goto/16 :goto_7c

    :pswitch_a5
    move v8, v13

    goto/16 :goto_7c

    :pswitch_a6
    const/16 v8, 0x58

    goto/16 :goto_7c

    :pswitch_a7
    move v8, v11

    goto/16 :goto_7c

    :pswitch_a8
    const/16 v8, 0x4f

    goto/16 :goto_7f

    :pswitch_a9
    move v8, v13

    goto/16 :goto_7f

    :pswitch_aa
    const/16 v8, 0x58

    goto/16 :goto_7f

    :pswitch_ab
    move v8, v11

    goto/16 :goto_7f

    :pswitch_ac
    const/16 v8, 0x4f

    goto/16 :goto_82

    :pswitch_ad
    move v8, v13

    goto/16 :goto_82

    :pswitch_ae
    const/16 v8, 0x58

    goto/16 :goto_82

    :pswitch_af
    move v8, v11

    goto/16 :goto_82

    :pswitch_b0
    const/16 v8, 0x4f

    goto/16 :goto_85

    :pswitch_b1
    move v8, v13

    goto/16 :goto_85

    :pswitch_b2
    const/16 v8, 0x58

    goto/16 :goto_85

    :pswitch_b3
    move v8, v11

    goto/16 :goto_85

    :pswitch_b4
    const/16 v8, 0x4f

    goto/16 :goto_88

    :pswitch_b5
    move v8, v13

    goto/16 :goto_88

    :pswitch_b6
    const/16 v8, 0x58

    goto/16 :goto_88

    :pswitch_b7
    move v8, v11

    goto/16 :goto_88

    :pswitch_b8
    const/16 v8, 0x4f

    goto/16 :goto_8b

    :pswitch_b9
    move v8, v13

    goto/16 :goto_8b

    :pswitch_ba
    const/16 v8, 0x58

    goto/16 :goto_8b

    :pswitch_bb
    move v8, v11

    goto/16 :goto_8b

    :pswitch_bc
    const/16 v8, 0x4f

    goto/16 :goto_8e

    :pswitch_bd
    move v8, v13

    goto/16 :goto_8e

    :pswitch_be
    const/16 v8, 0x58

    goto/16 :goto_8e

    :pswitch_bf
    move v8, v11

    goto/16 :goto_8e

    :pswitch_c0
    const/16 v8, 0x4f

    goto/16 :goto_91

    :pswitch_c1
    move v8, v13

    goto/16 :goto_91

    :pswitch_c2
    const/16 v8, 0x58

    goto/16 :goto_91

    :pswitch_c3
    move v8, v11

    goto/16 :goto_91

    :pswitch_c4
    const/16 v8, 0x4f

    goto/16 :goto_94

    :pswitch_c5
    move v8, v13

    goto/16 :goto_94

    :pswitch_c6
    const/16 v8, 0x58

    goto/16 :goto_94

    :pswitch_c7
    move v8, v11

    goto/16 :goto_94

    :pswitch_c8
    const/16 v8, 0x4f

    goto/16 :goto_97

    :pswitch_c9
    move v8, v13

    goto/16 :goto_97

    :pswitch_ca
    const/16 v8, 0x58

    goto/16 :goto_97

    :pswitch_cb
    move v8, v11

    goto/16 :goto_97

    :pswitch_cc
    const/16 v8, 0x4f

    goto/16 :goto_9a

    :pswitch_cd
    move v8, v13

    goto/16 :goto_9a

    :pswitch_ce
    const/16 v8, 0x58

    goto/16 :goto_9a

    :pswitch_cf
    move v8, v11

    goto/16 :goto_9a

    :pswitch_d0
    const/16 v8, 0x4f

    goto/16 :goto_9d

    :pswitch_d1
    move v8, v13

    goto/16 :goto_9d

    :pswitch_d2
    const/16 v8, 0x58

    goto/16 :goto_9d

    :pswitch_d3
    move v8, v11

    goto/16 :goto_9d

    :pswitch_d4
    const/16 v8, 0x4f

    goto/16 :goto_a0

    :pswitch_d5
    move v8, v13

    goto/16 :goto_a0

    :pswitch_d6
    const/16 v8, 0x58

    goto/16 :goto_a0

    :pswitch_d7
    move v8, v11

    goto/16 :goto_a0

    :pswitch_d8
    const/16 v8, 0x4f

    goto/16 :goto_a3

    :pswitch_d9
    move v8, v13

    goto/16 :goto_a3

    :pswitch_da
    const/16 v8, 0x58

    goto/16 :goto_a3

    :pswitch_db
    move v8, v11

    goto/16 :goto_a3

    :pswitch_dc
    const/16 v7, 0x4f

    goto/16 :goto_a6

    :pswitch_dd
    move v7, v13

    goto/16 :goto_a6

    :pswitch_de
    const/16 v7, 0x58

    goto/16 :goto_a6

    :pswitch_df
    move v7, v11

    goto/16 :goto_a6

    :pswitch_e0
    const/16 v8, 0x4f

    goto/16 :goto_a9

    :pswitch_e1
    move v8, v13

    goto/16 :goto_a9

    :pswitch_e2
    const/16 v8, 0x58

    goto/16 :goto_a9

    :pswitch_e3
    move v8, v11

    goto/16 :goto_a9

    :pswitch_e4
    const/16 v8, 0x4f

    goto/16 :goto_ac

    :pswitch_e5
    move v8, v13

    goto/16 :goto_ac

    :pswitch_e6
    const/16 v8, 0x58

    goto/16 :goto_ac

    :pswitch_e7
    move v8, v11

    goto/16 :goto_ac

    :pswitch_e8
    const/16 v8, 0x4f

    goto/16 :goto_af

    :pswitch_e9
    move v8, v13

    goto/16 :goto_af

    :pswitch_ea
    const/16 v8, 0x58

    goto/16 :goto_af

    :pswitch_eb
    move v8, v11

    goto/16 :goto_af

    :pswitch_ec
    const/16 v8, 0x4f

    goto/16 :goto_b2

    :pswitch_ed
    move v8, v13

    goto/16 :goto_b2

    :pswitch_ee
    const/16 v8, 0x58

    goto/16 :goto_b2

    :pswitch_ef
    move v8, v11

    goto/16 :goto_b2

    :pswitch_f0
    const/16 v8, 0x4f

    goto/16 :goto_b5

    :pswitch_f1
    move v8, v13

    goto/16 :goto_b5

    :pswitch_f2
    const/16 v8, 0x58

    goto/16 :goto_b5

    :pswitch_f3
    move v8, v11

    goto/16 :goto_b5

    :pswitch_f4
    const/16 v8, 0x4f

    goto/16 :goto_b8

    :pswitch_f5
    move v8, v13

    goto/16 :goto_b8

    :pswitch_f6
    const/16 v8, 0x58

    goto/16 :goto_b8

    :pswitch_f7
    move v8, v11

    goto/16 :goto_b8

    :pswitch_f8
    const/16 v8, 0x4f

    goto/16 :goto_bb

    :pswitch_f9
    move v8, v13

    goto/16 :goto_bb

    :pswitch_fa
    const/16 v8, 0x58

    goto/16 :goto_bb

    :pswitch_fb
    move v8, v11

    goto/16 :goto_bb

    :pswitch_fc
    const/16 v8, 0x4f

    goto/16 :goto_be

    :pswitch_fd
    move v8, v13

    goto/16 :goto_be

    :pswitch_fe
    const/16 v8, 0x58

    goto/16 :goto_be

    :pswitch_ff
    move v8, v11

    goto/16 :goto_be

    :pswitch_100
    const/16 v8, 0x4f

    goto/16 :goto_c1

    :pswitch_101
    move v8, v13

    goto/16 :goto_c1

    :pswitch_102
    const/16 v8, 0x58

    goto/16 :goto_c1

    :pswitch_103
    move v8, v11

    goto/16 :goto_c1

    :pswitch_104
    const/16 v8, 0x4f

    goto/16 :goto_c4

    :pswitch_105
    move v8, v13

    goto/16 :goto_c4

    :pswitch_106
    const/16 v8, 0x58

    goto/16 :goto_c4

    :pswitch_107
    move v8, v11

    goto/16 :goto_c4

    :pswitch_108
    const/16 v8, 0x4f

    goto/16 :goto_c7

    :pswitch_109
    move v8, v13

    goto/16 :goto_c7

    :pswitch_10a
    const/16 v8, 0x58

    goto/16 :goto_c7

    :pswitch_10b
    move v8, v11

    goto/16 :goto_c7

    :pswitch_10c
    const/16 v8, 0x4f

    goto/16 :goto_ca

    :pswitch_10d
    move v8, v13

    goto/16 :goto_ca

    :pswitch_10e
    const/16 v8, 0x58

    goto/16 :goto_ca

    :pswitch_10f
    move v8, v11

    goto/16 :goto_ca

    :pswitch_110
    const/16 v8, 0x4f

    goto/16 :goto_cd

    :pswitch_111
    move v8, v13

    goto/16 :goto_cd

    :pswitch_112
    const/16 v8, 0x58

    goto/16 :goto_cd

    :pswitch_113
    move v8, v11

    goto/16 :goto_cd

    :pswitch_114
    const/16 v8, 0x4f

    goto/16 :goto_d0

    :pswitch_115
    move v8, v13

    goto/16 :goto_d0

    :pswitch_116
    const/16 v8, 0x58

    goto/16 :goto_d0

    :pswitch_117
    move v8, v11

    goto/16 :goto_d0

    :pswitch_118
    const/16 v8, 0x4f

    goto/16 :goto_d3

    :pswitch_119
    move v8, v13

    goto/16 :goto_d3

    :pswitch_11a
    const/16 v8, 0x58

    goto/16 :goto_d3

    :pswitch_11b
    move v8, v11

    goto/16 :goto_d3

    :pswitch_11c
    const/16 v8, 0x4f

    goto/16 :goto_d6

    :pswitch_11d
    move v8, v13

    goto/16 :goto_d6

    :pswitch_11e
    const/16 v8, 0x58

    goto/16 :goto_d6

    :pswitch_11f
    move v8, v11

    goto/16 :goto_d6

    :pswitch_120
    const/16 v8, 0x4f

    goto/16 :goto_d9

    :pswitch_121
    move v8, v13

    goto/16 :goto_d9

    :pswitch_122
    const/16 v8, 0x58

    goto/16 :goto_d9

    :pswitch_123
    move v8, v11

    goto/16 :goto_d9

    :pswitch_124
    const/16 v8, 0x4f

    goto/16 :goto_dc

    :pswitch_125
    move v8, v13

    goto/16 :goto_dc

    :pswitch_126
    const/16 v8, 0x58

    goto/16 :goto_dc

    :pswitch_127
    move v8, v11

    goto/16 :goto_dc

    :pswitch_128
    const/16 v8, 0x4f

    goto/16 :goto_df

    :pswitch_129
    move v8, v13

    goto/16 :goto_df

    :pswitch_12a
    const/16 v8, 0x58

    goto/16 :goto_df

    :pswitch_12b
    move v8, v11

    goto/16 :goto_df

    :pswitch_12c
    const/16 v8, 0x4f

    goto/16 :goto_e2

    :pswitch_12d
    move v8, v13

    goto/16 :goto_e2

    :pswitch_12e
    const/16 v8, 0x58

    goto/16 :goto_e2

    :pswitch_12f
    move v8, v11

    goto/16 :goto_e2

    :pswitch_130
    const/16 v8, 0x4f

    goto/16 :goto_e5

    :pswitch_131
    move v8, v13

    goto/16 :goto_e5

    :pswitch_132
    const/16 v8, 0x58

    goto/16 :goto_e5

    :pswitch_133
    move v8, v11

    goto/16 :goto_e5

    :pswitch_134
    const/16 v8, 0x4f

    goto/16 :goto_e8

    :pswitch_135
    move v8, v13

    goto/16 :goto_e8

    :pswitch_136
    const/16 v8, 0x58

    goto/16 :goto_e8

    :pswitch_137
    move v8, v11

    goto/16 :goto_e8

    :pswitch_138
    const/16 v8, 0x4f

    goto/16 :goto_eb

    :pswitch_139
    move v8, v13

    goto/16 :goto_eb

    :pswitch_13a
    const/16 v8, 0x58

    goto/16 :goto_eb

    :pswitch_13b
    move v8, v11

    goto/16 :goto_eb

    :pswitch_13c
    const/16 v8, 0x4f

    goto/16 :goto_ee

    :pswitch_13d
    move v8, v13

    goto/16 :goto_ee

    :pswitch_13e
    const/16 v8, 0x58

    goto/16 :goto_ee

    :pswitch_13f
    move v8, v11

    goto/16 :goto_ee

    :cond_a1
    move v4, v9

    goto/16 :goto_ef

    :cond_a2
    move v4, v9

    goto/16 :goto_ec

    :cond_a3
    move v4, v9

    goto/16 :goto_e9

    :cond_a4
    move v4, v9

    goto/16 :goto_e6

    :cond_a5
    move v4, v9

    goto/16 :goto_e3

    :cond_a6
    move v4, v9

    goto/16 :goto_e0

    :cond_a7
    move v4, v9

    goto/16 :goto_dd

    :cond_a8
    move v4, v9

    goto/16 :goto_da

    :cond_a9
    move v4, v9

    goto/16 :goto_d7

    :cond_aa
    move v4, v9

    goto/16 :goto_d4

    :cond_ab
    move v4, v9

    goto/16 :goto_d1

    :cond_ac
    move v4, v9

    goto/16 :goto_ce

    :cond_ad
    move v4, v9

    goto/16 :goto_cb

    :cond_ae
    move v4, v9

    goto/16 :goto_c8

    :cond_af
    move v4, v9

    goto/16 :goto_c5

    :cond_b0
    move v4, v9

    goto/16 :goto_c2

    :cond_b1
    move v4, v9

    goto/16 :goto_bf

    :cond_b2
    move v4, v9

    goto/16 :goto_bc

    :cond_b3
    move v4, v9

    goto/16 :goto_b9

    :cond_b4
    move v4, v9

    goto/16 :goto_b6

    :cond_b5
    move v4, v9

    goto/16 :goto_b3

    :cond_b6
    move v4, v9

    goto/16 :goto_b0

    :cond_b7
    move v4, v9

    goto/16 :goto_ad

    :cond_b8
    move v4, v9

    goto/16 :goto_aa

    :cond_b9
    move v3, v9

    goto/16 :goto_a7

    :cond_ba
    move v4, v9

    goto/16 :goto_a4

    :cond_bb
    move v4, v9

    goto/16 :goto_a1

    :cond_bc
    move v4, v9

    goto/16 :goto_9e

    :cond_bd
    move v4, v9

    goto/16 :goto_9b

    :cond_be
    move v4, v9

    goto/16 :goto_98

    :cond_bf
    move v4, v9

    goto/16 :goto_95

    :cond_c0
    move v4, v9

    goto/16 :goto_92

    :cond_c1
    move v4, v9

    goto/16 :goto_8f

    :cond_c2
    move v4, v9

    goto/16 :goto_8c

    :cond_c3
    move v4, v9

    goto/16 :goto_89

    :cond_c4
    move v4, v9

    goto/16 :goto_86

    :cond_c5
    move v4, v9

    goto/16 :goto_83

    :cond_c6
    move v4, v9

    goto/16 :goto_80

    :cond_c7
    move v4, v9

    goto/16 :goto_7d

    :cond_c8
    move v4, v9

    goto/16 :goto_7a

    :cond_c9
    move v4, v9

    goto/16 :goto_77

    :cond_ca
    move v4, v9

    goto/16 :goto_74

    :cond_cb
    move v4, v9

    goto/16 :goto_71

    :cond_cc
    move v4, v9

    goto/16 :goto_6e

    :cond_cd
    move v4, v9

    goto/16 :goto_6b

    :cond_ce
    move v4, v9

    goto/16 :goto_68

    :cond_cf
    move v4, v9

    goto/16 :goto_65

    :cond_d0
    move v4, v9

    goto/16 :goto_62

    :cond_d1
    move v4, v9

    goto/16 :goto_5f

    :cond_d2
    move v4, v9

    goto/16 :goto_5c

    :cond_d3
    move v4, v9

    goto/16 :goto_59

    :cond_d4
    move v4, v9

    goto/16 :goto_56

    :cond_d5
    move v3, v9

    goto/16 :goto_53

    :cond_d6
    move v4, v9

    goto/16 :goto_50

    :cond_d7
    move v4, v9

    goto/16 :goto_4d

    :cond_d8
    move v4, v9

    goto/16 :goto_4a

    :cond_d9
    move v4, v9

    goto/16 :goto_47

    :cond_da
    move v4, v9

    goto/16 :goto_44

    :cond_db
    move v4, v9

    goto/16 :goto_41

    :cond_dc
    move v4, v9

    goto/16 :goto_3e

    :cond_dd
    move v4, v9

    goto/16 :goto_3b

    :cond_de
    move v3, v9

    goto/16 :goto_38

    :cond_df
    move v4, v9

    goto/16 :goto_35

    :cond_e0
    move v4, v9

    goto/16 :goto_32

    :cond_e1
    move v4, v9

    goto/16 :goto_2f

    :cond_e2
    move v4, v9

    goto/16 :goto_2c

    :cond_e3
    move v4, v9

    goto/16 :goto_29

    :cond_e4
    move v4, v9

    goto/16 :goto_26

    :cond_e5
    move v4, v9

    goto/16 :goto_23

    :cond_e6
    move v4, v9

    goto/16 :goto_20

    :cond_e7
    move v4, v9

    goto/16 :goto_1d

    :cond_e8
    move v4, v9

    goto/16 :goto_1a

    :cond_e9
    move v4, v9

    goto/16 :goto_17

    :cond_ea
    move v4, v9

    goto/16 :goto_14

    :cond_eb
    move v4, v9

    goto/16 :goto_11

    :cond_ec
    move v4, v9

    goto/16 :goto_e

    :cond_ed
    move v4, v9

    goto/16 :goto_b

    :cond_ee
    move v4, v9

    goto/16 :goto_8

    :cond_ef
    move v3, v9

    goto/16 :goto_5

    :cond_f0
    move v3, v9

    goto/16 :goto_2

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

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x0
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x0
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
    .end packed-switch

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
    .end packed-switch

    :pswitch_data_17
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
    .end packed-switch

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
    .end packed-switch

    :pswitch_data_19
    .packed-switch 0x0
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
    .end packed-switch

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
    .end packed-switch

    :pswitch_data_1b
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
    .end packed-switch

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
    .end packed-switch

    :pswitch_data_1d
    .packed-switch 0x0
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
    .end packed-switch

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
    .end packed-switch

    :pswitch_data_1f
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
    .end packed-switch

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
    .end packed-switch

    :pswitch_data_21
    .packed-switch 0x0
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
    .end packed-switch

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
    .end packed-switch

    :pswitch_data_23
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
    .end packed-switch

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
    .end packed-switch

    :pswitch_data_25
    .packed-switch 0x0
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
    .end packed-switch

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
    .end packed-switch

    :pswitch_data_27
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
    .end packed-switch

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
    .end packed-switch

    :pswitch_data_29
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
    .end packed-switch

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
    .end packed-switch

    :pswitch_data_2b
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
    .end packed-switch

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
    .end packed-switch

    :pswitch_data_2d
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
    .end packed-switch

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_b8
        :pswitch_b9
        :pswitch_ba
        :pswitch_bb
    .end packed-switch

    :pswitch_data_2f
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
    .end packed-switch

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
        :pswitch_c3
    .end packed-switch

    :pswitch_data_31
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
    .end packed-switch

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_c8
        :pswitch_c9
        :pswitch_ca
        :pswitch_cb
    .end packed-switch

    :pswitch_data_33
    .packed-switch 0x0
        :pswitch_cc
        :pswitch_cd
        :pswitch_ce
        :pswitch_cf
    .end packed-switch

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_d0
        :pswitch_d1
        :pswitch_d2
        :pswitch_d3
    .end packed-switch

    :pswitch_data_35
    .packed-switch 0x0
        :pswitch_d4
        :pswitch_d5
        :pswitch_d6
        :pswitch_d7
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_d9
        :pswitch_da
        :pswitch_db
    .end packed-switch

    :pswitch_data_37
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_dd
        :pswitch_de
        :pswitch_df
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_e1
        :pswitch_e2
        :pswitch_e3
    .end packed-switch

    :pswitch_data_39
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_e5
        :pswitch_e6
        :pswitch_e7
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_e9
        :pswitch_ea
        :pswitch_eb
    .end packed-switch

    :pswitch_data_3b
    .packed-switch 0x0
        :pswitch_ec
        :pswitch_ed
        :pswitch_ee
        :pswitch_ef
    .end packed-switch

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_f0
        :pswitch_f1
        :pswitch_f2
        :pswitch_f3
    .end packed-switch

    :pswitch_data_3d
    .packed-switch 0x0
        :pswitch_f4
        :pswitch_f5
        :pswitch_f6
        :pswitch_f7
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_f8
        :pswitch_f9
        :pswitch_fa
        :pswitch_fb
    .end packed-switch

    :pswitch_data_3f
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_fd
        :pswitch_fe
        :pswitch_ff
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_100
        :pswitch_101
        :pswitch_102
        :pswitch_103
    .end packed-switch

    :pswitch_data_41
    .packed-switch 0x0
        :pswitch_104
        :pswitch_105
        :pswitch_106
        :pswitch_107
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_108
        :pswitch_109
        :pswitch_10a
        :pswitch_10b
    .end packed-switch

    :pswitch_data_43
    .packed-switch 0x0
        :pswitch_10c
        :pswitch_10d
        :pswitch_10e
        :pswitch_10f
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_110
        :pswitch_111
        :pswitch_112
        :pswitch_113
    .end packed-switch

    :pswitch_data_45
    .packed-switch 0x0
        :pswitch_114
        :pswitch_115
        :pswitch_116
        :pswitch_117
    .end packed-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_118
        :pswitch_119
        :pswitch_11a
        :pswitch_11b
    .end packed-switch

    :pswitch_data_47
    .packed-switch 0x0
        :pswitch_11c
        :pswitch_11d
        :pswitch_11e
        :pswitch_11f
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_120
        :pswitch_121
        :pswitch_122
        :pswitch_123
    .end packed-switch

    :pswitch_data_49
    .packed-switch 0x0
        :pswitch_124
        :pswitch_125
        :pswitch_126
        :pswitch_127
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_128
        :pswitch_129
        :pswitch_12a
        :pswitch_12b
    .end packed-switch

    :pswitch_data_4b
    .packed-switch 0x0
        :pswitch_12c
        :pswitch_12d
        :pswitch_12e
        :pswitch_12f
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_130
        :pswitch_131
        :pswitch_132
        :pswitch_133
    .end packed-switch

    :pswitch_data_4d
    .packed-switch 0x0
        :pswitch_134
        :pswitch_135
        :pswitch_136
        :pswitch_137
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_138
        :pswitch_139
        :pswitch_13a
        :pswitch_13b
    .end packed-switch

    :pswitch_data_4f
    .packed-switch 0x0
        :pswitch_13c
        :pswitch_13d
        :pswitch_13e
        :pswitch_13f
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _sdka(I)I
    .locals 1

    mul-int/lit16 v0, p0, 0x80

    return v0
.end method

.method private static _sdka(Lcom/skyhookwireless/wps/_sdkpb;)I
    .locals 2

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/skyhookwireless/wps/Protocol;->_sdkb(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/skyhookwireless/wps/Protocol;->_sdkc(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkpb;->getGpsLocations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/skyhookwireless/wps/Protocol;->_sdkd(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static _sdka(Lcom/skyhookwireless/_sdkv;Lcom/skyhookwireless/_sdkub;)Ljava/lang/String;
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->_sdka()Lcom/skyhookwireless/_sdkq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkq;->_sdkd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->_sdka()Lcom/skyhookwireless/_sdkq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkq;->_sdke()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->_sdka()Lcom/skyhookwireless/_sdkq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkq;->_sdkc()I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->_sdka()Lcom/skyhookwireless/_sdkq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkq;->_sdkb()I

    move-result v1

    if-eq v1, v4, :cond_0

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->_sdka()Lcom/skyhookwireless/_sdkq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkq;->_sdkc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->_sdka()Lcom/skyhookwireless/_sdkq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkq;->_sdkb()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/skyhookwireless/wps/Location;->_sdki:I

    if-eqz v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/skyhookwireless/wps/Protocol;->_sdka:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->_sdka()Lcom/skyhookwireless/_sdkq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkq;->_sdka()I

    move-result v1

    if-ne v1, v4, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->_sdka()Lcom/skyhookwireless/_sdkq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkq;->_sdka()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->_sdkb()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->_sdka()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->_sdkb()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkv;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    sget-object v3, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x10

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static _sdka(Lcom/skyhookwireless/_sdkzb;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkzb;->_sdka()Lcom/skyhookwireless/_sdkyb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkyb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static _sdka(Lcom/skyhookwireless/_sdkzb;J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkzb;->_sdka()Lcom/skyhookwireless/_sdkyb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkyb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x39

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkzb;->_sdkb()J

    move-result-wide v1

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x3a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static _sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSAuthentication;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0x80

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x4e

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x4f

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v1, 0x4d

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static _sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x3b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getSatellites()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0x45

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0x3e

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0x46

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0x43

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0x31

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0x41

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getHPE()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0x3d

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x44

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0x3f

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x3c

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getSpeed()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0x42

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/skyhookwireless/_sdkub;->_sdka(Lcom/skyhookwireless/_sdkub;)J

    move-result-wide v1

    sget-object v3, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x10

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x40

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static _sdka(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/skyhookwireless/wps/Protocol;->_sdkb(Ljava/util/List;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdkzb;

    invoke-static {p0}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Lcom/skyhookwireless/_sdkzb;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_2

    if-eqz v0, :cond_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method private static _sdka(Ljava/util/List;J)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/skyhookwireless/wps/Protocol;->_sdkb(Ljava/util/List;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdkzb;

    invoke-static {p0, p1, p2}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Lcom/skyhookwireless/_sdkzb;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_2

    if-eqz v0, :cond_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method private static _sdka(Ljava/util/List;Lcom/skyhookwireless/_sdkub;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/_sdkv;",
            ">;",
            "Lcom/skyhookwireless/_sdkub;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/skyhookwireless/wps/Protocol;->_sdkc(Ljava/util/List;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdkv;

    invoke-static {p0, p1}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Lcom/skyhookwireless/_sdkv;Lcom/skyhookwireless/_sdkub;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_2

    if-eqz v0, :cond_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method private static _sdkb(I)I
    .locals 1

    mul-int/lit16 v0, p0, 0x80

    return v0
.end method

.method private static _sdkb(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/skyhookwireless/wps/Protocol;->_sdka(I)I

    move-result v0

    return v0
.end method

.method private static _sdkb(Ljava/util/List;Lcom/skyhookwireless/_sdkub;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;",
            "Lcom/skyhookwireless/_sdkub;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/skyhookwireless/wps/Protocol;->_sdkd(Ljava/util/List;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-static {p0, p1}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_2

    if-eqz v0, :cond_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method private static _sdkc(I)I
    .locals 1

    mul-int/lit16 v0, p0, 0x100

    return v0
.end method

.method private static _sdkc(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/_sdkv;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/skyhookwireless/wps/Protocol;->_sdkb(I)I

    move-result v0

    return v0
.end method

.method private static _sdkd(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/skyhookwireless/wps/Protocol;->_sdkc(I)I

    move-result v0

    return v0
.end method

.method public static getIPLocationRQ(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSStreetAddressLookup;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0x100

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x18

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x37

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x19

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x17

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v1, 0x38

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocationRQ(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/_sdkpb;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSStreetAddressLookup;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0x100

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p2}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Lcom/skyhookwireless/wps/_sdkpb;)I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x18

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x19

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x17

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v2

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Ljava/util/List;Lcom/skyhookwireless/_sdkub;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkpb;->getGpsLocations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/skyhookwireless/wps/Protocol;->_sdkb(Ljava/util/List;Lcom/skyhookwireless/_sdkub;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegistrationRQ(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSAuthentication;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSAuthentication;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0x100

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v3, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v5, 0x18

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v5, 0x4a

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v5, 0x49

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0x47

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v3, 0x48

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x4c

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v1, 0x4b

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTilingRQ(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/ScanHistory;J)Ljava/lang/String;
    .locals 7

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    invoke-static {p0}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0x200

    invoke-static {p1}, Lcom/skyhookwireless/wps/Protocol;->rqSize(Lcom/skyhookwireless/wps/ScanHistory;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v3, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x18

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x23

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v5, 0x22

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v1

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/ScanHistory;->numAPs()I

    move-result v5

    if-lez v5, :cond_2

    sget-object v5, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v6, 0x1f

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/ScanHistory;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6, v3, v4}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    if-eqz v0, :cond_0

    :cond_1
    sget-object v3, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x20

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Lcom/skyhookwireless/wps/ScanHistory;->numCells()I

    move-result v3

    if-lez v3, :cond_5

    sget-object v3, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x1b

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/ScanHistory;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Ljava/util/List;Lcom/skyhookwireless/_sdkub;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_5

    if-eqz v0, :cond_3

    :cond_4
    sget-object v3, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x1d

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p1}, Lcom/skyhookwireless/wps/ScanHistory;->numGpsLocations()I

    move-result v3

    if-lez v3, :cond_8

    sget-object v3, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x1e

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/ScanHistory;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkpb;->getGpsLocations()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/skyhookwireless/wps/Protocol;->_sdkb(Ljava/util/List;Lcom/skyhookwireless/_sdkub;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_9

    if-eqz v0, :cond_6

    :cond_7
    sget-object v0, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v1, 0x1c

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    sget-object v0, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v1, 0x21

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserLocationRQ(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSLocation;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x17

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    invoke-static {p0}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0x200

    iget-object v3, p1, Lcom/skyhookwireless/wps/WPSLocation;->_sdkp:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-static {v3}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Lcom/skyhookwireless/wps/_sdkpb;)I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x18

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x2a

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/skyhookwireless/wps/WPSLocation;->_sdkp:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/skyhookwireless/wps/WPSLocation;->_sdkp:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/skyhookwireless/wps/Protocol;->_sdka(Ljava/util/List;Lcom/skyhookwireless/_sdkub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x2d

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x28

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x31

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/WPSLocation;->getStreetAddress()Lcom/skyhookwireless/wps/StreetAddress;

    move-result-object v1

    if-eqz v1, :cond_7

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x24

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getStreetNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x2e

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getStreetNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x25

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getAddressLine()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getAddressLine()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :cond_1
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    sget-object v7, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v8, 0x33

    aget-object v7, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v7, 0x29

    aget-object v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    if-nez v0, :cond_3

    if-eqz v0, :cond_1

    :cond_2
    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getCity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x32

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x2f

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x2c

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x36

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getStateCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getStateName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x26

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getStateCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x35

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getCountryName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v4, 0x2b

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/StreetAddress;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x30

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x27

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    sget-object v1, Lcom/skyhookwireless/wps/Protocol;->z:[Ljava/lang/String;

    const/16 v2, 0x34

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    :cond_8
    return-object v1
.end method

.method public static rqSize(Lcom/skyhookwireless/wps/ScanHistory;)I
    .locals 2

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/ScanHistory;->numAPs()I

    move-result v0

    invoke-static {v0}, Lcom/skyhookwireless/wps/Protocol;->_sdka(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/ScanHistory;->numCells()I

    move-result v1

    invoke-static {v1}, Lcom/skyhookwireless/wps/Protocol;->_sdkb(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/ScanHistory;->numGpsLocations()I

    move-result v1

    invoke-static {v1}, Lcom/skyhookwireless/wps/Protocol;->_sdkc(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
