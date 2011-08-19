.class Lcom/skyhookwireless/_sdkc;
.super Landroid/telephony/PhoneStateListener;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final _sdka:Lcom/skyhookwireless/_sdkp;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x44

    const/16 v12, 0x32

    const/4 v11, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0000+\'\u0012s\t/=]q\td\u0010Wj\u000b\u0008<Qg\u0013-<\\&\u001411Qj\u00067 "

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

    const-string v1, "\u0008*\u0010Wj\u000b\u0008<Qg\u0013-<\\E\u000f%=Uc\u0003l"

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

    const-string v2, "\u0000+\'\u0012c\u0011!=F&\u0010,:^cG\'?]u\u0002 "

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

    const-string v2, "\u0002<0Wv\u0013-<\\&\u000e*s]h$!?^J\u0008\'2Fo\u0008*\u0010Zg\t#6V"

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

    const-string v2, "\u0008*\u0000Wt\u0011-0WU\u0013%\'WE\u000f%=Uc\u0003l"

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

    const-string v2, "\u0002<0Wv\u0013-<\\&\u000e*s]h4!!Do\u0004!\u0000Fg\u0013!\u0010Zg\t#6V.N"

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

    const-string v1, "\u0008*\u0000[a\t%?ar\u0015!=Ur\u000f\u0007;Sh\u0000!7\u001a"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_17

    move v3, v9

    :cond_c
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_12
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_6

    move v7, v11

    :goto_13
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_d

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_12

    :cond_d
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_14
    if-gt v2, v3, :cond_c

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x7

    const-string v2, "\u00067&\u0012i\u00120s]`G&<Gh\u00037\u007f\u0012e\u000b%>Bo\t#sFiG):\\o\n1>"

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

    const-string v2, "\t!$\u0012k\u0006-=\u0012e\u0002(?\u0008&"

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

    const-string v2, "\u0002<0Wv\u0013-<\\&\u000e*s]h4-4\\g\u000b\u0017\'@c\t#\'ZE\u000f%=Uc\u0003"

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

    sput-object v0, Lcom/skyhookwireless/_sdkc;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v7, 0x67

    goto/16 :goto_1

    :pswitch_1
    move v7, v13

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x53

    goto/16 :goto_1

    :pswitch_3
    move v7, v12

    goto/16 :goto_1

    :pswitch_4
    const/16 v7, 0x67

    goto/16 :goto_4

    :pswitch_5
    move v7, v13

    goto/16 :goto_4

    :pswitch_6
    const/16 v7, 0x53

    goto/16 :goto_4

    :pswitch_7
    move v7, v12

    goto/16 :goto_4

    :pswitch_8
    const/16 v8, 0x67

    goto/16 :goto_7

    :pswitch_9
    move v8, v13

    goto/16 :goto_7

    :pswitch_a
    const/16 v8, 0x53

    goto/16 :goto_7

    :pswitch_b
    move v8, v12

    goto/16 :goto_7

    :pswitch_c
    const/16 v8, 0x67

    goto/16 :goto_a

    :pswitch_d
    move v8, v13

    goto/16 :goto_a

    :pswitch_e
    const/16 v8, 0x53

    goto/16 :goto_a

    :pswitch_f
    move v8, v12

    goto/16 :goto_a

    :pswitch_10
    const/16 v8, 0x67

    goto/16 :goto_d

    :pswitch_11
    move v8, v13

    goto/16 :goto_d

    :pswitch_12
    const/16 v8, 0x53

    goto/16 :goto_d

    :pswitch_13
    move v8, v12

    goto/16 :goto_d

    :pswitch_14
    const/16 v8, 0x67

    goto/16 :goto_10

    :pswitch_15
    move v8, v13

    goto/16 :goto_10

    :pswitch_16
    const/16 v8, 0x53

    goto/16 :goto_10

    :pswitch_17
    move v8, v12

    goto/16 :goto_10

    :pswitch_18
    const/16 v7, 0x67

    goto/16 :goto_13

    :pswitch_19
    move v7, v13

    goto/16 :goto_13

    :pswitch_1a
    const/16 v7, 0x53

    goto/16 :goto_13

    :pswitch_1b
    move v7, v12

    goto/16 :goto_13

    :pswitch_1c
    const/16 v8, 0x67

    goto/16 :goto_16

    :pswitch_1d
    move v8, v13

    goto/16 :goto_16

    :pswitch_1e
    const/16 v8, 0x53

    goto/16 :goto_16

    :pswitch_1f
    move v8, v12

    goto/16 :goto_16

    :pswitch_20
    const/16 v8, 0x67

    goto/16 :goto_19

    :pswitch_21
    move v8, v13

    goto/16 :goto_19

    :pswitch_22
    const/16 v8, 0x53

    goto/16 :goto_19

    :pswitch_23
    move v8, v12

    goto/16 :goto_19

    :pswitch_24
    const/16 v8, 0x67

    goto/16 :goto_1c

    :pswitch_25
    move v8, v13

    goto/16 :goto_1c

    :pswitch_26
    const/16 v8, 0x53

    goto/16 :goto_1c

    :pswitch_27
    move v8, v12

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
    move v3, v9

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

