.class public LaR/b;
.super Ljava/lang/Object;

# interfaces
.implements LaR/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 1

    const/16 v0, 0x1388

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1770

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x96c

    if-lt p1, v0, :cond_1

    const/16 v0, 0x9a8

    if-gt p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private b(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()LaR/d;
    .locals 10

    const/4 v9, -0x1

    invoke-static {}, Lz/b;->y()Lac/m;

    move-result-object v0

    check-cast v0, Lz/b;

    invoke-virtual {v0}, Lz/b;->q()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, LaR/d;->e()LaR/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    invoke-direct {p0, v4}, LaR/b;->b(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    :goto_2
    if-eqz v0, :cond_3

    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v0}, LaR/b;->a(I)I

    move-result v0

    move v5, v4

    move v4, v0

    :goto_3
    new-instance v0, LaR/d;

    invoke-direct/range {v0 .. v7}, LaR/d;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_3
    move v4, v9

    move v5, v9

    goto :goto_3

    :cond_4
    move-object v0, v4

    goto :goto_2
.end method

.method public a(LaR/e;)V
    .locals 3

    invoke-static {}, Lz/b;->y()Lac/m;

    move-result-object v0

    check-cast v0, Lz/b;

    invoke-virtual {v0}, Lz/b;->q()Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/android/ad;->a()Lcom/google/googlenav/android/ad;

    move-result-object v1

    new-instance v2, LaR/a;

    invoke-direct {v2, p0, p1}, LaR/a;-><init>(LaR/b;LaR/e;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/ad;->a(Landroid/content/Intent;Lcom/google/googlenav/android/M;)V

    return-void
.end method

.method public b()[LaR/d;
    .locals 15

    invoke-static {}, Lz/b;->y()Lac/m;

    move-result-object v0

    check-cast v0, Lz/b;

    invoke-virtual {v0}, Lz/b;->q()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, LaR/b;->a()LaR/d;

    move-result-object v10

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v12, v0, [LaR/d;

    const/4 v0, 0x0

    aput-object v10, v12, v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move-object v0, v12

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    move v13, v1

    move v14, v0

    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_4

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/ScanResult;

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10}, LaR/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v14

    :cond_2
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    move v14, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget v5, p0, Landroid/net/wifi/ScanResult;->level:I

    new-instance v0, LaR/d;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v10}, LaR/d;->h()J

    move-result-wide v8

    invoke-direct/range {v0 .. v9}, LaR/d;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V

    aput-object v0, v12, v14

    add-int/lit8 v0, v14, 0x1

    array-length v1, v12

    if-ne v0, v1, :cond_2

    move-object v0, v12

    :goto_2
    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [LaR/d;

    const/4 v1, 0x0

    invoke-static {}, LaR/d;->e()LaR/d;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v12

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public c()Z
    .locals 2

    invoke-static {}, Lz/b;->y()Lac/m;

    move-result-object p0

    check-cast p0, Lz/b;

    invoke-virtual {p0}, Lz/b;->q()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
