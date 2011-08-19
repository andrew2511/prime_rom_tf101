.class public Lcom/android/vending/CheckinUpdater;
.super Ljava/lang/Object;
.source "CheckinUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/CheckinUpdater$CheckinListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/vending/CheckinUpdater;


# instance fields
.field private final mCacheManager:Lcom/android/vending/cache/CacheManager;

.field private volatile mCheckinEnabled:Z

.field private final mCheckinListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/CheckinUpdater$CheckinListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCheckinOnEnable:Z

.field private final mContentSyncProducer:Lcom/android/vending/ContentSyncProducer;

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mWorkService:Lcom/android/vending/util/WorkService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/CheckinUpdater;->sInstance:Lcom/android/vending/CheckinUpdater;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/vending/cache/CacheManager;Lcom/android/vending/util/WorkService;Lcom/android/vending/ContentSyncProducer;)V
    .locals 1
    .parameter "context"
    .parameter "packageManager"
    .parameter "cacheManager"
    .parameter "workService"
    .parameter "contentSyncProducer"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/CheckinUpdater;->mCheckinEnabled:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/CheckinUpdater;->mCheckinOnEnable:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/CheckinUpdater;->mCheckinListeners:Ljava/util/ArrayList;

    .line 69
    iput-object p1, p0, Lcom/android/vending/CheckinUpdater;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/vending/CheckinUpdater;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 71
    iput-object p3, p0, Lcom/android/vending/CheckinUpdater;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    .line 72
    iput-object p4, p0, Lcom/android/vending/CheckinUpdater;->mWorkService:Lcom/android/vending/util/WorkService;

    .line 73
    iput-object p5, p0, Lcom/android/vending/CheckinUpdater;->mContentSyncProducer:Lcom/android/vending/ContentSyncProducer;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/CheckinUpdater;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/vending/CheckinUpdater;->mCheckinListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/CheckinUpdater;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/vending/CheckinUpdater;->performCheckin()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/vending/CheckinUpdater;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/vending/CheckinUpdater;->performUpdateCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/vending/CheckinUpdater;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/vending/CheckinUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/android/vending/CheckinUpdater;->notifyUpdatesAvailable(Landroid/content/Context;I)V

    return-void
.end method

