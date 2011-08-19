.class public Lcom/android/vending/DownloadManagerBroadcastReceiver;
.super Lcom/android/vending/util/ServiceBroadcastReceiver;
.source "DownloadManagerBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/DownloadManagerBroadcastReceiver$1;,
        Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;,
        Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;
    }
.end annotation


# instance fields
.field private mInstallingStatusTracker:Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vending/util/ServiceBroadcastReceiver;-><init>()V

    .line 77
    new-instance v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;-><init>(Lcom/android/vending/DownloadManagerBroadcastReceiver$1;)V

    iput-object v0, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver;->mInstallingStatusTracker:Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;

    .line 462
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/android/vending/DownloadManagerBroadcastReceiver;->addAppShortcut(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static addAppShortcut(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 432
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 436
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v7, p1, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 440
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    .line 441
    .local v8, res:Landroid/content/res/Resources;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, iconResourceName:Ljava/lang/String;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, appName:Ljava/lang/String;
    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 446
    .local v6, launchIntent:Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v5, installShortcut:Landroid/content/Intent;
    const-string v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v5, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v9, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 449
    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 450
    .local v3, icon:Landroid/content/Intent$ShortcutIconResource;
    iput-object p1, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 451
    iput-object v4, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 452
    const-string v9, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v5, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 453
    const-string v9, "duplicate"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #appName:Ljava/lang/String;
    .end local v3           #icon:Landroid/content/Intent$ShortcutIconResource;
    .end local v4           #iconResourceName:Ljava/lang/String;
    .end local v5           #installShortcut:Landroid/content/Intent;
    .end local v6           #launchIntent:Landroid/content/Intent;
    .end local v8           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 458
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "addAppShortcut failed: "

    invoke-static {v9, v2}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getFileUriForContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9
    .parameter "context"
    .parameter "contentUri"

    .prologue
    const/4 v8, 0x0

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 85
    .local v7, fileName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 87
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 93
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 96
    if-nez v7, :cond_1

    move-object v1, v8

    .line 100
    :goto_0
    return-object v1

    .line 93
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 100
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private getIntentIfCurrentlyInFront(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 371
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 373
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v2

    .line 374
    .local v2, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 375
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 376
    .local v1, task:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 378
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 383
    .end local v1           #task:Landroid/app/ActivityManager$RecentTaskInfo;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleDownloadCompletedAction(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "contentUri"
    .parameter "assetName"

    .prologue
    .line 138
    const-string v0, "Got a download completed intent."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/android/vending/DownloadManagerBroadcastReceiver;->startNextDownload(Landroid/content/Context;)Z

    move-result v10

    .line 144
    .local v10, moreDownloads:Z
    invoke-static {p2}, Lcom/android/vending/model/LocalAsset;->getByUri(Landroid/net/Uri;)Lcom/android/vending/model/LocalAsset;

    move-result-object v4

    .line 145
    .local v4, localAsset:Lcom/android/vending/model/LocalAsset;
    if-nez v4, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looked up null asset for download URI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-- ignoring."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    .line 151
    :cond_0
    invoke-virtual {v4}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v11

    .line 152
    .local v11, state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v11, v0, :cond_1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/vending/DownloadManagerBroadcastReceiver;->getDownloadStatus(Landroid/content/Context;Landroid/net/Uri;Lcom/android/vending/model/LocalAsset;)I

    move-result v9

    .line 159
    .local v9, downloadStatus:I
    invoke-static {p1, p2}, Lcom/android/vending/util/DownloadManagerUtil;->getDownloadSource(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, downloadSource:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/vending/DownloadManagerBroadcastReceiver;->getFileUriForContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 164
    .local v3, fileUri:Landroid/net/Uri;
    if-nez v3, :cond_2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find pathname for completed download URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- assuming the download failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 169
    :cond_2
    if-nez v9, :cond_4

    if-eqz v3, :cond_4

    .line 170
    if-nez v10, :cond_3

    const/4 v0, 0x1

    move v6, v0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/vending/DownloadManagerBroadcastReceiver;->installFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lcom/android/vending/model/LocalAsset;Ljava/lang/String;ZLjava/lang/String;)V

    .line 185
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_3
    const/4 v0, 0x0

    move v6, v0

    goto :goto_1

    .line 175
    :cond_4
    const/16 v0, 0x193

    if-ne v0, v9, :cond_5

    .line 176
    const-string v0, "Invalidating auth tokens."

    invoke-static {v0}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v8

    .line 178
    .local v8, app:Lcom/android/vending/VendingApplication;
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v4}, Lcom/android/vending/model/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/android/vending/VendingApplication;->invalidateAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v4}, Lcom/android/vending/model/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/android/vending/VendingApplication;->invalidateAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 182
    .end local v8           #app:Lcom/android/vending/VendingApplication;
    :cond_5
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v4, v0}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 183
    if-nez v10, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-static {p1, v0, v7}, Lcom/android/vending/AssetDownloader;->finishRestore(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private handleDownloadCompletedActionSafe(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "contentUri"
    .parameter "assetName"

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, contentUriString:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver;->mInstallingStatusTracker:Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;

    invoke-virtual {v1, v0}, Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;->canBeginInstall(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installation for asset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already under way"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v1, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver;->mInstallingStatusTracker:Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;

    invoke-virtual {v1, v0}, Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;->finishedInstall(Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vending/DownloadManagerBroadcastReceiver;->handleDownloadCompletedAction(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    iget-object v1, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver;->mInstallingStatusTracker:Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;

    invoke-virtual {v1, v0}, Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;->finishedInstall(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver;->mInstallingStatusTracker:Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;

    invoke-virtual {v2, v0}, Lcom/android/vending/DownloadManagerBroadcastReceiver$InstallingStatusTracker;->finishedInstall(Ljava/lang/String;)V

    throw v1
.end method

.method private handleNotificationClickedAction(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-static {p2}, Lcom/android/vending/model/LocalAsset;->getByUri(Landroid/net/Uri;)Lcom/android/vending/model/LocalAsset;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_0

    .line 225
    const-class v2, Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 226
    const-string v2, "assetid"

    invoke-virtual {v1}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v2, "account"

    invoke-virtual {v1}, Lcom/android/vending/model/LocalAsset;->getLocalInfo()Lcom/android/vending/model/LocalAssetInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/model/LocalAssetInfo;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 233
    return-void

    .line 229
    :cond_0
    const-class v1, Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static kickDownload(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "contentUri"
    .parameter "assetName"

    .prologue
    .line 116
    new-instance v0, Lcom/android/vending/DownloadManagerBroadcastReceiver;

    invoke-direct {v0}, Lcom/android/vending/DownloadManagerBroadcastReceiver;-><init>()V

    .line 117
    .local v0, receiver:Lcom/android/vending/DownloadManagerBroadcastReceiver;
    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/DownloadManagerBroadcastReceiver;->handleDownloadCompletedActionSafe(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private showInstallingNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "assetId"
    .parameter "assetName"

    .prologue
    const v1, 0x7f0700cd

    .line 387
    move-object v5, p3

    .line 389
    .local v5, notificationTitle:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, notificationStatus:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 392
    .local v6, notificationMessage:Ljava/lang/String;
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v0

    .line 394
    .local v0, notificationManager:Lcom/android/vending/VendingNotificationManager;
    const/4 v2, 0x0

    const v7, 0x1080081

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/vending/VendingNotificationManager;->showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 397
    return-void
.end method

.method private startNextDownload(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 198
    :try_start_0
    invoke-static {p1}, Lcom/android/vending/util/DownloadManagerUtil;->fetchNextPausedDownload(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    .line 199
    .local v1, paused:Ljava/lang/Long;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found Paused URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 200
    if-nez v1, :cond_0

    .line 201
    const-string v2, "No more paused downloads."

    invoke-static {v2}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 209
    .end local v1           #paused:Ljava/lang/Long;
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 203
    .restart local v1       #paused:Ljava/lang/Long;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting paused download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 204
    invoke-static {p1, v1}, Lcom/android/vending/util/DownloadManagerUtil;->startPausedDownload(Landroid/content/Context;Ljava/lang/Long;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 206
    .end local v1           #paused:Ljava/lang/Long;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 207
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot start next download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static verifyApk(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "contentUri"
    .parameter "assetSignatureAndSize"

    .prologue
    const/4 v7, 0x0

    .line 401
    const/4 v5, 0x0

    .line 403
    .local v5, input:Ljava/io/InputStream;
    :try_start_0
    const-string v6, "#"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, hashAndSize:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v4, v6

    .line 405
    .local v0, assetSignature:Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 407
    .local v1, assetSize:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 408
    if-nez v5, :cond_2

    .line 409
    const-string v6, "Unable to open input stream, nothing available to verify."

    invoke-static {v6}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 418
    if-eqz v5, :cond_0

    .line 420
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move v6, v7

    .line 423
    .end local v0           #assetSignature:Ljava/lang/String;
    .end local v1           #assetSize:J
    .end local v4           #hashAndSize:[Ljava/lang/String;
    :cond_1
    :goto_1
    return v6

    .line 421
    .restart local v0       #assetSignature:Ljava/lang/String;
    .restart local v1       #assetSize:J
    .restart local v4       #hashAndSize:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 422
    .local v3, e:Ljava/io/IOException;
    const-string v6, "IOException in finally block."

    invoke-static {v6}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 412
    .end local v3           #e:Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-static {v5, v0, v1, v2}, Lcom/android/vending/util/Sha1Util;->verify(Ljava/io/InputStream;Ljava/lang/String;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v6

    .line 418
    if-eqz v5, :cond_1

    .line 420
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 421
    :catch_1
    move-exception v3

    .line 422
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "IOException in finally block."

    invoke-static {v7}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 413
    .end local v0           #assetSignature:Ljava/lang/String;
    .end local v1           #assetSize:J
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #hashAndSize:[Ljava/lang/String;
    :catch_2
    move-exception v6

    move-object v3, v6

    .line 418
    .local v3, e:Ljava/io/FileNotFoundException;
    if-eqz v5, :cond_3

    .line 420
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v3           #e:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_2
    move v6, v7

    .line 423
    goto :goto_1

    .line 421
    .restart local v3       #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v3

    .line 422
    .local v3, e:Ljava/io/IOException;
    const-string v6, "IOException in finally block."

    invoke-static {v6}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 415
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    move-object v3, v6

    .line 418
    .restart local v3       #e:Ljava/io/IOException;
    if-eqz v5, :cond_4

    .line 420
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_4
    :goto_3
    move v6, v7

    .line 423
    goto :goto_1

    .line 421
    :catch_5
    move-exception v3

    .line 422
    const-string v6, "IOException in finally block."

    invoke-static {v6}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_3

    .line 418
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_5

    .line 420
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 423
    :cond_5
    :goto_4
    throw v6

    .line 421
    :catch_6
    move-exception v3

    .line 422
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "IOException in finally block."

    invoke-static {v7}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_4
.end method


# virtual methods
.method protected getDownloadStatus(Landroid/content/Context;Landroid/net/Uri;Lcom/android/vending/model/LocalAsset;)I
    .locals 10
    .parameter "context"
    .parameter "contentUri"
    .parameter "asset"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 247
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "status"

    aput-object v6, v5, v9

    const/4 v6, 0x1

    const-string v7, "total_bytes"

    aput-object v7, v5, v6

    invoke-static {p1, p2, v5}, Lcom/android/vending/util/DownloadManagerUtil;->getDownloadCursor(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 254
    .local v0, downloadProgressCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    move v5, v8

    .line 282
    :goto_0
    return v5

    .line 259
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No row found in the download manager db for contentUri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v5, v8

    goto :goto_0

    .line 264
    :cond_1
    :try_start_1
    const-string v5, "status"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 266
    .local v4, statusColumnIndex:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 269
    .local v3, status:I
    invoke-static {v3}, Lcom/android/vending/compat/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected status from download - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v5, v3

    goto :goto_0

    .line 273
    :cond_2
    :try_start_2
    const-string v5, "total_bytes"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 276
    .local v2, sizeColumnIndex:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 278
    .local v1, fileSize:I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 280
    invoke-virtual {p3, v1}, Lcom/android/vending/model/LocalAsset;->setSize(I)V

    move v5, v9

    .line 282
    goto :goto_0

    .line 278
    .end local v1           #fileSize:I
    .end local v2           #sizeColumnIndex:I
    .end local v3           #status:I
    .end local v4           #statusColumnIndex:I
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method public handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 107
    .local v1, contentUri:Landroid/net/Uri;
    const-string v2, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    const-string v2, "notificationextras"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/vending/DownloadManagerBroadcastReceiver;->handleDownloadCompletedActionSafe(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string v2, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-direct {p0, p1, v1}, Lcom/android/vending/DownloadManagerBroadcastReceiver;->handleNotificationClickedAction(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected installFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lcom/android/vending/model/LocalAsset;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 22
    .parameter "context"
    .parameter "contentUri"
    .parameter "fileUri"
    .parameter "asset"
    .parameter "assetName"
    .parameter "isLastInstallInSeries"
    .parameter "downloadSource"

    .prologue
    .line 292
    const-string v5, "Calling install uri=%s src=%s asset=%s name=%s last=%B"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p7, v6, v7

    const/4 v7, 0x2

    aput-object p4, v6, v7

    const/4 v7, 0x3

    aput-object p5, v6, v7

    const/4 v7, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    if-nez p2, :cond_0

    .line 295
    const-string v5, "Package could not be installed: No content URI."

    invoke-static {v5}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 296
    sget-object v5, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 297
    move-object/from16 v0, p1

    move/from16 v1, p6

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/android/vending/AssetDownloader;->finishRestore(Landroid/content/Context;ZLjava/lang/String;)V

    .line 364
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/vending/model/LocalAsset;->getSignatureAndSize()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/vending/DownloadManagerBroadcastReceiver;->verifyApk(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 302
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v4

    .line 305
    .local v4, notificationManager:Lcom/android/vending/VendingNotificationManager;
    move-object/from16 v7, p5

    .line 306
    .local v7, notificationTitle:Ljava/lang/String;
    const v5, 0x7f070054

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p5, v6, v8

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, notificationStatus:Ljava/lang/String;
    const v5, 0x7f070055

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 313
    .local v8, notificationMessage:Ljava/lang/String;
    const v5, 0x7f070079

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 315
    .local v9, dialogTitle:Ljava/lang/String;
    move-object v10, v8

    .line 317
    .local v10, dialogMessage:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v4 .. v10}, Lcom/android/vending/VendingNotificationManager;->showAssetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v5, "Could not verify APK signature."

    invoke-static {v5}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 327
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .end local v6           #notificationStatus:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/android/vending/model/LocalAsset;->getSignatureAndSize()Ljava/lang/String;

    .end local v7           #notificationTitle:Ljava/lang/String;
    move-result-object v8

    .end local v8           #notificationMessage:Ljava/lang/String;
    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    sget-object v5, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 329
    move-object/from16 v0, p1

    move/from16 v1, p6

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/android/vending/AssetDownloader;->finishRestore(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    .line 336
    .end local v4           #notificationManager:Lcom/android/vending/VendingNotificationManager;
    .end local v9           #dialogTitle:Ljava/lang/String;
    .end local v10           #dialogMessage:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 337
    .local v21, packageName:Ljava/lang/String;
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v5

    sget-object v6, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/android/vending/model/AbstractLocalAssetCache;->getByPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/vending/util/Util;->getSystemAppVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    :cond_2
    const/4 v5, 0x1

    move/from16 v19, v5

    .line 341
    .local v19, isUpdate:Z
    :goto_1
    invoke-static {}, Lcom/android/vending/LocalDbSyncService;->installationOrUninstallationInitiated()V

    .line 342
    sget-object v5, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 344
    const-string v5, "backup"

    move-object v0, v5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 345
    invoke-virtual/range {p4 .. p4}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/DownloadManagerBroadcastReceiver;->showInstallingNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/vending/DownloadManagerBroadcastReceiver;->getIntentIfCurrentlyInFront(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    .line 354
    .local v20, launchAfterInstall:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez p3, :cond_5

    move-object/from16 v6, p2

    :goto_2
    new-instance v11, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p1

    move-object/from16 v16, p5

    move/from16 v17, p6

    move-object/from16 v18, p7

    invoke-direct/range {v11 .. v20}, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;-><init>(Landroid/net/Uri;Landroid/net/Uri;Lcom/android/vending/model/LocalAsset;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ZLandroid/content/Intent;)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/vending/model/LocalAsset;->isForwardLocked()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x3

    :goto_3
    const-string v8, "com.google.android.feedback"

    invoke-virtual {v5, v6, v11, v7, v8}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 337
    .end local v19           #isUpdate:Z
    .end local v20           #launchAfterInstall:Landroid/content/Intent;
    :cond_4
    const/4 v5, 0x0

    move/from16 v19, v5

    goto :goto_1

    .restart local v19       #isUpdate:Z
    .restart local v20       #launchAfterInstall:Landroid/content/Intent;
    :cond_5
    move-object/from16 v6, p3

    .line 354
    goto :goto_2

    :cond_6
    const/4 v7, 0x2

    goto :goto_3
.end method
