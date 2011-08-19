.class Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;
.super Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;
.source "FullImageGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/FullImageGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotGalleryAssetLoadAction"
.end annotation


# instance fields
.field private mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

.field final synthetic this$0:Lcom/android/vending/FullImageGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/FullImageGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    .line 373
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 374
    return-void
.end method


# virtual methods
.method public displayResults()V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    new-instance v1, Lcom/android/vending/AssetScreenshotGalleryAdapter;

    iget-object v2, p0, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-direct {v1, v2}, Lcom/android/vending/AssetScreenshotGalleryAdapter;-><init>(Lcom/android/vending/AssetItemAdapter;)V

    invoke-static {v0, v1}, Lcom/android/vending/FullImageGalleryActivity;->access$802(Lcom/android/vending/FullImageGalleryActivity;Lcom/android/vending/FullImageGalleryAdapter;)Lcom/android/vending/FullImageGalleryAdapter;

    .line 392
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v0}, Lcom/android/vending/FullImageGalleryActivity;->access$800(Lcom/android/vending/FullImageGalleryActivity;)Lcom/android/vending/FullImageGalleryAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-interface {v0, v1}, Lcom/android/vending/FullImageGalleryAdapter;->addListener(Lcom/android/vending/FullImageGalleryAdapter$Listener;)V

    .line 398
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-virtual {v0}, Lcom/android/vending/FullImageGalleryActivity;->onGalleryAdapterLoaded()V

    .line 399
    const-string v0, "FullImageGalleryActivity displayResults() - loaded asset"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->event(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    return-void
.end method

.method public isLoadedFromCache()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare()V
    .locals 5

    .prologue
    .line 378
    new-instance v2, Lcom/android/vending/AssetItemAdapter;

    iget-object v3, p0, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    iget-object v4, p0, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    iget-object v4, v4, Lcom/android/vending/FullImageGalleryActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 379
    new-instance v1, Lcom/android/vending/api/AssetService;

    iget-object v2, p0, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    iget-object v2, v2, Lcom/android/vending/FullImageGalleryActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    .line 382
    .local v1, assetService:Lcom/android/vending/api/AssetService;
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 383
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    iget-object v2, p0, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v2}, Lcom/android/vending/FullImageGalleryActivity;->access$700(Lcom/android/vending/FullImageGalleryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    .line 384
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/vending/model/AssetRequest;->setRetrieveExtendedInfo(Z)V

    .line 385
    iget-object v2, p0, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, v0, v2}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 386
    const-string v2, "FullImageGalleryActivity prepare() - load asset"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/vending/util/Log;->event(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    return-void
.end method
