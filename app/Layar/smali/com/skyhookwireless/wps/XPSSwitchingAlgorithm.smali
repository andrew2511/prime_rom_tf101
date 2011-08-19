.class public Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;
.super Lcom/skyhookwireless/wps/_sdkhb;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkb:Lcom/skyhookwireless/wps/_sdkkb;

.field private final _sdkc:Lcom/skyhookwireless/wps/_sdkhc;

.field private _sdkd:Lcom/skyhookwireless/_sdkub;

.field private _sdke:Lcom/skyhookwireless/_sdkub;

.field private final _sdkf:Lcom/skyhookwireless/wps/_sdkp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/skyhookwireless/wps/_sdkp",
            "<",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation
.end field

.field private final _sdkg:Lcom/skyhookwireless/wps/_sdkp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/skyhookwireless/wps/_sdkp",
            "<",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x51

    const/16 v12, 0x49

    const/16 v11, 0x29

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0013:@?\u001cF;L!\u0014\u0014=@?\u001cF+E>\u0018\ri\u001a"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_11

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

    const/16 v7, 0x7b

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

    const-string v1, "\u0013:@?\u001cF;L!\u0014\u0014=@?\u001cF+E>\u0018\ri\u0018"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_10

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

    const/16 v7, 0x7b

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

    const-string v2, "\u0015$F>\u000f\u000e G6[\u0000 E%\u001e\u0014i[4\u000f\u0013;G4\u001fF\'\\=\u0017F%F2\u001a\u0012 F?"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_f

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

    const/16 v8, 0x7b

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

    const-string v2, "\u0013:@?\u001cF;L!\u0014\u0014=@?\u001cF+E>\u0018\ri\u001b~OI|"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_e

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

    const/16 v8, 0x7b

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

    const-string v2, "\u00019Zq\u0017\t*H%\u0012\t\'\t8\u0008F\'F%[\u0008,^"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_d

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

    const/16 v8, 0x7b

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

    const-string v2, "\u00019Zq\u0017\t*H%\u0012\t\'\t8\u0008F=F>[\t%M"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_c

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

    const/16 v8, 0x7b

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

    sput-object v0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v7, 0x66

    goto/16 :goto_1

    :pswitch_1
    move v7, v12

    goto/16 :goto_1

    :pswitch_2
    move v7, v11

    goto/16 :goto_1

    :pswitch_3
    move v7, v13

    goto/16 :goto_1

    :pswitch_4
    const/16 v7, 0x66

    goto/16 :goto_4

    :pswitch_5
    move v7, v12

    goto/16 :goto_4

    :pswitch_6
    move v7, v11

    goto/16 :goto_4

    :pswitch_7
    move v7, v13

    goto/16 :goto_4

    :pswitch_8
    const/16 v8, 0x66

    goto/16 :goto_7

    :pswitch_9
    move v8, v12

    goto/16 :goto_7

    :pswitch_a
    move v8, v11

    goto/16 :goto_7

    :pswitch_b
    move v8, v13

    goto/16 :goto_7

    :pswitch_c
    const/16 v8, 0x66

    goto/16 :goto_a

    :pswitch_d
    move v8, v12

    goto/16 :goto_a

    :pswitch_e
    move v8, v11

    goto/16 :goto_a

    :pswitch_f
    move v8, v13

    goto/16 :goto_a

    :pswitch_10
    const/16 v8, 0x66

    goto/16 :goto_d

    :pswitch_11
    move v8, v12

    goto/16 :goto_d

    :pswitch_12
    move v8, v11

    goto/16 :goto_d

    :pswitch_13
    move v8, v13

    goto/16 :goto_d

    :pswitch_14
    const/16 v8, 0x66

    goto :goto_10

    :pswitch_15
    move v8, v12

    goto :goto_10

    :pswitch_16
    move v8, v11

    goto :goto_10

    :pswitch_17
    move v8, v13

    goto :goto_10

    :cond_c
    move v4, v9

    goto :goto_11

    :cond_d
    move v4, v9

    goto/16 :goto_e

    :cond_e
    move v4, v9

    goto/16 :goto_b

    :cond_f
    move v4, v9

    goto/16 :goto_8

    :cond_10
    move v3, v9

    goto/16 :goto_5

    :cond_11
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
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x1388

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkhb;-><init>()V

    const-class v0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkhc;

    invoke-direct {v0}, Lcom/skyhookwireless/wps/_sdkhc;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkc:Lcom/skyhookwireless/wps/_sdkhc;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkkb;

    const-wide/32 v1, 0xa410

    invoke-direct {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkkb;-><init>(J)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkb:Lcom/skyhookwireless/wps/_sdkkb;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkp;

    invoke-direct {v0, v3, v4}, Lcom/skyhookwireless/wps/_sdkp;-><init>(J)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkf:Lcom/skyhookwireless/wps/_sdkp;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkp;

    invoke-direct {v0, v3, v4}, Lcom/skyhookwireless/wps/_sdkp;-><init>(J)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkg:Lcom/skyhookwireless/wps/_sdkp;

    return-void
.end method

.method private _sdka(Lcom/skyhookwireless/_sdked;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;",
            "Lcom/skyhookwireless/_sdkub;",
            ")",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast v0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkb:Lcom/skyhookwireless/wps/_sdkkb;

    sget-object v3, Lcom/skyhookwireless/wps/_sdkd;->POSITION:Lcom/skyhookwireless/wps/_sdkd;

    invoke-static {v2, v0, v1, v3, p2}, Lcom/skyhookwireless/wps/_sdktb;->_sdka(Lcom/skyhookwireless/wps/_sdkkb;Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkd;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkb:Lcom/skyhookwireless/wps/_sdkkb;

    sget-object v3, Lcom/skyhookwireless/wps/_sdkd;->BEARING:Lcom/skyhookwireless/wps/_sdkd;

    invoke-static {v2, v0, v1, v3, p2}, Lcom/skyhookwireless/wps/_sdktb;->_sdka(Lcom/skyhookwireless/wps/_sdkkb;Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkd;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {v1, p2}, Lcom/skyhookwireless/wps/_sdkdb;->setAge(Lcom/skyhookwireless/_sdkub;)V

    iget-object v2, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkb:Lcom/skyhookwireless/wps/_sdkkb;

    invoke-virtual {v2, v0, v1}, Lcom/skyhookwireless/wps/_sdkkb;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkdb;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_LOCATION_CANNOT_BE_DETERMINED:Lcom/skyhookwireless/wps/WPSReturnCode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private _sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            "Lcom/skyhookwireless/_sdkub;",
            ")",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/skyhookwireless/wps/_sdkdb;->setAge(Lcom/skyhookwireless/_sdkub;)V

    invoke-virtual {v0, v3}, Lcom/skyhookwireless/wps/_sdkdb;->setSatellites(I)V

    invoke-virtual {v1, v3}, Lcom/skyhookwireless/wps/_sdkdb;->setSatellites(I)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkb:Lcom/skyhookwireless/wps/_sdkkb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkkb;->_sdka()V

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkb:Lcom/skyhookwireless/wps/_sdkkb;

    invoke-virtual {v0, p1, v1}, Lcom/skyhookwireless/wps/_sdkkb;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkdb;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    return-object v0
.end method

.method private _sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            "Lcom/skyhookwireless/_sdkub;",
            ")",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    const-wide/high16 v7, 0x4000

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->z:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v1

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkdb;->getNAP()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/wps/_sdkdb;->setNAP(I)V

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkdb;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkdb;->getLatitude()D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Lcom/skyhookwireless/wps/_sdkdb;->setLatitude(D)V

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkdb;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkdb;->getLongitude()D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Lcom/skyhookwireless/wps/_sdkdb;->setLongitude(D)V

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkdb;->getHPE()I

    move-result v0

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkdb;->getHPE()I

    move-result v2

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/wps/_sdkdb;->setHPE(I)V

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/wps/_sdkdb;->setAge(Lcom/skyhookwireless/_sdkub;)V

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/skyhookwireless/wps/_sdkdb;->setAge(Lcom/skyhookwireless/_sdkub;)V

    invoke-virtual {v1, v6}, Lcom/skyhookwireless/wps/_sdkdb;->setSatellites(I)V

    invoke-virtual {v0, v6}, Lcom/skyhookwireless/wps/_sdkdb;->setSatellites(I)V

    iget-object v2, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkb:Lcom/skyhookwireless/wps/_sdkkb;

    invoke-virtual {v2, v1, v0}, Lcom/skyhookwireless/wps/_sdkkb;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkdb;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    return-object v0
.end method

.method private _sdka(Lcom/skyhookwireless/wps/_sdkdb;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkf:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkp;->_sdkb()Lcom/skyhookwireless/_sdkw;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkf:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/wps/_sdkp;->_sdka(Lcom/skyhookwireless/_sdkw;)V

    :cond_0
    return-void
.end method

.method private _sdka()Z
    .locals 4

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    iget-object v1, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkf:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkp;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getSatellites()I

    move-result v2

    if-nez v0, :cond_3

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private _sdkb(Lcom/skyhookwireless/wps/_sdkdb;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkg:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkp;->_sdkb()Lcom/skyhookwireless/_sdkw;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkg:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/wps/_sdkp;->_sdka(Lcom/skyhookwireless/_sdkw;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateLocation(Lcom/skyhookwireless/wps/Location;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/Location;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkcb;",
            ">;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            "Lcom/skyhookwireless/_sdkub;",
            ")",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x5

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkb:Lcom/skyhookwireless/wps/_sdkkb;

    invoke-virtual {v0, p5}, Lcom/skyhookwireless/wps/_sdkkb;->_sdka(Lcom/skyhookwireless/_sdkub;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkf:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0, p5}, Lcom/skyhookwireless/wps/_sdkp;->_sdka(Lcom/skyhookwireless/_sdkub;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkg:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0, p5}, Lcom/skyhookwireless/wps/_sdkp;->_sdka(Lcom/skyhookwireless/_sdkub;)V

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdke:Lcom/skyhookwireless/_sdkub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdke:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {p4}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkub;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdke:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->z:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    move-object v1, v5

    :goto_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkc:Lcom/skyhookwireless/wps/_sdkhc;

    iget-object v2, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkb:Lcom/skyhookwireless/wps/_sdkkb;

    invoke-virtual {v0, p2, p3, v2, p5}, Lcom/skyhookwireless/wps/_sdkhc;->calculateLocation(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkkb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    move-result-object v2

    iget-object v0, v2, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast v0, Lcom/skyhookwireless/wps/_sdkdb;

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkf:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkp;->_sdkb()Lcom/skyhookwireless/_sdkw;

    move-result-object v1

    check-cast v1, Lcom/skyhookwireless/wps/_sdkdb;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/skyhookwireless/wps/_sdktb;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    iput-object v5, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkd:Lcom/skyhookwireless/_sdkub;

    invoke-direct {p0, v2, p5}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka(Lcom/skyhookwireless/_sdked;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p4}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdke:Lcom/skyhookwireless/_sdkub;

    invoke-direct {p0, p4}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;)V

    :cond_2
    move-object v1, p4

    goto :goto_0

    :cond_3
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkg:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkp;->_sdkb()Lcom/skyhookwireless/_sdkw;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkdb;

    if-eqz v0, :cond_15

    sget-object v2, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-static {v2, v0}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/skyhookwireless/wps/_sdkdb;->setAltitude(D)V

    :cond_4
    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->getBearing()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/skyhookwireless/wps/_sdkdb;->setBearing(D)V

    :cond_5
    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->getSpeed()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/skyhookwireless/wps/_sdkdb;->setSpeed(D)V

    invoke-static {v2}, Lcom/skyhookwireless/wps/_sdktb;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v0}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkb(Lcom/skyhookwireless/wps/_sdkdb;)V

    sget v3, Lcom/skyhookwireless/wps/Location;->_sdki:I

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkg:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v3}, Lcom/skyhookwireless/wps/_sdkp;->_sdka()V

    :cond_7
    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->getSatellites()I

    move-result v3

    if-le v3, v7, :cond_9

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkd:Lcom/skyhookwireless/_sdkub;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkd:Lcom/skyhookwireless/_sdkub;

    :cond_8
    invoke-direct {p0, v2, p5}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0, v2, p5}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto :goto_1

    :cond_a
    iput-object v5, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkd:Lcom/skyhookwireless/_sdkub;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->isExtrapolated()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    invoke-direct {p0, v2, p5}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    invoke-static {v2, v0}, Lcom/skyhookwireless/_sdkdd;->_sdka(Lcom/skyhookwireless/wps/Location;Lcom/skyhookwireless/wps/Location;)D

    move-result-wide v3

    const-wide v5, 0x407f400000000000L

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_d

    invoke-direct {p0, v2, p5}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->getHPE()I

    move-result v3

    const/16 v4, 0xfa

    if-le v3, v4, :cond_e

    invoke-direct {p0, v2, p5}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xc

    if-le v3, v4, :cond_f

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->getHPE()I

    move-result v3

    const/16 v4, 0x4b

    if-ge v3, v4, :cond_f

    invoke-direct {p0, v1, p5}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka(Lcom/skyhookwireless/_sdked;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->getSatellites()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_10

    invoke-direct {p0, v1, p5}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka(Lcom/skyhookwireless/_sdked;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->getHPE()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_11

    invoke-direct {p0, v2, p5}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_12

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->getHPE()I

    move-result v3

    const/16 v4, 0x96

    if-ge v3, v4, :cond_12

    invoke-direct {p0, v1, p5}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka(Lcom/skyhookwireless/_sdked;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    :cond_12
    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->getSatellites()I

    move-result v3

    if-ne v3, v7, :cond_13

    invoke-direct {p0, v2, p5}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto/16 :goto_1

    :cond_13
    invoke-static {v2}, Lcom/skyhookwireless/wps/_sdktb;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct {p0, v2, v0, p5}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka(Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto/16 :goto_1

    :cond_14
    invoke-direct {p0, v1, p5}, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdka(Lcom/skyhookwireless/_sdked;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto/16 :goto_1

    :cond_15
    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_2
.end method

.method public isWifiNeeded(J)Z
    .locals 4

    const-wide/16 v2, 0x1770

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkd:Lcom/skyhookwireless/_sdkub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkd:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkf:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkp;->_sdkb()Lcom/skyhookwireless/_sdkw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/XPSSwitchingAlgorithm;->_sdkf:Lcom/skyhookwireless/wps/_sdkp;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkp;->_sdkb()Lcom/skyhookwireless/_sdkw;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v0

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
