.class Lcom/skyhookwireless/_sdkqc;
.super Lcom/skyhookwireless/_sdkpc;


# static fields
.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v12, 0x51

    const/16 v11, 0x2c

    const/16 v10, 0x20

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "2MNG\u0012qCP\u0005\u0008qbu,*\u000e{i&/\u000emd!6\u0005ir"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_5

    move v3, v8

    :cond_0
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v13, v3

    move-object v3, v1

    move v1, v13

    :goto_0
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_0

    const/16 v7, 0x66

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

    move-object v13, v3

    move v3, v1

    move-object v1, v13

    :goto_2
    if-gt v2, v3, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "\u001fyl,9\u0006ef)9\u0010ha02\u0014~"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_4

    move v3, v8

    :cond_2
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v13, v3

    move-object v3, v1

    move v1, v13

    :goto_3
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_1

    const/16 v7, 0x66

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

    move-object v13, v3

    move v3, v1

    move-object v1, v13

    :goto_5
    if-gt v2, v3, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    sput-object v0, Lcom/skyhookwireless/_sdkqc;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v12

    goto :goto_1

    :pswitch_1
    move v7, v11

    goto :goto_1

    :pswitch_2
    move v7, v10

    goto :goto_1

    :pswitch_3
    const/16 v7, 0x60

    goto :goto_1

    :pswitch_4
    move v7, v12

    goto :goto_4

    :pswitch_5
    move v7, v11

    goto :goto_4

    :pswitch_6
    move v7, v10

    goto :goto_4

    :pswitch_7
    const/16 v7, 0x60

    goto :goto_4

    :cond_4
    move v3, v8

    goto :goto_5

    :cond_5
    move v3, v8

    goto :goto_2

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
.end method

.method constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/skyhookwireless/_sdkj;
        }
    .end annotation

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkpc;-><init>()V

    return-void
.end method


# virtual methods
.method protected _sdka(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdkpc;
    .locals 0

    return-object p0
.end method

.method public _sdka(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/skyhookwireless/_sdkj;
        }
    .end annotation

    new-instance v0, Lcom/skyhookwireless/_sdkj;

    sget-object v1, Lcom/skyhookwireless/_sdkqc;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/skyhookwireless/_sdkj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public _sdka(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public _sdka()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public _sdkb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public _sdkc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public _sdkd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public _sdke()V
    .locals 0

    return-void
.end method

.method public _sdkf()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/skyhookwireless/_sdkqc;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
