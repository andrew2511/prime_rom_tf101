.class public final Lcom/skyhookwireless/_sdktb;
.super Ljava/lang/Object;


# static fields
.field public static final COMPRESSED_FILE_READER_TEST_SCRIPT:Ljava/lang/String;

.field public static final LOCATION_DETERMINATION_ALGORITHM_TEST_SCRIPT:Ljava/lang/String;

.field public static final TILING_TEST_FOLDER:Ljava/lang/String;

.field public static _sdka:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v11, 0x2c

    const/16 v10, 0x24

    const/16 v9, 0x1b

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "4JHPEi]\u0003rJ\u007fKCZ@XVACV~J_V@]P@Vv~XHVVO\\_G\noAX"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v8, :cond_8

    move v2, v7

    :cond_0
    move v3, v1

    move v4, v2

    move-object v1, v0

    move v12, v2

    move-object v2, v0

    move v0, v12

    :goto_0
    aget-char v5, v1, v0

    rem-int/lit8 v6, v4, 0x5

    packed-switch v6, :pswitch_data_0

    move v6, v10

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    if-nez v3, :cond_1

    move-object v1, v2

    move v4, v0

    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    move-object v12, v2

    move v2, v0

    move-object v0, v12

    :goto_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/skyhookwireless/_sdktb;->COMPRESSED_FILE_READER_TEST_SCRIPT:Ljava/lang/String;

    const-string v0, "4JHPEi]\u0003l{oP@ZJ|fXVWo"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v8, :cond_7

    move v2, v7

    :cond_2
    move v3, v1

    move v4, v2

    move-object v1, v0

    move v12, v2

    move-object v2, v0

    move v0, v12

    :goto_3
    aget-char v5, v1, v0

    rem-int/lit8 v6, v4, 0x5

    packed-switch v6, :pswitch_data_1

    move v6, v10

    :goto_4
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    if-nez v3, :cond_3

    move-object v1, v2

    move v4, v0

    move v0, v3

    goto :goto_3

    :cond_3
    move v1, v3

    move-object v12, v2

    move v2, v0

    move-object v0, v12

    :goto_5
    if-gt v1, v2, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/skyhookwireless/_sdktb;->TILING_TEST_FOLDER:Ljava/lang/String;

    const-string v0, "4JHPEi]\u0003\u007fKxXXZKu}IGAiTE]EoPC]ew^CAMoQAgAhM\u0002G\\o"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v8, :cond_6

    move v2, v7

    :cond_4
    move v3, v1

    move v4, v2

    move-object v1, v0

    move v12, v2

    move-object v2, v0

    move v0, v12

    :goto_6
    aget-char v5, v1, v0

    rem-int/lit8 v6, v4, 0x5

    packed-switch v6, :pswitch_data_2

    move v6, v10

    :goto_7
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    if-nez v3, :cond_5

    move-object v1, v2

    move v4, v0

    move v0, v3

    goto :goto_6

    :cond_5
    move v1, v3

    move-object v12, v2

    move v2, v0

    move-object v0, v12

    :goto_8
    if-gt v1, v2, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/skyhookwireless/_sdktb;->LOCATION_DETERMINATION_ALGORITHM_TEST_SCRIPT:Ljava/lang/String;

    return-void

    :pswitch_0
    move v6, v9

    goto/16 :goto_1

    :pswitch_1
    const/16 v6, 0x39

    goto/16 :goto_1

    :pswitch_2
    move v6, v11

    goto/16 :goto_1

    :pswitch_3
    const/16 v6, 0x33

    goto/16 :goto_1

    :pswitch_4
    move v6, v9

    goto :goto_4

    :pswitch_5
    const/16 v6, 0x39

    goto :goto_4

    :pswitch_6
    move v6, v11

    goto :goto_4

    :pswitch_7
    const/16 v6, 0x33

    goto :goto_4

    :pswitch_8
    move v6, v9

    goto :goto_7

    :pswitch_9
    const/16 v6, 0x39

    goto :goto_7

    :pswitch_a
    move v6, v11

    goto :goto_7

    :pswitch_b
    const/16 v6, 0x33

    goto :goto_7

    :cond_6
    move v2, v7

    goto :goto_8

    :cond_7
    move v2, v7

    goto :goto_5

    :cond_8
    move v2, v7

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
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
