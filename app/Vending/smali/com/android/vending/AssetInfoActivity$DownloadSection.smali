.class Lcom/android/vending/AssetInfoActivity$DownloadSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadSection"
.end annotation


# instance fields
.field private final mDownloadObserver:Landroid/database/ContentObserver;

.field private mDownloadProgressView:Landroid/view/View;

.field private mViewUpdater:Lcom/android/vending/adapters/DownloadingAssetViewUpdater;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    .line 1810
    new-instance v0, Lcom/android/vending/AssetInfoActivity$DownloadSection$1;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/AssetInfoActivity$DownloadSection$1;-><init>(Lcom/android/vending/AssetInfoActivity$DownloadSection;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mDownloadObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1807
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$DownloadSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/vending/AssetInfoActivity$DownloadSection;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mDownloadProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/vending/AssetInfoActivity$DownloadSection;)Lcom/android/vending/adapters/DownloadingAssetViewUpdater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mViewUpdater:Lcom/android/vending/adapters/DownloadingAssetViewUpdater;

    return-object v0
.end method


# virtual methods
.method protected onAttach()V
    .locals 3

    .prologue
    .line 1842
    const v0, 0x7f04000d

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v2}, Lcom/android/vending/AssetInfoActivity;->access$2700(Lcom/android/vending/AssetInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mDownloadProgressView:Landroid/view/View;

    .line 1845
    new-instance v0, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {v0, v1}, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mViewUpdater:Lcom/android/vending/adapters/DownloadingAssetViewUpdater;

    .line 1847
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mDownloadProgressView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$DownloadSection;->addView(Landroid/view/View;)V

    .line 1848
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isUninstalling()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1854
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mViewUpdater:Lcom/android/vending/adapters/DownloadingAssetViewUpdater;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mDownloadProgressView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->updateView(Landroid/view/View;Lcom/android/vending/model/Asset;)V

    .line 1860
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$4700(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/model/DownloadProgressManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1861
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1862
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$4700(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/model/DownloadProgressManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/DownloadProgressManager;->registerObserverOnce(Landroid/database/ContentObserver;)V

    .line 1865
    :cond_1
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DownloadSection;->mDownloadObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->dispatchChange(Z)V

    .line 1868
    :cond_2
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity$DownloadSection;->activate()V

    .line 1872
    :goto_0
    return-void

    .line 1870
    :cond_3
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity$DownloadSection;->deactivate()V

    goto :goto_0
.end method
