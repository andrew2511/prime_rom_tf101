.class abstract Lcom/skyhookwireless/wps/_sdkf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/wps/_sdkr;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field protected final _sdka:Lcom/skyhookwireless/_sdkcb;

.field private _sdkb:Lcom/skyhookwireless/wps/_sdklc;

.field protected _sdkc:Lcom/skyhookwireless/_sdko;

.field protected final _sdkd:Lcom/skyhookwireless/wps/_sdkib;

.field private _sdke:Lcom/skyhookwireless/wps/_sdklb;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x43

    const/16 v12, 0x12

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "%\u0016{\u000ef\'We\u000bw+Ww\u001a`&\u0007f\u000bl-"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_3b

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

    const-string v1, " \u0016~\u000ea\"\u0014yB`\"\u0019|\rwc\u0015wBm6\u001b~"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_3a

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

    const-string v2, "7\u001e~\u000bm$Ws\u000cgc\u0005w\u000fl7\u00122\u000el \u0016f\u000bl-Wv\u0007w&\u0005\u007f\u000bm\"\u0003{\rmc\u0016`\u0007#\'\u001ea\u0003a/\u0012v"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_39

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

    const-string v1, "$\u0012f2f1\u001e}\u0006j ;}\u0001b7\u001e}\u000c+jWt\u0003j/\u0012vBt*\u0003zBf;\u0014w\u0012w*\u0018|"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_38

    move v3, v9

    :cond_6
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_9
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_3

    move v7, v11

    :goto_a
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_7

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_9

    :cond_7
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_b
    if-gt v2, v3, :cond_6

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x4

    const-string v2, "jW"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_37

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

    const-string v2, "hX?"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_36

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

    const-string v2, "oW"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_35

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

    const-string v2, ".\u0004"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_34

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

    const-string v2, "nW"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_33

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

    const-string v2, ".W"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_32

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

    const-string v2, "(\u001a=\n#"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_31

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

    const-string v2, "cK2W3s\u001aaN#*\u0019q\u0010f\"\u0004{\u000cdc\u0003}B6sG\u007f\u0011"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_30

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

    const-string v2, "$\u0012f2f1\u001e}\u0006j ;}\u0001b7\u001e}\u000c+jW\u007f\u0003zc\u0019}\u0016#3\u0012`\u0004l1\u001a2\u0015f/\u001b2\u0017m/\u0012a\u0011#0\u0012f6j/\u001e|\u0005+jW}\u0010#0\u0012f.l \u0016~$j/\u0012B\u0003w+\u0004:K#+\u0016aBa&\u0012|Bv0\u0012vBw,Ww\u000cb!\u001bwBo,\u0014s\u000e#/\u0018q\u0003w*\u0018|Bg&\u0003w\u0010n*\u0019s\u0016j,\u0019<"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_2f

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

    const-string v2, "1\u0012c\u0017f0\u0003w\u0006#3\u0012`\u000bl\'W"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_2e

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

    const-string v2, "7\u001f`\u0007b\'Ws\u000eq&\u0016v\u001b#1\u0002|\u000cj-\u0010>Bt,\u00195\u0016#0\u0003s\u0010wc\u0019w\u0015#7\u001f`\u0007b\'"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_2d

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

    const-string v2, " \u0018g\u000eg-PfBp7\u0016`\u0016#7\u001f`\u0007b\'Wt\rqc"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_2c

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

    const-string v2, "%\u001e|\u000bp+\u0012vBb!\u0018`\u0016j-\u001025S\u0010"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_2b

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

    const-string v2, "\"\u0015}\u0010w*\u0019uB`6\u0005`\u0007m7Wf\nq&\u0016v"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_2a

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

    const-string v1, "\"\u0015}\u0010w*\u0019uBT\u0013$"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_29

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

    move v7, v11

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

    aput-object v1, v0, v12

    const/16 v1, 0x13

    const-string v2, "\"\u0015}\u0010wk^2\u0004b*\u001bw\u0006#4\u001ef\n#&\u000fq\u0007s7\u001e}\u000c"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_28

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v13

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x77

    goto/16 :goto_1

    :pswitch_2
    move v7, v12

    goto/16 :goto_1

    :pswitch_3
    const/16 v7, 0x62

    goto/16 :goto_1

    :pswitch_4
    move v7, v13

    goto/16 :goto_4

    :pswitch_5
    const/16 v7, 0x77

    goto/16 :goto_4

    :pswitch_6
    move v7, v12

    goto/16 :goto_4

    :pswitch_7
    const/16 v7, 0x62

    goto/16 :goto_4

    :pswitch_8
    move v8, v13

    goto/16 :goto_7

    :pswitch_9
    const/16 v8, 0x77

    goto/16 :goto_7

    :pswitch_a
    move v8, v12

    goto/16 :goto_7

    :pswitch_b
    const/16 v8, 0x62

    goto/16 :goto_7

    :pswitch_c
    move v7, v13

    goto/16 :goto_a

    :pswitch_d
    const/16 v7, 0x77

    goto/16 :goto_a

    :pswitch_e
    move v7, v12

    goto/16 :goto_a

    :pswitch_f
    const/16 v7, 0x62

    goto/16 :goto_a

    :pswitch_10
    move v8, v13

    goto/16 :goto_d

    :pswitch_11
    const/16 v8, 0x77

    goto/16 :goto_d

    :pswitch_12
    move v8, v12

    goto/16 :goto_d

    :pswitch_13
    const/16 v8, 0x62

    goto/16 :goto_d

    :pswitch_14
    move v8, v13

    goto/16 :goto_10

    :pswitch_15
    const/16 v8, 0x77

    goto/16 :goto_10

    :pswitch_16
    move v8, v12

    goto/16 :goto_10

    :pswitch_17
    const/16 v8, 0x62

    goto/16 :goto_10

    :pswitch_18
    move v8, v13

    goto/16 :goto_13

    :pswitch_19
    const/16 v8, 0x77

    goto/16 :goto_13

    :pswitch_1a
    move v8, v12

    goto/16 :goto_13

    :pswitch_1b
    const/16 v8, 0x62

    goto/16 :goto_13

    :pswitch_1c
    move v8, v13

    goto/16 :goto_16

    :pswitch_1d
    const/16 v8, 0x77

    goto/16 :goto_16

    :pswitch_1e
    move v8, v12

    goto/16 :goto_16

    :pswitch_1f
    const/16 v8, 0x62

    goto/16 :goto_16

    :pswitch_20
    move v8, v13

    goto/16 :goto_19

    :pswitch_21
    const/16 v8, 0x77

    goto/16 :goto_19

    :pswitch_22
    move v8, v12

    goto/16 :goto_19

    :pswitch_23
    const/16 v8, 0x62

    goto/16 :goto_19

    :pswitch_24
    move v8, v13

    goto/16 :goto_1c

    :pswitch_25
    const/16 v8, 0x77

    goto/16 :goto_1c

    :pswitch_26
    move v8, v12

    goto/16 :goto_1c

    :pswitch_27
    const/16 v8, 0x62

    goto/16 :goto_1c

    :pswitch_28
    move v8, v13

    goto/16 :goto_1f

    :pswitch_29
    const/16 v8, 0x77

    goto/16 :goto_1f

    :pswitch_2a
    move v8, v12

    goto/16 :goto_1f

    :pswitch_2b
    const/16 v8, 0x62

    goto/16 :goto_1f

    :pswitch_2c
    move v8, v13

    goto/16 :goto_22

    :pswitch_2d
    const/16 v8, 0x77

    goto/16 :goto_22

    :pswitch_2e
    move v8, v12

    goto/16 :goto_22

    :pswitch_2f
    const/16 v8, 0x62

    goto/16 :goto_22

    :pswitch_30
    move v8, v13

    goto/16 :goto_25

    :pswitch_31
    const/16 v8, 0x77

    goto/16 :goto_25

    :pswitch_32
    move v8, v12

    goto/16 :goto_25

    :pswitch_33
    const/16 v8, 0x62

    goto/16 :goto_25

    :pswitch_34
    move v8, v13

    goto/16 :goto_28

    :pswitch_35
    const/16 v8, 0x77

    goto/16 :goto_28

    :pswitch_36
    move v8, v12

    goto/16 :goto_28

    :pswitch_37
    const/16 v8, 0x62

    goto/16 :goto_28

    :pswitch_38
    move v8, v13

    goto/16 :goto_2b

    :pswitch_39
    const/16 v8, 0x77

    goto/16 :goto_2b

    :pswitch_3a
    move v8, v12

    goto/16 :goto_2b

    :pswitch_3b
    const/16 v8, 0x62

    goto/16 :goto_2b

    :pswitch_3c
    move v8, v13

    goto/16 :goto_2e

    :pswitch_3d
    const/16 v8, 0x77

    goto/16 :goto_2e

    :pswitch_3e
    move v8, v12

    goto/16 :goto_2e

    :pswitch_3f
    const/16 v8, 0x62

    goto/16 :goto_2e

    :pswitch_40
    move v8, v13

    goto/16 :goto_31

    :pswitch_41
    const/16 v8, 0x77

    goto/16 :goto_31

    :pswitch_42
    move v8, v12

    goto/16 :goto_31

    :pswitch_43
    const/16 v8, 0x62

    goto/16 :goto_31

    :pswitch_44
    move v8, v13

    goto/16 :goto_34

    :pswitch_45
    const/16 v8, 0x77

    goto/16 :goto_34

    :pswitch_46
    move v8, v12

    goto/16 :goto_34

    :pswitch_47
    const/16 v8, 0x62

    goto/16 :goto_34

    :pswitch_48
    move v7, v13

    goto/16 :goto_37

    :pswitch_49
    const/16 v7, 0x77

    goto/16 :goto_37

    :pswitch_4a
    move v7, v12

    goto/16 :goto_37

    :pswitch_4b
    const/16 v7, 0x62

    goto/16 :goto_37

    :pswitch_4c
    move v8, v13

    goto/16 :goto_3a

    :pswitch_4d
    const/16 v8, 0x77

    goto/16 :goto_3a

    :pswitch_4e
    move v8, v12

    goto/16 :goto_3a

    :pswitch_4f
    const/16 v8, 0x62

    goto/16 :goto_3a

    :cond_28
    move v4, v9

    goto/16 :goto_3b

    :cond_29
    move v3, v9

    goto/16 :goto_38

    :cond_2a
    move v4, v9

    goto/16 :goto_35

    :cond_2b
    move v4, v9

    goto/16 :goto_32

    :cond_2c
    move v4, v9

    goto/16 :goto_2f

    :cond_2d
    move v4, v9

    goto/16 :goto_2c

    :cond_2e
    move v4, v9

    goto/16 :goto_29

    :cond_2f
    move v4, v9

    goto/16 :goto_26

    :cond_30
    move v4, v9

    goto/16 :goto_23

    :cond_31
    move v4, v9

    goto/16 :goto_20

    :cond_32
    move v4, v9

    goto/16 :goto_1d

    :cond_33
    move v4, v9

    goto/16 :goto_1a

    :cond_34
    move v4, v9

    goto/16 :goto_17

    :cond_35
    move v4, v9

    goto/16 :goto_14

    :cond_36
    move v4, v9

    goto/16 :goto_11

    :cond_37
    move v4, v9

    goto/16 :goto_e

    :cond_38
    move v3, v9

    goto/16 :goto_b

    :cond_39
    move v4, v9

    goto/16 :goto_8

    :cond_3a
    move v3, v9

    goto/16 :goto_5

    :cond_3b
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
.end method

