.class public Lcom/android/vending/SimilarAssetListActivity;
.super Lcom/android/vending/AssetListActivity;
.source "SimilarAssetListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/SimilarAssetListActivity$SimilarLookupAssetsAction;
    }
.end annotation


# instance fields
.field private mAssetId:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

.field private mPackageName:Ljava/lang/String;

.field private mSnippetInit:Lcom/android/vending/BaseActivity$SnippetInitializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/vending/AssetListActivity;-><init>()V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/SimilarAssetListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/vending/SimilarAssetListActivity;->mAssetId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/SimilarAssetListActivity;)Lcom/android/vending/BaseActivity$SnippetInitializer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/vending/SimilarAssetListActivity;->mSnippetInit:Lcom/android/vending/BaseActivity$SnippetInitializer;

    return-object v0
.end method

.method private processSearchIntent()V
    .locals 4

    .prologue
    .line 69
    const v3, 0x7f07018c

    invoke-virtual {p0, v3}, Lcom/android/vending/SimilarAssetListActivity;->setTitle(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/vending/SimilarAssetListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "assetid"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/SimilarAssetListActivity;->mAssetId:Ljava/lang/String;

    .line 76
    const-string v3, "asset_package"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/SimilarAssetListActivity;->mPackageName:Ljava/lang/String;

    .line 77
    iget-object v3, p0, Lcom/android/vending/SimilarAssetListActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/vending/SimilarAssetListActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 80
    const v3, 0x7f070037

    invoke-virtual {p0, v3}, Lcom/android/vending/SimilarAssetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, title:Ljava/lang/String;
    const v3, 0x7f070039

    invoke-virtual {p0, v3}, Lcom/android/vending/SimilarAssetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, message:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/vending/SimilarAssetListActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkToLoadMore(II)V
    .locals 7
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/vending/SimilarAssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v6

    .line 98
    .local v6, count:I
    add-int v0, p1, p2

    int-to-long v0, v0

    int-to-long v2, v6

    iget-wide v4, p0, Lcom/android/vending/SimilarAssetListActivity;->mNumMatchingAssets:J

    invoke-static/range {v0 .. v5}, Lcom/android/vending/util/Util;->needLoadMore(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/vending/SimilarAssetListActivity;->mAssetPageLoader:Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    invoke-virtual {v0}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->loadMore()V

    .line 101
    :cond_0
    return-void
.end method

.method protected createPaginationAwareAction()Lcom/android/vending/AssetListActivity$PaginationAwareAction;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/android/vending/SimilarAssetListActivity$SimilarLookupAssetsAction;

    invoke-direct {v0, p0}, Lcom/android/vending/SimilarAssetListActivity$SimilarLookupAssetsAction;-><init>(Lcom/android/vending/SimilarAssetListActivity;)V

    return-object v0
.end method

.method protected getAssetListAdapter()Lcom/android/vending/AssetItemAdapter;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/android/vending/AssetItemAdapter;

    iget-object v1, p0, Lcom/android/vending/SimilarAssetListActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public getAssetRequest()Lcom/android/vending/model/AssetRequest;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 89
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    iget-object v1, p0, Lcom/android/vending/SimilarAssetListActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/vending/util/Util;->getSearchQueryForRelated(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setQuery(Ljava/lang/String;)V

    .line 90
    iget v1, p0, Lcom/android/vending/SimilarAssetListActivity;->mStartIndex:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setStartIndex(J)V

    .line 91
    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setNumEntries(J)V

    .line 92
    return-object v0
.end method

.method protected getLoadingString()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f07018c

    return v0
.end method

.method public getReferrerUri(I)Landroid/net/Uri;
    .locals 4
    .parameter "rowIndex"

    .prologue
    .line 142
    const-string v1, "similar"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vending/SimilarAssetListActivity;->mAssetId:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/android/vending/AssetInfoActivity;->getReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 143
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/android/vending/SimilarAssetListActivity;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "originalPackage"

    iget-object v2, p0, Lcom/android/vending/SimilarAssetListActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 147
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected isAlwaysShowListHeaders()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Lcom/android/vending/BaseActivity$SnippetInitializer;

    invoke-virtual {p0}, Lcom/android/vending/SimilarAssetListActivity;->getAssetListAdapter()Lcom/android/vending/AssetItemAdapter;

    move-result-object v1

    new-instance v2, Lcom/android/vending/api/AssetService;

    iget-object v3, p0, Lcom/android/vending/SimilarAssetListActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/android/vending/BaseActivity$SnippetInitializer;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/AssetItemAdapter;Lcom/android/vending/api/AssetService;)V

    iput-object v0, p0, Lcom/android/vending/SimilarAssetListActivity;->mSnippetInit:Lcom/android/vending/BaseActivity$SnippetInitializer;

    .line 36
    invoke-super {p0}, Lcom/android/vending/AssetListActivity;->finishSetup()V

    .line 37
    invoke-direct {p0}, Lcom/android/vending/SimilarAssetListActivity;->processSearchIntent()V

    .line 39
    const v0, 0x7f040052

    invoke-static {v0, p0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/SimilarAssetListActivity;->mEmptyView:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/android/vending/SimilarAssetListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/SimilarAssetListActivity;->setEmptyView(Landroid/view/View;)V

    .line 41
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vending/SimilarAssetListActivity;->startSetupActionChain(Z)V

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLookupAssetsComplete()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 112
    const v1, 0x7f0800b3

    invoke-virtual {p0, v1}, Lcom/android/vending/SimilarAssetListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    const v1, 0x7f080041

    invoke-virtual {p0, v1}, Lcom/android/vending/SimilarAssetListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    const v1, 0x7f0800df

    invoke-virtual {p0, v1}, Lcom/android/vending/SimilarAssetListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-wide v1, p0, Lcom/android/vending/SimilarAssetListActivity;->mNumMatchingAssets:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/vending/SimilarAssetListActivity;->mEmptyView:Landroid/view/View;

    const v2, 0x7f080107

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    .local v0, titleView:Landroid/widget/TextView;
    const v1, 0x7f07018f

    invoke-virtual {p0, v1}, Lcom/android/vending/SimilarAssetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .end local v0           #titleView:Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/vending/SimilarAssetListActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/vending/SimilarAssetListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/vending/SimilarAssetListActivity$1;-><init>(Lcom/android/vending/SimilarAssetListActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/vending/SimilarAssetListActivity;->setIntent(Landroid/content/Intent;)V

    .line 59
    invoke-direct {p0}, Lcom/android/vending/SimilarAssetListActivity;->processSearchIntent()V

    .line 60
    invoke-virtual {p0}, Lcom/android/vending/SimilarAssetListActivity;->getLookupAssetsActionToRestart()Lcom/android/vending/BaseActivity$BaseAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/BaseActivity$BaseAction;->start()V

    .line 61
    return-void
.end method

.method protected setupContentView()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/SimilarAssetListActivity;->requestWindowFeature(I)Z

    .line 52
    const v0, 0x7f040059

    invoke-virtual {p0, v0}, Lcom/android/vending/SimilarAssetListActivity;->setContentView(I)V

    .line 53
    return-void
.end method
