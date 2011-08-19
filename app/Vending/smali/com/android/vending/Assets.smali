.class public Lcom/android/vending/Assets;
.super Ljava/lang/Object;
.source "Assets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/Assets$Holder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static get()Lcom/android/vending/Assets;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/android/vending/Assets$Holder;->access$000()Lcom/android/vending/Assets;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelDownload(Lcom/android/vending/model/Asset;Landroid/content/Context;)V
    .locals 2
    .parameter "asset"
    .parameter "context"

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 49
    .local v0, la:Lcom/android/vending/model/LocalAsset;
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAssetDownloader()Lcom/android/vending/AssetDownloader;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/vending/AssetDownloader;->cancelDownload(Lcom/android/vending/model/LocalAsset;Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public install(Lcom/android/vending/model/Asset;Landroid/content/Context;)V
    .locals 4
    .parameter "asset"
    .parameter "context"

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getRequiredInstallationSize()J

    move-result-wide v1

    .line 32
    .local v1, requiredSize:J
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 33
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    new-instance v3, Lcom/android/vending/Assets$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/vending/Assets$1;-><init>(Lcom/android/vending/Assets;Lcom/android/vending/model/Asset;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 45
    return-void
.end method

.method public launch(Lcom/android/vending/model/Asset;Landroid/content/Context;)V
    .locals 1
    .parameter "asset"
    .parameter "context"

    .prologue
    .line 60
    invoke-virtual {p1, p2}, Lcom/android/vending/model/Asset;->getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public uninstall(Lcom/android/vending/model/Asset;Landroid/content/Context;)V
    .locals 4
    .parameter "asset"
    .parameter "context"

    .prologue
    .line 53
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset([Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 54
    .local v0, localAsset:Lcom/android/vending/model/LocalAsset;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/model/Asset;->uninstallById(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method