.method protected constructor <init>(Lcom/skyhookwireless/_sdko;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/skyhookwireless/wps/_sdkib;

    invoke-direct {v0, v1, v1, v1}, Lcom/skyhookwireless/wps/_sdkib;-><init>(Lcom/skyhookwireless/wps/WPSAuthentication;Ljava/util/List;Lcom/skyhookwireless/wps/_sdkfc;)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkd:Lcom/skyhookwireless/wps/_sdkib;

    new-instance v0, Lcom/skyhookwireless/wps/_sdklb;

    invoke-direct {v0}, Lcom/skyhookwireless/wps/_sdklb;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdke:Lcom/skyhookwireless/wps/_sdklb;

    const-class v0, Lcom/skyhookwireless/wps/_sdkf;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkc:Lcom/skyhookwireless/_sdko;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-static {}, Lcom/skyhookwireless/wps/_sdkgc;->_sdkc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-static {}, Lcom/skyhookwireless/_sdkl;->_sdka()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    return-void
.end method

.method static _sdka(Lcom/skyhookwireless/wps/_sdkf;)Lcom/skyhookwireless/wps/_sdklb;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdke:Lcom/skyhookwireless/wps/_sdklb;

    return-object v0
.end method

.method static _sdka(Lcom/skyhookwireless/wps/WPSLocation;J)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getHPE()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getNAP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getNCell()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getSpeed()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSLocation;->getBearing()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method protected static final _sdka(Lcom/skyhookwireless/wps/_sdkjc;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/WPSReturnCode;)V

    return-void
.end method

.method protected static final _sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/WPSReturnCode;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-eq p1, v0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/skyhookwireless/wps/_sdkjc;->handleError(Lcom/skyhookwireless/wps/WPSReturnCode;)Lcom/skyhookwireless/wps/WPSContinuation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Lcom/skyhookwireless/wps/_sdkjc;->done()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private _sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkd:Lcom/skyhookwireless/wps/_sdkib;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdkib;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)V

    invoke-static {}, Lcom/skyhookwireless/_sdkmb;->_sdkf()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkd:Lcom/skyhookwireless/wps/_sdkib;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkib;->_sdkb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v3

    goto :goto_0
