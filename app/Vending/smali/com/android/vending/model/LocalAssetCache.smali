.class public Lcom/android/vending/model/LocalAssetCache;
.super Ljava/lang/Object;
.source "LocalAssetCache.java"

# interfaces
.implements Lcom/android/vending/model/AbstractLocalAssetCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/LocalAssetCache$CacheDumper;,
        Lcom/android/vending/model/LocalAssetCache$AssetStateListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static sInstance:Lcom/android/vending/model/AbstractLocalAssetCache;


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/LocalAssetCache$AssetStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLookup:Lcom/android/vending/model/LocalAssetLookup;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/model/LocalAssetCache;->DEBUG:Z

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/model/LocalAssetCache;->sInstance:Lcom/android/vending/model/AbstractLocalAssetCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/android/vending/model/LocalAssetLookup;

    invoke-direct {v0}, Lcom/android/vending/model/LocalAssetLookup;-><init>()V

    iput-object v0, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/model/LocalAssetCache;->mListeners:Ljava/util/List;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/LocalAssetCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 76
    sget-boolean v0, Lcom/android/vending/model/LocalAssetCache;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/vending/model/LocalAssetCache;->registerCacheDumperBroadcastReceiver(Landroid/content/Context;)V

    .line 79
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/model/LocalAssetCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/vending/model/LocalAssetCache;->buildCache()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/model/LocalAssetCache;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/vending/model/LocalAssetCache;->updateOnePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/vending/model/LocalAssetCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/vending/model/LocalAssetCache;->dump()V

    return-void
.end method

.method private buildCache()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 153
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 154
    .local v3, localInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    invoke-static {}, Lcom/android/vending/model/Asset;->getLocalInfoForAll()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/LocalAssetInfo;

    .line 155
    .local v1, info:Lcom/android/vending/model/LocalAssetInfo;
    invoke-virtual {v1}, Lcom/android/vending/model/LocalAssetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    .line 156
    const-string v10, "no package name for %s"

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v1, v11, v13

    invoke-static {v10, v11}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v1           #info:Lcom/android/vending/model/LocalAssetInfo;
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v7, packageInfos:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    iget-object v10, p0, Lcom/android/vending/model/LocalAssetCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v11, 0x1000

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 165
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v10, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 168
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :cond_2
    sget-boolean v10, Lcom/android/vending/model/LocalAssetCache;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 169
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 170
    .local v5, localPackageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/LocalAssetInfo;

    .line 171
    .local v2, localInfo:Lcom/android/vending/model/LocalAssetInfo;
    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 175
    .end local v2           #localInfo:Lcom/android/vending/model/LocalAssetInfo;
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 176
    .local v4, localOnlyPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 177
    new-instance v9, Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 178
    .local v9, pmOnlyPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 179
    const-string v10, "In local: %s"

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v5, v11, v13

    invoke-static {v10, v11}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    const-string v10, "In PM: %s"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    const-string v10, "In local only: %s"

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v4, v11, v13

    invoke-static {v10, v11}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    const-string v10, "In PM only: %s"

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v9, v11, v13

    invoke-static {v10, v11}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .end local v4           #localOnlyPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #localPackageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #pmOnlyPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v10, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v10}, Lcom/android/vending/model/LocalAssetLookup;->clear()V

    .line 190
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/LocalAssetInfo;

    .line 191
    .restart local v2       #localInfo:Lcom/android/vending/model/LocalAssetInfo;
    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, packageName:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 193
    .local v6, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_5

    .line 194
    const-string v10, "No local info for package \"%s\"!"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 206
    .end local v2           #localInfo:Lcom/android/vending/model/LocalAssetInfo;
    .end local v6           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v8           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 198
    .restart local v2       #localInfo:Lcom/android/vending/model/LocalAssetInfo;
    .restart local v6       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v8       #packageName:Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_6

    :try_start_1
    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v10

    sget-object v11, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v10, v11, :cond_6

    .line 199
    const-string v10, "No package info for INSTALLED asset %s (%s)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo;->getServerId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 204
    :cond_6
    iget-object v10, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo;->getServerId()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/vending/model/LocalAsset;

    invoke-direct {v12, v6, v2}, Lcom/android/vending/model/LocalAsset;-><init>(Landroid/content/pm/PackageInfo;Lcom/android/vending/model/LocalAssetInfo;)V

    invoke-virtual {v10, v11, v12}, Lcom/android/vending/model/LocalAssetLookup;->put(Ljava/lang/String;Lcom/android/vending/model/LocalAsset;)V

    goto :goto_3

    .line 206
    .end local v2           #localInfo:Lcom/android/vending/model/LocalAssetInfo;
    .end local v6           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v8           #packageName:Ljava/lang/String;
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    return-void
.end method

