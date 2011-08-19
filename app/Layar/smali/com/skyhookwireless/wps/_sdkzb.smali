.class Lcom/skyhookwireless/wps/_sdkzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/wps/_sdkec;


# static fields
.field static final _sdka:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field final _sdkb:Lcom/skyhookwireless/wps/_sdkyb;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x43

    const/16 v12, 0x37

    const/16 v11, 0x36

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "S%4X(X+\'S \u0017>*Z!\u0017"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_2d

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

    const/16 v7, 0x44

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

    const-string v1, "E/ S-A/\'\u0016\u0010^&&d\u0017"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_2c

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

    const/16 v7, 0x44

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

    const-string v2, "Q+*Z!Sj7YdD+5SdC#/Sd"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_2b

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

    const/16 v8, 0x44

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

    const-string v2, "D=*B\'_#-QdC%c[%^$cB-[/c"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_2a

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

    const/16 v8, 0x44

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

    const-string v2, "Z+*XdC#/SdE/.W-Y9c"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_29

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

    const/16 v8, 0x44

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

    const-string v2, "B$(X+@$"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_28

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

    const/16 v8, 0x44

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

    const-string v2, "\u0017+0\u00167B-$S7C/\'\u0016&Nj0S6A/1"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_27

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

    const/16 v8, 0x44

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

    const-string v2, "\u0017>*Z!Dj7YdS%4X(X+\'"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_26

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

    const/16 v8, 0x44

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

    const-string v2, "[% W0^%-\u00167R85S6\u00178&B1E$&Rd"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_25

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

    const/16 v8, 0x44

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

    const-string v2, "V.\'_*Pj&X0E3cB+\u0017$6Z(\u001a>*Z!\u0017)\"U,R"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_24

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

    const/16 v8, 0x44

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

    const-string v2, "\u0017,1Y)\u0017"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_23

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

    const/16 v8, 0x44

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

    const-string v2, "\u0017>*Z!D"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_22

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

    const/16 v8, 0x44

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

    const-string v2, "c#/_*P\t/_!Y>cP-E/\'\u00160^&*X#\u0017,\"_(B8&\u0016l"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_21

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

    const/16 v8, 0x44

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

    const-string v2, "\u001ej"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_20

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

    const/16 v8, 0x44

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

    const-string v2, "c#/_*P\t/_!Y>cP-E/\'\u00160^&&\u0016 X=-Z+V.cP%^&6D!\u0017b"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1f

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

    const/16 v8, 0x44

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/wps/_sdkyb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v10

    :goto_2d
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkzb;->_sdka:Z

    return-void

    :cond_1e
    move v0, v9

    goto :goto_2d

    :pswitch_0
    move v7, v12

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x4a

    goto/16 :goto_1

    :pswitch_2
    move v7, v13

    goto/16 :goto_1

    :pswitch_3
    move v7, v11

    goto/16 :goto_1

    :pswitch_4
    move v7, v12

    goto/16 :goto_4

    :pswitch_5
    const/16 v7, 0x4a

    goto/16 :goto_4

    :pswitch_6
    move v7, v13

    goto/16 :goto_4

    :pswitch_7
    move v7, v11

    goto/16 :goto_4

    :pswitch_8
    move v8, v12

    goto/16 :goto_7

    :pswitch_9
    const/16 v8, 0x4a

    goto/16 :goto_7

    :pswitch_a
    move v8, v13

    goto/16 :goto_7

    :pswitch_b
    move v8, v11

    goto/16 :goto_7

    :pswitch_c
    move v8, v12

    goto/16 :goto_a

    :pswitch_d
    const/16 v8, 0x4a

    goto/16 :goto_a

    :pswitch_e
    move v8, v13

    goto/16 :goto_a

    :pswitch_f
    move v8, v11

    goto/16 :goto_a

    :pswitch_10
    move v8, v12

    goto/16 :goto_d

    :pswitch_11
    const/16 v8, 0x4a

    goto/16 :goto_d

    :pswitch_12
    move v8, v13

    goto/16 :goto_d

    :pswitch_13
    move v8, v11

    goto/16 :goto_d

    :pswitch_14
    move v8, v12

    goto/16 :goto_10

    :pswitch_15
    const/16 v8, 0x4a

    goto/16 :goto_10

    :pswitch_16
    move v8, v13

    goto/16 :goto_10

    :pswitch_17
    move v8, v11

    goto/16 :goto_10

    :pswitch_18
    move v8, v12

    goto/16 :goto_13

    :pswitch_19
    const/16 v8, 0x4a

    goto/16 :goto_13

    :pswitch_1a
    move v8, v13

    goto/16 :goto_13

    :pswitch_1b
    move v8, v11

    goto/16 :goto_13

    :pswitch_1c
    move v8, v12

    goto/16 :goto_16

    :pswitch_1d
    const/16 v8, 0x4a

    goto/16 :goto_16

    :pswitch_1e
    move v8, v13

    goto/16 :goto_16

    :pswitch_1f
    move v8, v11

    goto/16 :goto_16

    :pswitch_20
    move v8, v12

    goto/16 :goto_19

    :pswitch_21
    const/16 v8, 0x4a

    goto/16 :goto_19

    :pswitch_22
    move v8, v13

    goto/16 :goto_19

    :pswitch_23
    move v8, v11

    goto/16 :goto_19

    :pswitch_24
    move v8, v12

    goto/16 :goto_1c

    :pswitch_25
    const/16 v8, 0x4a

    goto/16 :goto_1c

    :pswitch_26
    move v8, v13

    goto/16 :goto_1c

    :pswitch_27
    move v8, v11

    goto/16 :goto_1c

    :pswitch_28
    move v8, v12

    goto/16 :goto_1f

    :pswitch_29
    const/16 v8, 0x4a

    goto/16 :goto_1f

    :pswitch_2a
    move v8, v13

    goto/16 :goto_1f

    :pswitch_2b
    move v8, v11

    goto/16 :goto_1f

    :pswitch_2c
    move v8, v12

    goto/16 :goto_22

    :pswitch_2d
    const/16 v8, 0x4a

    goto/16 :goto_22

    :pswitch_2e
    move v8, v13

    goto/16 :goto_22

    :pswitch_2f
    move v8, v11

    goto/16 :goto_22

    :pswitch_30
    move v8, v12

    goto/16 :goto_25

    :pswitch_31
    const/16 v8, 0x4a

    goto/16 :goto_25

    :pswitch_32
    move v8, v13

    goto/16 :goto_25

    :pswitch_33
    move v8, v11

    goto/16 :goto_25

    :pswitch_34
    move v8, v12

    goto/16 :goto_28

    :pswitch_35
    const/16 v8, 0x4a

    goto/16 :goto_28

    :pswitch_36
    move v8, v13

    goto/16 :goto_28

    :pswitch_37
    move v8, v11

    goto/16 :goto_28

    :pswitch_38
    move v8, v12

    goto/16 :goto_2b

    :pswitch_39
    const/16 v8, 0x4a

    goto/16 :goto_2b

    :pswitch_3a
    move v8, v13

    goto/16 :goto_2b

    :pswitch_3b
    move v8, v11

    goto/16 :goto_2b

    :cond_1f
    move v4, v9

    goto/16 :goto_2c

    :cond_20
    move v4, v9

    goto/16 :goto_29

    :cond_21
    move v4, v9

    goto/16 :goto_26

    :cond_22
    move v4, v9

    goto/16 :goto_23

    :cond_23
    move v4, v9

    goto/16 :goto_20

    :cond_24
    move v4, v9

    goto/16 :goto_1d

    :cond_25
    move v4, v9

    goto/16 :goto_1a

    :cond_26
    move v4, v9

    goto/16 :goto_17

    :cond_27
    move v4, v9

    goto/16 :goto_14

    :cond_28
    move v4, v9

    goto/16 :goto_11

    :cond_29
    move v4, v9

    goto/16 :goto_e

    :cond_2a
    move v4, v9

    goto/16 :goto_b

    :cond_2b
    move v4, v9

    goto/16 :goto_8

    :cond_2c
    move v3, v9

    goto/16 :goto_5

    :cond_2d
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
.end method

