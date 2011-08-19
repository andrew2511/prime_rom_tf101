.class Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "FlagContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/FlagContentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAssetInfoAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/FlagContentActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/FlagContentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/FlagContentActivity;

    .line 198
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 199
    return-void
.end method


# virtual methods
.method public displayResults()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v0}, Lcom/android/vending/FlagContentActivity;->access$600(Lcom/android/vending/FlagContentActivity;)Lcom/android/vending/AssetItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/FlagContentActivity;

    iget-object v1, p0, Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v1}, Lcom/android/vending/FlagContentActivity;->access$600(Lcom/android/vending/FlagContentActivity;)Lcom/android/vending/AssetItemAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/FlagContentActivity;->access$802(Lcom/android/vending/FlagContentActivity;Lcom/android/vending/model/Asset;)Lcom/android/vending/model/Asset;

    .line 213
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-virtual {v0}, Lcom/android/vending/FlagContentActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v0

    const-string v1, "asset"

    iget-object v2, p0, Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v2}, Lcom/android/vending/FlagContentActivity;->access$800(Lcom/android/vending/FlagContentActivity;)Lcom/android/vending/model/Asset;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-virtual {v0}, Lcom/android/vending/FlagContentActivity;->handleDeferredResultIfNecessary()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v0}, Lcom/android/vending/FlagContentActivity;->access$900(Lcom/android/vending/FlagContentActivity;)V

    .line 218
    return-void
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 203
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 204
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    iget-object v1, p0, Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v1}, Lcom/android/vending/FlagContentActivity;->access$500(Lcom/android/vending/FlagContentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v1}, Lcom/android/vending/FlagContentActivity;->access$700(Lcom/android/vending/FlagContentActivity;)Lcom/android/vending/api/AssetService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-static {v2}, Lcom/android/vending/FlagContentActivity;->access$600(Lcom/android/vending/FlagContentActivity;)Lcom/android/vending/AssetItemAdapter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 206
    return-void
.end method