.method private declared-synchronized dump()V
    .locals 7

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    const-string v3, "************** ASSET CACHE ***************"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget-object v3, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v3}, Lcom/android/vending/model/LocalAssetLookup;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    .local v0, assetId:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v3, v0}, Lcom/android/vending/model/LocalAssetLookup;->get(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v1

    .line 340
    .local v1, e:Lcom/android/vending/model/LocalAsset;
    const-string v3, "%s: v=%d (packageName=%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/android/vending/model/LocalAsset;->getLocalInfo()Lcom/android/vending/model/LocalAssetInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/vending/model/LocalAssetInfo;->getVersionCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/android/vending/model/LocalAsset;->getLocalInfo()Lcom/android/vending/model/LocalAssetInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/vending/model/LocalAssetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 337
    .end local v0           #assetId:Ljava/lang/String;
    .end local v1           #e:Lcom/android/vending/model/LocalAsset;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 343
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string v3, "******************************************"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    monitor-exit p0

    return-void
.end method

.method public static declared-synchronized get()Lcom/android/vending/model/AbstractLocalAssetCache;
    .locals 3

    .prologue
    .line 53
    const-class v0, Lcom/android/vending/model/LocalAssetCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/vending/model/LocalAssetCache;->sInstance:Lcom/android/vending/model/AbstractLocalAssetCache;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "get is called before LocalAssetCache singleton is initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 57
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/vending/model/LocalAssetCache;->sInstance:Lcom/android/vending/model/AbstractLocalAssetCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1
.end method

.method private getPackageInfoFromPM(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/model/LocalAssetCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    const-class v0, Lcom/android/vending/model/LocalAssetCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/vending/model/LocalAssetCache;->sInstance:Lcom/android/vending/model/AbstractLocalAssetCache;

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "already inited"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 41
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/vending/model/LocalAssetCache;

    invoke-direct {v1, p0}, Lcom/android/vending/model/LocalAssetCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/vending/model/LocalAssetCache;->sInstance:Lcom/android/vending/model/AbstractLocalAssetCache;

    .line 42
    sget-object v1, Lcom/android/vending/model/LocalAssetCache;->sInstance:Lcom/android/vending/model/AbstractLocalAssetCache;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/vending/model/AbstractLocalAssetCache;->invalidate(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    monitor-exit v0

    return-void
.end method

.method private registerCacheDumperBroadcastReceiver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 347
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 348
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "dumpcache"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    new-instance v1, Lcom/android/vending/model/LocalAssetCache$CacheDumper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/vending/model/LocalAssetCache$CacheDumper;-><init>(Lcom/android/vending/model/LocalAssetCache;Lcom/android/vending/model/LocalAssetCache$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    return-void
.end method

.method public static declared-synchronized uninit()V
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/android/vending/model/LocalAssetCache;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/vending/model/LocalAssetCache;->sInstance:Lcom/android/vending/model/AbstractLocalAssetCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized updateOneAsset(Ljava/lang/String;)V
    .locals 8
    .parameter "assetId"

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/vending/model/Asset;->getLocalInfoById(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo;

    move-result-object v1

    .line 138
    .local v1, localInfo:Lcom/android/vending/model/LocalAssetInfo;
    if-nez v1, :cond_0

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No local info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v4, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v4, p1}, Lcom/android/vending/model/LocalAssetLookup;->remove(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/vending/model/LocalAssetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, packageName:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/vending/model/LocalAssetCache;->getPackageInfoFromPM(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 145
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    new-instance v0, Lcom/android/vending/model/LocalAsset;

    invoke-direct {v0, v2, v1}, Lcom/android/vending/model/LocalAsset;-><init>(Landroid/content/pm/PackageInfo;Lcom/android/vending/model/LocalAssetInfo;)V

    .line 147
    .local v0, e:Lcom/android/vending/model/LocalAsset;
    iget-object v4, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v4, p1, v0}, Lcom/android/vending/model/LocalAssetLookup;->put(Ljava/lang/String;Lcom/android/vending/model/LocalAsset;)V

    .line 148
    const-string v4, "%s (%s) updated"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    if-nez v2, :cond_1

    const-string v7, "<no package>"

    :goto_1
    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/vending/util/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    .end local v0           #e:Lcom/android/vending/model/LocalAsset;
    .end local v1           #localInfo:Lcom/android/vending/model/LocalAssetInfo;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 148
    .restart local v0       #e:Lcom/android/vending/model/LocalAsset;
    .restart local v1       #localInfo:Lcom/android/vending/model/LocalAssetInfo;
    .restart local v2       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private updateOnePackage(Ljava/lang/String;)V
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v7, 0x0

    .line 111
    const/4 v4, -0x1

    .line 112
    .local v4, versionCode:I
    invoke-direct {p0, p1}, Lcom/android/vending/model/LocalAssetCache;->getPackageInfoFromPM(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 113
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 114
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 117
    :cond_0
    invoke-static {p1, v4}, Lcom/android/vending/model/Asset;->getLocalInfoByPackageName(Ljava/lang/String;I)Lcom/android/vending/model/LocalAssetInfo;

    move-result-object v2

    .line 118
    .local v2, localInfo:Lcom/android/vending/model/LocalAssetInfo;
    if-nez v2, :cond_1

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No local info for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, assetId:Ljava/lang/String;
    monitor-enter p0

    .line 125
    if-nez v3, :cond_2

    .line 126
    :try_start_0
    iget-object v5, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v5, v0}, Lcom/android/vending/model/LocalAssetLookup;->remove(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    .line 127
    monitor-exit p0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 130
    :cond_2
    :try_start_1
    new-instance v1, Lcom/android/vending/model/LocalAsset;

    invoke-direct {v1, v3, v2}, Lcom/android/vending/model/LocalAsset;-><init>(Landroid/content/pm/PackageInfo;Lcom/android/vending/model/LocalAssetInfo;)V

    .line 131
    .local v1, e:Lcom/android/vending/model/LocalAsset;
    iget-object v5, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v5, v0, v1}, Lcom/android/vending/model/LocalAssetLookup;->put(Ljava/lang/String;Lcom/android/vending/model/LocalAsset;)V

    .line 132
    const-string v5, "%s/%s updated"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lcom/android/vending/util/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/vending/model/LocalAssetCache$AssetStateListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetCache;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAll(Lcom/android/vending/model/LocalAssetInfo$AssetState;)Ljava/util/Collection;
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
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v0, p1}, Lcom/android/vending/model/LocalAssetLookup;->getAll(Lcom/android/vending/model/LocalAssetInfo$AssetState;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllByAccount(Ljava/lang/String;)Ljava/util/Collection;
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
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v0, p1}, Lcom/android/vending/model/LocalAssetLookup;->getAllByAccount(Ljava/lang/String;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllByPackageName(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .parameter "packageName"
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
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v0, p1}, Lcom/android/vending/model/LocalAssetLookup;->getAllByPackageName(Ljava/lang/String;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/model/LocalAssetCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 283
    :goto_0
    return-object v1

    .line 281
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 283
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;
    .locals 1
    .parameter "assetId"

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v0, p1}, Lcom/android/vending/model/LocalAssetLookup;->get(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getByPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;
    .locals 1
    .parameter "packageName"
    .parameter "state"

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v0, p1, p2}, Lcom/android/vending/model/LocalAssetLookup;->getByPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getByPackageNameAndAccount(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;
    .locals 1
    .parameter "packageName"
    .parameter "state"
    .parameter "account"

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/vending/model/LocalAssetLookup;->getByPackageNameAndAccount(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getByUri(Landroid/net/Uri;)Lcom/android/vending/model/LocalAsset;
    .locals 1
    .parameter "uri"

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetCache;->mLookup:Lcom/android/vending/model/LocalAssetLookup;

    invoke-virtual {v0, p1}, Lcom/android/vending/model/LocalAssetLookup;->getByUri(Landroid/net/Uri;)Lcom/android/vending/model/LocalAsset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidate(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/vending/model/LocalAssetCache$1;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/model/LocalAssetCache$1;-><init>(Lcom/android/vending/model/LocalAssetCache;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 95
    return-void
.end method

.method public localDbUpdate(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 4
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/android/vending/model/LocalAssetCache;->updateOneAsset(Ljava/lang/String;)V

    .line 300
    if-eqz p2, :cond_1

    .line 301
    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/android/vending/model/LocalAssetCache;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/vending/model/LocalAssetCache;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 307
    iget-object v2, p0, Lcom/android/vending/model/LocalAssetCache;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/LocalAssetCache$AssetStateListener;

    .line 308
    .local v1, listener:Lcom/android/vending/model/LocalAssetCache$AssetStateListener;
    invoke-interface {v1, p1, p2}, Lcom/android/vending/model/LocalAssetCache$AssetStateListener;->onAssetStateChanged(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 306
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 311
    .end local v0           #i:I
    .end local v1           #listener:Lcom/android/vending/model/LocalAssetCache$AssetStateListener;
    :cond_0
    monitor-exit p0

    .line 313
    :cond_1
    return-void

    .line 311
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized removeListener(Lcom/android/vending/model/LocalAssetCache$AssetStateListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/model/LocalAssetCache;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
