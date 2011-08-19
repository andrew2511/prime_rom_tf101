.class public Lcom/asus/cm/util/UniqueId;
.super Ljava/lang/Object;
.source "UniqueId.java"


# static fields
.field public static final WIFI_ONLY:Ljava/lang/String; = "wifi-only"

.field private static mUId:Lcom/asus/cm/util/UniqueId;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsWifiStartedByUs:Z

.field private mRegMgr:Lcom/asus/cm/CMCRegistryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/cm/util/UniqueId;->mUId:Lcom/asus/cm/util/UniqueId;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "pContext"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/cm/util/UniqueId;->mIsWifiStartedByUs:Z

    .line 21
    iput-object p1, p0, Lcom/asus/cm/util/UniqueId;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/util/UniqueId;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    .line 23
    return-void
.end method

.method public static getInstances(Landroid/content/Context;)Lcom/asus/cm/util/UniqueId;
    .locals 1
    .parameter "pContext"

    .prologue
    .line 26
    sget-object v0, Lcom/asus/cm/util/UniqueId;->mUId:Lcom/asus/cm/util/UniqueId;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/asus/cm/util/UniqueId;

    invoke-direct {v0, p0}, Lcom/asus/cm/util/UniqueId;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/asus/cm/util/UniqueId;->mUId:Lcom/asus/cm/util/UniqueId;

    .line 29
    :cond_0
    sget-object v0, Lcom/asus/cm/util/UniqueId;->mUId:Lcom/asus/cm/util/UniqueId;

    return-object v0
.end method

.method private getModemIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWifiMac()Ljava/lang/String;
    .locals 5

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, mac:Ljava/lang/String;
    iget-object v3, p0, Lcom/asus/cm/util/UniqueId;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 110
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 111
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v3, p0, Lcom/asus/cm/util/UniqueId;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v3, v0}, Lcom/asus/cm/CMCRegistryManager;->setUniqueId(Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-boolean v3, p0, Lcom/asus/cm/util/UniqueId;->mIsWifiStartedByUs:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 123
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/asus/cm/util/UniqueId;->mIsWifiStartedByUs:Z

    .line 126
    :cond_1
    return-object v0
.end method

.method private isTelephonyReadyToUse()Z
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x1

    .line 69
    .local v0, isReady:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 70
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1

    .line 71
    const-string v2, "===== TelephonyManager is NULL."

    invoke-static {p0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 74
    const-string v2, "===== TelephonyManager.getDeviceId() is NULL."

    invoke-static {p0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiReadyToUse()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, isReady:Z
    iget-object v3, p0, Lcom/asus/cm/util/UniqueId;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 83
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    .line 85
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 86
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, mac:Ljava/lang/String;
    if-nez v1, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 91
    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 92
    iput-boolean v5, p0, Lcom/asus/cm/util/UniqueId;->mIsWifiStartedByUs:Z

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, id:Ljava/lang/String;
    iget-object v1, p0, Lcom/asus/cm/util/UniqueId;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v1}, Lcom/asus/cm/CMCRegistryManager;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 51
    const-string v1, "get cached uniqueID"

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/asus/cm/util/UniqueId;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v1}, Lcom/asus/cm/CMCRegistryManager;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    return-object v0

    .line 53
    :cond_1
    const-string v1, "wifi-only"

    const-string v2, "ro.carrier"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    invoke-direct {p0}, Lcom/asus/cm/util/UniqueId;->getModemIMEI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_2
    invoke-direct {p0}, Lcom/asus/cm/util/UniqueId;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isReadToUse()Z
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x1

    .line 36
    .local v0, isReady:Z
    iget-object v1, p0, Lcom/asus/cm/util/UniqueId;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v1}, Lcom/asus/cm/CMCRegistryManager;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    const-string v1, "use cached uniqueID"

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    .line 39
    :cond_0
    const-string v1, "wifi-only"

    const-string v2, "ro.carrier"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    invoke-direct {p0}, Lcom/asus/cm/util/UniqueId;->isTelephonyReadyToUse()Z

    move-result v0

    goto :goto_0

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/asus/cm/util/UniqueId;->isWifiReadyToUse()Z

    move-result v0

    goto :goto_0
.end method
