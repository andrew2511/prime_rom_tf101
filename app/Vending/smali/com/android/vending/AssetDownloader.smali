.class public Lcom/android/vending/AssetDownloader;
.super Ljava/lang/Object;
.source "AssetDownloader.java"


# static fields
.field private static final RESTORE_SUCCESS_STATES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vending/AssetDownloader;->RESTORE_SUCCESS_STATES:Ljava/util/HashSet;

    .line 32
    sget-object v0, Lcom/android/vending/AssetDownloader;->RESTORE_SUCCESS_STATES:Ljava/util/HashSet;

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/vending/AssetDownloader;->RESTORE_SUCCESS_STATES:Ljava/util/HashSet;

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/android/vending/AssetDownloader;->RESTORE_SUCCESS_STATES:Ljava/util/HashSet;

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/android/vending/AssetDownloader;->RESTORE_SUCCESS_STATES:Ljava/util/HashSet;

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCELLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/vending/AssetDownloader;->RESTORE_SUCCESS_STATES:Ljava/util/HashSet;

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/vending/AssetDownloader;->RESTORE_SUCCESS_STATES:Ljava/util/HashSet;

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static finishRestore(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 197
    if-eqz p1, :cond_0

    const-string v0, "backup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v0

    .line 201
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/vending/AssetDownloader;->RESTORE_SUCCESS_STATES:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Lcom/android/vending/api/LocalAssetDatabase;->getBackupStatus(Ljava/util/Set;)I

    move-result v1

    .line 202
    if-gez v1, :cond_3

    move v2, v3

    .line 203
    :goto_1
    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    move v8, v1

    .line 206
    :goto_2
    if-eqz v2, :cond_5

    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 210
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0b

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v1, v2, v8, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 213
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x14000004

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    const v7, 0x7f02007e

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/vending/VendingNotificationManager;->showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    if-lez v8, :cond_2

    invoke-static {p0}, Lcom/android/vending/PackageMonitorReceiver;->notifyContentStateChange(Landroid/content/Context;)V

    .line 231
    :cond_2
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->onStopRestore()V

    goto :goto_0

    :cond_3
    move v2, v6

    .line 202
    goto :goto_1

    :cond_4
    move v8, v1

    .line 203
    goto :goto_2

    .line 206
    :cond_5
    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_3
.end method

.method private startDownload(Landroid/content/Context;Lcom/android/vending/model/DownloadInfo;Z)Landroid/net/Uri;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-virtual {p2}, Lcom/android/vending/model/DownloadInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v1, Lcom/android/vending/util/DownloadManagerUtil$Request;

    invoke-virtual {p2}, Lcom/android/vending/model/DownloadInfo;->getBlobUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/vending/util/DownloadManagerUtil$Request;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending"

    const-class v3, Lcom/android/vending/DownloadManagerBroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/vending/model/DownloadInfo;->getAssetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/vending/util/DownloadManagerUtil$Request;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/vending/util/DownloadManagerUtil$Request;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/vending/model/DownloadInfo;->getAuthCookieName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/vending/model/DownloadInfo;->getAuthCookieValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/vending/util/DownloadManagerUtil$Request;->setCookieData(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vending/util/DownloadManagerUtil$Request;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/vending/model/DownloadInfo;->getAssetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/util/DownloadManagerUtil$Request;->setTitle(Ljava/lang/String;)Lcom/android/vending/util/DownloadManagerUtil$Request;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/vending/util/DownloadManagerUtil$Request;->setPaused(Z)Lcom/android/vending/util/DownloadManagerUtil$Request;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/vending/util/DownloadManagerUtil$Request;->setAssetSource(Ljava/lang/String;)Lcom/android/vending/util/DownloadManagerUtil$Request;

    move-result-object v1

    const-string v2, "backup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/vending/util/DownloadManagerUtil$Request;->setVisibleNotification(Z)Lcom/android/vending/util/DownloadManagerUtil$Request;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/vending/util/DownloadManagerUtil$Request;->setDownloadDestination(I)Lcom/android/vending/util/DownloadManagerUtil$Request;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/vending/util/DownloadManagerUtil;->enqueueDownload(Landroid/content/Context;Lcom/android/vending/util/DownloadManagerUtil$Request;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelDownload(Lcom/android/vending/model/LocalAsset;Landroid/content/Context;)V
    .locals 3
    .parameter "asset"
    .parameter "context"

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v0

    .line 174
    .local v0, state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v0, v1, :cond_1

    .line 181
    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {p1, v1}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v0, v1, :cond_0

    .line 183
    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCELLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {p1, v1}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 184
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAsset;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lcom/android/vending/util/DownloadManagerUtil;->removeDownload(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public downloadAndInstall(Landroid/content/Context;[Lcom/android/vending/model/DownloadInfo;)V
    .locals 13
    .parameter "context"
    .parameter "downloadInfos"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 104
    const-string v8, "Initiating Download for %d applications."

    new-array v9, v11, [Ljava/lang/Object;

    array-length v10, p2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const/4 v3, 0x0

    .line 106
    .local v3, index:I
    move-object v0, p2

    .local v0, arr$:[Lcom/android/vending/model/DownloadInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v1, v0, v2

    .line 107
    .local v1, downloadInfo:Lcom/android/vending/model/DownloadInfo;
    invoke-virtual {v1}, Lcom/android/vending/model/DownloadInfo;->findLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v5

    .line 112
    .local v5, localAsset:Lcom/android/vending/model/LocalAsset;
    if-nez v5, :cond_0

    .line 114
    invoke-static {v1}, Lcom/android/vending/model/LocalAsset;->addPendingDownload(Lcom/android/vending/model/DownloadInfo;)Lcom/android/vending/model/LocalAsset;

    move-result-object v5

    .line 117
    :cond_0
    invoke-virtual {v5}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v6

    .line 118
    .local v6, state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    sget-object v8, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v6, v8, :cond_1

    .line 120
    const-string v8, "Asset %s in state DOWNLOAD_CANCEL_PENDING, ignoring."

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v5, v9, v12

    invoke-static {v8, v9}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    sget-object v8, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCELLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v5, v8}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 106
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v6}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->isNotInstallable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 124
    const-string v8, "Asset %s in state %s, ignoring."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v12

    aput-object v6, v9, v11

    invoke-static {v8, v9}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 126
    :cond_2
    sget-object v8, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v6, v8, :cond_3

    .line 127
    const-string v8, "Asset in state %s; DOWNLOAD_PENDING expected. Proceeding with download."

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v6, v9, v12

    invoke-static {v8, v9}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_3
    add-int/lit8 v3, v3, 0x1

    if-le v3, v11, :cond_4

    move v8, v11

    :goto_2
    invoke-direct {p0, p1, v1, v8}, Lcom/android/vending/AssetDownloader;->startDownload(Landroid/content/Context;Lcom/android/vending/model/DownloadInfo;Z)Landroid/net/Uri;

    move-result-object v7

    .line 136
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Lcom/android/vending/model/DownloadInfo;->getSignatureAndSize()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/vending/model/LocalAsset;->setUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 139
    sget-object v8, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v5, v8}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 142
    invoke-virtual {v1}, Lcom/android/vending/model/DownloadInfo;->getRefundTimeout()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/vending/model/LocalAsset;->setRefundTimeout(Ljava/lang/Long;)V

    .line 145
    invoke-virtual {v5}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/vending/model/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/vending/model/Asset;->invalidateById(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v7           #uri:Landroid/net/Uri;
    :cond_4
    move v8, v12

    .line 132
    goto :goto_2

    .line 147
    .end local v1           #downloadInfo:Lcom/android/vending/model/DownloadInfo;
    .end local v5           #localAsset:Lcom/android/vending/model/LocalAsset;
    .end local v6           #state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :cond_5
    return-void
.end method

.method public downloadDeclined(Landroid/content/Context;Lcom/android/vending/model/LocalAsset;Ljava/lang/String;IZ)V
    .locals 11
    .parameter "ctx"
    .parameter "asset"
    .parameter "assetName"
    .parameter "reason"
    .parameter "showNotification"

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download declined for asset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v10

    .line 62
    .local v10, state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    new-instance v9, Lcom/android/vending/api/AssetService;

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    .line 63
    .local v9, assetService:Lcom/android/vending/api/AssetService;
    invoke-virtual {v9, p2}, Lcom/android/vending/api/AssetService;->invalidate(Lcom/android/vending/model/LocalAsset;)V

    .line 65
    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v10, v1, :cond_1

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected DOWNLOAD_PENDING. Not doing anything."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_DECLINED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {p2, v1}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 74
    if-eqz p5, :cond_0

    .line 75
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v0

    .line 77
    .local v0, notificationMgr:Lcom/android/vending/VendingNotificationManager;
    const v1, 0x7f07004e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, notificationMessage:Ljava/lang/String;
    const v1, 0x7f07007e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, dialogTitle:Ljava/lang/String;
    invoke-static {p1, p3, p4}, Lcom/android/vending/AlertUtil;->getAssetDeclinedMessage(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, dialogMessage:Ljava/lang/String;
    const v1, 0x7f07004f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, notificationStatus:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    if-nez p4, :cond_2

    const/4 v3, 0x1

    move v7, v3

    :goto_1
    const/4 v8, 0x1

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/vending/VendingNotificationManager;->showAssetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move v7, v3

    goto :goto_1
.end method
