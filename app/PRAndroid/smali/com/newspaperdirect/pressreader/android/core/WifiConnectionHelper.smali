.class public Lcom/newspaperdirect/pressreader/android/core/WifiConnectionHelper;
.super Ljava/lang/Object;
.source "WifiConnectionHelper.java"


# static fields
.field private static final PREF_DATA_ACCESS:Ljava/lang/String; = "data_access_wifi"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canConnect()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "data_access_wifi"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 26
    .local v0, wifiRequested:Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/WifiConnectionHelper;->isWifiAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isWifiAvailable()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 14
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 15
    .local v0, mgr:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    move v2, v4

    .line 21
    :goto_0
    return v2

    .line 17
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 18
    .local v1, wifi:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    move v2, v4

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method
