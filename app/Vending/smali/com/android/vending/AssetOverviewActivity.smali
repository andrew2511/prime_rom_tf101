.class public Lcom/android/vending/AssetOverviewActivity;
.super Lcom/android/vending/BaseActivity;
.source "AssetOverviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;
    }
.end annotation


# instance fields
.field protected mActualAssetId:Ljava/lang/String;

.field protected mAsset:Lcom/android/vending/model/Asset;

.field protected mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

.field private mAssetService:Lcom/android/vending/api/AssetService;

.field private mOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

.field protected mServerAssetId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/AssetOverviewActivity;)Lcom/android/vending/api/AssetService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/vending/AssetOverviewActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/AssetOverviewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/vending/AssetOverviewActivity;->displayAssetInfo()V

    return-void
.end method

.method private displayAssetInfo()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/vending/AssetOverviewActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetOverviewActivity;->mAsset:Lcom/android/vending/model/Asset;

    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetOverviewActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getLocalId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetOverviewActivity;->mActualAssetId:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/android/vending/AssetOverviewActivity;->mOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    iget-object v1, p0, Lcom/android/vending/AssetOverviewActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetOverviewPanel;->setAsset(Lcom/android/vending/model/Asset;)V

    .line 96
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Lcom/android/vending/api/AssetService;

    iget-object v1, p0, Lcom/android/vending/AssetOverviewActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    iput-object v0, p0, Lcom/android/vending/AssetOverviewActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    .line 47
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetOverviewActivity;->setContentView(I)V

    .line 48
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetOverviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vending/AssetOverviewPanel;

    iput-object v0, p0, Lcom/android/vending/AssetOverviewActivity;->mOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    .line 50
    new-instance v0, Lcom/android/vending/AssetItemAdapter;

    iget-object v1, p0, Lcom/android/vending/AssetOverviewActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vending/AssetOverviewActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 51
    invoke-virtual {p0}, Lcom/android/vending/AssetOverviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetOverviewActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lcom/android/vending/AssetOverviewActivity;->mActualAssetId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;

    invoke-direct {v0, p0}, Lcom/android/vending/AssetOverviewActivity$LoadAssetInfoAction;-><init>(Lcom/android/vending/AssetOverviewActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetOverviewActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 54
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vending/AssetOverviewActivity;->startSetupActionChain(Z)V

    .line 56
    :cond_0
    return-void

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, assetId:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 65
    .local v1, intentData:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 66
    invoke-static {v1}, Lcom/android/vending/util/Util;->getAssetIdFromInfoUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    if-nez v0, :cond_1

    .line 69
    const-string v2, "assetid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/vending/AssetOverviewActivity;->mServerAssetId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/vending/AssetOverviewActivity;->mActualAssetId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/vending/AssetOverviewActivity;->mServerAssetId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/vending/AssetOverviewActivity;->mActualAssetId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/vending/AssetOverviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_2
    iput-object v0, p0, Lcom/android/vending/AssetOverviewActivity;->mActualAssetId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vending/AssetOverviewActivity;->mServerAssetId:Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/vending/AssetOverviewActivity;->setIntent(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/vending/AssetOverviewActivity;->maybeDisplayMessage(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 85
    return-void
.end method
