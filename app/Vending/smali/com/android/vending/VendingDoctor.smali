.class public Lcom/android/vending/VendingDoctor;
.super Ljava/lang/Object;
.source "VendingDoctor.java"


# static fields
.field private static final sVendingDoctorLock:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/android/vending/VendingDoctor;->sVendingDoctorLock:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/vending/model/LocalAsset;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/android/vending/VendingDoctor;->shouldFixAsset(Landroid/content/Context;Lcom/android/vending/model/LocalAsset;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/vending/VendingDoctor;->sVendingDoctorLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/android/vending/VendingDoctor;->handleFixDownloadCompletes(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method public static checkDownloadingAssets(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .local v3, downloadingAssets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/LocalAsset;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 99
    .local v2, assetTitles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 100
    .local v0, asset:Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, assetId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/vending/model/LocalAsset;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v5

    .line 103
    .local v5, localAsset:Lcom/android/vending/model/LocalAsset;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v6

    sget-object v7, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v6, v7, :cond_0

    .line 106
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    .end local v1           #assetId:Ljava/lang/String;
    .end local v5           #localAsset:Lcom/android/vending/model/LocalAsset;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 139
    :goto_1
    return-void

    .line 116
    :cond_2
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/vending/VendingDoctor$1;

    invoke-direct {v7, v3, p0, v2}, Lcom/android/vending/VendingDoctor$1;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private static handleFixDownloadCompletes(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 8
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAsset;>;"
    .local p2, assetTitles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local p1           #assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAsset;>;"
    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/vending/model/LocalAsset;

    .line 42
    .local p1, asset:Lcom/android/vending/model/LocalAsset;
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 43
    .local v1, assetName:Ljava/lang/String;
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 45
    .local v0, contentUri:Landroid/net/Uri;
    :goto_1
    if-eqz v1, :cond_1

    if-nez v0, :cond_3

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #contentUri:Landroid/net/Uri;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download cannot/should not be fixed for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #asset:Lcom/android/vending/model/LocalAsset;
    const-string v0, ", name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    .restart local p1       #asset:Lcom/android/vending/model/LocalAsset;
    :cond_2
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAsset;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 56
    .restart local v0       #contentUri:Landroid/net/Uri;
    :cond_3
    const-string v2, "Download completed, kicking: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-static {p0, v0, v1}, Lcom/android/vending/DownloadManagerBroadcastReceiver;->kickDownload(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 69
    invoke-static {p0, v0}, Lcom/android/vending/util/DownloadManagerUtil;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    .end local v0           #contentUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v0

    .line 73
    .local v0, notificationMgr:Lcom/android/vending/VendingNotificationManager;
    move-object v3, v1

    .line 74
    .local v3, notificationTitle:Ljava/lang/String;
    const v2, 0x7f070054

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, notificationStatus:Ljava/lang/String;
    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local v1           #assetName:Ljava/lang/String;
    move-result-object v4

    .line 78
    .local v4, notificationMessage:Ljava/lang/String;
    const v1, 0x7f070079

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, dialogTitle:Ljava/lang/String;
    move-object v6, v4

    .line 82
    .local v6, dialogMessage:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/vending/VendingNotificationManager;->showAssetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v0           #notificationMgr:Lcom/android/vending/VendingNotificationManager;
    .end local v2           #notificationStatus:Ljava/lang/String;
    .end local v3           #notificationTitle:Ljava/lang/String;
    .end local v4           #notificationMessage:Ljava/lang/String;
    .end local v5           #dialogTitle:Ljava/lang/String;
    .end local v6           #dialogMessage:Ljava/lang/String;
    .end local p1           #asset:Lcom/android/vending/model/LocalAsset;
    :cond_4
    return-void
.end method

.method private static isTimeToFixDownloadComplete(Landroid/content/Context;J)Z
    .locals 4
    .parameter "context"
    .parameter "downloadTime"

    .prologue
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    sget-object v2, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->DOWNLOADING_KICK:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    invoke-static {v2}, Lcom/android/vending/util/RequestIntervalUtil;->getRequestIntervalMs(Lcom/android/vending/util/RequestIntervalUtil$IntervalType;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldFixAsset(Landroid/content/Context;Lcom/android/vending/model/LocalAsset;)Z
    .locals 6
    .parameter "context"
    .parameter "asset"

    .prologue
    .line 147
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 148
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "context or asset are null!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAsset;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/vending/util/DownloadManagerUtil;->getStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    .line 152
    .local v3, status:I
    invoke-static {v3}, Lcom/android/vending/util/DownloadManagerUtil;->isStatusCompleted(I)Z

    move-result v0

    .line 153
    .local v0, isCompleted:Z
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAsset;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/vending/util/DownloadManagerUtil;->getLastModTime(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    .line 154
    .local v1, lastModTime:J
    if-eqz v0, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_2

    invoke-static {p0, v1, v2}, Lcom/android/vending/VendingDoctor;->isTimeToFixDownloadComplete(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
