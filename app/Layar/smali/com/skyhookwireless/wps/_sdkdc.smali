.class final Lcom/skyhookwireless/wps/_sdkdc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/wps/_sdke;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkb:Ljava/lang/String;

.field private final _sdkc:Lcom/skyhookwireless/wps/_sdkec;

.field private final _sdkd:Lcom/skyhookwireless/_sdkmb;

.field private final _sdke:Lcom/skyhookwireless/_sdkhd;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x41

    const/16 v12, 0x25

    const/16 v11, 0xc

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "L+"

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

    move v7, v13

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

    const-string v1, "C.\u0018`$Ao\u0005caU.\u0003\u007f$\u0005=\u0014\u007f1J!\u0002i"

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

    move v7, v13

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

    const-string v2, "P=\u001d"

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

    move v8, v13

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

    const-string v2, "S*\u0003\u007f(J!"

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

    move v8, v13

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

    const-string v2, "@=\u0003c3"

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

    move v8, v13

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

    const-string v2, "@7\u0012i1Q&\u001ebaJ,\u0012y3W*\u00156a"

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

    move v8, v13

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

    const-string v2, "D-\u001e~5@+"

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

    move v8, v13

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

    const-string v2, "@7\u0012i1Q&\u001ebaJ,\u0012y3W*\u0015,(Ko\u001eb\u0015L#\u0018b&w\u001cQo I#\u0013m\"N"

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

    move v8, v13

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

    const-string v2, "Q&\u001di"

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

    move v8, v13

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

    const-string v2, "q&\u001de/B\u001d ,\'D&\u001di%\u00058\u0018x)\u0005<\u0005m5P<Qo.A*"

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

    move v8, v13

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

    const-string v2, "\n;\u0018`(K("

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

    move v8, v13

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkdc;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v12

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x4f

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x71

    goto/16 :goto_1

    :pswitch_3
    move v7, v11

    goto/16 :goto_1

    :pswitch_4
    move v7, v12

    goto/16 :goto_4

    :pswitch_5
    const/16 v7, 0x4f

    goto/16 :goto_4

    :pswitch_6
    const/16 v7, 0x71

    goto/16 :goto_4

    :pswitch_7
    move v7, v11

    goto/16 :goto_4

    :pswitch_8
    move v8, v12

    goto/16 :goto_7

    :pswitch_9
    const/16 v8, 0x4f

    goto/16 :goto_7

    :pswitch_a
    const/16 v8, 0x71

    goto/16 :goto_7

    :pswitch_b
    move v8, v11

    goto/16 :goto_7

    :pswitch_c
    move v8, v12

    goto/16 :goto_a

    :pswitch_d
    const/16 v8, 0x4f

    goto/16 :goto_a

    :pswitch_e
    const/16 v8, 0x71

    goto/16 :goto_a

    :pswitch_f
    move v8, v11

    goto/16 :goto_a

    :pswitch_10
    move v8, v12

    goto/16 :goto_d

    :pswitch_11
    const/16 v8, 0x4f

    goto/16 :goto_d

    :pswitch_12
    const/16 v8, 0x71

    goto/16 :goto_d

    :pswitch_13
    move v8, v11

    goto/16 :goto_d

    :pswitch_14
    move v8, v12

    goto/16 :goto_10

    :pswitch_15
    const/16 v8, 0x4f

    goto/16 :goto_10

    :pswitch_16
    const/16 v8, 0x71

    goto/16 :goto_10

    :pswitch_17
    move v8, v11

    goto/16 :goto_10

    :pswitch_18
    move v8, v12

    goto/16 :goto_13

    :pswitch_19
    const/16 v8, 0x4f

    goto/16 :goto_13

    :pswitch_1a
    const/16 v8, 0x71

    goto/16 :goto_13

    :pswitch_1b
    move v8, v11

    goto/16 :goto_13

    :pswitch_1c
    move v8, v12

    goto/16 :goto_16

    :pswitch_1d
    const/16 v8, 0x4f

    goto/16 :goto_16

    :pswitch_1e
    const/16 v8, 0x71

    goto/16 :goto_16

    :pswitch_1f
    move v8, v11

    goto/16 :goto_16

    :pswitch_20
    move v8, v12

    goto/16 :goto_19

    :pswitch_21
    const/16 v8, 0x4f

    goto/16 :goto_19

    :pswitch_22
    const/16 v8, 0x71

    goto/16 :goto_19

    :pswitch_23
    move v8, v11

    goto/16 :goto_19

    :pswitch_24
    move v8, v12

    goto/16 :goto_1c

    :pswitch_25
    const/16 v8, 0x4f

    goto/16 :goto_1c

    :pswitch_26
    const/16 v8, 0x71

    goto/16 :goto_1c

    :pswitch_27
    move v8, v11

    goto/16 :goto_1c

    :pswitch_28
    move v8, v12

    goto/16 :goto_1f

    :pswitch_29
    const/16 v8, 0x4f

    goto/16 :goto_1f

    :pswitch_2a
    const/16 v8, 0x71

    goto/16 :goto_1f

    :pswitch_2b
    move v8, v11

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