.end method

.method protected static final _sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/_sdkjc;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSAuthentication;->getRealm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/WPSAuthentication;->getRealm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_UNAUTHORIZED:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-static {p1, v0}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/WPSReturnCode;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private _sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/_sdke;)Z
    .locals 6

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkb:Lcom/skyhookwireless/wps/_sdklc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkb:Lcom/skyhookwireless/wps/_sdklc;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdklc;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    :try_start_1
    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-static {p1, v0}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/WPSReturnCode;)V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v5

    :goto_0
    return v0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/skyhookwireless/wps/_sdklc;

    invoke-direct {v0, p2}, Lcom/skyhookwireless/wps/_sdklc;-><init>(Lcom/skyhookwireless/wps/_sdke;)V

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdklc;->start()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkb:Lcom/skyhookwireless/wps/_sdklc;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x1

    if-nez v0, :cond_2

    :try_start_3
    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-static {p1, v1}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/WPSReturnCode;)V

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v5, :cond_3

    :try_start_5
    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-static {p1, v0}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/WPSReturnCode;)V

    :cond_3
    monitor-exit p0

    move v0, v5

    goto :goto_0

    :catchall_1
    move-exception v0

    if-nez v5, :cond_4

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-static {p1, v1}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/WPSReturnCode;)V

    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/skyhookwireless/wps/_sdkgc;->_sdkb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setServerUrl(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/skyhookwireless/_sdkmb;->_sdkc(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method _sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;JILcom/skyhookwireless/wps/WPSPeriodicLocationCallback;)V
    .locals 13

    if-nez p6, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    sget-object v4, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v0, p1

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/_sdkjc;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)Z

    const-wide/16 v3, 0x1f4

    cmp-long v3, p3, v3

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/16 v6, 0xd

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/16 v6, 0xb

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    const-wide/16 v3, 0x1f4

    move-wide v8, v3

    :goto_1
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkd:Lcom/skyhookwireless/wps/_sdkib;

    invoke-virtual {v3}, Lcom/skyhookwireless/wps/_sdkib;->_sdkb()Z

    move-result v3

    if-nez v3, :cond_2

    const-wide/16 v3, 0x3a98

    cmp-long v3, v8, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v4, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v12, Lcom/skyhookwireless/wps/_sdko;

    iget-object v11, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkc:Lcom/skyhookwireless/_sdko;

    new-instance v3, Lcom/skyhookwireless/wps/_sdkn;

    iget-object v5, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkc:Lcom/skyhookwireless/_sdko;

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/skyhookwireless/wps/_sdkn;-><init>(Lcom/skyhookwireless/wps/_sdkf;Lcom/skyhookwireless/_sdko;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;JLcom/skyhookwireless/wps/WPSPeriodicLocationCallback;)V

    move-object v6, v12

    move-object v7, v11

    move/from16 v10, p5

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/skyhookwireless/wps/_sdko;-><init>(Lcom/skyhookwireless/_sdko;JILcom/skyhookwireless/wps/_sdkkc;)V

    move-object v0, p0

    move-object/from16 v1, p6

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/_sdke;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_3
    move-wide/from16 v8, p3

    goto :goto_1
