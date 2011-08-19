.class public LaW/c;
.super Ljava/lang/Object;

# interfaces
.implements LaW/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x3

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, LR/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x3

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, LR/a;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()LaW/a;
    .locals 11

    const/4 v4, -0x1

    invoke-static {}, Lz/b;->y()Lac/m;

    move-result-object p0

    check-cast p0, Lz/b;

    invoke-virtual {p0}, Lz/b;->q()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaW/c;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0}, LaW/c;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaW/c;->a(Ljava/lang/String;)I

    move-result v7

    invoke-static {v0}, LaW/c;->b(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v2, v4

    :goto_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    instance-of v3, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_0

    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v6

    move v10, v6

    move v6, v1

    move v1, v2

    move v2, v3

    move v3, v10

    :goto_1
    move v9, v4

    invoke-static/range {v0 .. v9}, LaW/a;->a(Ljava/lang/String;IIIIIIIII)LaW/a;

    move-result-object v0

    return-object v0

    :pswitch_0
    const/4 v0, 0x3

    move v2, v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    move v2, v0

    goto :goto_0

    :cond_0
    instance-of v3, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_1

    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    const/4 v6, 0x4

    move v10, v2

    move v2, v1

    move v1, v6

    move v6, v3

    move v3, v10

    goto :goto_1

    :cond_1
    move v3, v4

    move v6, v1

    move v1, v2

    move v2, v4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