.method constructor <init>(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/ScanHistory;Lcom/skyhookwireless/wps/_sdkec;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/skyhookwireless/wps/_sdkdc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-static {p1, p2, p4, p5}, Lcom/skyhookwireless/wps/Protocol;->getTilingRQ(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/ScanHistory;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdkb:Ljava/lang/String;

    iput-object p3, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdkc:Lcom/skyhookwireless/wps/_sdkec;

    invoke-static {}, Lcom/skyhookwireless/_sdkmb;->_sdkc()Lcom/skyhookwireless/_sdkmb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdkd:Lcom/skyhookwireless/_sdkmb;

    new-instance v0, Lcom/skyhookwireless/_sdkhd;

    invoke-direct {v0}, Lcom/skyhookwireless/_sdkhd;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdke:Lcom/skyhookwireless/_sdkhd;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdkd:Lcom/skyhookwireless/_sdkmb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkmb;->_sdka()V

    return-void
.end method

.method public run()V
    .locals 10

    const/4 v9, -0x1

    const/4 v4, 0x0

    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkfc;->_sdke:Z

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdkd:Lcom/skyhookwireless/_sdkmb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkdc;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdkb:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/skyhookwireless/_sdkmb;->_sdka(Ljava/lang/String;Ljava/lang/String;)Lcom/skyhookwireless/_sdkkb;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkdc;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdkc:Lcom/skyhookwireless/wps/_sdkec;

    const/4 v1, -0x1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkdc;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkec;->_sdka(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdka()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkdc;->z:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdka()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdkc:Lcom/skyhookwireless/wps/_sdkec;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdka()I

    move-result v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Lcom/skyhookwireless/wps/_sdkec;->_sdka(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdkc:Lcom/skyhookwireless/wps/_sdkec;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkdc;->z:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v9, v0}, Lcom/skyhookwireless/wps/_sdkec;->_sdka(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdke:Lcom/skyhookwireless/_sdkhd;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkb;->_sdkc()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/skyhookwireless/_sdkhd;->_sdka(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    sget-object v2, Lcom/skyhookwireless/wps/_sdkdc;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcom/skyhookwireless/_sdkhd;->_sdkb(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkdc;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdkc:Lcom/skyhookwireless/wps/_sdkec;

    const/4 v1, -0x1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkdc;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkec;->_sdka(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/skyhookwireless/wps/_sdkdc;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_4

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    sget-object v5, Lcom/skyhookwireless/wps/_sdkdc;->z:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/skyhookwireless/wps/_sdkdc;->z:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/skyhookwireless/wps/_sdkdc;->z:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v6, v0, v5}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb(Ljava/lang/String;ILjava/lang/String;)Lcom/skyhookwireless/wps/_sdkxb;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v4, 0x1

    if-nez v1, :cond_0

    if-eqz v1, :cond_5

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdkc:Lcom/skyhookwireless/wps/_sdkec;

    invoke-interface {v0, v3}, Lcom/skyhookwireless/wps/_sdkec;->_sdka(Ljava/util/LinkedList;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkdc;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkdc;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_5
    move v4, v0

    goto :goto_1
.end method
