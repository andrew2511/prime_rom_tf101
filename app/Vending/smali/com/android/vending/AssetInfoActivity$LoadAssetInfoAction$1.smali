.class Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->displayResults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;)V
    .locals 0
    .parameter

    .prologue
    .line 993
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;->this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 996
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;->this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->getNumAssets()I

    move-result v1

    if-lez v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;->this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;->this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v2

    iput-object v2, v1, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    .line 998
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;->this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v1}, Lcom/android/vending/AssetInfoActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v1

    const-string v2, "asset"

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;->this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1, v2, v3}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;->this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v1}, Lcom/android/vending/AssetInfoActivity;->handleDeferredResultIfNecessary()V

    .line 1004
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1005
    .local v0, assetsToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/Asset;>;"
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;->this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;->this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v1, v0}, Lcom/android/vending/VendingDoctor;->checkDownloadingAssets(Landroid/content/Context;Ljava/util/List;)V

    .line 1008
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;->this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v1}, Lcom/android/vending/AssetInfoActivity;->access$2000(Lcom/android/vending/AssetInfoActivity;)V

    .line 1009
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;->this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v1}, Lcom/android/vending/AssetInfoActivity;->access$2100(Lcom/android/vending/AssetInfoActivity;)V

    .line 1014
    .end local v0           #assetsToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/Asset;>;"
    :goto_0
    return-void

    .line 1011
    :cond_0
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;->this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;->this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    const v3, 0x7f07003a

    invoke-virtual {v2, v3}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction$1;->this$1:Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    const v4, 0x7f07003b

    invoke-virtual {v3, v4}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/vending/AssetInfoActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
