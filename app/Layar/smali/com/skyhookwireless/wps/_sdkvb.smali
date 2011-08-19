.class final Lcom/skyhookwireless/wps/_sdkvb;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkb:I

.field private _sdkc:Lcom/skyhookwireless/wps/ScanHistory;

.field private _sdkd:Lcom/skyhookwireless/wps/ScanHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x12

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x1f

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "q(aq~@{zpk\u0010eglk\u0010mjvlD(tpm\u0010af?k_(pz?Bg~szT(p~|["

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v11, :cond_14

    move v3, v10

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

    move v7, v9

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

    aput-object v1, v0, v10

    const-string v1, "bg~sv^o2}~Sc2lqQxawpD"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v11, :cond_13

    move v3, v10

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

    move v7, v9

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

    aput-object v1, v0, v11

    const/4 v1, 0x2

    const-string v2, "diyvqW(aq~@{zpk"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v11, :cond_12

    move v4, v10

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

    move v8, v9

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

    const-string v2, "d`w?l^iblw_|2rjC|2}z\u0010k~z~Bmv?pB(`ps\\mv?}Qky?}Un}mz\u0010i|pkXm`?p^m2vl\u0010|stz^"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v11, :cond_11

    move v4, v10

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

    move v8, v9

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

    const-string v2, "q(aq~@{zpk\u0010eglk\u0010mjvlD(pzy_zw?xU|Aq~@{zpk\u0010aa?|Qd~z{"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v11, :cond_10

    move v4, v10

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

    move v8, v9

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

    const-string v2, "q(aq~@{zpk\u0010eglk\u0010mjvlD(tpm\u0010af?k_(pz?Sdw~mUl"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v11, :cond_f

    move v4, v10

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

    move v8, v9

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

    const-string v2, "sdw~mYfu?l^iblw_|"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v11, :cond_e

    move v4, v10

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

    move v8, v9

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkvb;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v7, 0x30

    goto/16 :goto_1

    :pswitch_1
    move v7, v12

    goto/16 :goto_1

    :pswitch_2
    move v7, v13

    goto/16 :goto_1

    :pswitch_3
    move v7, v9

    goto/16 :goto_1

    :pswitch_4
    const/16 v7, 0x30

    goto/16 :goto_4

    :pswitch_5
    move v7, v12

    goto/16 :goto_4

    :pswitch_6
    move v7, v13

    goto/16 :goto_4

    :pswitch_7
    move v7, v9

    goto/16 :goto_4

    :pswitch_8
    const/16 v8, 0x30

    goto/16 :goto_7

    :pswitch_9
    move v8, v12

    goto/16 :goto_7

    :pswitch_a
    move v8, v13

    goto/16 :goto_7

    :pswitch_b
    move v8, v9

    goto/16 :goto_7

    :pswitch_c
    const/16 v8, 0x30

    goto/16 :goto_a

    :pswitch_d
    move v8, v12

    goto/16 :goto_a

    :pswitch_e
    move v8, v13

    goto/16 :goto_a

    :pswitch_f
    move v8, v9

    goto/16 :goto_a

    :pswitch_10
    const/16 v8, 0x30

    goto/16 :goto_d

    :pswitch_11
    move v8, v12

    goto/16 :goto_d

    :pswitch_12
    move v8, v13

    goto/16 :goto_d

    :pswitch_13
    move v8, v9

    goto/16 :goto_d

    :pswitch_14
    const/16 v8, 0x30

    goto/16 :goto_10

    :pswitch_15
    move v8, v12

    goto/16 :goto_10

    :pswitch_16
    move v8, v13

    goto/16 :goto_10

    :pswitch_17
    move v8, v9

    goto/16 :goto_10

    :pswitch_18
    const/16 v8, 0x30

    goto :goto_13

    :pswitch_19
    move v8, v12

    goto :goto_13

    :pswitch_1a
    move v8, v13

    goto :goto_13

    :pswitch_1b
    move v8, v9

    goto :goto_13

    :cond_e
    move v4, v10

    goto :goto_14

    :cond_f
    move v4, v10

    goto/16 :goto_11

    :cond_10
    move v4, v10

    goto/16 :goto_e

    :cond_11
    move v4, v10

    goto/16 :goto_b

    :cond_12
    move v4, v10

    goto/16 :goto_8

    :cond_13
    move v3, v10

    goto/16 :goto_5

    :cond_14
    move v3, v10

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
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x320

    invoke-direct {p0, v0}, Lcom/skyhookwireless/wps/_sdkvb;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/skyhookwireless/wps/_sdkvb;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    iput p1, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkb:I

    new-instance v0, Lcom/skyhookwireless/wps/ScanHistory;

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkb:I

    invoke-direct {v0, v1}, Lcom/skyhookwireless/wps/ScanHistory;-><init>(I)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkc:Lcom/skyhookwireless/wps/ScanHistory;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkd:Lcom/skyhookwireless/wps/ScanHistory;

    return-void
.end method

.method private _sdkg()Z
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkd:Lcom/skyhookwireless/wps/ScanHistory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public _sdka()V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkc:Lcom/skyhookwireless/wps/ScanHistory;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/ScanHistory;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkd:Lcom/skyhookwireless/wps/ScanHistory;

    return-void
.end method

.method public _sdka(Lcom/skyhookwireless/wps/_sdkpb;)V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkc:Lcom/skyhookwireless/wps/ScanHistory;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/ScanHistory;->add(Lcom/skyhookwireless/wps/_sdkpb;)V

    return-void
.end method

.method public _sdkb()Lcom/skyhookwireless/wps/ScanHistory;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkc:Lcom/skyhookwireless/wps/ScanHistory;

    return-object v0
.end method

.method public _sdkc()Lcom/skyhookwireless/wps/ScanHistory;
    .locals 3

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkvb;->_sdkg()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkvb;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkd:Lcom/skyhookwireless/wps/ScanHistory;

    return-object v0
.end method

.method public _sdkd()Lcom/skyhookwireless/wps/ScanHistory;
    .locals 3

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkvb;->_sdkg()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkvb;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkvb;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkc:Lcom/skyhookwireless/wps/ScanHistory;

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkd:Lcom/skyhookwireless/wps/ScanHistory;

    new-instance v0, Lcom/skyhookwireless/wps/ScanHistory;

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkb:I

    invoke-direct {v0, v1}, Lcom/skyhookwireless/wps/ScanHistory;-><init>(I)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkc:Lcom/skyhookwireless/wps/ScanHistory;

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkvb;->_sdkc()Lcom/skyhookwireless/wps/ScanHistory;

    move-result-object v0

    return-object v0
.end method

.method public _sdke()V
    .locals 3

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkvb;->_sdkg()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkvb;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkvb;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkd:Lcom/skyhookwireless/wps/ScanHistory;

    return-void
.end method

.method public _sdkf()V
    .locals 4

    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkfc;->_sdke:Z

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkvb;->_sdkg()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkvb;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkvb;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkc:Lcom/skyhookwireless/wps/ScanHistory;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/ScanHistory;->reverseIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkd:Lcom/skyhookwireless/wps/ScanHistory;

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {v3, v0}, Lcom/skyhookwireless/wps/ScanHistory;->add(Lcom/skyhookwireless/wps/_sdkpb;)V

    if-nez v1, :cond_3

    if-eqz v1, :cond_1

    :cond_2
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkd:Lcom/skyhookwireless/wps/ScanHistory;

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkc:Lcom/skyhookwireless/wps/ScanHistory;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkvb;->_sdkd:Lcom/skyhookwireless/wps/ScanHistory;

    :cond_3
    return-void
.end method