.end method

.method public abort()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkb:Lcom/skyhookwireless/wps/_sdklc;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkb:Lcom/skyhookwireless/wps/_sdklc;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdklc;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdklc;->abort()V

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdklc;->join()V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getIPLocation(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/IPLocationCallback;)V
    .locals 3

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkf;->abort()V

    invoke-static {p1, p3}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/_sdkjc;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/skyhookwireless/wps/_sdkj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/skyhookwireless/wps/_sdkj;-><init>(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/IPLocationCallback;Lcom/skyhookwireless/wps/_sdkh;)V

    invoke-direct {p0, p3, v0}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/_sdke;)Z

    goto :goto_0
.end method

.method public getLocation(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/WPSLocationCallback;)V
    .locals 11

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkf;->abort()V

    invoke-static {p1, p3}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/_sdkjc;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)Z

    new-instance v7, Lcom/skyhookwireless/wps/_sdko;

    iget-object v6, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkc:Lcom/skyhookwireless/_sdko;

    const-wide/16 v8, 0x1f4

    const/16 v10, 0x28

    new-instance v0, Lcom/skyhookwireless/wps/_sdkm;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/skyhookwireless/wps/_sdkm;-><init>(Lcom/skyhookwireless/wps/_sdkf;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/WPSLocationCallback;Lcom/skyhookwireless/wps/_sdkh;)V

    move-object v1, v7

    move-object v2, v6

    move-wide v3, v8

    move v5, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/skyhookwireless/wps/_sdko;-><init>(Lcom/skyhookwireless/_sdko;JILcom/skyhookwireless/wps/_sdkkc;)V

    invoke-direct {p0, p3, v7}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/_sdke;)Z

    goto :goto_0
