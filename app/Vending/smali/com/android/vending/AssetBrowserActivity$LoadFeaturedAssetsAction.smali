.class public Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "AssetBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LoadFeaturedAssetsAction"
.end annotation


# instance fields
.field private getAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

.field final synthetic this$0:Lcom/android/vending/AssetBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V
    .locals 0
    .parameter
    .parameter "getAssetsReceiver"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    .line 318
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 319
    iput-object p2, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->getAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

    .line 320
    return-void
.end method


# virtual methods
.method protected displayErrorUi(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iget-object v0, v0, Lcom/android/vending/AssetBrowserActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 365
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;->displayErrorUi(Ljava/lang/Throwable;)V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetBrowserActivity;->showErrorFooter()V

    goto :goto_0
.end method

.method public displayResults()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 342
    iget-object v1, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iget-object v1, v1, Lcom/android/vending/AssetBrowserActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v2}, Lcom/android/vending/AssetBrowserActivity;->access$800(Lcom/android/vending/AssetBrowserActivity;)I

    move-result v2

    sub-int v0, v1, v2

    .line 343
    .local v0, assetsLoaded:I
    iget-object v1, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v1, v2}, Lcom/android/vending/AssetBrowserActivity;->access$202(Lcom/android/vending/AssetBrowserActivity;Z)Z

    .line 345
    iget-object v1, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-static {v1}, Lcom/android/vending/AssetBrowserActivity;->access$1100(Lcom/android/vending/AssetBrowserActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iget-object v2, v2, Lcom/android/vending/AssetBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-static {v1, v2, v3}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->tweakViewPadding(Landroid/view/View;Landroid/view/ViewParent;I)V

    .line 346
    iget-object v1, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iget-object v1, v1, Lcom/android/vending/AssetBrowserActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->notifyDataSetChanged()V

    .line 347
    return-void

    :cond_0
    move v2, v3

    .line 343
    goto :goto_0
.end method

.method protected displayWaitingUi()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Lcom/android/vending/BaseActivity$BaseAction;->displayWaitingUi()V

    .line 352
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetBrowserActivity;->showLoadingFooter()V

    .line 353
    return-void
.end method

.method protected hideErrorUi()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Lcom/android/vending/BaseActivity$BaseAction;->hideErrorUi()V

    .line 375
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetBrowserActivity;->hideErrorFooter()V

    .line 376
    return-void
.end method

.method protected hideWaitingUi()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Lcom/android/vending/BaseActivity$BaseAction;->hideWaitingUi()V

    .line 358
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetBrowserActivity;->hideLoadingFooter()V

    .line 359
    return-void
.end method

.method public loadMore()V
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->start()V

    .line 326
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iget-object v2, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iget-object v2, v2, Lcom/android/vending/AssetBrowserActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v2}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/vending/AssetBrowserActivity;->access$802(Lcom/android/vending/AssetBrowserActivity;I)I

    .line 334
    iget-object v1, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    invoke-virtual {v1}, Lcom/android/vending/AssetBrowserActivity;->getAssetRequest()Lcom/android/vending/model/AssetRequest;

    move-result-object v0

    .line 337
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    iget-object v1, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->this$0:Lcom/android/vending/AssetBrowserActivity;

    iget-object v1, v1, Lcom/android/vending/AssetBrowserActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    iget-object v2, p0, Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;->getAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

    invoke-virtual {v1, v0, v2}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 338
    return-void
.end method