.method constructor <init>(Lcom/skyhookwireless/_sdkp;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 5

    const/4 v4, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdkc;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v1, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v1, v1, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->_sdkb(Lcom/skyhookwireless/_sdkic;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v1, v1, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkc;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v1, v1, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkc;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v1, v1, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkc;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    :try_start_5
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-ne v1, v4, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v1, v1, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->_sdkg(Lcom/skyhookwireless/_sdkic;)V

    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdkc;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdkg(Lcom/skyhookwireless/_sdkic;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v1, v1, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkc;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSignalStrengthChanged(I)V
    .locals 6

    const/4 v5, -0x1

    sget v1, Lcom/skyhookwireless/_sdkv;->_sdkf:I

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/_sdkc;->z:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v2, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdkb(Lcom/skyhookwireless/_sdkic;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkc;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdkb(Lcom/skyhookwireless/_sdkic;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iget-object v3, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v3, v3, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v3}, Lcom/skyhookwireless/_sdkic;->_sdkc(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkq;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v3, v3, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v3}, Lcom/skyhookwireless/_sdkic;->_sdkd(Lcom/skyhookwireless/_sdkic;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v3, v3, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v3}, Lcom/skyhookwireless/_sdkic;->_sdke(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkub;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v3, v3, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v3}, Lcom/skyhookwireless/_sdkic;->_sdkc(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/skyhookwireless/_sdkq;->_sdkc()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v3, v3, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v3}, Lcom/skyhookwireless/_sdkic;->_sdkc(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/skyhookwireless/_sdkq;->_sdkb()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    if-eq v3, v4, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v3, v3, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v3}, Lcom/skyhookwireless/_sdkic;->_sdkf(Lcom/skyhookwireless/_sdkic;)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    if-eq v3, v5, :cond_4

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    if-ne v3, v5, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v3, v3, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v3}, Lcom/skyhookwireless/_sdkic;->_sdkg(Lcom/skyhookwireless/_sdkic;)V

    if-eqz v1, :cond_a

    :cond_5
    iget-object v3, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v3, v3, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v3}, Lcom/skyhookwireless/_sdkic;->_sdkc(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkq;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v3, v3, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v3}, Lcom/skyhookwireless/_sdkic;->_sdkc(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/skyhookwireless/_sdkq;->_sdkc()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v3, v3, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v3}, Lcom/skyhookwireless/_sdkic;->_sdkc(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/skyhookwireless/_sdkq;->_sdkb()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    if-eq v3, v4, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v3, v3, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    iget-object v4, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v4, v4, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v4, v0}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;Landroid/telephony/gsm/GsmCellLocation;)Lcom/skyhookwireless/_sdkq;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;Lcom/skyhookwireless/_sdkq;)Lcom/skyhookwireless/_sdkq;

    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/_sdkc;->z:[Ljava/lang/String;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v4, v4, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v4}, Lcom/skyhookwireless/_sdkic;->_sdkc(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkq;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdkc(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkq;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    iget-object v3, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v3, v3, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    iget-object v4, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v4, v4, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v4}, Lcom/skyhookwireless/_sdkic;->_sdkc(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkq;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/skyhookwireless/_sdkic;->_sdkb(Lcom/skyhookwireless/_sdkic;Lcom/skyhookwireless/_sdkq;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;Ljava/util/List;)Ljava/util/List;

    :cond_7
    invoke-static {p1}, Lcom/skyhookwireless/_sdkv;->_sdka(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {p1}, Lcom/skyhookwireless/_sdkv;->_sdkb(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;Ljava/lang/Integer;)Ljava/lang/Integer;

    if-eqz v1, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkc;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    const/16 v1, -0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_9
    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdkub;

    iget-object v0, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v0, v0, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkic;->_sdkh(Lcom/skyhookwireless/_sdkic;)V

    :cond_a
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkc;->_sdka:Lcom/skyhookwireless/_sdkp;

    iget-object v1, v1, Lcom/skyhookwireless/_sdkp;->_sdka:Lcom/skyhookwireless/_sdkic;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkc;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
