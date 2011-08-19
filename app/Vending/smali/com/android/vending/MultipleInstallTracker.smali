.class public Lcom/android/vending/MultipleInstallTracker;
.super Ljava/lang/Object;
.source "MultipleInstallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/MultipleInstallTracker$Holder;
    }
.end annotation


# instance fields
.field private final mAssetStateListener:Lcom/android/vending/model/LocalAssetCache$AssetStateListener;

.field private final mAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInstalledUpdateIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/vending/MultipleInstallTracker$1;

    invoke-direct {v0, p0}, Lcom/android/vending/MultipleInstallTracker$1;-><init>(Lcom/android/vending/MultipleInstallTracker;)V

    iput-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssetStateListener:Lcom/android/vending/model/LocalAssetCache$AssetStateListener;

    .line 76
    iput-object p1, p0, Lcom/android/vending/MultipleInstallTracker;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssets:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mInstalledUpdateIds:Ljava/util/List;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/vending/MultipleInstallTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/vending/MultipleInstallTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/vending/MultipleInstallTracker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/vending/MultipleInstallTracker;->notifyInstallCompleted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/vending/MultipleInstallTracker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/vending/MultipleInstallTracker;->notifyDownloadNotCompleted(Ljava/lang/String;)V

    return-void
.end method

.method private bundleInstalledNotifications(Ljava/util/List;)V
    .locals 6
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
    .line 134
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v0

    .line 135
    new-instance v3, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/vending/MultipleInstallTracker;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/vending/MyDownloadsActivity;

    invoke-direct {v3, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    iget-object v1, p0, Lcom/android/vending/MultipleInstallTracker;->mContext:Landroid/content/Context;

    const v4, 0x7f070060

    const v5, 0x7f070063

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/VendingNotificationManager;->bundleAssetNotifications(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;II)V

    .line 139
    return-void
.end method

.method public static get()Lcom/android/vending/MultipleInstallTracker;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/android/vending/MultipleInstallTracker$Holder;->access$100()Lcom/android/vending/MultipleInstallTracker;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized notifyDownloadNotCompleted(Ljava/lang/String;)V
    .locals 2
    .parameter "serverAssetId"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/MultipleInstallTracker;->mAssetStateListener:Lcom/android/vending/model/LocalAssetCache$AssetStateListener;

    invoke-interface {v0, v1}, Lcom/android/vending/model/AbstractLocalAssetCache;->removeListener(Lcom/android/vending/model/LocalAssetCache$AssetStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyInstallCompleted(Ljava/lang/String;)V
    .locals 2
    .parameter "serverAssetId"

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/vending/MultipleInstallTracker;->mInstalledUpdateIds:Ljava/util/List;

    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/MultipleInstallTracker;->mAssetStateListener:Lcom/android/vending/model/LocalAssetCache$AssetStateListener;

    invoke-interface {v0, v1}, Lcom/android/vending/model/AbstractLocalAssetCache;->removeListener(Lcom/android/vending/model/LocalAssetCache$AssetStateListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mInstalledUpdateIds:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/vending/MultipleInstallTracker;->bundleInstalledNotifications(Ljava/util/List;)V

    .line 107
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mInstalledUpdateIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized areInstallsInProgress()Z
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized install(Lcom/android/vending/model/Asset;)V
    .locals 2
    .parameter "asset"

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/MultipleInstallTracker;->mAssetStateListener:Lcom/android/vending/model/LocalAssetCache$AssetStateListener;

    invoke-interface {v0, v1}, Lcom/android/vending/model/AbstractLocalAssetCache;->addListener(Lcom/android/vending/model/LocalAssetCache$AssetStateListener;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssets:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {}, Lcom/android/vending/Assets;->get()Lcom/android/vending/Assets;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/MultipleInstallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/android/vending/Assets;->install(Lcom/android/vending/model/Asset;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopTrackingInstalls()V
    .locals 2

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/MultipleInstallTracker;->mAssetStateListener:Lcom/android/vending/model/LocalAssetCache$AssetStateListener;

    invoke-interface {v0, v1}, Lcom/android/vending/model/AbstractLocalAssetCache;->removeListener(Lcom/android/vending/model/LocalAssetCache$AssetStateListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 155
    iget-object v0, p0, Lcom/android/vending/MultipleInstallTracker;->mInstalledUpdateIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
