.class public Lcom/android/vending/MyDownloadsActivity;
.super Lcom/android/vending/BaseActivity;
.source "MyDownloadsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/vending/CheckinUpdater$CheckinListener;
.implements Lcom/android/vending/VendingApplication$AccountListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;,
        Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;,
        Lcom/android/vending/MyDownloadsActivity$ActionBarListener;,
        Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;
    }
.end annotation


# instance fields
.field private mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActionBarAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapterObserver:Landroid/database/DataSetObserver;

.field private mAssetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

.field private mAssetStateListener:Lcom/android/vending/model/LocalAssetCache$AssetStateListener;

.field private mDownloadContentObserver:Landroid/database/ContentObserver;

.field private mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

.field private mLaunchAccount:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private final mLoaderRelaunchRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

.field private final mNoActionsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSelectedPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mNoActionsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mLoaderRelaunchRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 891
    return-void
.end method

.method static synthetic access$1100(Lcom/android/vending/MyDownloadsActivity;Lcom/android/vending/model/Asset;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/vending/MyDownloadsActivity;->showConfirmPermissions(Lcom/android/vending/model/Asset;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/vending/MyDownloadsActivity;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/vending/MyDownloadsActivity;->restartMyDownloadsLoaderIfNeeded(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/vending/MyDownloadsActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/vending/MyDownloadsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/vending/MyDownloadsActivity;->handleIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/vending/MyDownloadsActivity;)Lcom/android/vending/adapters/MyDownloadsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/MyDownloadsActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/vending/MyDownloadsActivity;->trackItemSelection(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/vending/MyDownloadsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/vending/MyDownloadsActivity;->relaunchLoaderOrFlipFlag()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/vending/MyDownloadsActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mActionBarAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/vending/MyDownloadsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/vending/MyDownloadsActivity;->clearAppSelection()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/vending/MyDownloadsActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mNoActionsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/vending/MyDownloadsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mLaunchAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/vending/MyDownloadsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity;->mLaunchAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/vending/MyDownloadsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mAccountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private clearAppSelection()V
    .locals 2

    .prologue
    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mSelectedPackageName:Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mAssetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetOverviewPanel;->setVisibility(I)V

    .line 764
    return-void
.end method

.method private findAsset(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vending/model/Asset;
    .locals 4
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 496
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 498
    iget-object v3, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {v3}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssets()Ljava/util/Collection;

    move-result-object v1

    .line 500
    .local v1, assets:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/vending/model/Asset;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 501
    .local v0, a:Lcom/android/vending/model/Asset;
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move-object v3, v0

    .line 507
    .end local v0           #a:Lcom/android/vending/model/Asset;
    :goto_0
    return-object v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleIntent()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 426
    invoke-virtual {p0}, Lcom/android/vending/MyDownloadsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 428
    .local v3, intent:Landroid/content/Intent;
    if-nez v3, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/android/vending/MyDownloadsActivity;->showTopAssetIfNeeded()V

    move v5, v7

    .line 472
    :goto_0
    return v5

    .line 433
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, action:Ljava/lang/String;
    const-string v5, "asset_package"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, packageName:Ljava/lang/String;
    const-string v5, "assetid"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, assetId:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/vending/MyDownloadsActivity;->setIntent(Landroid/content/Intent;)V

    .line 441
    if-nez v4, :cond_1

    if-nez v2, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/android/vending/MyDownloadsActivity;->showTopAssetIfNeeded()V

    move v5, v7

    .line 443
    goto :goto_0

    .line 446
    :cond_1
    const-string v5, "android.intent.action.RUN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 448
    if-eqz v4, :cond_2

    .line 449
    invoke-direct {p0, v4}, Lcom/android/vending/MyDownloadsActivity;->kickOffInstallFlow(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 451
    :cond_2
    const-string v5, "Not going to invoke install flow for intent w ACTION_RUN and packageName == null"

    invoke-static {v5}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    :cond_3
    :goto_1
    move v5, v7

    .line 472
    goto :goto_0

    .line 454
    :cond_4
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 455
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 456
    invoke-direct {p0, v4, v2}, Lcom/android/vending/MyDownloadsActivity;->findAsset(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vending/model/Asset;

    move-result-object v1

    .line 458
    .local v1, asset:Lcom/android/vending/model/Asset;
    if-eqz v1, :cond_5

    .line 459
    const/4 v5, 0x1

    invoke-direct {p0, v1, v5}, Lcom/android/vending/MyDownloadsActivity;->showAsset(Lcom/android/vending/model/Asset;Z)V

    goto :goto_1

    .line 461
    :cond_5
    if-eqz v4, :cond_6

    .line 464
    invoke-direct {p0, v4}, Lcom/android/vending/MyDownloadsActivity;->tryLoadingAssetInfoAndInstalling(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 466
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not going to invoke install flow for intent w ACTION_VIEW and packageName == null, assetId == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isAnyAssetShown()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 681
    iget-object v6, p0, Lcom/android/vending/MyDownloadsActivity;->mAssetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/vending/MyDownloadsActivity;->mAssetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    invoke-virtual {v6}, Lcom/android/vending/AssetOverviewPanel;->getAsset()Lcom/android/vending/model/Asset;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/vending/MyDownloadsActivity;->mAssetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    invoke-virtual {v6}, Lcom/android/vending/AssetOverviewPanel;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    move v5, v8

    .line 685
    .local v5, shown:Z
    :goto_0
    if-eqz v5, :cond_2

    .line 686
    iget-object v6, p0, Lcom/android/vending/MyDownloadsActivity;->mAssetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    invoke-virtual {v6}, Lcom/android/vending/AssetOverviewPanel;->getAsset()Lcom/android/vending/model/Asset;

    move-result-object v2

    .line 688
    .local v2, displayedAsset:Lcom/android/vending/model/Asset;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {v6}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssets()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 690
    .local v1, assets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v4

    .line 691
    .local v4, id:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 692
    .local v0, a:Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v8

    .line 698
    .end local v0           #a:Lcom/android/vending/model/Asset;
    .end local v1           #assets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/Asset;>;"
    .end local v2           #displayedAsset:Lcom/android/vending/model/Asset;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:Ljava/lang/String;
    :goto_1
    return v6

    .end local v5           #shown:Z
    :cond_1
    move v5, v7

    .line 681
    goto :goto_0

    .restart local v5       #shown:Z
    :cond_2
    move v6, v7

    .line 698
    goto :goto_1
.end method

.method private kickOffInstallFlow(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 517
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/vending/MyDownloadsActivity;->findAsset(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vending/model/Asset;

    move-result-object v0

    .line 519
    .local v0, asset:Lcom/android/vending/model/Asset;
    if-eqz v0, :cond_2

    .line 521
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/vending/MyDownloadsActivity;->showAsset(Lcom/android/vending/model/Asset;Z)V

    move v2, v3

    .line 541
    :goto_0
    return v2

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/MyDownloadsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 528
    .local v1, launchIntent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 529
    invoke-virtual {p0, v1}, Lcom/android/vending/MyDownloadsActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    move v2, v3

    .line 541
    goto :goto_0

    .line 532
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/vending/MyDownloadsActivity;->showConfirmPermissions(Lcom/android/vending/model/Asset;)V

    goto :goto_1

    .line 538
    .end local v1           #launchIntent:Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/vending/MyDownloadsActivity;->tryLoadingAssetInfoAndInstalling(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private relaunchLoaderOrFlipFlag()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mNoActionsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mLoaderRelaunchRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 346
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mNoActionsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 344
    new-instance v0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;

    invoke-direct {v0, p0}, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;-><init>(Lcom/android/vending/MyDownloadsActivity;)V

    invoke-virtual {v0}, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->start()V

    goto :goto_0
.end method

.method private restartMyDownloadsLoaderIfNeeded(Z)Z
    .locals 3
    .parameter "force"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 998
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mLoaderRelaunchRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    :cond_0
    new-instance v0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;

    invoke-direct {v0, p0}, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;-><init>(Lcom/android/vending/MyDownloadsActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/vending/MyDownloadsActivity;->startAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    move v0, v2

    .line 1002
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private setCurrentAccountAndActionBar(Ljava/lang/String;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 318
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v2, p1}, Lcom/android/vending/VendingApplication;->setCurrentAccount(Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 320
    .local v1, idx:I
    invoke-virtual {p0}, Lcom/android/vending/MyDownloadsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 321
    .local v0, ab:Landroid/app/ActionBar;
    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 322
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 323
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/vending/MyDownloadsActivity;->mLaunchAccount:Ljava/lang/String;

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity;->mLaunchAccount:Ljava/lang/String;

    goto :goto_0
.end method

.method private setLaunchAccount()V
    .locals 7

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/vending/MyDownloadsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 272
    .local v4, intent:Landroid/content/Intent;
    if-nez v4, :cond_0

    .line 274
    const-string v5, "setLaunchAccount called with no account passed in intent"

    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v5, v6}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    :goto_0
    return-void

    .line 281
    :cond_0
    const-string v5, "account"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, account:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 284
    invoke-direct {p0, v0}, Lcom/android/vending/MyDownloadsActivity;->setCurrentAccountAndActionBar(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_1
    const-string v5, "assetid"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, assetId:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 295
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/vending/model/AbstractLocalAssetCache;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v1

    .line 297
    .local v1, asset:Lcom/android/vending/model/LocalAsset;
    if-eqz v1, :cond_3

    .line 298
    invoke-virtual {v1}, Lcom/android/vending/model/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, assetAccount:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 301
    invoke-direct {p0, v2}, Lcom/android/vending/MyDownloadsActivity;->setCurrentAccountAndActionBar(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In setLaunchAccount, account retrieved from asset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;)V

    .line 311
    .end local v1           #asset:Lcom/android/vending/model/LocalAsset;
    .end local v2           #assetAccount:Ljava/lang/String;
    :cond_3
    const-string v5, "setLaunchAccount called with no account passed in intent"

    invoke-static {v5}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 4

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/android/vending/MyDownloadsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 805
    .local v0, ab:Landroid/app/ActionBar;
    new-instance v2, Landroid/widget/ArrayAdapter;

    const/high16 v3, 0x7f04

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/vending/MyDownloadsActivity;->mActionBarAdapter:Landroid/widget/ArrayAdapter;

    .line 807
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mActionBarAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 809
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 810
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mActionBarAdapter:Landroid/widget/ArrayAdapter;

    new-instance v2, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;-><init>(Lcom/android/vending/MyDownloadsActivity;Lcom/android/vending/MyDownloadsActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 811
    return-void
.end method

.method private showAsset(Lcom/android/vending/model/Asset;Z)V
    .locals 2
    .parameter "asset"
    .parameter "scrollToReveal"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mAssetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetOverviewPanel;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mAssetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    invoke-virtual {v0, p0}, Lcom/android/vending/AssetOverviewPanel;->setActivity(Landroid/app/Activity;)V

    .line 635
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mAssetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    invoke-virtual {v0, p1}, Lcom/android/vending/AssetOverviewPanel;->setAsset(Lcom/android/vending/model/Asset;)V

    .line 637
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mSelectedPackageName:Ljava/lang/String;

    .line 638
    invoke-direct {p0, p2}, Lcom/android/vending/MyDownloadsActivity;->trackItemSelection(Z)V

    .line 639
    return-void
.end method

.method private showConfirmPermissions(Lcom/android/vending/model/Asset;)V
    .locals 2
    .parameter "asset"

    .prologue
    .line 545
    sget-object v0, Lcom/android/vending/AssetOverviewPanel$AssetAction;->SHOW_PERMISSIONS:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/vending/AssetOverviewPanel$AssetAction;->run(Lcom/android/vending/model/Asset;Landroid/app/Activity;Lcom/android/vending/AssetOverviewPanel;)V

    .line 546
    return-void
.end method

.method private showTopAssetIfNeeded()V
    .locals 2

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {v1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssets()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    invoke-direct {p0}, Lcom/android/vending/MyDownloadsActivity;->clearAppSelection()V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/MyDownloadsActivity;->isAnyAssetShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {v1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getTopAsset()Lcom/android/vending/model/Asset;

    move-result-object v0

    .line 605
    .local v0, topAsset:Lcom/android/vending/model/Asset;
    if-eqz v0, :cond_0

    .line 606
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/vending/MyDownloadsActivity;->showAsset(Lcom/android/vending/model/Asset;Z)V

    goto :goto_0
.end method

.method private trackItemSelection(Z)V
    .locals 7
    .parameter "scrollToReveal"

    .prologue
    .line 642
    iget-object v5, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {v5}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getCount()I

    move-result v4

    .line 643
    .local v4, listItemsCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 644
    iget-object v5, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {v5, v2}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 645
    .local v3, item:Ljava/lang/Object;
    instance-of v5, v3, Lcom/android/vending/model/Asset;

    if-nez v5, :cond_1

    .line 643
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 648
    :cond_1
    move-object v0, v3

    check-cast v0, Lcom/android/vending/model/Asset;

    move-object v1, v0

    .line 649
    .local v1, asset:Lcom/android/vending/model/Asset;
    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/vending/MyDownloadsActivity;->mSelectedPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 653
    iget-object v5, p0, Lcom/android/vending/MyDownloadsActivity;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 654
    if-nez p1, :cond_3

    .line 672
    .end local v1           #asset:Lcom/android/vending/model/Asset;
    .end local v3           #item:Ljava/lang/Object;
    :cond_2
    return-void

    .line 667
    .restart local v1       #asset:Lcom/android/vending/model/Asset;
    .restart local v3       #item:Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lcom/android/vending/MyDownloadsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 668
    iget-object v5, p0, Lcom/android/vending/MyDownloadsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1
.end method

.method private tryHandlingRunIntent()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/android/vending/MyDownloadsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 399
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    move v3, v5

    .line 418
    :goto_0
    return v3

    .line 403
    :cond_0
    const-string v3, "android.intent.action.RUN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "asset_package"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/MyDownloadsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 407
    .local v1, launchIntent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 408
    invoke-virtual {p0, v1}, Lcom/android/vending/MyDownloadsActivity;->startActivity(Landroid/content/Intent;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/vending/MyDownloadsActivity;->finish()V

    .line 411
    const/4 v3, 0x1

    goto :goto_0

    .end local v1           #launchIntent:Landroid/content/Intent;
    .end local v2           #packageName:Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 418
    goto :goto_0
.end method

.method private tryLoadingAssetInfoAndInstalling(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mNoActionsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;

    invoke-direct {v0, p0, p1}, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;-><init>(Lcom/android/vending/MyDownloadsActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/vending/MyDownloadsActivity$SingleAssetLoader;->start()V

    .line 484
    const/4 v0, 0x1

    .line 489
    :goto_0
    return v0

    .line 486
    :cond_0
    const-string v0, "SingleAssetLoader launched although MyDownloadsLoader hasn\'t yet finished"

    invoke-static {v0}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;)V

    move v0, v1

    .line 489
    goto :goto_0
.end method


# virtual methods
.method public accountListUpdate(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 710
    .local p1, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity;->mAccountList:Ljava/util/ArrayList;

    .line 712
    new-instance v0, Lcom/android/vending/MyDownloadsActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/android/vending/MyDownloadsActivity$4;-><init>(Lcom/android/vending/MyDownloadsActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/vending/MyDownloadsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 742
    return-void
.end method

.method public accountListUpdateCompleted()V
    .locals 0

    .prologue
    .line 746
    return-void
.end method

.method public checkinCompleted()V
    .locals 1

    .prologue
    .line 753
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vending/cache/CacheManager;->clear()V

    .line 754
    new-instance v0, Lcom/android/vending/MyDownloadsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/vending/MyDownloadsActivity$5;-><init>(Lcom/android/vending/MyDownloadsActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/vending/MyDownloadsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 759
    return-void
.end method

.method public checkinStarted()V
    .locals 0

    .prologue
    .line 750
    return-void
.end method

.method public getReferrerUri(I)Landroid/net/Uri;
    .locals 3
    .parameter "rowIndex"

    .prologue
    const/4 v2, 0x0

    .line 622
    const-string v0, "downloads"

    const/4 v1, -0x1

    invoke-static {v0, v2, v2, v1}, Lcom/android/vending/AssetInfoActivity;->getReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 211
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    const v0, 0x7f040045

    invoke-virtual {p0, v0}, Lcom/android/vending/MyDownloadsActivity;->setContentView(I)V

    .line 215
    new-instance v0, Lcom/android/vending/controller/AssetInfoActivityController;

    invoke-direct {v0}, Lcom/android/vending/controller/AssetInfoActivityController;-><init>()V

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mController:Lcom/android/vending/controller/Controller;

    .line 216
    new-instance v0, Lcom/android/vending/adapters/MyDownloadsAdapter;

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/adapters/MyDownloadsAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    .line 218
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->getAccountList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mAccountList:Ljava/util/ArrayList;

    .line 219
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v0, p0}, Lcom/android/vending/VendingApplication;->addAccountListListener(Lcom/android/vending/VendingApplication$AccountListListener;)V

    .line 220
    invoke-static {p0}, Lcom/android/vending/CheckinUpdater;->get(Landroid/content/Context;)Lcom/android/vending/CheckinUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/vending/CheckinUpdater;->addCheckinListener(Lcom/android/vending/CheckinUpdater$CheckinListener;)V

    .line 222
    new-instance v0, Lcom/android/vending/MyDownloadsActivity$1;

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/MyDownloadsActivity$1;-><init>(Lcom/android/vending/MyDownloadsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mDownloadContentObserver:Landroid/database/ContentObserver;

    .line 234
    new-instance v0, Lcom/android/vending/MyDownloadsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/vending/MyDownloadsActivity$2;-><init>(Lcom/android/vending/MyDownloadsActivity;)V

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mAdapterObserver:Landroid/database/DataSetObserver;

    .line 245
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 247
    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lcom/android/vending/MyDownloadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vending/AssetOverviewPanel;

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mAssetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    .line 249
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/android/vending/MyDownloadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mListView:Landroid/widget/ListView;

    .line 250
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 251
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mListView:Landroid/widget/ListView;

    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Lcom/android/vending/MyDownloadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 255
    invoke-direct {p0}, Lcom/android/vending/MyDownloadsActivity;->setLaunchAccount()V

    .line 257
    new-instance v0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;

    invoke-direct {v0, p0}, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;-><init>(Lcom/android/vending/MyDownloadsActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/vending/MyDownloadsActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 258
    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vending/MyDownloadsActivity;->startSetupActionChain(Z)V

    .line 260
    new-instance v0, Lcom/android/vending/model/DownloadProgressManager;

    invoke-direct {v0}, Lcom/android/vending/model/DownloadProgressManager;-><init>()V

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    .line 261
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mAssetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetOverviewPanel;->setDownloadProgressManager(Lcom/android/vending/model/DownloadProgressManager;)V

    .line 263
    invoke-direct {p0}, Lcom/android/vending/MyDownloadsActivity;->tryHandlingRunIntent()Z

    .line 266
    invoke-direct {p0}, Lcom/android/vending/MyDownloadsActivity;->setupActionBar()V

    .line 267
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 565
    invoke-super {p0}, Lcom/android/vending/BaseActivity;->onDestroy()V

    .line 567
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    invoke-virtual {v0}, Lcom/android/vending/model/DownloadProgressManager;->onDestroy()V

    .line 568
    iput-object v2, p0, Lcom/android/vending/MyDownloadsActivity;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    .line 570
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 571
    iput-object v2, p0, Lcom/android/vending/MyDownloadsActivity;->mAdapterObserver:Landroid/database/DataSetObserver;

    .line 572
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v0, p0}, Lcom/android/vending/VendingApplication;->removeAccountListListener(Lcom/android/vending/VendingApplication$AccountListListener;)V

    .line 573
    invoke-static {p0}, Lcom/android/vending/CheckinUpdater;->get(Landroid/content/Context;)Lcom/android/vending/CheckinUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/vending/CheckinUpdater;->removeCheckinListener(Lcom/android/vending/CheckinUpdater$CheckinListener;)V

    .line 574
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 614
    .local v0, asset:Lcom/android/vending/model/Asset;
    if-eqz v0, :cond_0

    .line 615
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/vending/MyDownloadsActivity;->showAsset(Lcom/android/vending/model/Asset;Z)V

    .line 617
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 703
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/android/vending/MyDownloadsActivity;->setIntent(Landroid/content/Intent;)V

    .line 332
    invoke-direct {p0}, Lcom/android/vending/MyDownloadsActivity;->setLaunchAccount()V

    .line 333
    invoke-direct {p0}, Lcom/android/vending/MyDownloadsActivity;->tryHandlingRunIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/android/vending/MyDownloadsActivity;->relaunchLoaderOrFlipFlag()V

    .line 337
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 707
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1012
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 1013
    invoke-virtual {p0}, Lcom/android/vending/MyDownloadsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.finsky"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1015
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1016
    const-string v1, "authAccount"

    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1018
    const v1, 0x10004000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1019
    invoke-virtual {p0, v0}, Lcom/android/vending/MyDownloadsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1021
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 550
    invoke-super {p0}, Lcom/android/vending/BaseActivity;->onPause()V

    .line 551
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mAssetStateListener:Lcom/android/vending/model/LocalAssetCache$AssetStateListener;

    invoke-interface {v0, v1}, Lcom/android/vending/model/AbstractLocalAssetCache;->removeListener(Lcom/android/vending/model/LocalAssetCache$AssetStateListener;)V

    .line 552
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    invoke-virtual {v0}, Lcom/android/vending/model/DownloadProgressManager;->onPause()V

    .line 553
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 557
    invoke-super {p0}, Lcom/android/vending/BaseActivity;->onRestart()V

    .line 560
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {v0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->notifyDataSetChanged()V

    .line 561
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 350
    invoke-super {p0}, Lcom/android/vending/BaseActivity;->onResume()V

    .line 353
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mDownloadContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/DownloadProgressManager;->registerObserverOnce(Landroid/database/ContentObserver;)V

    .line 354
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    invoke-virtual {v0, p0}, Lcom/android/vending/model/DownloadProgressManager;->onResume(Landroid/content/Context;)V

    .line 356
    new-instance v0, Lcom/android/vending/MyDownloadsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/vending/MyDownloadsActivity$3;-><init>(Lcom/android/vending/MyDownloadsActivity;)V

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mAssetStateListener:Lcom/android/vending/model/LocalAssetCache$AssetStateListener;

    .line 390
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity;->mAssetStateListener:Lcom/android/vending/model/LocalAssetCache$AssetStateListener;

    invoke-interface {v0, v1}, Lcom/android/vending/model/AbstractLocalAssetCache;->addListener(Lcom/android/vending/model/LocalAssetCache$AssetStateListener;)V

    .line 391
    return-void
.end method

.method public refreshCheckedItem()V
    .locals 4

    .prologue
    .line 581
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {v2}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 582
    .local v0, asset:Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/MyDownloadsActivity;->mSelectedPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/vending/MyDownloadsActivity;->showAsset(Lcom/android/vending/model/Asset;Z)V

    .line 588
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity;->mAssetOverviewPanel:Lcom/android/vending/AssetOverviewPanel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/vending/AssetOverviewPanel;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateActivity(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 815
    .line 826
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity;->mMyDownloadsAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-virtual {v0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->notifyDataSetChanged()V

    .line 827
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 1008
    return-void
.end method
