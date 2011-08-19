.class public final enum Lcom/skyhookwireless/wps/WPSReturnCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/skyhookwireless/wps/WPSReturnCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum WPS_ERROR:Lcom/skyhookwireless/wps/WPSReturnCode;

.field public static final enum WPS_ERROR_LOCATION_CANNOT_BE_DETERMINED:Lcom/skyhookwireless/wps/WPSReturnCode;

.field public static final enum WPS_ERROR_NO_WIFI_IN_RANGE:Lcom/skyhookwireless/wps/WPSReturnCode;

.field public static final enum WPS_ERROR_SERVER_UNAVAILABLE:Lcom/skyhookwireless/wps/WPSReturnCode;

.field public static final enum WPS_ERROR_UNAUTHORIZED:Lcom/skyhookwireless/wps/WPSReturnCode;

.field public static final enum WPS_ERROR_WIFI_NOT_AVAILABLE:Lcom/skyhookwireless/wps/WPSReturnCode;

.field public static final enum WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

.field private static final synthetic _sdka:[Lcom/skyhookwireless/wps/WPSReturnCode;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x65

    const/16 v12, 0x2b

    const/16 v11, 0x24

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "s5!/nv7=\"th*11\u007fm*</he+<?\u007f{\'7/oa17\"fm+74"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_14

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

    const-string v1, "s5!/nv7=\"tj*-\'bb,-9e{73>la"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_13

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

    const-string v2, "s5!/nv7=\"tq+3%\u007fl* 9qa!"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_12

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

    const-string v2, "s5!/nv7=\"tw  &nv:\'>jr$;<jf)7"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_11

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

    const-string v2, "s5!/nv7=\"ts,49tj*&/jr$;<jf)7"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_10

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

    const-string v2, "s5!/nv7=\""

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_f

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

    const-string v2, "s5!/do"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_e

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

    sput-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->z:[Ljava/lang/String;

    new-instance v0, Lcom/skyhookwireless/wps/WPSReturnCode;

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {v0, v1, v9}, Lcom/skyhookwireless/wps/WPSReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    new-instance v0, Lcom/skyhookwireless/wps/WPSReturnCode;

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {v0, v1, v10}, Lcom/skyhookwireless/wps/WPSReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_WIFI_NOT_AVAILABLE:Lcom/skyhookwireless/wps/WPSReturnCode;

    new-instance v0, Lcom/skyhookwireless/wps/WPSReturnCode;

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->z:[Ljava/lang/String;

    aget-object v1, v1, v10

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/skyhookwireless/wps/WPSReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_NO_WIFI_IN_RANGE:Lcom/skyhookwireless/wps/WPSReturnCode;

    new-instance v0, Lcom/skyhookwireless/wps/WPSReturnCode;

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/skyhookwireless/wps/WPSReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_UNAUTHORIZED:Lcom/skyhookwireless/wps/WPSReturnCode;

    new-instance v0, Lcom/skyhookwireless/wps/WPSReturnCode;

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/skyhookwireless/wps/WPSReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_SERVER_UNAVAILABLE:Lcom/skyhookwireless/wps/WPSReturnCode;

    new-instance v0, Lcom/skyhookwireless/wps/WPSReturnCode;

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->z:[Ljava/lang/String;

    aget-object v1, v1, v9

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/skyhookwireless/wps/WPSReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_LOCATION_CANNOT_BE_DETERMINED:Lcom/skyhookwireless/wps/WPSReturnCode;

    new-instance v0, Lcom/skyhookwireless/wps/WPSReturnCode;

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/skyhookwireless/wps/WPSReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR:Lcom/skyhookwireless/wps/WPSReturnCode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/skyhookwireless/wps/WPSReturnCode;

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_WIFI_NOT_AVAILABLE:Lcom/skyhookwireless/wps/WPSReturnCode;

    aput-object v1, v0, v10

    const/4 v1, 0x2

    sget-object v2, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_NO_WIFI_IN_RANGE:Lcom/skyhookwireless/wps/WPSReturnCode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_UNAUTHORIZED:Lcom/skyhookwireless/wps/WPSReturnCode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_SERVER_UNAVAILABLE:Lcom/skyhookwireless/wps/WPSReturnCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_LOCATION_CANNOT_BE_DETERMINED:Lcom/skyhookwireless/wps/WPSReturnCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR:Lcom/skyhookwireless/wps/WPSReturnCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->_sdka:[Lcom/skyhookwireless/wps/WPSReturnCode;

    return-void

    :pswitch_0
    move v7, v11

    goto/16 :goto_1

    :pswitch_1
    move v7, v13

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x72

    goto/16 :goto_1

    :pswitch_3
    const/16 v7, 0x70

    goto/16 :goto_1

    :pswitch_4
    move v7, v11

    goto/16 :goto_4

    :pswitch_5
    move v7, v13

    goto/16 :goto_4

    :pswitch_6
    const/16 v7, 0x72

    goto/16 :goto_4

    :pswitch_7
    const/16 v7, 0x70

    goto/16 :goto_4

    :pswitch_8
    move v8, v11

    goto/16 :goto_7

    :pswitch_9
    move v8, v13

    goto/16 :goto_7

    :pswitch_a
    const/16 v8, 0x72

    goto/16 :goto_7

    :pswitch_b
    const/16 v8, 0x70

    goto/16 :goto_7

    :pswitch_c
    move v8, v11

    goto/16 :goto_a

    :pswitch_d
    move v8, v13

    goto/16 :goto_a

    :pswitch_e
    const/16 v8, 0x72

    goto/16 :goto_a

    :pswitch_f
    const/16 v8, 0x70

    goto/16 :goto_a

    :pswitch_10
    move v8, v11

    goto/16 :goto_d

    :pswitch_11
    move v8, v13

    goto/16 :goto_d

    :pswitch_12
    const/16 v8, 0x72

    goto/16 :goto_d

    :pswitch_13
    const/16 v8, 0x70

    goto/16 :goto_d

    :pswitch_14
    move v8, v11

    goto/16 :goto_10

    :pswitch_15
    move v8, v13

    goto/16 :goto_10

    :pswitch_16
    const/16 v8, 0x72

    goto/16 :goto_10

    :pswitch_17
    const/16 v8, 0x70

    goto/16 :goto_10

    :pswitch_18
    move v8, v11

    goto/16 :goto_13

    :pswitch_19
    move v8, v13

    goto/16 :goto_13

    :pswitch_1a
    const/16 v8, 0x72

    goto/16 :goto_13

    :pswitch_1b
    const/16 v8, 0x70

    goto/16 :goto_13

    :cond_e
    move v4, v9

    goto/16 :goto_14

    :cond_f
    move v4, v9

    goto/16 :goto_11

    :cond_10
    move v4, v9

    goto/16 :goto_e

    :cond_11
    move v4, v9

    goto/16 :goto_b

    :cond_12
    move v4, v9

    goto/16 :goto_8

    :cond_13
    move v3, v9

    goto/16 :goto_5

    :cond_14
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
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/skyhookwireless/wps/WPSReturnCode;
    .locals 1

    const-class v0, Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/WPSReturnCode;

    return-object p0
.end method

.method public static final values()[Lcom/skyhookwireless/wps/WPSReturnCode;
    .locals 1

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->_sdka:[Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-virtual {v0}, [Lcom/skyhookwireless/wps/WPSReturnCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/skyhookwireless/wps/WPSReturnCode;

    return-object v0
.end method
