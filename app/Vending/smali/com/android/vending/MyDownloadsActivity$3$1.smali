.class Lcom/android/vending/MyDownloadsActivity$3$1;
.super Ljava/lang/Object;
.source "MyDownloadsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/MyDownloadsActivity$3;->onAssetStateChanged(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/MyDownloadsActivity$3;

.field final synthetic val$newState:Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field final synthetic val$serverAssetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vending/MyDownloadsActivity$3;Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$3$1;->this$1:Lcom/android/vending/MyDownloadsActivity$3;

    iput-object p2, p0, Lcom/android/vending/MyDownloadsActivity$3$1;->val$serverAssetId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/vending/MyDownloadsActivity$3$1;->val$newState:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 362
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$3$1;->this$1:Lcom/android/vending/MyDownloadsActivity$3;

    iget-object v1, v1, Lcom/android/vending/MyDownloadsActivity$3;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v1}, Lcom/android/vending/MyDownloadsActivity;->access$200(Lcom/android/vending/MyDownloadsActivity;)Lcom/android/vending/adapters/MyDownloadsAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$3$1;->val$serverAssetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/vending/adapters/MyDownloadsAdapter;->containsAsset(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$3$1;->val$newState:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$3$1;->val$newState:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$3$1;->val$newState:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-nez v1, :cond_2

    .line 368
    :cond_1
    new-instance v0, Lcom/android/vending/api/AssetService;

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    .line 370
    .local v0, assetService:Lcom/android/vending/api/AssetService;
    invoke-virtual {v0}, Lcom/android/vending/api/AssetService;->invalidateMyDownloads()V

    .line 373
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$3$1;->this$1:Lcom/android/vending/MyDownloadsActivity$3;

    iget-object v1, v1, Lcom/android/vending/MyDownloadsActivity$3;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v1}, Lcom/android/vending/MyDownloadsActivity;->access$400(Lcom/android/vending/MyDownloadsActivity;)V

    .line 386
    .end local v0           #assetService:Lcom/android/vending/api/AssetService;
    :goto_0
    return-void

    .line 379
    :cond_2
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$3$1;->this$1:Lcom/android/vending/MyDownloadsActivity$3;

    iget-object v1, v1, Lcom/android/vending/MyDownloadsActivity$3;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v1}, Lcom/android/vending/MyDownloadsActivity;->access$200(Lcom/android/vending/MyDownloadsActivity;)Lcom/android/vending/adapters/MyDownloadsAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$3$1;->val$serverAssetId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vending/MyDownloadsActivity$3$1;->val$newState:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v1, v2, v3}, Lcom/android/vending/adapters/MyDownloadsAdapter;->onAssetStateChanged(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 381
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$3$1;->this$1:Lcom/android/vending/MyDownloadsActivity$3;

    iget-object v1, v1, Lcom/android/vending/MyDownloadsActivity$3;->this$0:Lcom/android/vending/MyDownloadsActivity;

    new-instance v2, Lcom/android/vending/MyDownloadsActivity$3$1$1;

    invoke-direct {v2, p0}, Lcom/android/vending/MyDownloadsActivity$3$1$1;-><init>(Lcom/android/vending/MyDownloadsActivity$3$1;)V

    invoke-virtual {v1, v2}, Lcom/android/vending/MyDownloadsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
