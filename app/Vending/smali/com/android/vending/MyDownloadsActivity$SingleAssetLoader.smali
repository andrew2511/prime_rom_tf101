.class Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "MyDownloadsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/MyDownloadsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleAssetLoader"
.end annotation


# instance fields
.field private final mAssetService:Lcom/android/vending/api/AssetService;

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/vending/MyDownloadsActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/MyDownloadsActivity;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "packageName"

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    .line 844
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 845
    iput-object p2, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->mPackageName:Ljava/lang/String;

    .line 847
    new-instance v0, Lcom/android/vending/api/AssetService;

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->mAssetService:Lcom/android/vending/api/AssetService;

    .line 849
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->mAssetService:Lcom/android/vending/api/AssetService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vending/api/AssetService;->setAllowMultipleResponses(Z)V

    .line 850
    return-void
.end method


# virtual methods
.method protected displayResults()V
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vending/MyDownloadsActivity;->access$1200(Lcom/android/vending/MyDownloadsActivity;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    :goto_0
    return-void

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v0}, Lcom/android/vending/MyDownloadsActivity;->access$700(Lcom/android/vending/MyDownloadsActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 854
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 855
    .local v0, request:Lcom/android/vending/model/AssetRequest;
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    .line 856
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->mAssetService:Lcom/android/vending/api/AssetService;

    new-instance v2, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;

    invoke-direct {v2, p0}, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader$1;-><init>(Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 875
    return-void
.end method
