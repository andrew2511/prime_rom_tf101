.class public Lcom/android/vending/model/LocalAsset;
.super Ljava/lang/Object;
.source "LocalAsset.java"


# instance fields
.field private mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;Lcom/android/vending/model/LocalAssetInfo;)V
    .locals 0
    .parameter "packageInfo"
    .parameter "localInfo"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 30
    iput-object p2, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    .line 31
    return-void
.end method

.method public static addPendingDownload(Lcom/android/vending/model/DownloadInfo;)Lcom/android/vending/model/LocalAsset;
    .locals 11
    .parameter "downloadInfo"

    .prologue
    .line 213
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/VendingApplication;->getPackageReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, referrer:Ljava/lang/String;
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    .line 217
    .local v0, db:Lcom/android/vending/api/LocalAssetDatabase;
    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getType()Lcom/android/vending/model/Asset$AssetType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/model/Asset$AssetType;->getValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->isForwardLocked()Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getRefundTimeout()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getAccount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/android/vending/api/LocalAssetDatabase;->insertDownloadPendingAsset(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/model/LocalAsset;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v10

    .line 229
    .local v10, newAsset:Lcom/android/vending/model/LocalAsset;
    if-nez v10, :cond_0

    .line 230
    const-string v1, "Didn\'t find LocalAsset after insert!"

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 233
    :cond_0
    return-object v10
.end method

.method public static getAll(Lcom/android/vending/model/LocalAssetInfo$AssetState;)Ljava/util/Collection;
    .locals 1
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/model/LocalAssetInfo$AssetState;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/vending/model/AbstractLocalAssetCache;->getAll(Lcom/android/vending/model/LocalAssetInfo$AssetState;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getAllByAccount(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/vending/model/AbstractLocalAssetCache;->getAllByAccount(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;
    .locals 1
    .parameter "assetId"

    .prologue
    .line 97
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/vending/model/AbstractLocalAssetCache;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getByUri(Landroid/net/Uri;)Lcom/android/vending/model/LocalAsset;
    .locals 2
    .parameter "uri"

    .prologue
    .line 101
    const-class v0, Lcom/android/vending/model/LocalAsset;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/vending/model/AbstractLocalAssetCache;->getByUri(Landroid/net/Uri;)Lcom/android/vending/model/LocalAsset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getIds(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, assets:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/vending/model/LocalAsset;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 205
    .local v4, ids:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 206
    .local v1, i:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/LocalAsset;

    .line 207
    .local v0, asset:Lcom/android/vending/model/LocalAsset;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 209
    .end local v0           #asset:Lcom/android/vending/model/LocalAsset;
    :cond_0
    return-object v4
.end method

.method public static getMatchingLocalAsset(Ljava/lang/String;Ljava/util/Collection;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;
    .locals 2
    .parameter "account"
    .parameter
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;",
            "Lcom/android/vending/model/LocalAssetInfo$AssetState;",
            ")",
            "Lcom/android/vending/model/LocalAsset;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, localAssets:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/vending/model/LocalAsset;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/android/vending/model/LocalAsset;->getMatchingLocalAsset(Ljava/lang/String;Ljava/util/Collection;[Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getMatchingLocalAsset(Ljava/lang/String;Ljava/util/Collection;[Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;[",
            "Lcom/android/vending/model/LocalAssetInfo$AssetState;",
            ")",
            "Lcom/android/vending/model/LocalAsset;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 55
    if-nez p1, :cond_1

    move-object v0, v4

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    const-class v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 60
    array-length v0, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    .line 61
    if-eqz v3, :cond_2

    .line 62
    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v4

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/LocalAsset;

    .line 67
    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 68
    :cond_4
    invoke-virtual {v1}, Ljava/util/EnumSet;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 71
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->isDownloadingOrInstalling()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_3
    move-object v3, v0

    .line 77
    goto :goto_2

    .line 75
    :cond_5
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_6
    move-object v0, v3

    goto :goto_3

    :cond_7
    move-object v0, v3

    .line 81
    goto :goto_0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 248
    .local v0, packageInfoCopy:Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 250
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 253
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 254
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->gids:[I

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->gids:[I

    .line 255
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 256
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 257
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 258
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 259
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 260
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 261
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 263
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 265
    new-instance v1, Lcom/android/vending/model/LocalAsset;

    iget-object v2, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo;->copy()Lcom/android/vending/model/LocalAssetInfo;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/vending/model/LocalAsset;-><init>(Landroid/content/pm/PackageInfo;Lcom/android/vending/model/LocalAssetInfo;)V

    return-object v1
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAutoUpdateState()Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->DEFAULT:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getAutoUpdateState()Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    move-result-object v0

    goto :goto_0
.end method

.method public getInstallTime()J
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getInstallTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLocalInfo()Lcom/android/vending/model/LocalAssetInfo;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getReferrer()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSignatureAndSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getSignatureAndSize()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v0

    goto :goto_0
.end method

.method public getUninstallTime()J
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getUninstallTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getVersionCode()I

    move-result v0

    goto :goto_0
.end method

.method public isForwardLocked()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAsset;->mLocalInfo:Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->isForwardLocked()Z

    move-result v0

    goto :goto_0
.end method

.method public isSystemApp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v1, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    move v1, v3

    .line 164
    :goto_0
    return v1

    .line 163
    :cond_0
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/model/LocalAsset;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/vending/model/AbstractLocalAssetCache;->getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 164
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public setRefundTimeout(Ljava/lang/Long;)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/vending/model/Asset;->setRefundTimeoutByPackageName(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    return-void
.end method

.method public setSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/vending/model/Asset;->setSizeById(Ljava/lang/String;I)V

    .line 197
    return-void
.end method

.method public setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/vending/model/Asset;->setStateById(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 179
    return-void
.end method

.method public setUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 186
    const-class v0, Lcom/android/vending/model/LocalAsset;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/vending/model/Asset;->setUriById(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 188
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVersionCode(I)V
    .locals 5
    .parameter "versionCode"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v1

    const/4 v2, 0x0

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/vending/model/Asset;->setStateById(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    const-string v0, "%s (%s:%d) [%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
