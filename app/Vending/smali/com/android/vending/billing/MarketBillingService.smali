.class public Lcom/android/vending/billing/MarketBillingService;
.super Lcom/android/vending/compat/VendingService;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/MarketBillingService$1;,
        Lcom/android/vending/billing/MarketBillingService$AsynchInAppAckNotifications;,
        Lcom/android/vending/billing/MarketBillingService$AsynchRestoreTransactions;,
        Lcom/android/vending/billing/MarketBillingService$AsynchPurchaseInformation;,
        Lcom/android/vending/billing/MarketBillingService$BillingNotifier;,
        Lcom/android/vending/billing/MarketBillingService$Stub;,
        Lcom/android/vending/billing/MarketBillingService$ResponseCode;,
        Lcom/android/vending/billing/MarketBillingService$UidProvider;
    }
.end annotation


# static fields
.field private static sRandom:Ljava/util/Random;


# instance fields
.field private final mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

.field mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mUidProvider:Lcom/android/vending/billing/MarketBillingService$UidProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/vending/billing/MarketBillingService;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/vending/compat/VendingService;-><init>()V

    .line 82
    new-instance v0, Lcom/android/vending/billing/MarketBillingService$UidProvider;

    invoke-direct {v0}, Lcom/android/vending/billing/MarketBillingService$UidProvider;-><init>()V

    iput-object v0, p0, Lcom/android/vending/billing/MarketBillingService;->mUidProvider:Lcom/android/vending/billing/MarketBillingService$UidProvider;

    .line 101
    new-instance v0, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    invoke-direct {v0, p0}, Lcom/android/vending/billing/MarketBillingService$BillingNotifier;-><init>(Lcom/android/vending/billing/MarketBillingService;)V

    iput-object v0, p0, Lcom/android/vending/billing/MarketBillingService;->mNotifier:Lcom/android/vending/billing/MarketBillingService$BillingNotifier;

    .line 102
    new-instance v0, Lcom/android/vending/billing/MarketBillingService$Stub;

    invoke-direct {v0, p0}, Lcom/android/vending/billing/MarketBillingService$Stub;-><init>(Lcom/android/vending/billing/MarketBillingService;)V

    iput-object v0, p0, Lcom/android/vending/billing/MarketBillingService;->mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

    .line 650
    return-void
.end method

.method static synthetic access$000()Ljava/util/Random;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/vending/billing/MarketBillingService;->sRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/billing/MarketBillingService;Lcom/android/vending/model/PurchaseResult;)Lcom/android/vending/billing/MarketBillingService$ResponseCode;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/vending/billing/MarketBillingService;->purchaseResultToResponseCode(Lcom/android/vending/model/PurchaseResult;)Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static isTestNotifyId(Ljava/lang/String;)Z
    .locals 1
    .parameter "notifyIds"

    .prologue
    .line 495
    const-string v0, "android.test"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private purchaseResultToResponseCode(Lcom/android/vending/model/PurchaseResult;)Lcom/android/vending/billing/MarketBillingService$ResponseCode;
    .locals 2
    .parameter "result"

    .prologue
    .line 503
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$1;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseResult;->getResultCode()Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 511
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    :goto_0
    return-object v0

    .line 505
    :pswitch_0
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    goto :goto_0

    .line 507
    :pswitch_1
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    goto :goto_0

    .line 509
    :pswitch_2
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static sendNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .parameter "notifyIds"

    .prologue
    .line 465
    new-instance v1, Lcom/android/vending/billing/InAppRequestDatabase;

    invoke-direct {v1, p0}, Lcom/android/vending/billing/InAppRequestDatabase;-><init>(Landroid/content/Context;)V

    .line 466
    .local v1, inAppRequestDatabase:Lcom/android/vending/billing/InAppRequestDatabase;
    invoke-static {p2}, Lcom/android/vending/billing/MarketBillingService;->isTestNotifyId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/android/vending/billing/InAppRequestDatabase;->logNotificationId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 469
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.IN_APP_NOTIFY_INTERNAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v0, buyActivityIntent:Landroid/content/Intent;
    const-string v3, "asset_package"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v3, "notification_id"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 474
    .end local v0           #buyActivityIntent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {v1}, Lcom/android/vending/billing/InAppRequestDatabase;->close()V

    .line 476
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.IN_APP_NOTIFY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v3}, Lcom/android/vending/util/Util;->findReceiverName(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 478
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_2

    .line 479
    const/4 v3, 0x0

    .line 484
    :goto_0
    return v3

    .line 481
    :cond_2
    const-string v3, "notification_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 484
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static sendResponseCode(Landroid/content/Context;Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z
    .locals 3
    .parameter "context"
    .parameter "packageName"
    .parameter "requestId"
    .parameter "responseCode"

    .prologue
    .line 364
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.RESPONSE_CODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/android/vending/util/Util;->findReceiverName(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 366
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 367
    const/4 v1, 0x0

    .line 372
    :goto_0
    return v1

    .line 369
    :cond_0
    const-string v1, "request_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 370
    const-string v1, "response_code"

    invoke-virtual {p4}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 372
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getPreferredAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 522
    if-eqz p1, :cond_0

    .line 523
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/android/vending/model/AbstractLocalAssetCache;->getByPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 525
    .local v0, localAsset:Lcom/android/vending/model/LocalAsset;
    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v1

    .line 529
    .end local v0           #localAsset:Lcom/android/vending/model/LocalAsset;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/billing/MarketBillingService;->mBinder:Lcom/android/vending/billing/IMarketBillingService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/vending/compat/VendingService;->onCreate()V

    .line 88
    invoke-virtual {p0}, Lcom/android/vending/billing/MarketBillingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/MarketBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/vending/compat/VendingService;->onDestroy()V

    .line 99
    return-void
.end method
