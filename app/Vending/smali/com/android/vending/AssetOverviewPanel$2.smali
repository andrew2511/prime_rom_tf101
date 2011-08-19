.class Lcom/android/vending/AssetOverviewPanel$2;
.super Landroid/database/ContentObserver;
.source "AssetOverviewPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetOverviewPanel;->initDownloadObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetOverviewPanel;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetOverviewPanel;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/vending/AssetOverviewPanel$2;->this$0:Lcom/android/vending/AssetOverviewPanel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    .line 426
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel$2;->this$0:Lcom/android/vending/AssetOverviewPanel;

    iget-object v2, v2, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset([Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 427
    .local v0, localAsset:Lcom/android/vending/model/LocalAsset;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v2

    sget-object v3, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v2, v3, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel$2;->this$0:Lcom/android/vending/AssetOverviewPanel;

    iget-object v2, v2, Lcom/android/vending/AssetOverviewPanel;->mAsset:Lcom/android/vending/model/Asset;

    invoke-static {v2}, Lcom/android/vending/model/DownloadProgressManager;->getCachedProgress(Lcom/android/vending/model/Asset;)Lcom/android/vending/model/DownloadProgress;

    move-result-object v1

    .line 432
    .local v1, progress:Lcom/android/vending/model/DownloadProgress;
    if-nez v1, :cond_2

    .line 439
    if-eqz v0, :cond_0

    .line 440
    const-string v2, "Setting to cancelled"

    invoke-static {v2}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 441
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCELLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v0, v2}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    goto :goto_0

    .line 446
    :cond_2
    iget-object v2, p0, Lcom/android/vending/AssetOverviewPanel$2;->this$0:Lcom/android/vending/AssetOverviewPanel;

    iget-object v2, v2, Lcom/android/vending/AssetOverviewPanel;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/vending/BaseActivity;

    new-instance v3, Lcom/android/vending/AssetOverviewPanel$2$1;

    invoke-direct {v3, p0, v1}, Lcom/android/vending/AssetOverviewPanel$2$1;-><init>(Lcom/android/vending/AssetOverviewPanel$2;Lcom/android/vending/model/DownloadProgress;)V

    invoke-virtual {v2, v3}, Lcom/android/vending/BaseActivity;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