.end method

.method public getPeriodicLocation(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;JILcom/skyhookwireless/wps/WPSPeriodicLocationCallback;)V
    .locals 4

    if-nez p6, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkf;->abort()V

    invoke-static {p1, p6}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/_sdkjc;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)Z

    invoke-virtual/range {p0 .. p6}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;JILcom/skyhookwireless/wps/WPSPeriodicLocationCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-static {p6, v0}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/WPSReturnCode;)V

    goto :goto_0
.end method

.method public registerUser(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/RegistrationCallback;)V
    .locals 3

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkf;->abort()V

    invoke-static {p1, p3}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/_sdkjc;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/skyhookwireless/wps/_sdkk;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/skyhookwireless/wps/_sdkk;-><init>(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/RegistrationCallback;Lcom/skyhookwireless/wps/_sdkh;)V

    invoke-direct {p0, p3, v0}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/_sdke;)Z

    goto :goto_0
.end method

.method public setLocalFilePaths(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkf;->abort()V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkd:Lcom/skyhookwireless/wps/_sdkib;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdkib;->_sdka(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setTiling(Ljava/lang/String;JJLcom/skyhookwireless/wps/TilingListener;)V
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkf;->abort()V

    iget-object v7, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdkd:Lcom/skyhookwireless/wps/_sdkib;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkfc;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/skyhookwireless/wps/_sdkfc;-><init>(Ljava/lang/String;JJLcom/skyhookwireless/wps/TilingListener;)V

    invoke-virtual {v7, v0}, Lcom/skyhookwireless/wps/_sdkib;->_sdka(Lcom/skyhookwireless/wps/_sdkfc;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkf;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public tuneLocation(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSLocation;Lcom/skyhookwireless/wps/TuneLocationCallback;)V
    .locals 3

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkf;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkf;->abort()V

    invoke-static {p1, p3}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/_sdkjc;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/skyhookwireless/wps/_sdkl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/skyhookwireless/wps/_sdkl;-><init>(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSLocation;Lcom/skyhookwireless/wps/TuneLocationCallback;Lcom/skyhookwireless/wps/_sdkh;)V

    invoke-direct {p0, p3, v0}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkjc;Lcom/skyhookwireless/wps/_sdke;)Z

    goto :goto_0
.end method
