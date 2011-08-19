.class public final Lcom/skyhookwireless/wps/_sdkt;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkcb;

.field private _sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

.field private _sdkc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _sdkd:Lcom/skyhookwireless/wps/_sdkx;

.field private _sdke:Lcom/skyhookwireless/wps/_sdkfc;

.field private _sdkf:Lcom/skyhookwireless/wps/_sdkyb;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x2f

    const/16 v12, 0x2e

    const/16 v11, 0xb

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GA\u0000n8\\Z\u0004\u007f/J"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_1d

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

    const/16 v7, 0x4a

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

    const-string v1, "ZF\u0018b$I\u000f\u001dxjJF\u0007j(BJ\u0010+b@@T{+ZGTm%\\\u000f\u0000b&K\\]"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_1c

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

    const/16 v7, 0x4a

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

    const-string v2, "\u0002\u000f\u0003b&B\u000f\u0016nj\\J\u0010~)KKT\u007f%\u000eB\u0015\u007f)F"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1b

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

    const/16 v8, 0x4a

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

    const-string v2, "CN\u000cO+ZN\'b0K\u007f\u0011y\u0019K\\\u0007b%@\u000f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1a

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

    const/16 v8, 0x4a

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

    const-string v2, "\u000eF\u0007+-\\J\u0015\u007f/\\\u000f\u0000c+@\u000f\u0019j2jN\u0000j\u0019GU\u0011_%ZN\u0018+"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_19

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

    const/16 v8, 0x4a

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

    const-string v2, "ZF\u0018b$I\u000f\u001dxjJF\u0007j(BJ\u0010+bGA\u0002j&GKT{+ZGT)"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_18

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

    const/16 v8, 0x4a

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

    const-string v2, "ZF\u0018b$I\u000f\u001dxjKA\u0015i&KK"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_17

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

    const/16 v8, 0x4a

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

    const-string v2, "\u000c\u000f\u0012d8\u000e[\u001dg/]\u0006"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_16

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

    const/16 v8, 0x4a

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

    const-string v2, "B@\u0017j&\u000eI\u001dg/\u000eZ\u0007j-K\u000f\u001dxjJF\u0007j(BJ\u0010"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_15

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

    const/16 v8, 0x4a

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

    const-string v2, "ZF\u0018b$I\u000f\u001dxjJF\u0007j(BJ\u0010+b@@Tj?ZG\u0011e>GL\u0015\u007f#AA]"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_14

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

    const/16 v8, 0x4a

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkt;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v12

    goto/16 :goto_1

    :pswitch_1
    move v7, v13

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x74

    goto/16 :goto_1

    :pswitch_3
    move v7, v11

    goto/16 :goto_1

    :pswitch_4
    move v7, v12

    goto/16 :goto_4

    :pswitch_5
    move v7, v13

    goto/16 :goto_4

    :pswitch_6
    const/16 v7, 0x74

    goto/16 :goto_4

    :pswitch_7
    move v7, v11

    goto/16 :goto_4

    :pswitch_8
    move v8, v12

    goto/16 :goto_7

    :pswitch_9
    move v8, v13

    goto/16 :goto_7

    :pswitch_a
    const/16 v8, 0x74

    goto/16 :goto_7

    :pswitch_b
    move v8, v11

    goto/16 :goto_7

    :pswitch_c
    move v8, v12

    goto/16 :goto_a

    :pswitch_d
    move v8, v13

    goto/16 :goto_a

    :pswitch_e
    const/16 v8, 0x74

    goto/16 :goto_a

    :pswitch_f
    move v8, v11

    goto/16 :goto_a

    :pswitch_10
    move v8, v12

    goto/16 :goto_d

    :pswitch_11
    move v8, v13

    goto/16 :goto_d

    :pswitch_12
    const/16 v8, 0x74

    goto/16 :goto_d

    :pswitch_13
    move v8, v11

    goto/16 :goto_d

    :pswitch_14
    move v8, v12

    goto/16 :goto_10

    :pswitch_15
    move v8, v13

    goto/16 :goto_10

    :pswitch_16
    const/16 v8, 0x74

    goto/16 :goto_10

    :pswitch_17
    move v8, v11

    goto/16 :goto_10

    :pswitch_18
    move v8, v12

    goto/16 :goto_13

    :pswitch_19
    move v8, v13

    goto/16 :goto_13

    :pswitch_1a
    const/16 v8, 0x74

    goto/16 :goto_13

    :pswitch_1b
    move v8, v11

    goto/16 :goto_13

    :pswitch_1c
    move v8, v12

    goto/16 :goto_16

    :pswitch_1d
    move v8, v13

    goto/16 :goto_16

    :pswitch_1e
    const/16 v8, 0x74

    goto/16 :goto_16

    :pswitch_1f
    move v8, v11

    goto/16 :goto_16

    :pswitch_20
    move v8, v12

    goto/16 :goto_19

    :pswitch_21
    move v8, v13

    goto/16 :goto_19

    :pswitch_22
    const/16 v8, 0x74

    goto/16 :goto_19

    :pswitch_23
    move v8, v11

    goto/16 :goto_19

    :pswitch_24
    move v8, v12

    goto/16 :goto_1c

    :pswitch_25
    move v8, v13

    goto/16 :goto_1c

    :pswitch_26
    const/16 v8, 0x74

    goto/16 :goto_1c

    :pswitch_27
    move v8, v11

    goto/16 :goto_1c

    :cond_14
    move v4, v9

    goto/16 :goto_1d

    :cond_15
    move v4, v9

    goto/16 :goto_1a

    :cond_16
    move v4, v9

    goto/16 :goto_17

    :cond_17
    move v4, v9

    goto/16 :goto_14

    :cond_18
    move v4, v9

    goto/16 :goto_11

    :cond_19
    move v4, v9

    goto/16 :goto_e

    :cond_1a
    move v4, v9

    goto/16 :goto_b

    :cond_1b
    move v4, v9

    goto/16 :goto_8

    :cond_1c
    move v3, v9

    goto/16 :goto_5

    :cond_1d
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
.end method

