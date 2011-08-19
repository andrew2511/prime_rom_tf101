.class public Lcom/android/vending/VendingApplication;
.super Landroid/app/Application;
.source "VendingApplication.java"

# interfaces
.implements Lcom/android/vending/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/VendingApplication$ApiClientContext;,
        Lcom/android/vending/VendingApplication$AccountListListener;,
        Lcom/android/vending/VendingApplication$VendingAccountListener;
    }
.end annotation


# static fields
.field private static sVendingApplication:Lcom/android/vending/VendingApplication;


# instance fields
.field private final mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccountListListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/VendingApplication$AccountListListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccountListLock:Ljava/lang/Object;

.field private mAssetInfoActivity:Lcom/android/vending/AssetInfoActivity;

.field mAuthTokenCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private volatile mCurrentAccount:Ljava/lang/String;

.field private mCurrentAccountLatch:Ljava/util/concurrent/CountDownLatch;

.field private mCurrentlyShownAsset:Ljava/lang/String;

.field private mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

.field private mGTalkServiceHelper:Lcom/android/vending/GTalkServiceHelper;

.field private mLineNumber:Ljava/lang/String;

.field private mPackageReferrerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mSetSelfUpdateAlarm:Z

.field private final mSetSelfUpdateLock:Ljava/lang/Object;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVendingApiClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

