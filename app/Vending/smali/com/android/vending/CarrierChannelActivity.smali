.class public Lcom/android/vending/CarrierChannelActivity;
.super Lcom/android/vending/AssetListActivity;
.source "CarrierChannelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;,
        Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;
    }
.end annotation


# instance fields
.field private mCarrierBanner:Landroid/widget/ImageView;

.field private mHasMoreAssets:Z

.field private mNumAssetsBeforeRequest:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/vending/AssetListActivity;-><init>()V

    .line 171
    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/CarrierChannelActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity;->mCarrierBanner:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/CarrierChannelActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/vending/CarrierChannelActivity;->mNumAssetsBeforeRequest:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/vending/CarrierChannelActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/vending/CarrierChannelActivity;->mNumAssetsBeforeRequest:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/vending/CarrierChannelActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/vending/CarrierChannelActivity;->mHasMoreAssets:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/vending/CarrierChannelActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/vending/CarrierChannelActivity;->showListView()V

    return-void
.end method

.method private showListView()V
    .locals 3

    .prologue
    .line 253
    const v1, 0x7f080041

    invoke-virtual {p0, v1}, Lcom/android/vending/CarrierChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, view:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 256
    const v1, 0x7f0800df

    invoke-virtual {p0, v1}, Lcom/android/vending/CarrierChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    return-void
.end method


# virtual methods
.method protected checkToLoadMore(II)V
    .locals 6
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"

    .prologue
    .line 245
    add-int v0, p1, p2

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/vending/CarrierChannelActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v2}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x7fffffff

    invoke-static/range {v0 .. v5}, Lcom/android/vending/util/Util;->needLoadMore(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vending/CarrierChannelActivity;->mHasMoreAssets:Z

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity;->mAssetPageLoader:Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    invoke-virtual {v0}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->loadMore()V

    .line 250
    :cond_0
    return-void
.end method

.method protected createPaginationAwareAction()Lcom/android/vending/AssetListActivity$PaginationAwareAction;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;

    invoke-direct {v0, p0, p0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;-><init>(Lcom/android/vending/CarrierChannelActivity;Lcom/android/vending/BaseActivity;)V

    return-object v0
.end method

.method public getAssetRequest()Lcom/android/vending/model/AssetRequest;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 97
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setRetrieveCarrierChannel(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/vending/CarrierChannelActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setStartIndex(J)V

    .line 99
    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setNumEntries(J)V

    .line 100
    return-object v0
.end method

.method public getReferrerUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "rowIndex"

    .prologue
    const/4 v1, 0x0

    .line 91
    const-string v0, "carrierchannel"

    invoke-static {v0, v1, v1, p1}, Lcom/android/vending/AssetInfoActivity;->getReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected isAlwaysShowListHeaders()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity;->mCarrierBanner:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    const-class v1, Lcom/android/vending/AssetBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/vending/CarrierChannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 39
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/vending/CarrierChannelActivity;->setupSlimTitleBar(Ljava/lang/CharSequence;Z)V

    .line 43
    const v2, 0x7f08011b

    invoke-virtual {p0, v2}, Lcom/android/vending/CarrierChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/vending/CarrierChannelActivity;->mCarrierBanner:Landroid/widget/ImageView;

    .line 44
    iget-object v2, p0, Lcom/android/vending/CarrierChannelActivity;->mCarrierBanner:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v2, 0x7f080043

    invoke-virtual {p0, v2}, Lcom/android/vending/CarrierChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 47
    .local v0, emptyListView:Landroid/widget/FrameLayout;
    const v2, 0x7f080044

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, emptyText:Landroid/widget/TextView;
    const v2, 0x7f07017d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 49
    iget-object v2, p0, Lcom/android/vending/CarrierChannelActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 51
    invoke-super {p0}, Lcom/android/vending/AssetListActivity;->finishSetup()V

    .line 53
    iget-object v2, p0, Lcom/android/vending/CarrierChannelActivity;->mAssetPageLoader:Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    check-cast v2, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;

    invoke-static {v2}, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->access$000(Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;)V

    .line 54
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/vending/CarrierChannelActivity;->startSetupActionChain(Z)V

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onLookupAssetsComplete()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/vending/AssetListActivity;->onRestart()V

    .line 67
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetItemAdapter;->reloadLocalAssetInfo(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected setupContentView()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f040028

    invoke-virtual {p0, v0}, Lcom/android/vending/CarrierChannelActivity;->setContentView(I)V

    .line 60
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 87
    return-void
.end method
