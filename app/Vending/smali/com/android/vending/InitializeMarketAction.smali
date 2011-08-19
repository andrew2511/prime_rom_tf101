.class public Lcom/android/vending/InitializeMarketAction;
.super Ljava/lang/Object;
.source "InitializeMarketAction.java"

# interfaces
.implements Lcom/android/vending/ChainAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;,
        Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver;,
        Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;
    }
.end annotation


# static fields
.field private static sLastRequestId:J

.field private static sLastSyncTimeMs:J

.field private static sWarningMessage:Ljava/lang/String;


# instance fields
.field private mNextAction:Lcom/android/vending/ChainAction;

.field private mRequestId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/vending/InitializeMarketAction;->sLastSyncTimeMs:J

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/InitializeMarketAction;->sWarningMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/InitializeMarketAction;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/android/vending/InitializeMarketAction;->mRequestId:J

    return-wide v0
.end method

.method static synthetic access$100(J)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/android/vending/InitializeMarketAction;->checkLastRequestId(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/vending/InitializeMarketAction;Lcom/android/vending/BaseActivity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/vending/InitializeMarketAction;->runNextAction(Lcom/android/vending/BaseActivity;)V

    return-void
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    sput-object p0, Lcom/android/vending/InitializeMarketAction;->sWarningMessage:Ljava/lang/String;

    return-object p0
.end method

.method private static declared-synchronized checkLastRequestId(J)Z
    .locals 3
    .parameter "requestId"

    .prologue
    .line 153
    const-class v0, Lcom/android/vending/InitializeMarketAction;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/android/vending/InitializeMarketAction;->sLastRequestId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static checkMarketInitialized()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method private static forceHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 338
    const-string v0, "https:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static getLastSyncTimeMs()J
    .locals 4

    .prologue
    .line 157
    sget-wide v0, Lcom/android/vending/InitializeMarketAction;->sLastSyncTimeMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 159
    sget-wide v0, Lcom/android/vending/InitializeMarketAction;->sLastSyncTimeMs:J

    .line 163
    :goto_0
    return-wide v0

    .line 162
    :cond_0
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->LAST_SYNC_TIME:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/android/vending/InitializeMarketAction;->sLastSyncTimeMs:J

    .line 163
    sget-wide v0, Lcom/android/vending/InitializeMarketAction;->sLastSyncTimeMs:J

    goto :goto_0
.end method

.method private static declared-synchronized getNextRequestId()J
    .locals 5

    .prologue
    .line 146
    const-class v0, Lcom/android/vending/InitializeMarketAction;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/android/vending/InitializeMarketAction;->sLastRequestId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/android/vending/InitializeMarketAction;->sLastRequestId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initiateMarketInitialization(Lcom/android/vending/BaseActivity;Z)V
    .locals 2
    .parameter "activity"
    .parameter "sendDeviceConfig"

    .prologue
    .line 97
    invoke-static {}, Lcom/android/vending/InitializeMarketAction;->getNextRequestId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/InitializeMarketAction;->mRequestId:J

    .line 98
    new-instance v0, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;-><init>(Lcom/android/vending/InitializeMarketAction;Lcom/android/vending/BaseActivity;Z)V

    invoke-virtual {v0}, Lcom/android/vending/InitializeMarketAction$MetadataAndDownloadsAction;->start()V

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/vending/InitializeMarketAction;->setLastSyncTimeMs(J)V

    .line 104
    return-void
.end method

.method public static reconstructDatabase(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter "context"
    .parameter "fullReconcileNeeded"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/VendingApplication$AccountListListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/VendingApplication$AccountListListener;>;"
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 287
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    .local v0, account:Ljava/lang/String;
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v3

    new-instance v4, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;

    invoke-direct {v4, p1, p2, v0, v2}, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    goto :goto_0

    .line 292
    .end local v0           #account:Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/android/vending/InitializeMarketAction$1;

    invoke-direct {v3, v2, p3}, Lcom/android/vending/InitializeMarketAction$1;-><init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Lcom/android/vending/InitializeMarketAction$1;->start()V

    .line 313
    return-void
.end method

.method private runNextAction(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/vending/InitializeMarketAction;->mNextAction:Lcom/android/vending/ChainAction;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/vending/InitializeMarketAction;->mNextAction:Lcom/android/vending/ChainAction;

    invoke-interface {v0, p1}, Lcom/android/vending/ChainAction;->runAction(Lcom/android/vending/BaseActivity;)V

    .line 142
    :cond_0
    return-void
.end method

.method public static setLastSyncTimeMs(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 167
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->LAST_SYNC_TIME:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 168
    sput-wide p0, Lcom/android/vending/InitializeMarketAction;->sLastSyncTimeMs:J

    .line 169
    return-void
.end method

.method private shouldSendDeviceConfiguration()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 120
    sget-object v3, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_ALWAYS_SEND_CONFIG:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v3}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 134
    :goto_0
    return v3

    .line 125
    :cond_0
    invoke-static {}, Lcom/android/vending/InitializeMarketAction;->wasMarketUpgraded()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 126
    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/vending/VendingApplication;->getDeviceConfiguration()Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v1

    .line 132
    .local v1, deviceConfig:Lcom/android/vending/model/DeviceConfiguration;
    invoke-virtual {v1}, Lcom/android/vending/model/DeviceConfiguration;->hashCode()I

    move-result v0

    .line 133
    .local v0, configurationHashCode:I
    sget-object v3, Lcom/android/vending/util/VendingPreferences;->DEVICE_CONFIGURATION_HASH:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 134
    .local v2, prevHashCode:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    if-eq v2, v0, :cond_3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static startSelfUpdateDownload(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 317
    invoke-static {p1}, Lcom/android/vending/InitializeMarketAction;->forceHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    .line 319
    const-string v2, "ANDROIDSECURE"

    .line 321
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v3

    .line 326
    invoke-virtual {v3}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/vending/VendingApplication;->invalidateAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v3, v1}, Lcom/android/vending/VendingApplication;->getCurrentAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;)Ljava/lang/String;

    move-result-object v1

    .line 329
    new-instance v3, Lcom/android/vending/util/DownloadManagerUtil$Request;

    invoke-direct {v3, v0}, Lcom/android/vending/util/DownloadManagerUtil$Request;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.vending"

    const-class v4, Lcom/android/vending/InitializeMarketAction$DownloadBroadcastReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/vending/util/DownloadManagerUtil$Request;->setNotification(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vending/util/DownloadManagerUtil$Request;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/vending/util/DownloadManagerUtil$Request;->setCookieData(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vending/util/DownloadManagerUtil$Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/util/DownloadManagerUtil$Request;->setVisibleNotification(Z)Lcom/android/vending/util/DownloadManagerUtil$Request;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/DownloadManagerUtil$Request;->setTitle(Ljava/lang/String;)Lcom/android/vending/util/DownloadManagerUtil$Request;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/vending/util/DownloadManagerUtil;->enqueueDownload(Landroid/content/Context;Lcom/android/vending/util/DownloadManagerUtil$Request;)Landroid/net/Uri;

    .line 335
    return-void
.end method

.method private static wasMarketUpgraded()Z
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    .line 108
    .local v0, vendingApplication:Lcom/android/vending/VendingApplication;
    sget-object v1, Lcom/android/vending/util/VendingPreferences;->RECONCILED_VERSION:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->getVersionCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public runAction(Lcom/android/vending/BaseActivity;)V
    .locals 7
    .parameter "activity"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/vending/InitializeMarketAction;->shouldSendDeviceConfiguration()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/vending/InitializeMarketAction;->initiateMarketInitialization(Lcom/android/vending/BaseActivity;Z)V

    .line 93
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-object v3, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_SYNC_FREQUENCY_MS:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v3}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 77
    .local v1, syncInterval:J
    invoke-static {}, Lcom/android/vending/InitializeMarketAction;->getLastSyncTimeMs()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 79
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/vending/InitializeMarketAction;->initiateMarketInitialization(Lcom/android/vending/BaseActivity;Z)V

    goto :goto_0

    .line 84
    :cond_1
    sget-object v3, Lcom/android/vending/InitializeMarketAction;->sWarningMessage:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 85
    sget-object v3, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_HIDE_WARNING_MESSAGE:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v3}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 86
    .local v0, hideWarningMessage:Z
    if-nez v0, :cond_2

    .line 87
    sget-object v3, Lcom/android/vending/InitializeMarketAction;->sWarningMessage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/vending/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 92
    .end local v0           #hideWarningMessage:Z
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/vending/InitializeMarketAction;->runNextAction(Lcom/android/vending/BaseActivity;)V

    goto :goto_0
.end method

.method public setNext(Lcom/android/vending/ChainAction;)V
    .locals 0
    .parameter "nextAction"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/vending/InitializeMarketAction;->mNextAction:Lcom/android/vending/ChainAction;

    .line 66
    return-void
.end method
