.class public Lcom/aws/account/ASUSWebstorage;
.super Landroid/app/Application;
.source "ASUSWebstorage.java"


# static fields
.field public static apicfg:Lnet/yostore/aws/api/ApiConfig; = null

.field public static applicationContext:Landroid/content/Context; = null

.field public static final asustest:Z = false

.field public static final c_ClientType:Ljava/lang/String; = "0"

.field public static clientversion:Ljava/lang/String; = null

.field public static closePid:I = 0x0

.field private static final exprireTime:J = 0x9a7ec800L

.field public static logoutflg:Z = false

.field public static mPrefs:Landroid/content/SharedPreferences; = null

.field public static macaddr:Ljava/lang/String; = null

.field private static final swTime:J = 0x12b1a409d09L

.field private static v_ClientVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, -0x1

    sput v0, Lcom/aws/account/ASUSWebstorage;->closePid:I

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/aws/account/ASUSWebstorage;->v_ClientVersion:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aws/account/ASUSWebstorage;->logoutflg:Z

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/aws/account/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 46
    return-void
.end method

.method public static getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/aws/account/ASUSWebstorage;->macaddr:Ljava/lang/String;

    return-object v0
.end method

.method public static getMachineid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getProductname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/aws/account/ASUSWebstorage;->macaddr:Ljava/lang/String;

    return-object v0
.end method

.method public static getV_ClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/aws/account/ASUSWebstorage;->v_ClientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static haveInternet()Z
    .locals 5

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, result:Z
    sget-object v3, Lcom/aws/account/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 122
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 123
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    :cond_0
    const/4 v2, 0x0

    .line 139
    :goto_0
    return v2

    .line 129
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 131
    const/4 v2, 0x0

    goto :goto_0

    .line 135
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isExpire(J)Z
    .locals 1
    .parameter "now"

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public static setMac(Ljava/lang/String;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 99
    sput-object p0, Lcom/aws/account/ASUSWebstorage;->macaddr:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public static setUuid(Ljava/lang/String;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 93
    sput-object p0, Lcom/aws/account/ASUSWebstorage;->macaddr:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static setV_ClientVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "v_ClientVersion"

    .prologue
    .line 143
    sput-object p0, Lcom/aws/account/ASUSWebstorage;->v_ClientVersion:Ljava/lang/String;

    .line 144
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 52
    invoke-virtual {p0}, Lcom/aws/account/ASUSWebstorage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/aws/account/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    .line 53
    return-void
.end method