.field private mVendingAppMetadata:Lcom/android/vending/VendingApplicationMetadata;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mCurrentAccountLatch:Ljava/util/concurrent/CountDownLatch;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mSetSelfUpdateLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mAccountListLock:Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mAccountList:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mAccountListListeners:Ljava/util/ArrayList;

    .line 713
    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/VendingApplication;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/VendingApplication;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private clearAccountData(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 392
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v0, p1}, Lcom/android/vending/VendingApplication;->invalidateCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 393
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v0, p1}, Lcom/android/vending/VendingApplication;->invalidateCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/vending/api/LocalAssetDatabase;->removeAllByAccount(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method private getAccountCache(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "account"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mAuthTokenCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mAuthTokenCacheMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/vending/BaseActivity$AuthService;->values()[Lcom/android/vending/BaseActivity$AuthService;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mAuthTokenCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getVendingApplication()Lcom/android/vending/VendingApplication;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/android/vending/VendingApplication;->sVendingApplication:Lcom/android/vending/VendingApplication;

    return-object v0
.end method

.method public static setVendingApplication(Lcom/android/vending/VendingApplication;)V
    .locals 0
    .parameter "vendingApplication"

    .prologue
    .line 155
    sput-object p0, Lcom/android/vending/VendingApplication;->sVendingApplication:Lcom/android/vending/VendingApplication;

    .line 156
    return-void
.end method

.method private syncLocalDatabaseIfNecessary()V
    .locals 2

    .prologue
    .line 605
    invoke-static {}, Lcom/android/vending/LocalDbSyncService;->isSyncRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 607
    const-class v1, Lcom/android/vending/LocalDbSyncService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 608
    invoke-virtual {p0, v0}, Lcom/android/vending/VendingApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 610
    :cond_0
    return-void
.end method

.method private triggerGetMarketMetadata(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    .line 193
    new-instance v0, Lcom/android/vending/VendingApplication$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/VendingApplication$1;-><init>(Lcom/android/vending/VendingApplication;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication$1;->start()V

    .line 217
    return-void
.end method


# virtual methods
.method public addAccountListListener(Lcom/android/vending/VendingApplication$AccountListListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mAccountListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/VendingApplication;->mAccountListListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    monitor-exit v0

    .line 456
    return-void

    .line 455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addPackageReferrer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "referrer"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mPackageReferrerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    return-void
.end method

.method public fetchAndUpdateMetadata()V
    .locals 4

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/vending/VendingApplication;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    .line 187
    .local v1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    .local v0, account:Ljava/lang/String;
    invoke-direct {p0, p0, v0}, Lcom/android/vending/VendingApplication;->triggerGetMarketMetadata(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v0           #account:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getAccountList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mAccountListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/VendingApplication;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    .line 388
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mVendingApiClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/android/vending/VendingApplication$ApiClientContext;

    invoke-direct {v0, p0, p0}, Lcom/android/vending/VendingApplication$ApiClientContext;-><init>(Lcom/android/vending/VendingApplication;Lcom/android/vending/Authenticator;)V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mVendingApiClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mVendingApiClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    return-object v0
.end method

.method public getAssetInfoActivity(Ljava/lang/String;)Lcom/android/vending/AssetInfoActivity;
    .locals 1
    .parameter "assetId"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mCurrentlyShownAsset:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mCurrentlyShownAsset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mAssetInfoActivity:Lcom/android/vending/AssetInfoActivity;

    .line 556
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "authService"
    .parameter "account"

    .prologue
    .line 504
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/VendingApplication;->getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, cachedAuthToken:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 513
    :goto_0
    return-object v2

    .line 508
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/vending/compat/AccountManagerHelper;->getAuthTokenBlocking(Lcom/android/vending/VendingApplication;Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, authToken:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 511
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/VendingApplication;->setCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v2, v0

    .line 513
    goto :goto_0
.end method

.method public getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Ljava/lang/String;
    .locals 1
    .parameter "service"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mCurrentAccount:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/vending/VendingApplication;->getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "service"
    .parameter "account"

    .prologue
    .line 305
    if-nez p2, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/vending/VendingApplication;->getAccountCache(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getCurrentAccount()Ljava/lang/String;
    .locals 5

    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/VendingApplication;->mCurrentAccountLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    const-string v1, "Countdown latch timeout expired when getting current account!"

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/vending/VendingApplication;->mCurrentAccount:Ljava/lang/String;

    return-object v1

    .line 372
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 373
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Countdown latch interrupted while waiting for current account."

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;)Ljava/lang/String;
    .locals 1
    .parameter "authService"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mCurrentAccount:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/vending/VendingApplication;->getAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDeviceConfiguration()Lcom/android/vending/model/DeviceConfiguration;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 652
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    if-nez v10, :cond_5

    .line 653
    new-instance v10, Lcom/android/vending/model/DeviceConfiguration;

    invoke-direct {v10}, Lcom/android/vending/model/DeviceConfiguration;-><init>()V

    iput-object v10, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    .line 655
    iget-object v10, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 657
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v2

    .line 659
    .local v2, ci:Landroid/content/pm/ConfigurationInfo;
    iget-object v10, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/vending/util/Util;->getScreenDimensions(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v9

    .line 661
    .local v9, screenDimensions:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    iget v11, v2, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    invoke-static {v11}, Lcom/android/vending/model/DeviceConfiguration$TouchScreen;->fromConfigurationValue(I)Lcom/android/vending/model/DeviceConfiguration$TouchScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/vending/model/DeviceConfiguration;->setTouchScreen(Lcom/android/vending/model/DeviceConfiguration$TouchScreen;)Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v10

    iget v11, v2, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    invoke-static {v11}, Lcom/android/vending/model/DeviceConfiguration$Keyboard;->fromConfigurationValue(I)Lcom/android/vending/model/DeviceConfiguration$Keyboard;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/vending/model/DeviceConfiguration;->setKeyboard(Lcom/android/vending/model/DeviceConfiguration$Keyboard;)Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v10

    iget v11, v2, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    invoke-static {v11}, Lcom/android/vending/model/DeviceConfiguration$Navigation;->fromConfigurationValue(I)Lcom/android/vending/model/DeviceConfiguration$Navigation;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/vending/model/DeviceConfiguration;->setNavigation(Lcom/android/vending/model/DeviceConfiguration$Navigation;)Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v10

    iget v11, v2, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-virtual {v10, v11}, Lcom/android/vending/model/DeviceConfiguration;->setGlEsVersion(I)Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v11

    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v11, v10}, Lcom/android/vending/model/DeviceConfiguration;->setScreenWidth(I)Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v11

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v11, v10}, Lcom/android/vending/model/DeviceConfiguration;->setScreenHeight(I)Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v10

    sget v11, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v10, v11}, Lcom/android/vending/model/DeviceConfiguration;->setScreenDensity(I)Lcom/android/vending/model/DeviceConfiguration;

    .line 670
    iget-object v10, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    iget v11, v2, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    and-int/lit8 v11, v11, 0x1

    if-lez v11, :cond_0

    move v11, v13

    :goto_0
    invoke-virtual {v10, v11}, Lcom/android/vending/model/DeviceConfiguration;->setHasHardKeyboard(Z)Lcom/android/vending/model/DeviceConfiguration;

    .line 672
    iget-object v10, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    iget v11, v2, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    and-int/lit8 v11, v11, 0x2

    if-lez v11, :cond_1

    move v11, v13

    :goto_1
    invoke-virtual {v10, v11}, Lcom/android/vending/model/DeviceConfiguration;->setHasFiveWayNavigation(Z)Lcom/android/vending/model/DeviceConfiguration;

    .line 675
    iget-object v10, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 676
    .local v3, config:Landroid/content/res/Configuration;
    iget-object v10, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    iget v11, v3, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v11}, Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;->fromConfigurationValue(I)Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/vending/model/DeviceConfiguration;->setScreenLayoutSize(Lcom/android/vending/model/DeviceConfiguration$ScreenLayoutSize;)Lcom/android/vending/model/DeviceConfiguration;

    .line 679
    iget-object v10, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v6, :cond_2

    aget-object v7, v1, v5

    .line 680
    .local v7, library:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    invoke-virtual {v10, v7}, Lcom/android/vending/model/DeviceConfiguration;->addSystemSharedLibrary(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration;

    .line 679
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #config:Landroid/content/res/Configuration;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #library:Ljava/lang/String;
    :cond_0
    move v11, v12

    .line 670
    goto :goto_0

    :cond_1
    move v11, v12

    .line 672
    goto :goto_1

    .line 683
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #config:Landroid/content/res/Configuration;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/vending/VendingApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_3

    aget-object v8, v1, v5

    .line 684
    .local v8, locale:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    invoke-virtual {v10, v8}, Lcom/android/vending/model/DeviceConfiguration;->addSystemLocale(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration;

    .line 683
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 687
    .end local v8           #locale:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/vending/util/Util;->getGlExtensions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 688
    .local v4, extension:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    invoke-virtual {v10, v4}, Lcom/android/vending/model/DeviceConfiguration;->addGlExtension(Ljava/lang/String;)Lcom/android/vending/model/DeviceConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 652
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #ci:Landroid/content/pm/ConfigurationInfo;
    .end local v3           #config:Landroid/content/res/Configuration;
    .end local v4           #extension:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #len$:I
    .end local v9           #screenDimensions:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 692
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #ci:Landroid/content/pm/ConfigurationInfo;
    .restart local v3       #config:Landroid/content/res/Configuration;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #len$:I
    .restart local v9       #screenDimensions:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;

    invoke-static {v10, v11}, Lcom/android/vending/compat/DeviceConfigurationHelper;->customizeDeviceConfiguration(Landroid/content/Context;Lcom/android/vending/model/DeviceConfiguration;)V

    .line 695
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #ci:Landroid/content/pm/ConfigurationInfo;
    .end local v3           #config:Landroid/content/res/Configuration;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #len$:I
    .end local v9           #screenDimensions:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    iget-object v10, p0, Lcom/android/vending/VendingApplication;->mDeviceConfiguration:Lcom/android/vending/model/DeviceConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v10
.end method

.method public getGTalkServiceHelper()Lcom/android/vending/GTalkServiceHelper;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mGTalkServiceHelper:Lcom/android/vending/GTalkServiceHelper;

    return-object v0
.end method

.method public getLineNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mLineNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mLineNumber:Ljava/lang/String;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mLineNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Lcom/android/vending/VendingApplicationMetadata;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mVendingAppMetadata:Lcom/android/vending/VendingApplicationMetadata;

    return-object v0
.end method

.method public getPackageReferrer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mPackageReferrerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getRestoreStartTime()J
    .locals 2

    .prologue
    .line 642
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->RESTORE_START_TIME:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVersionCode()I
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public invalidateAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V
    .locals 3
    .parameter "service"
    .parameter "account"

    .prologue
    .line 332
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/VendingApplication;->getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, token:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/vending/VendingApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google"

    invoke-static {v1, v2, v0}, Lcom/android/vending/compat/AccountManagerHelper;->invalidateAuthTokenBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/VendingApplication;->invalidateCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 340
    :cond_0
    return-void
.end method

.method public invalidateCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V
    .locals 1
    .parameter "service"
    .parameter "account"

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/VendingApplication;->setCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public isCurrentAccountSet()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mCurrentAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 223
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0}, Lcom/google/common/io/protocol/ProtoBufType;->toString()Ljava/lang/String;

    .line 225
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mAuthTokenCacheMap:Ljava/util/HashMap;

    .line 227
    new-instance v0, Lcom/android/vending/VendingApplication$VendingAccountListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vending/VendingApplication$VendingAccountListener;-><init>(Lcom/android/vending/VendingApplication;Lcom/android/vending/VendingApplication$1;)V

    invoke-virtual {p0, v0}, Lcom/android/vending/VendingApplication;->addAccountListListener(Lcom/android/vending/VendingApplication$AccountListListener;)V

    .line 229
    invoke-static {p0}, Lcom/android/vending/util/GservicesValue;->init(Landroid/content/Context;)V

    .line 230
    invoke-static {p0}, Lcom/android/vending/util/PreferenceFile;->init(Landroid/content/Context;)V

    .line 232
    new-instance v0, Lcom/android/vending/VendingApplicationMetadata;

    invoke-direct {v0}, Lcom/android/vending/VendingApplicationMetadata;-><init>()V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mVendingAppMetadata:Lcom/android/vending/VendingApplicationMetadata;

    .line 234
    const-class v0, Lcom/android/vending/VendingApplication;

    monitor-enter v0

    .line 235
    :try_start_0
    const-string v1, "Resetting ServiceLocator from app"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    invoke-static {}, Lcom/android/vending/ServiceLocator;->reset()V

    .line 237
    invoke-static {p0}, Lcom/android/vending/ServiceLocator;->init(Lcom/android/vending/VendingApplication;)V

    .line 240
    invoke-static {}, Lcom/android/vending/LocalDbSyncService;->activateAfterTests()V

    .line 241
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    sput-object p0, Lcom/android/vending/VendingApplication;->sVendingApplication:Lcom/android/vending/VendingApplication;

    .line 244
    iput-object p0, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    .line 245
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "com.android.vending.SuggestionsProvider"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    .line 247
    invoke-direct {p0}, Lcom/android/vending/VendingApplication;->syncLocalDatabaseIfNecessary()V

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mPackageReferrerMap:Ljava/util/Map;

    .line 249
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/vending/VendingApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 250
    new-instance v0, Lcom/android/vending/GTalkServiceHelper;

    invoke-direct {v0, p0}, Lcom/android/vending/GTalkServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vending/VendingApplication;->mGTalkServiceHelper:Lcom/android/vending/GTalkServiceHelper;

    .line 251
    invoke-static {p0}, Lcom/android/vending/VendingBackupAgent;->registerWithBackup(Landroid/content/Context;)V

    .line 253
    invoke-static {}, Lcom/android/vending/compat/AccountManagerHelper;->initializeAccountList()V

    .line 255
    invoke-static {p0}, Lcom/android/vending/CheckinUpdater;->updateIfNecessary(Landroid/content/Context;)V

    .line 257
    invoke-virtual {p0, p0}, Lcom/android/vending/VendingApplication;->setSelfUpdateCheckAlarm(Landroid/content/Context;)V

    .line 258
    return-void

    .line 241
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStartRestore()V
    .locals 3

    .prologue
    .line 621
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->RESTORE_START_TIME:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 622
    return-void
.end method

.method public onStopRestore()V
    .locals 5

    .prologue
    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vending-applications restore finished in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/vending/VendingApplication;->getRestoreStartTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sec."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mGTalkServiceHelper:Lcom/android/vending/GTalkServiceHelper;

    invoke-virtual {v0}, Lcom/android/vending/GTalkServiceHelper;->unbindService()V

    .line 270
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 271
    return-void
.end method

.method public registerAssetInfoScreen(Ljava/lang/String;Lcom/android/vending/AssetInfoActivity;)V
    .locals 0
    .parameter "assetId"
    .parameter "activity"

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/vending/VendingApplication;->mCurrentlyShownAsset:Ljava/lang/String;

    .line 538
    iput-object p2, p0, Lcom/android/vending/VendingApplication;->mAssetInfoActivity:Lcom/android/vending/AssetInfoActivity;

    .line 539
    return-void
.end method

.method public removeAccountListListener(Lcom/android/vending/VendingApplication$AccountListListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mAccountListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/VendingApplication;->mAccountListListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 461
    monitor-exit v0

    .line 462
    return-void

    .line 461
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAccountList(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 419
    iget-object v7, p0, Lcom/android/vending/VendingApplication;->mAccountListLock:Ljava/lang/Object;

    monitor-enter v7

    .line 420
    :try_start_0
    iget-object v5, p0, Lcom/android/vending/VendingApplication;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 421
    .local v4, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/vending/VendingApplication;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 422
    iget-object v5, p0, Lcom/android/vending/VendingApplication;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 424
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    .local v0, account:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/vending/VendingApplication;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 426
    invoke-direct {p0, v0}, Lcom/android/vending/VendingApplication;->clearAccountData(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    .end local v0           #account:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 430
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/vending/VendingApplication;->mAccountListListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    sub-int v2, v5, v6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 432
    :try_start_2
    iget-object v5, p0, Lcom/android/vending/VendingApplication;->mAccountListListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vending/VendingApplication$AccountListListener;

    iget-object v6, p0, Lcom/android/vending/VendingApplication;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/android/vending/VendingApplication$AccountListListener;->accountListUpdate(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 430
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 434
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 435
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "Caught exception in accountListUpdate"

    invoke-static {v5, v1}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 442
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lcom/android/vending/VendingApplication;->mAccountList:Ljava/util/ArrayList;

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/vending/VendingApplication;->mAccountListListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v6, p0, v8, v5}, Lcom/android/vending/InitializeMarketAction;->reconstructDatabase(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/ArrayList;)V

    .line 444
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 445
    return-void
.end method

.method public setCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "service"
    .parameter "account"
    .parameter "authToken"

    .prologue
    .line 350
    if-eqz p2, :cond_0

    .line 351
    invoke-direct {p0, p2}, Lcom/android/vending/VendingApplication;->getAccountCache(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->ordinal()I

    move-result v1

    aput-object p3, v0, v1

    .line 353
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/vending/VendingApplication;->mContext:Landroid/content/Context;

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/vending/VendingApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method public setCurrentAccount(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 357
    if-eqz p1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mCurrentAccountLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 359
    iput-object p1, p0, Lcom/android/vending/VendingApplication;->mCurrentAccount:Ljava/lang/String;

    .line 361
    :cond_0
    return-void
.end method

.method public setGTalkServiceHelper(Lcom/android/vending/GTalkServiceHelper;)V
    .locals 0
    .parameter "gTalkServiceHelper"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/vending/VendingApplication;->mGTalkServiceHelper:Lcom/android/vending/GTalkServiceHelper;

    .line 167
    return-void
.end method

.method public setSelfUpdateCheckAlarm(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    .line 465
    iget-object v7, p0, Lcom/android/vending/VendingApplication;->mSetSelfUpdateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 466
    :try_start_0
    iget-boolean v0, p0, Lcom/android/vending/VendingApplication;->mSetSelfUpdateAlarm:Z

    if-eqz v0, :cond_0

    .line 467
    monitor-exit v7

    .line 484
    :goto_0
    return-void

    .line 469
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/VendingApplication;->mSetSelfUpdateAlarm:Z

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.SELF_UPDATE_CHECK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    const-class v1, Lcom/android/vending/SelfUpdateCheckReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 472
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 475
    const-wide/32 v2, 0x927c0

    .line 476
    sget-object v0, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_SELF_UPDATE_WAKE_INTERVAL_MS:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v0}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 478
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 480
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 481
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v2, v8

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 483
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateMetadata(Lcom/android/vending/model/GetMarketMetadataResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/vending/VendingApplication;->mVendingAppMetadata:Lcom/android/vending/VendingApplicationMetadata;

    invoke-virtual {v0, p1}, Lcom/android/vending/VendingApplicationMetadata;->updateState(Lcom/android/vending/model/GetMarketMetadataResponse;)V

    .line 711
    return-void
.end method