.method private static createMyDownloadsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    .line 378
    const-string v0, "ro.market_update_handler"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    .line 382
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.vending.action.MY_DOWNLOADS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 386
    if-eqz v1, :cond_0

    .line 387
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.vending.action.MY_DOWNLOADS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 389
    new-instance v3, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v0, v2

    .line 397
    :goto_0
    return-object v0

    .line 395
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    const-class v1, Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/vending/CheckinUpdater;
    .locals 7
    .parameter "context"

    .prologue
    .line 42
    const-class v6, Lcom/android/vending/CheckinUpdater;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/android/vending/CheckinUpdater;->sInstance:Lcom/android/vending/CheckinUpdater;

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v3

    .line 46
    .local v3, cacheManager:Lcom/android/vending/cache/CacheManager;
    new-instance v5, Lcom/android/vending/ContentSyncProducer;

    invoke-direct {v5}, Lcom/android/vending/ContentSyncProducer;-><init>()V

    .line 48
    .local v5, contentSyncProducer:Lcom/android/vending/ContentSyncProducer;
    new-instance v0, Lcom/android/vending/CheckinUpdater;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/android/vending/util/WorkService;->get()Lcom/android/vending/util/WorkService;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/CheckinUpdater;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/vending/cache/CacheManager;Lcom/android/vending/util/WorkService;Lcom/android/vending/ContentSyncProducer;)V

    sput-object v0, Lcom/android/vending/CheckinUpdater;->sInstance:Lcom/android/vending/CheckinUpdater;

    .line 51
    .end local v3           #cacheManager:Lcom/android/vending/cache/CacheManager;
    .end local v5           #contentSyncProducer:Lcom/android/vending/ContentSyncProducer;
    :cond_0
    sget-object v0, Lcom/android/vending/CheckinUpdater;->sInstance:Lcom/android/vending/CheckinUpdater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static notifyUpdatesAvailable(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "numUpdates"

    .prologue
    .line 356
    if-lez p1, :cond_0

    sget-object v0, Lcom/android/vending/util/VendingPreferences;->NOTIFY_UPDATES:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, status:Ljava/lang/String;
    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, title:Ljava/lang/String;
    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, message:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/vending/CheckinUpdater;->createMyDownloadsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 364
    .local v2, myDownloadsIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v0

    const/4 v3, 0x0

    const v7, 0x7f02007d

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/vending/VendingNotificationManager;->showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    .end local v2           #myDownloadsIntent:Landroid/content/Intent;
    .end local v4           #status:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #message:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private performCheckin()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 174
    const/4 v7, 0x0

    .line 175
    .local v7, numAvailableUpdates:I
    const/4 v8, 0x0

    .line 176
    .local v8, numNonAutoUpdates:I
    const/4 v4, 0x0

    .line 177
    .local v4, hashCodeSum:I
    const/4 v2, 0x0

    .line 179
    .local v2, caughtException:Z
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/vending/VendingApplication;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    .line 181
    .local v1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v10, requestList:Ljava/util/ArrayList;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_0

    .line 184
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    .local v0, account:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/vending/CheckinUpdater;->mContentSyncProducer:Lcom/android/vending/ContentSyncProducer;

    iget-object v13, p0, Lcom/android/vending/CheckinUpdater;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v13, v0}, Lcom/android/vending/ContentSyncProducer;->getContentSyncRequest(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/android/vending/model/ContentSyncRequest;

    move-result-object v9

    .line 189
    .local v9, request:Lcom/android/vending/model/ContentSyncRequest;
    invoke-virtual {v9}, Lcom/android/vending/model/ContentSyncRequest;->hashCode()I

    move-result v11

    .line 194
    .local v11, thisCheckinHash:I
    add-int/2addr v4, v11

    .line 196
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 199
    .end local v0           #account:Ljava/lang/String;
    .end local v9           #request:Lcom/android/vending/model/ContentSyncRequest;
    .end local v11           #thisCheckinHash:I
    :cond_0
    const/4 v6, 0x0

    .line 203
    .local v6, lastCheckinHash:I
    sget-object v12, Lcom/android/vending/util/VendingPreferences;->LAST_CHECKIN_HASH:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v12}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 204
    sget-object v12, Lcom/android/vending/util/VendingPreferences;->LAST_CHECKIN_HASH:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v12}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 208
    :cond_1
    if-eqz v6, :cond_3

    if-ne v6, v4, :cond_3

    .line 209
    const-string v12, "Suppressing duplicate checkin"

    new-array v13, v14, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :goto_1
    if-nez v2, :cond_2

    .line 259
    sget-object v12, Lcom/android/vending/util/VendingPreferences;->CHECKIN_NEEDED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 261
    :cond_2
    return-void

    .line 211
    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_5

    .line 212
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    .restart local v0       #account:Ljava/lang/String;
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vending/model/ContentSyncRequest;

    .line 215
    .restart local v9       #request:Lcom/android/vending/model/ContentSyncRequest;
    :try_start_0
    invoke-direct {p0, v0, v9}, Lcom/android/vending/CheckinUpdater;->sendContentSyncRequest(Ljava/lang/String;Lcom/android/vending/model/ContentSyncRequest;)I
    :try_end_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 225
    :goto_3
    if-lez v7, :cond_4

    .line 228
    invoke-direct {p0, v0}, Lcom/android/vending/CheckinUpdater;->performUpdateCheck(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v8, v12

    .line 211
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 216
    :catch_0
    move-exception v3

    .line 217
    .local v3, e:Lcom/android/vending/api/ApiException;
    invoke-virtual {v3}, Lcom/android/vending/api/ApiException;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    const/4 v2, 0x1

    .line 222
    goto :goto_3

    .line 219
    .end local v3           #e:Lcom/android/vending/api/ApiException;
    :catch_1
    move-exception v3

    .line 220
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    const/4 v2, 0x1

    goto :goto_3

    .line 233
    .end local v0           #account:Ljava/lang/String;
    .end local v3           #e:Ljava/io/IOException;
    .end local v9           #request:Lcom/android/vending/model/ContentSyncRequest;
    :cond_5
    iget-object v12, p0, Lcom/android/vending/CheckinUpdater;->mContext:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/android/vending/CheckinUpdater;->notifyUpdatesAvailable(Landroid/content/Context;I)V

    .line 235
    if-nez v2, :cond_6

    .line 237
    sget-object v12, Lcom/android/vending/util/VendingPreferences;->LAST_CHECKIN_HASH:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 239
    sget-object v12, Lcom/android/vending/util/VendingPreferences;->LAST_SYSTEM_APPS_HASH:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    iget-object v13, p0, Lcom/android/vending/CheckinUpdater;->mContentSyncProducer:Lcom/android/vending/ContentSyncProducer;

    invoke-virtual {v13}, Lcom/android/vending/ContentSyncProducer;->getLastComputedSystemAppsHash()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 243
    :cond_6
    new-instance v12, Lcom/android/vending/CheckinUpdater$3;

    invoke-direct {v12, p0}, Lcom/android/vending/CheckinUpdater$3;-><init>(Lcom/android/vending/CheckinUpdater;)V

    invoke-virtual {v12}, Lcom/android/vending/CheckinUpdater$3;->start()V

    goto :goto_1
.end method

.method private declared-synchronized performUpdateCheck(Ljava/lang/String;)I
    .locals 11
    .parameter "account"

    .prologue
    const/4 v10, 0x0

    .line 309
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/CheckinUpdater;->getRequestManager()Lcom/android/vending/api/RequestManager;

    move-result-object v6

    .line 312
    .local v6, requestManager:Lcom/android/vending/api/RequestManager;
    new-instance v7, Lcom/android/vending/api/AssetService;

    iget-object v8, p0, Lcom/android/vending/CheckinUpdater;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    invoke-direct {v7, v6, v8}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    .line 313
    .local v7, service:Lcom/android/vending/api/AssetService;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 314
    .local v4, myDownloads:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v8, Lcom/android/vending/CheckinUpdater$5;

    invoke-direct {v8, p0, v4}, Lcom/android/vending/CheckinUpdater$5;-><init>(Lcom/android/vending/CheckinUpdater;Ljava/util/List;)V

    const/4 v9, 0x0

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/vending/api/AssetService;->queueGetMyDownloads(Ljava/lang/String;Lcom/android/vending/api/AssetService$GetAssetsReceiver;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :try_start_1
    invoke-virtual {v6, p1}, Lcom/android/vending/api/RequestManager;->doRequests(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    :try_start_2
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 333
    .local v1, autoUpdates:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    const/4 v5, 0x0

    .line 334
    .local v5, numNonAutoUpdates:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 335
    .local v0, asset:Lcom/android/vending/model/Asset;
    iget-object v8, p0, Lcom/android/vending/CheckinUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Lcom/android/vending/model/Asset;->canAutoUpdate(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 336
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 309
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    .end local v1           #autoUpdates:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #myDownloads:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .end local v5           #numNonAutoUpdates:I
    .end local v6           #requestManager:Lcom/android/vending/api/RequestManager;
    .end local v7           #service:Lcom/android/vending/api/AssetService;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 323
    .restart local v4       #myDownloads:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .restart local v6       #requestManager:Lcom/android/vending/api/RequestManager;
    .restart local v7       #service:Lcom/android/vending/api/AssetService;
    :catch_0
    move-exception v2

    .line 324
    .local v2, e:Lcom/android/vending/api/ApiException;
    :try_start_3
    invoke-virtual {v2}, Lcom/android/vending/api/ApiException;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v8, v10

    .line 352
    .end local v2           #e:Lcom/android/vending/api/ApiException;
    :goto_1
    monitor-exit p0

    return v8

    .line 326
    :catch_1
    move-exception v2

    .line 327
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v8, v10

    .line 328
    goto :goto_1

    .line 337
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #asset:Lcom/android/vending/model/Asset;
    .restart local v1       #autoUpdates:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #numNonAutoUpdates:I
    :cond_1
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 338
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 343
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 344
    .restart local v0       #asset:Lcom/android/vending/model/Asset;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto updating "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v8

    new-instance v9, Lcom/android/vending/GetAssetAsynchRequest;

    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Lcom/android/vending/GetAssetAsynchRequest;-><init>(Lcom/android/vending/model/Asset;Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    goto :goto_2

    .line 350
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    :cond_3
    sget-object v8, Lcom/android/vending/util/VendingPreferences;->LAST_UPDATE_CHECK_TIME:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v8, v5

    .line 352
    goto :goto_1
.end method

.method private declared-synchronized sendContentSyncRequest(Ljava/lang/String;Lcom/android/vending/model/ContentSyncRequest;)I
    .locals 4
    .parameter "account"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/CheckinUpdater;->getRequestManager()Lcom/android/vending/api/RequestManager;

    move-result-object v0

    .line 275
    .local v0, requestManager:Lcom/android/vending/api/RequestManager;
    new-instance v2, Lcom/android/vending/api/ContentSyncService;

    invoke-direct {v2, v0}, Lcom/android/vending/api/ContentSyncService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 276
    .local v2, service:Lcom/android/vending/api/ContentSyncService;
    invoke-virtual {v2, p1, p2}, Lcom/android/vending/api/ContentSyncService;->queueContentSync(Ljava/lang/String;Lcom/android/vending/model/ContentSyncRequest;)V

    .line 279
    invoke-virtual {v0, p1}, Lcom/android/vending/api/RequestManager;->doRequests(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v2}, Lcom/android/vending/api/ContentSyncService;->getContentSyncResponse()Lcom/android/vending/model/ContentSyncResponse;

    move-result-object v1

    .line 283
    .local v1, response:Lcom/android/vending/model/ContentSyncResponse;
    invoke-virtual {v1}, Lcom/android/vending/model/ContentSyncResponse;->getNumUpdatesAvailable()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit p0

    return v3

    .line 272
    .end local v0           #requestManager:Lcom/android/vending/api/RequestManager;
    .end local v1           #response:Lcom/android/vending/model/ContentSyncResponse;
    .end local v2           #service:Lcom/android/vending/api/ContentSyncService;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public static updateIfNecessary(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 154
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->CHECKIN_NEEDED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p0}, Lcom/android/vending/CheckinUpdater;->get(Landroid/content/Context;)Lcom/android/vending/CheckinUpdater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/CheckinUpdater;->update(Z)V

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public addCheckinListener(Lcom/android/vending/CheckinUpdater$CheckinListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/vending/CheckinUpdater;->mCheckinListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/CheckinUpdater;->mCheckinListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkForUpdates()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/vending/CheckinUpdater;->mWorkService:Lcom/android/vending/util/WorkService;

    iget-object v1, p0, Lcom/android/vending/CheckinUpdater;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/vending/CheckinUpdater$4;

    invoke-direct {v2, p0}, Lcom/android/vending/CheckinUpdater$4;-><init>(Lcom/android/vending/CheckinUpdater;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/util/WorkService;->runThreadAsService(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 303
    return-void
.end method

.method protected getRequestManager()Lcom/android/vending/api/RequestManager;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v1

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getGoogleHttpClient()Lcom/android/vending/compat/GoogleHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/CheckinUpdater;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/api/RequestManager;-><init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lcom/android/vending/compat/GoogleHttpClient;Lcom/android/vending/cache/CacheManager;)V

    return-object v0
.end method

.method public removeCheckinListener(Lcom/android/vending/CheckinUpdater$CheckinListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/vending/CheckinUpdater;->mCheckinListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/CheckinUpdater;->mCheckinListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-boolean v0, p0, Lcom/android/vending/CheckinUpdater;->mCheckinEnabled:Z

    .line 165
    .local v0, wasEnabled:Z
    iput-boolean p1, p0, Lcom/android/vending/CheckinUpdater;->mCheckinEnabled:Z

    .line 166
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/vending/CheckinUpdater;->mCheckinOnEnable:Z

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0, v2}, Lcom/android/vending/CheckinUpdater;->update(Z)V

    .line 170
    :cond_0
    iput-boolean v2, p0, Lcom/android/vending/CheckinUpdater;->mCheckinOnEnable:Z

    .line 171
    return-void
.end method

.method public update(Z)V
    .locals 3
    .parameter "force"

    .prologue
    const/4 v2, 0x1

    .line 92
    if-eqz p1, :cond_0

    .line 93
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->LAST_CHECKIN_HASH:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->remove()V

    .line 98
    :cond_0
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->CHECKIN_NEEDED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 101
    iget-boolean v0, p0, Lcom/android/vending/CheckinUpdater;->mCheckinEnabled:Z

    if-nez v0, :cond_1

    .line 102
    iput-boolean v2, p0, Lcom/android/vending/CheckinUpdater;->mCheckinOnEnable:Z

    .line 127
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v0, Lcom/android/vending/CheckinUpdater$1;

    invoke-direct {v0, p0}, Lcom/android/vending/CheckinUpdater$1;-><init>(Lcom/android/vending/CheckinUpdater;)V

    invoke-virtual {v0}, Lcom/android/vending/CheckinUpdater$1;->start()V

    .line 119
    iget-object v0, p0, Lcom/android/vending/CheckinUpdater;->mWorkService:Lcom/android/vending/util/WorkService;

    iget-object v1, p0, Lcom/android/vending/CheckinUpdater;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/vending/CheckinUpdater$2;

    invoke-direct {v2, p0}, Lcom/android/vending/CheckinUpdater$2;-><init>(Lcom/android/vending/CheckinUpdater;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/util/WorkService;->runThreadAsService(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
