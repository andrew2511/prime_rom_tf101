.class Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "AssetOverviewActivity.java"

# interfaces
.implements Lcom/android/vending/api/AssetService$GetAssetsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetOverviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAssetInfoAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetOverviewActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetOverviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetOverviewActivity;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 104
    return-void
.end method


# virtual methods
.method public displayResults()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetOverviewActivity;

    iget-object v0, v0, Lcom/android/vending/AssetOverviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction$1;

    invoke-direct {v1, p0}, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction$1;-><init>(Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method public onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, correctedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v0, p0, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetOverviewActivity;

    iget-object v0, v0, Lcom/android/vending/AssetOverviewActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/vending/AssetItemAdapter;->onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V

    .line 160
    return-void
.end method

.method public prepare()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 109
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    iget-object v2, p0, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetOverviewActivity;

    iget-object v2, v2, Lcom/android/vending/AssetOverviewActivity;->mServerAssetId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetOverviewActivity;

    invoke-static {v2}, Lcom/android/vending/AssetOverviewActivity;->access$000(Lcom/android/vending/AssetOverviewActivity;)Lcom/android/vending/api/AssetService;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 115
    invoke-virtual {p0, v3}, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;->setTriedLoadFromCache(Z)V

    .line 116
    iget-object v2, p0, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v2, v4}, Lcom/android/vending/api/RequestManager;->doRequestsFromCache(Z)Z

    move-result v1

    .line 117
    .local v1, cached:Z
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetOverviewActivity;

    iget-object v2, v2, Lcom/android/vending/AssetOverviewActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v2}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;->setLoadedFromCache(Z)V

    .line 118
    if-eqz v1, :cond_0

    .line 119
    iget-object v2, p0, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetOverviewActivity;

    iget-object v3, p0, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetOverviewActivity;

    iget-object v3, v3, Lcom/android/vending/AssetOverviewActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v3, v4}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v3

    iput-object v3, v2, Lcom/android/vending/AssetOverviewActivity;->mAsset:Lcom/android/vending/model/Asset;

    .line 120
    invoke-virtual {p0}, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;->displayResults()V

    .line 122
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 117
    goto :goto_0
.end method
