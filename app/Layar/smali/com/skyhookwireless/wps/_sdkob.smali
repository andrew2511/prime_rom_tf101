.class final Lcom/skyhookwireless/wps/_sdkob;
.super Lcom/skyhookwireless/wps/Protocol;


# static fields
.field static final _sdke:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field protected final _sdkb:Lcom/skyhookwireless/_sdkcb;

.field protected final _sdkc:Lcom/skyhookwireless/_sdkmb;

.field protected final _sdkd:Lcom/skyhookwireless/_sdkhd;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x4e

    const/16 v12, 0x4c

    const/16 v11, 0x3f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "&\u0002)"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_4e

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

    const-string v1, "=\u0006-\u0014Z"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_4d

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

    const-string v2, ")\u001782Z#\u001d8\u0005S7Ze@Y/\u001b \u0005["

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_4c

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

    const-string v2, "\"\u001d\"\u0007V:\u0007(\u0005"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_4b

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

    const-string v2, " \u0011)\u000cS"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_4a

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

    const/4 v1, 0x5

    const-string v2, "-\u001d(\u0005"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_49

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

    move v8, v11

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

    const-string v2, "+\u0000>\u000fM"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_48

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

    const-string v2, ">\u001d?\u0014^\"_/\u000f[+"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_47

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

    const-string v2, ")\u001782Z#\u001d8\u0005S7Ze@V \u0006)\u0012M;\u00028\u0005["

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_46

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

    const-string v2, "\'\u0002"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_45

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

    const-string v2, "\"\u001d/\u0001K\'\u001d\""

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_44

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

    const-string v2, "\"\u00138\tK;\u0016)"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_43

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

    const-string v2, "/\u0016(\u0012Z=\u0001a\u000cV \u0017"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_42

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

    const-string v2, "=\u0006-\u0014J=R/\u000f[+Hl"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_41

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

    const/16 v1, 0xe

    const-string v2, "-\u001d9\u000eK<\u000b"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_40

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

    move v8, v11

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

    const-string v2, "+\n/\u0005O:\u001b#\u000e\u001f9\u001a%\u000cZn\u0011 \u000fL\'\u001c+@M+\u0001<\u000fQ=\u0017"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_3f

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

    move v8, v11

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

    const-string v2, " \u0013<"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_3e

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

    move v8, v11

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

    const-string v2, "-\u001b8\u0019"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_3d

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

    move v8, v11

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

    const/16 v1, 0x12

    const-string v2, "=\u0006>\u0005Z:_\"\u0015R,\u0017>"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_3c

    move v4, v9

    :cond_24
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_36
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_12

    move v8, v11

    :goto_37
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_25

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_36

    :cond_25
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_38
    if-gt v3, v4, :cond_24

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "-\u001d9\u000eK7"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_3b

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

    move v8, v11

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

    const-string v2, "a\u001b<MS!\u0011-\u0014V!\u001c"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_3a

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

    move v8, v11

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

    const-string v2, "a\u001e#\u0003^:\u001b#\u000e"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_39

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

    move v8, v11

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

    const-string v2, "a\u0007?\u0005Mc\u001e#\u0003^:\u001b#\u000e"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_38

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

    move v8, v11

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

    const-string v2, ":\u0007\"\u0005s!\u0011-\u0014V!\u001cdI\u001f(\u0013%\u000cZ*"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_37

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

    move v8, v11

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

    const-string v2, "<\u0017+\tL:\u0017>5L+\u0000dI\u001f(\u0013%\u000cZ*"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_36

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

    move v8, v11

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

    const-string v2, "a\u0000)\u0007V=\u0006>\u0001K\'\u001d\""

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_35

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

    move v8, v11

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/wps/_sdkob;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_34

    move v0, v10

    :goto_4e
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkob;->_sdke:Z

    return-void

    :cond_34
    move v0, v9

    goto :goto_4e

    :pswitch_0
    move v7, v13

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x72

    goto/16 :goto_1

    :pswitch_2
    move v7, v12

    goto/16 :goto_1

    :pswitch_3
    const/16 v7, 0x60

    goto/16 :goto_1

    :pswitch_4
    move v7, v13

    goto/16 :goto_4

    :pswitch_5
    const/16 v7, 0x72

    goto/16 :goto_4

    :pswitch_6
    move v7, v12

    goto/16 :goto_4

    :pswitch_7
    const/16 v7, 0x60

    goto/16 :goto_4

    :pswitch_8
    move v8, v13

    goto/16 :goto_7

    :pswitch_9
    const/16 v8, 0x72

    goto/16 :goto_7

    :pswitch_a
    move v8, v12

    goto/16 :goto_7

    :pswitch_b
    const/16 v8, 0x60

    goto/16 :goto_7

    :pswitch_c
    move v8, v13

    goto/16 :goto_a

    :pswitch_d
    const/16 v8, 0x72

    goto/16 :goto_a

    :pswitch_e
    move v8, v12

    goto/16 :goto_a

    :pswitch_f
    const/16 v8, 0x60

    goto/16 :goto_a

    :pswitch_10
    move v8, v13

    goto/16 :goto_d

    :pswitch_11
    const/16 v8, 0x72

    goto/16 :goto_d

    :pswitch_12
    move v8, v12

    goto/16 :goto_d

    :pswitch_13
    const/16 v8, 0x60

    goto/16 :goto_d

    :pswitch_14
    move v8, v13

    goto/16 :goto_10

    :pswitch_15
    const/16 v8, 0x72

    goto/16 :goto_10

    :pswitch_16
    move v8, v12

    goto/16 :goto_10

    :pswitch_17
    const/16 v8, 0x60

    goto/16 :goto_10

    :pswitch_18
    move v8, v13

    goto/16 :goto_13

    :pswitch_19
    const/16 v8, 0x72

    goto/16 :goto_13

    :pswitch_1a
    move v8, v12

    goto/16 :goto_13

    :pswitch_1b
    const/16 v8, 0x60

    goto/16 :goto_13

    :pswitch_1c
    move v8, v13

    goto/16 :goto_16

    :pswitch_1d
    const/16 v8, 0x72

    goto/16 :goto_16

    :pswitch_1e
    move v8, v12

    goto/16 :goto_16

    :pswitch_1f
    const/16 v8, 0x60

    goto/16 :goto_16

    :pswitch_20
    move v8, v13

    goto/16 :goto_19

    :pswitch_21
    const/16 v8, 0x72

    goto/16 :goto_19

    :pswitch_22
    move v8, v12

    goto/16 :goto_19

    :pswitch_23
    const/16 v8, 0x60

    goto/16 :goto_19

    :pswitch_24
    move v8, v13

    goto/16 :goto_1c

    :pswitch_25
    const/16 v8, 0x72

    goto/16 :goto_1c

    :pswitch_26
    move v8, v12

    goto/16 :goto_1c

    :pswitch_27
    const/16 v8, 0x60

    goto/16 :goto_1c

    :pswitch_28
    move v8, v13

    goto/16 :goto_1f

    :pswitch_29
    const/16 v8, 0x72

    goto/16 :goto_1f

    :pswitch_2a
    move v8, v12

    goto/16 :goto_1f

    :pswitch_2b
    const/16 v8, 0x60

    goto/16 :goto_1f

    :pswitch_2c
    move v8, v13

    goto/16 :goto_22

    :pswitch_2d
    const/16 v8, 0x72

    goto/16 :goto_22

    :pswitch_2e
    move v8, v12

    goto/16 :goto_22

    :pswitch_2f
    const/16 v8, 0x60

    goto/16 :goto_22

    :pswitch_30
    move v8, v13

    goto/16 :goto_25

    :pswitch_31
    const/16 v8, 0x72

    goto/16 :goto_25

    :pswitch_32
    move v8, v12

    goto/16 :goto_25

    :pswitch_33
    const/16 v8, 0x60

    goto/16 :goto_25

    :pswitch_34
    move v8, v13

    goto/16 :goto_28

    :pswitch_35
    const/16 v8, 0x72

    goto/16 :goto_28

    :pswitch_36
    move v8, v12

    goto/16 :goto_28

    :pswitch_37
    const/16 v8, 0x60

    goto/16 :goto_28

    :pswitch_38
    move v8, v13

    goto/16 :goto_2b

    :pswitch_39
    const/16 v8, 0x72

    goto/16 :goto_2b

    :pswitch_3a
    move v8, v12

    goto/16 :goto_2b

    :pswitch_3b
    const/16 v8, 0x60

    goto/16 :goto_2b

    :pswitch_3c
    move v8, v13

    goto/16 :goto_2e

    :pswitch_3d
    const/16 v8, 0x72

    goto/16 :goto_2e

    :pswitch_3e
    move v8, v12

    goto/16 :goto_2e

    :pswitch_3f
    const/16 v8, 0x60

    goto/16 :goto_2e

    :pswitch_40
    move v8, v13

    goto/16 :goto_31

    :pswitch_41
    const/16 v8, 0x72

    goto/16 :goto_31

    :pswitch_42
    move v8, v12

    goto/16 :goto_31

    :pswitch_43
    const/16 v8, 0x60

    goto/16 :goto_31

    :pswitch_44
    move v8, v13

    goto/16 :goto_34

    :pswitch_45
    const/16 v8, 0x72

    goto/16 :goto_34

    :pswitch_46
    move v8, v12

    goto/16 :goto_34

    :pswitch_47
    const/16 v8, 0x60

    goto/16 :goto_34

    :pswitch_48
    move v8, v13

    goto/16 :goto_37

    :pswitch_49
    const/16 v8, 0x72

    goto/16 :goto_37

    :pswitch_4a
    move v8, v12

    goto/16 :goto_37

    :pswitch_4b
    const/16 v8, 0x60

    goto/16 :goto_37

    :pswitch_4c
    move v8, v13

    goto/16 :goto_3a

    :pswitch_4d
    const/16 v8, 0x72

    goto/16 :goto_3a

    :pswitch_4e
    move v8, v12

    goto/16 :goto_3a

    :pswitch_4f
    const/16 v8, 0x60

    goto/16 :goto_3a

    :pswitch_50
    move v8, v13

    goto/16 :goto_3d

    :pswitch_51
    const/16 v8, 0x72

    goto/16 :goto_3d

    :pswitch_52
    move v8, v12

    goto/16 :goto_3d

    :pswitch_53
    const/16 v8, 0x60

    goto/16 :goto_3d

    :pswitch_54
    move v8, v13

    goto/16 :goto_40

    :pswitch_55
    const/16 v8, 0x72

    goto/16 :goto_40

    :pswitch_56
    move v8, v12

    goto/16 :goto_40

    :pswitch_57
    const/16 v8, 0x60

    goto/16 :goto_40

    :pswitch_58
    move v8, v13

    goto/16 :goto_43

    :pswitch_59
    const/16 v8, 0x72

    goto/16 :goto_43

    :pswitch_5a
    move v8, v12

    goto/16 :goto_43

    :pswitch_5b
    const/16 v8, 0x60

    goto/16 :goto_43

    :pswitch_5c
    move v8, v13

    goto/16 :goto_46

    :pswitch_5d
    const/16 v8, 0x72

    goto/16 :goto_46

    :pswitch_5e
    move v8, v12

    goto/16 :goto_46

    :pswitch_5f
    const/16 v8, 0x60

    goto/16 :goto_46

    :pswitch_60
    move v8, v13

    goto/16 :goto_49

    :pswitch_61
    const/16 v8, 0x72

    goto/16 :goto_49

    :pswitch_62
    move v8, v12

    goto/16 :goto_49

    :pswitch_63
    const/16 v8, 0x60

    goto/16 :goto_49

    :pswitch_64
    move v8, v13

    goto/16 :goto_4c

    :pswitch_65
    const/16 v8, 0x72

    goto/16 :goto_4c

    :pswitch_66
    move v8, v12

    goto/16 :goto_4c

    :pswitch_67
    const/16 v8, 0x60

    goto/16 :goto_4c

    :cond_35
    move v4, v9

    goto/16 :goto_4d

    :cond_36
    move v4, v9

    goto/16 :goto_4a

    :cond_37
    move v4, v9

    goto/16 :goto_47

    :cond_38
    move v4, v9

    goto/16 :goto_44

    :cond_39
    move v4, v9

    goto/16 :goto_41

    :cond_3a
    move v4, v9

    goto/16 :goto_3e

    :cond_3b
    move v4, v9

    goto/16 :goto_3b

    :cond_3c
    move v4, v9

    goto/16 :goto_38

    :cond_3d
    move v4, v9

    goto/16 :goto_35

    :cond_3e
    move v4, v9

    goto/16 :goto_32

    :cond_3f
    move v4, v9

    goto/16 :goto_2f

    :cond_40
    move v4, v9

    goto/16 :goto_2c

    :cond_41
    move v4, v9

    goto/16 :goto_29

    :cond_42
    move v4, v9

    goto/16 :goto_26

    :cond_43
    move v4, v9

    goto/16 :goto_23

    :cond_44
    move v4, v9

    goto/16 :goto_20

    :cond_45
    move v4, v9

    goto/16 :goto_1d

    :cond_46
    move v4, v9

    goto/16 :goto_1a

    :cond_47
    move v4, v9

    goto/16 :goto_17

    :cond_48
    move v4, v9

    goto/16 :goto_14

    :cond_49
    move v4, v9

    goto/16 :goto_11

    :cond_4a
    move v4, v9

    goto/16 :goto_e

    :cond_4b
    move v4, v9

    goto/16 :goto_b

    :cond_4c
    move v4, v9

    goto/16 :goto_8

    :cond_4d
    move v3, v9

    goto/16 :goto_5

    :cond_4e
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
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/skyhookwireless/wps/Protocol;-><init>()V

    const-class v0, Lcom/skyhookwireless/wps/_sdkob;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    invoke-static {}, Lcom/skyhookwireless/_sdkmb;->_sdkc()Lcom/skyhookwireless/_sdkmb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkc:Lcom/skyhookwireless/_sdkmb;

    new-instance v0, Lcom/skyhookwireless/_sdkhd;

    invoke-direct {v0}, Lcom/skyhookwireless/_sdkhd;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkd:Lcom/skyhookwireless/_sdkhd;

    return-void