.method constructor <init>(Lcom/skyhookwireless/wps/_sdkyb;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _sdka(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v1}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkj(Lcom/skyhookwireless/wps/_sdkyb;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public _sdka(Lcom/skyhookwireless/wps/_sdkxb;Ljava/io/InputStream;)V
    .locals 5

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0, p1, p2}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;Lcom/skyhookwireless/wps/_sdkxb;Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdki(Lcom/skyhookwireless/wps/_sdkyb;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v1}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public _sdka(Ljava/util/LinkedList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkxb;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkfc;->_sdke:Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkzb;->_sdka:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb(Lcom/skyhookwireless/wps/_sdkyb;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;Z)Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkc(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/wps/_sdkvb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkvb;->_sdkc()Lcom/skyhookwireless/wps/ScanHistory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/ScanHistory;->getLastScan()Lcom/skyhookwireless/wps/_sdkpb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v3}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkc(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/wps/_sdkvb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/skyhookwireless/wps/_sdkvb;->_sdke()V

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v1}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    sget-object v3, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkzb;->_sdka:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkzb;->_sdka:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v1}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkd(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/wps/Cache;

    move-result-object v1

    new-instance v3, Lcom/skyhookwireless/wps/_sdkpb;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Lcom/skyhookwireless/wps/_sdkpb;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkdb;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/skyhookwireless/wps/Cache;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkxb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkxb;->_sdka()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v3}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v3}, Lcom/skyhookwireless/wps/_sdkyb;->_sdke(Lcom/skyhookwireless/wps/_sdkyb;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v3}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v5}, Lcom/skyhookwireless/wps/_sdkyb;->_sdke(Lcom/skyhookwireless/wps/_sdkyb;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v1, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v3}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v5}, Lcom/skyhookwireless/wps/_sdkyb;->_sdke(Lcom/skyhookwireless/wps/_sdkyb;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    sget-object v5, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v3, v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v3}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v3}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkf(Lcom/skyhookwireless/wps/_sdkyb;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v0, v3}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;I)I

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v4}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkg(Lcom/skyhookwireless/wps/_sdkyb;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkh(Lcom/skyhookwireless/wps/_sdkyb;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb(Lcom/skyhookwireless/wps/_sdkyb;Z)Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdki(Lcom/skyhookwireless/wps/_sdkyb;)V

    :cond_9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget v0, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    if-eqz v0, :cond_4

    if-eqz v1, :cond_b

    move v0, v8

    :goto_2
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkfc;->_sdke:Z

    goto/16 :goto_0

    :cond_a
    :try_start_2
    iget-object v5, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v5}, Lcom/skyhookwireless/wps/_sdkyb;->_sdke(Lcom/skyhookwireless/wps/_sdkyb;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto/16 :goto_1

    :cond_b
    move v0, v7

    goto :goto_2
.end method

.method public _sdkb(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkzb;->z:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkzb;->_sdkb:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdki(Lcom/skyhookwireless/wps/_sdkyb;)V

    return-void
.end method