.method public constructor <init>(Lcom/skyhookwireless/wps/WPSAuthentication;Ljava/util/List;Lcom/skyhookwireless/wps/_sdkfc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/WPSAuthentication;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/skyhookwireless/wps/_sdkfc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/skyhookwireless/wps/_sdkt;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {p0, p1}, Lcom/skyhookwireless/wps/_sdkt;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)V

    invoke-virtual {p0, p3}, Lcom/skyhookwireless/wps/_sdkt;->_sdka(Lcom/skyhookwireless/wps/_sdkfc;)V

    invoke-virtual {p0, p2}, Lcom/skyhookwireless/wps/_sdkt;->_sdka(Ljava/util/List;)V

    return-void
.end method

.method private _sdka()V
    .locals 4

    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkd:Lcom/skyhookwireless/wps/_sdkx;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkc:Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/skyhookwireless/wps/_sdkx;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    invoke-direct {v0, v2}, Lcom/skyhookwireless/wps/_sdkx;-><init>(Lcom/skyhookwireless/wps/WPSAuthentication;)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkd:Lcom/skyhookwireless/wps/_sdkx;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkd:Lcom/skyhookwireless/wps/_sdkx;

    invoke-virtual {v3, v0}, Lcom/skyhookwireless/wps/_sdkx;->_sdka(Ljava/lang/String;)Lcom/skyhookwireless/wps/_sdkz;

    if-nez v1, :cond_2

    if-eqz v1, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkf:Lcom/skyhookwireless/wps/_sdkyb;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/skyhookwireless/wps/_sdkyb;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    invoke-direct {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkyb;-><init>(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/_sdkfc;)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkf:Lcom/skyhookwireless/wps/_sdkyb;

    :cond_2
    return-void
.end method

.method private _sdkd()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkd:Lcom/skyhookwireless/wps/_sdkx;

    return-void
.end method

.method private _sdke()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkf:Lcom/skyhookwireless/wps/_sdkyb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkf:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkf:Lcom/skyhookwireless/wps/_sdkyb;

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkt;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public _sdka(Lcom/skyhookwireless/wps/WPSAuthentication;)V
    .locals 3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    if-eq v0, p1, :cond_2

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkt;->_sdkd()V

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkt;->_sdke()V

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/WPSAuthentication;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkt;->_sdkd()V

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkt;->_sdke()V

    :cond_2
    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/WPSAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/WPSAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/WPSAuthentication;->getRealm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/WPSAuthentication;->getRealm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkt;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    :cond_4
    return-void
.end method

.method public _sdka(Lcom/skyhookwireless/wps/_sdkfc;)V
    .locals 8

    const/4 v4, 0x0

    sget-boolean v7, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    if-eq v0, p1, :cond_2

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkt;->_sdke()V

    if-eqz v7, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdkfc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkt;->_sdke()V

    :cond_2
    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkfc;->_sdka()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkfc;->_sdka()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkt;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    if-eqz v7, :cond_7

    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkfc;->_sdka()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkt;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkfc;->_sdka()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkt;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    if-eqz v7, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkfc;->_sdkb()J

    move-result-wide v0

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkfc;->_sdkc()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkt;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkfc;->_sdkb()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkt;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkfc;->_sdkc()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkt;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    new-instance v0, Lcom/skyhookwireless/wps/_sdkfc;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkfc;->_sdka()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkfc;->_sdkc()J

    move-result-wide v2

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkfc;->_sdkc()J

    move-result-wide v4

    iget-object v6, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    invoke-virtual {v6}, Lcom/skyhookwireless/wps/_sdkfc;->_sdkd()Lcom/skyhookwireless/wps/TilingListener;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/skyhookwireless/wps/_sdkfc;-><init>(Ljava/lang/String;JJLcom/skyhookwireless/wps/TilingListener;)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    if-eqz v7, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkt;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public _sdka(Lcom/skyhookwireless/wps/_sdkpb;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkcb;",
            ">;)V"
        }
    .end annotation

    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkt;->_sdka()V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkf:Lcom/skyhookwireless/wps/_sdkyb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkf:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-virtual {v0, p1, p2}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkpb;Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkd:Lcom/skyhookwireless/wps/_sdkx;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdkzb;

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkd:Lcom/skyhookwireless/wps/_sdkx;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkzb;->_sdka()Lcom/skyhookwireless/_sdkyb;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/skyhookwireless/wps/_sdkx;->_sdka(Lcom/skyhookwireless/_sdkyb;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public _sdka(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkc:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkc:Ljava/util/List;

    if-eq v0, p1, :cond_2

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkt;->_sdkd()V

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkc:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkt;->_sdkd()V

    :cond_2
    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkc:Ljava/util/List;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkc:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkt;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkc:Ljava/util/List;

    :cond_4
    return-void
.end method

.method public _sdkb()Z
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkc:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkb:Lcom/skyhookwireless/wps/WPSAuthentication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdke:Lcom/skyhookwireless/wps/_sdkfc;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public _sdkc()V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkf:Lcom/skyhookwireless/wps/_sdkyb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkt;->_sdkf:Lcom/skyhookwireless/wps/_sdkyb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb()V

    :cond_0
    return-void
.end method