.end method

.method private _sdka(Ljava/lang/String;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Ljava/lang/Class;)Lcom/skyhookwireless/_sdked;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/skyhookwireless/wps/Location;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/skyhookwireless/wps/WPSStreetAddressLookup;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "TT;>;"
        }
    .end annotation

    sget-boolean v3, Lcom/skyhookwireless/wps/_sdkob;->_sdke:Z

    if-nez v3, :cond_0

    const-class v3, Lcom/skyhookwireless/wps/IPLocation;

    move-object/from16 v0, p3

    move-object v1, v3

    if-eq v0, v1, :cond_0

    const-class v3, Lcom/skyhookwireless/wps/_sdkdb;

    move-object/from16 v0, p3

    move-object v1, v3

    if-eq v0, v1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v12

    const-class v4, Lcom/skyhookwireless/wps/IPLocation;

    move-object/from16 v0, p3

    move-object v1, v4

    if-ne v0, v1, :cond_4

    sget-object v4, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v5, 0x14

    aget-object v4, v4, v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkc:Lcom/skyhookwireless/_sdkmb;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/skyhookwireless/_sdkmb;->_sdka(Ljava/lang/String;Ljava/lang/String;)Lcom/skyhookwireless/_sdkkb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v13

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v6, 0xd

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/skyhookwireless/_sdkkb;->_sdka()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v13}, Lcom/skyhookwireless/_sdkkb;->_sdka()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    sget-object v3, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_SERVER_UNAVAILABLE:Lcom/skyhookwireless/wps/WPSReturnCode;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b

    move-result-object v3

    if-eqz v13, :cond_3

    :try_start_2
    invoke-virtual {v13}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a

    :cond_3
    :goto_1
    return-object v3

    :cond_4
    :try_start_3
    sget-object v4, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v5, 0x15

    aget-object v4, v4, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    :sswitch_0
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkd:Lcom/skyhookwireless/_sdkhd;

    move-object v3, v0

    invoke-virtual {v13}, Lcom/skyhookwireless/_sdkkb;->_sdkc()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/skyhookwireless/_sdkhd;->_sdka(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v14

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v14, v3}, Lcom/skyhookwireless/_sdkhd;->_sdkb(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_LOCATION_CANNOT_BE_DETERMINED:Lcom/skyhookwireless/wps/WPSReturnCode;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_b

    move-result-object v3

    if-eqz v13, :cond_3

    :try_start_5
    invoke-virtual {v13}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v6, v6, v7

    :goto_2
    invoke-virtual {v5, v6, v4}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    :try_start_6
    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-static {v14, v3}, Lcom/skyhookwireless/_sdkhd;->_sdke(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x416312d000000000L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x416312d000000000L

    div-double v4, v3, v5

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v3, v3, v6

    invoke-static {v14, v3}, Lcom/skyhookwireless/_sdkhd;->_sdke(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v10, 0x416312d000000000L

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v10, 0x416312d000000000L

    div-double/2addr v6, v10

    const/4 v3, 0x0

    sget-object v10, Lcom/skyhookwireless/wps/WPSStreetAddressLookup;->WPS_NO_STREET_ADDRESS_LOOKUP:Lcom/skyhookwireless/wps/WPSStreetAddressLookup;

    move-object/from16 v0, p2

    move-object v1, v10

    if-eq v0, v1, :cond_c

    new-instance v3, Lcom/skyhookwireless/wps/StreetAddress;

    invoke-direct {v3}, Lcom/skyhookwireless/wps/StreetAddress;-><init>()V

    sget-object v10, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v11, 0x11

    aget-object v10, v10, v11

    invoke-static {v14, v10}, Lcom/skyhookwireless/_sdkhd;->_sdkb(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/skyhookwireless/wps/StreetAddress;->_sdkb:Ljava/lang/String;

    sget-object v10, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/4 v11, 0x7

    aget-object v10, v10, v11

    invoke-static {v14, v10}, Lcom/skyhookwireless/_sdkhd;->_sdkb(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/skyhookwireless/wps/StreetAddress;->_sdkc:Ljava/lang/String;

    sget-object v10, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    sget-object v11, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/4 v15, 0x5

    aget-object v11, v11, v15

    invoke-static {v14, v10, v11}, Lcom/skyhookwireless/_sdkhd;->_sdka(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/skyhookwireless/wps/StreetAddress;->_sdkh:Ljava/lang/String;

    sget-object v10, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v14, v10}, Lcom/skyhookwireless/_sdkhd;->_sdkb(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/skyhookwireless/wps/StreetAddress;->_sdkg:Ljava/lang/String;

    sget-object v10, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v11, 0xe

    aget-object v10, v10, v11

    sget-object v11, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/4 v15, 0x5

    aget-object v11, v11, v15

    invoke-static {v14, v10, v11}, Lcom/skyhookwireless/_sdkhd;->_sdka(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/skyhookwireless/wps/StreetAddress;->_sdkj:Ljava/lang/String;

    sget-object v10, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v11, 0xe

    aget-object v10, v10, v11

    invoke-static {v14, v10}, Lcom/skyhookwireless/_sdkhd;->_sdkb(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/skyhookwireless/wps/StreetAddress;->_sdki:Ljava/lang/String;

    sget-object v10, Lcom/skyhookwireless/wps/WPSStreetAddressLookup;->WPS_FULL_STREET_ADDRESS_LOOKUP:Lcom/skyhookwireless/wps/WPSStreetAddressLookup;

    move-object/from16 v0, p2

    move-object v1, v10

    if-ne v0, v1, :cond_6

    sget-object v10, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v11, 0x12

    aget-object v10, v10, v11

    invoke-static {v14, v10}, Lcom/skyhookwireless/_sdkhd;->_sdkb(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/skyhookwireless/wps/StreetAddress;->_sdka:Ljava/lang/String;

    sget-object v10, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v11, 0xc

    aget-object v10, v10, v11

    invoke-static {v14, v10}, Lcom/skyhookwireless/_sdkhd;->_sdkc(Lorg/w3c/dom/Document;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/skyhookwireless/wps/StreetAddress;->_sdkk:[Ljava/lang/String;

    sget-object v10, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v11, 0x13

    aget-object v10, v10, v11

    invoke-static {v14, v10}, Lcom/skyhookwireless/_sdkhd;->_sdkb(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/skyhookwireless/wps/StreetAddress;->_sdkd:Ljava/lang/String;

    :cond_6
    move-object v11, v3

    :goto_3
    const-class v3, Lcom/skyhookwireless/wps/IPLocation;

    move-object/from16 v0, p3

    move-object v1, v3

    if-ne v0, v1, :cond_7

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v10, 0x9

    aget-object v3, v3, v10

    invoke-static {v14, v3}, Lcom/skyhookwireless/_sdkhd;->_sdkb(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    new-instance v3, Lcom/skyhookwireless/wps/IPLocation;

    invoke-direct/range {v3 .. v11}, Lcom/skyhookwireless/wps/IPLocation;-><init>(DDJLjava/lang/String;Lcom/skyhookwireless/wps/StreetAddress;)V

    sget v10, Lcom/skyhookwireless/wps/Location;->_sdki:I

    if-eqz v10, :cond_9

    :cond_7
    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v3, v3, v10

    invoke-static {v14, v3}, Lcom/skyhookwireless/_sdkhd;->_sdkd(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v10, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v15, 0xa

    aget-object v10, v10, v15

    sget-object v15, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v16, 0x10

    aget-object v15, v15, v16

    invoke-static {v14, v10, v15}, Lcom/skyhookwireless/_sdkhd;->_sdkb(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v15, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v16, 0xa

    aget-object v15, v15, v16

    sget-object v16, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v17, 0x4

    aget-object v16, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/skyhookwireless/_sdkhd;->_sdkb(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    if-nez v14, :cond_8

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :cond_8
    new-instance v15, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-direct {v15}, Lcom/skyhookwireless/wps/_sdkdb;-><init>()V

    invoke-virtual {v15, v4, v5}, Lcom/skyhookwireless/wps/_sdkdb;->setLatitude(D)V

    invoke-virtual {v15, v6, v7}, Lcom/skyhookwireless/wps/_sdkdb;->setLongitude(D)V

    invoke-virtual {v15, v8, v9}, Lcom/skyhookwireless/wps/_sdkdb;->setTime(J)V

    invoke-virtual {v15, v12}, Lcom/skyhookwireless/wps/_sdkdb;->setAge(Lcom/skyhookwireless/_sdkub;)V

    invoke-virtual {v15, v3}, Lcom/skyhookwireless/wps/_sdkdb;->setHPE(I)V

    invoke-virtual {v15, v10}, Lcom/skyhookwireless/wps/_sdkdb;->setNAP(I)V

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/skyhookwireless/wps/_sdkdb;->_sdka(I)V

    invoke-virtual {v15, v11}, Lcom/skyhookwireless/wps/_sdkdb;->setStreetAddress(Lcom/skyhookwireless/wps/StreetAddress;)V

    move-object v3, v15

    :cond_9
    sget-object v4, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b

    move-result-object v3

    if-eqz v13, :cond_3

    :try_start_7
    invoke-virtual {v13}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v6, v6, v7

    goto/16 :goto_2

    :sswitch_1
    :try_start_8
    sget-object v3, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_UNAUTHORIZED:Lcom/skyhookwireless/wps/WPSReturnCode;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_b

    move-result-object v3

    if-eqz v13, :cond_3

    :try_start_9
    invoke-virtual {v13}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v6, v6, v7

    goto/16 :goto_2

    :catch_3
    move-exception v4

    :goto_4
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V

    sget-object v4, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR:Lcom/skyhookwireless/wps/WPSReturnCode;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v4

    if-eqz v3, :cond_a

    :try_start_b
    invoke-virtual {v3}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9

    :cond_a
    :goto_5
    move-object v3, v4

    goto/16 :goto_1

    :catch_4
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    :goto_6
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v3}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v3, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_SERVER_UNAVAILABLE:Lcom/skyhookwireless/wps/WPSReturnCode;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-result-object v3

    if-eqz v4, :cond_3

    :try_start_d
    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v6, v6, v7

    goto/16 :goto_2

    :catch_6
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    :goto_7
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v3}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v3, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR:Lcom/skyhookwireless/wps/WPSReturnCode;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-result-object v3

    if-eqz v4, :cond_3

    :try_start_f
    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v6, v6, v7

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    :goto_8
    if-eqz v4, :cond_b

    :try_start_10
    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    :cond_b
    :goto_9
    throw v3

    :catch_8
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v4}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_9
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v3}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_a
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v6, v6, v7

    goto/16 :goto_2

    :catchall_1
    move-exception v3

    move-object v4, v13

    goto :goto_8

    :catchall_2
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto :goto_8

    :catchall_3
    move-exception v3

    goto :goto_8

    :catch_b
    move-exception v3

    move-object v4, v13

    goto :goto_7

    :catch_c
    move-exception v3

    move-object v4, v13

    goto/16 :goto_6

    :catch_d
    move-exception v3

    move-object v3, v13

    goto/16 :goto_4

    :cond_c
    move-object v11, v3

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
        0x193 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method _sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;)Lcom/skyhookwireless/_sdked;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/WPSAuthentication;",
            "Lcom/skyhookwireless/wps/WPSStreetAddressLookup;",
            ")",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/IPLocation;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/skyhookwireless/wps/_sdkob;->getIPLocationRQ(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/skyhookwireless/wps/IPLocation;

    invoke-direct {p0, v0, p2, v1}, Lcom/skyhookwireless/wps/_sdkob;->_sdka(Ljava/lang/String;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Ljava/lang/Class;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    return-object v0
.end method

.method _sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/_sdked;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/WPSAuthentication;",
            "Lcom/skyhookwireless/wps/WPSStreetAddressLookup;",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            ")",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/skyhookwireless/wps/_sdkpb;->hasBeacons()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_NO_WIFI_IN_RANGE:Lcom/skyhookwireless/wps/WPSReturnCode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p3}, Lcom/skyhookwireless/wps/_sdkpb;->getLatestBeacons()Lcom/skyhookwireless/wps/_sdkpb;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/skyhookwireless/wps/_sdkob;->getLocationRQ(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/_sdkpb;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-direct {p0, v0, p2, v1}, Lcom/skyhookwireless/wps/_sdkob;->_sdka(Ljava/lang/String;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Ljava/lang/Class;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto :goto_0
.end method

.method _sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSAuthentication;)Lcom/skyhookwireless/wps/WPSReturnCode;
    .locals 7

    const/16 v5, 0xf

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkc:Lcom/skyhookwireless/_sdkmb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-static {p1, p2}, Lcom/skyhookwireless/wps/_sdkob;->getRegistrationRQ(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSAuthentication;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/skyhookwireless/_sdkmb;->_sdka(Ljava/lang/String;Ljava/lang/String;)Lcom/skyhookwireless/_sdkkb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdka()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdka()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_SERVER_UNAVAILABLE:Lcom/skyhookwireless/wps/WPSReturnCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_1
    move-object v0, v1

    :cond_2
    :goto_2
    return-object v0

    :sswitch_0
    :try_start_3
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkd:Lcom/skyhookwireless/_sdkhd;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdkc()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkhd;->_sdka(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/skyhookwireless/_sdkhd;->_sdkb(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_LOCATION_CANNOT_BE_DETERMINED:Lcom/skyhookwireless/wps/WPSReturnCode;

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_UNAUTHORIZED:Lcom/skyhookwireless/wps/WPSReturnCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v4, 0x18

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_SERVER_UNAVAILABLE:Lcom/skyhookwireless/wps/WPSReturnCode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    aget-object v3, v3, v5

    :goto_4
    invoke-virtual {v2, v3, v1}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_5
    :try_start_6
    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v4, 0x18

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR:Lcom/skyhookwireless/wps/WPSReturnCode;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    aget-object v3, v3, v5

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_6
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_4
    :goto_7
    throw v0

    :catch_4
    move-exception v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3, v1}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_5
    move-exception v0

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
        0x193 -> :sswitch_1
    .end sparse-switch
.end method

.method _sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSLocation;)Lcom/skyhookwireless/wps/WPSReturnCode;
    .locals 7

    const/16 v5, 0xf

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkc:Lcom/skyhookwireless/_sdkmb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-static {p1, p2}, Lcom/skyhookwireless/wps/_sdkob;->getUserLocationRQ(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSLocation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/skyhookwireless/_sdkmb;->_sdka(Ljava/lang/String;Ljava/lang/String;)Lcom/skyhookwireless/_sdkkb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdka()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdka()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_SERVER_UNAVAILABLE:Lcom/skyhookwireless/wps/WPSReturnCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_1
    move-object v0, v1

    :cond_2
    :goto_2
    return-object v0

    :sswitch_0
    :try_start_3
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkd:Lcom/skyhookwireless/_sdkhd;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdkc()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkhd;->_sdka(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/skyhookwireless/_sdkhd;->_sdkb(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_LOCATION_CANNOT_BE_DETERMINED:Lcom/skyhookwireless/wps/WPSReturnCode;

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_UNAUTHORIZED:Lcom/skyhookwireless/wps/WPSReturnCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v4, 0x17

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_SERVER_UNAVAILABLE:Lcom/skyhookwireless/wps/WPSReturnCode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    aget-object v3, v3, v5

    :goto_4
    invoke-virtual {v2, v3, v1}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_5
    :try_start_6
    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    const/16 v4, 0x17

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR:Lcom/skyhookwireless/wps/WPSReturnCode;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    aget-object v3, v3, v5

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_6
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_4
    :goto_7
    throw v0

    :catch_4
    move-exception v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3, v1}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_5
    move-exception v0

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/wps/_sdkob;->z:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
        0x193 -> :sswitch_1
    .end sparse-switch
.end method

.method _sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/_sdkyc;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/WPSAuthentication;",
            "Lcom/skyhookwireless/wps/WPSStreetAddressLookup;",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            "Lcom/skyhookwireless/_sdkyc;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/skyhookwireless/wps/_sdknc;

    new-instance v1, Lcom/skyhookwireless/wps/_sdkjb;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/skyhookwireless/wps/_sdkjb;-><init>(Lcom/skyhookwireless/wps/_sdkob;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/_sdkpb;)V

    invoke-direct {v0, p4, v1}, Lcom/skyhookwireless/wps/_sdknc;-><init>(Lcom/skyhookwireless/_sdkzc;Ljava/util/concurrent/Callable;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method _sdka()V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkob;->_sdkc:Lcom/skyhookwireless/_sdkmb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkmb;->_sdka()V

    return-void
.end method
