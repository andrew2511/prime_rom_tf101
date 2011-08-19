.class public Lcom/android/vending/SelfUpdateCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SelfUpdateCheckReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/android/vending/SelfUpdateCheckReceiver;->runSelfUpdateCheck(Landroid/content/Context;)V

    return-void
.end method

.method private static getMarketMetadataBlocking(Landroid/content/Context;)Lcom/android/vending/model/GetMarketMetadataResponse;
    .locals 7
    .parameter "context"

    .prologue
    .line 70
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v3

    .line 71
    .local v3, vendingApp:Lcom/android/vending/VendingApplication;
    new-instance v1, Lcom/android/vending/api/RequestManager;

    invoke-virtual {v3}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v4

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getGoogleHttpClient()Lcom/android/vending/compat/GoogleHttpClient;

    move-result-object v5

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/android/vending/api/RequestManager;-><init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lcom/android/vending/compat/GoogleHttpClient;Lcom/android/vending/cache/CacheManager;)V

    .line 76
    .local v1, manager:Lcom/android/vending/api/RequestManager;
    new-instance v2, Lcom/android/vending/api/GetMarketMetadataService;

    invoke-direct {v2, v1}, Lcom/android/vending/api/GetMarketMetadataService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 78
    .local v2, service:Lcom/android/vending/api/GetMarketMetadataService;
    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v4, v5}, Lcom/android/vending/api/GetMarketMetadataService;->constructAndQueueRequest(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/Integer;

    .line 81
    :try_start_0
    invoke-virtual {v1}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 82
    invoke-virtual {v2}, Lcom/android/vending/api/GetMarketMetadataService;->getResponse()Lcom/android/vending/model/GetMarketMetadataResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 85
    :goto_0
    return-object v4

    .line 83
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 84
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Error trying to GetMarketMetadata on login"

    invoke-static {v4}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 85
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static runSelfUpdateCheck(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v14, 0x0

    .line 30
    sget-object v12, Lcom/android/vending/util/VendingPreferences;->LAST_SELF_UPDATE_CHECK_TIME:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v12}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 31
    .local v4, lastCheckTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 32
    .local v9, now:J
    sget-object v12, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_SELF_UPDATE_CHECK_INTERVAL_MS:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v12}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 33
    .local v0, checkInterval:J
    sub-long v2, v9, v4

    .line 35
    .local v2, elapsed:J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-gez v12, :cond_1

    .line 36
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Wall clock changed by user / system. Current time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Last check: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    sget-object v12, Lcom/android/vending/util/VendingPreferences;->LAST_SELF_UPDATE_CHECK_TIME:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    cmp-long v12, v2, v0

    if-ltz v12, :cond_0

    .line 46
    invoke-static {p0}, Lcom/android/vending/SelfUpdateCheckReceiver;->getMarketMetadataBlocking(Landroid/content/Context;)Lcom/android/vending/model/GetMarketMetadataResponse;

    move-result-object v8

    .line 47
    .local v8, metadata:Lcom/android/vending/model/GetMarketMetadataResponse;
    if-eqz v8, :cond_0

    .line 51
    sget-object v12, Lcom/android/vending/util/VendingPreferences;->LAST_SELF_UPDATE_CHECK_TIME:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v8}, Lcom/android/vending/model/GetMarketMetadataResponse;->getLatestClientVersionCode()I

    move-result v6

    .line 54
    .local v6, latestVersionCode:I
    invoke-static {p0, v14}, Lcom/android/vending/api/GetMarketMetadataService;->getMarketPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 56
    .local v7, marketPackageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_2

    iget v12, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v12, v6, :cond_3

    .line 58
    :cond_2
    invoke-virtual {v8}, Lcom/android/vending/model/GetMarketMetadataResponse;->getLatestClientUrl()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/android/vending/InitializeMarketAction;->startSelfUpdateDownload(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_3
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v11

    .line 62
    .local v11, vendingApp:Lcom/android/vending/VendingApplication;
    invoke-static {v11}, Lcom/android/vending/CheckinUpdater;->get(Landroid/content/Context;)Lcom/android/vending/CheckinUpdater;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/vending/CheckinUpdater;->checkForUpdates()V

    .line 64
    invoke-virtual {v11}, Lcom/android/vending/VendingApplication;->fetchAndUpdateMetadata()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 22
    new-instance v0, Lcom/android/vending/util/WakelockedThread;

    const-string v1, "self-update-check"

    new-instance v2, Lcom/android/vending/SelfUpdateCheckReceiver$1;

    invoke-direct {v2, p0, p1}, Lcom/android/vending/SelfUpdateCheckReceiver$1;-><init>(Lcom/android/vending/SelfUpdateCheckReceiver;Landroid/content/Context;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/android/vending/util/WakelockedThread;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/vending/util/WakelockedThread;->start()V

    .line 27
    return-void
.end method
