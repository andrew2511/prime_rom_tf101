.class public Lcom/android/vending/api/GetMarketMetadataService;
.super Lcom/android/vending/api/BaseService;
.source "GetMarketMetadataService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "requestManager"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 28
    return-void
.end method

.method private clearCache()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/vending/api/GetMarketMetadataService$1;

    invoke-direct {v1, p0}, Lcom/android/vending/api/GetMarketMetadataService$1;-><init>(Lcom/android/vending/api/GetMarketMetadataService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    return-void
.end method

.method public static getMarketPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "context"
    .parameter "flags"

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 101
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public constructAndQueueRequest(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/Integer;
    .locals 12
    .parameter "context"
    .parameter "sendDeviceConfig"
    .parameter "account"

    .prologue
    .line 47
    const/16 v11, 0x40

    invoke-static {p1, v11}, Lcom/android/vending/api/GetMarketMetadataService;->getMarketPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 49
    .local v5, marketPackageInfo:Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_0

    .line 53
    const/4 v11, 0x0

    .line 90
    :goto_0
    return-object v11

    .line 56
    :cond_0
    const/4 v2, 0x0

    .line 59
    .local v2, deviceConfigurationHash:I
    new-instance v7, Lcom/android/vending/model/GetMarketMetadataRequest;

    invoke-direct {v7}, Lcom/android/vending/model/GetMarketMetadataRequest;-><init>()V

    .line 60
    .local v7, request:Lcom/android/vending/model/GetMarketMetadataRequest;
    if-eqz p2, :cond_1

    .line 61
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/vending/VendingApplication;->getDeviceConfiguration()Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v1

    .line 63
    .local v1, configuration:Lcom/android/vending/model/DeviceConfiguration;
    invoke-virtual {v1}, Lcom/android/vending/model/DeviceConfiguration;->hashCode()I

    move-result v2

    .line 64
    invoke-virtual {v7, v1}, Lcom/android/vending/model/GetMarketMetadataRequest;->setDeviceConfiguration(Lcom/android/vending/model/DeviceConfiguration;)V

    .line 68
    .end local v1           #configuration:Lcom/android/vending/model/DeviceConfiguration;
    :cond_1
    const-string v11, "phone"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 70
    .local v10, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v11

    invoke-virtual {v7, v11}, Lcom/android/vending/model/GetMarketMetadataRequest;->setDeviceRoaming(Z)V

    .line 73
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 74
    .local v9, signatures:[Landroid/content/pm/Signature;
    move-object v0, v9

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v8, v0, v3

    .line 75
    .local v8, s:Landroid/content/pm/Signature;
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/vending/util/Md5Util;->secureHash([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/vending/model/GetMarketMetadataRequest;->addMarketSignatureHash(Ljava/lang/String;)V

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    .end local v8           #s:Landroid/content/pm/Signature;
    :cond_2
    sget-object v11, Lcom/android/vending/util/VendingPreferences;->SEND_CONTENT_RATING:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v11}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 80
    invoke-static {}, Lcom/android/vending/SettingsActivity;->getContentRating()I

    move-result v6

    .line 81
    .local v6, ratingLevel:I
    invoke-virtual {v7, v6}, Lcom/android/vending/model/GetMarketMetadataRequest;->setContentRating(I)V

    .line 82
    invoke-direct {p0}, Lcom/android/vending/api/GetMarketMetadataService;->clearCache()V

    .line 85
    .end local v6           #ratingLevel:I
    :cond_3
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v11}, Lcom/android/vending/model/GetMarketMetadataRequest;->setDeviceModelName(Ljava/lang/String;)V

    .line 86
    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v11}, Lcom/android/vending/model/GetMarketMetadataRequest;->setDeviceManufacturerName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p3, v7}, Lcom/android/vending/api/GetMarketMetadataService;->queueRequest(Ljava/lang/String;Lcom/android/vending/model/GetMarketMetadataRequest;)V

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_0
.end method

.method public getResponse()Lcom/android/vending/model/GetMarketMetadataResponse;
    .locals 0

    .prologue
    .line 36
    iget-object p0, p0, Lcom/android/vending/api/GetMarketMetadataService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/GetMarketMetadataResponse;

    return-object p0
.end method

.method public queueRequest(Ljava/lang/String;Lcom/android/vending/model/GetMarketMetadataRequest;)V
    .locals 2
    .parameter "account"
    .parameter "request"

    .prologue
    .line 31
    new-instance v0, Lcom/android/vending/model/GetMarketMetadataResponse;

    invoke-direct {v0, p1}, Lcom/android/vending/model/GetMarketMetadataResponse;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, response:Lcom/android/vending/model/GetMarketMetadataResponse;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/vending/api/GetMarketMetadataService;->addRequest(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 33
    return-void
.end method
