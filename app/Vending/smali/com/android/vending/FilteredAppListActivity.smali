.class public Lcom/android/vending/FilteredAppListActivity;
.super Lcom/android/vending/AssetListActivity;
.source "FilteredAppListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/vending/PromotedAssetSwitcherAdapter$InitialLoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/FilteredAppListActivity$1;,
        Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;
    }
.end annotation


# instance fields
.field private mActivityPaused:Z

.field private mAssetsLookupComplete:Z

.field private mCarouselAction:Lcom/android/vending/GetPromotedBitmapsAction;

.field private mCategoryId:Ljava/lang/String;

.field private mEmptyPaddingHeaderView:Landroid/view/View;

.field private mHasMoreAssets:Z

.field private mNumAssetsBeforeRequest:I

.field private mPromoInitialLoadComplete:Z

.field private mPromotedAppViewSwitcher:Lcom/android/vending/PromotedAppViewSwitcher;

.field private mPromotedAssetIdToLoad:Ljava/lang/String;

.field private mPromotedAssetSwitcherAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

.field private mPromotedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRankingType:Ljava/lang/String;

.field protected mSortOrder:Lcom/android/vending/model/AssetRequest$SortOrderType;

.field private mViewFilter:Lcom/android/vending/model/AssetRequest$ViewFilterType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/android/vending/AssetListActivity;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/android/vending/FilteredAppListActivity;->mActivityPaused:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAssetIdToLoad:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/android/vending/FilteredAppListActivity;->mAssetsLookupComplete:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/vending/FilteredAppListActivity;->mPromoInitialLoadComplete:Z

    .line 303
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/FilteredAppListActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/vending/FilteredAppListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/vending/FilteredAppListActivity;)Lcom/android/vending/GetPromotedBitmapsAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mCarouselAction:Lcom/android/vending/GetPromotedBitmapsAction;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/vending/FilteredAppListActivity;Lcom/android/vending/GetPromotedBitmapsAction;)Lcom/android/vending/GetPromotedBitmapsAction;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/vending/FilteredAppListActivity;->mCarouselAction:Lcom/android/vending/GetPromotedBitmapsAction;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/vending/FilteredAppListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/FilteredAppListActivity;)Lcom/android/vending/PromotedAppViewSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAppViewSwitcher:Lcom/android/vending/PromotedAppViewSwitcher;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/vending/FilteredAppListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/vending/FilteredAppListActivity;->mPromoInitialLoadComplete:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/vending/FilteredAppListActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mEmptyPaddingHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/vending/FilteredAppListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/vending/FilteredAppListActivity;->showListView()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/vending/FilteredAppListActivity;)Lcom/android/vending/PromotedAssetSwitcherAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAssetSwitcherAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/vending/FilteredAppListActivity;Lcom/android/vending/PromotedAssetSwitcherAdapter;)Lcom/android/vending/PromotedAssetSwitcherAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAssetSwitcherAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/vending/FilteredAppListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAssetIdToLoad:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/vending/FilteredAppListActivity;)Lcom/android/vending/model/AssetRequest$ViewFilterType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mViewFilter:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    return-object v0
.end method

.method private static getSortOrder(Landroid/content/Intent;)Lcom/android/vending/model/AssetRequest$SortOrderType;
    .locals 2
    .parameter "intent"

    .prologue
    .line 192
    const-string v1, "sort"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, sortOrderParam:Ljava/lang/String;
    const-string v1, "popular"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    sget-object v1, Lcom/android/vending/model/AssetRequest$SortOrderType;->POPULAR:Lcom/android/vending/model/AssetRequest$SortOrderType;

    .line 198
    :goto_0
    return-object v1

    .line 195
    :cond_0
    const-string v1, "newest"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    sget-object v1, Lcom/android/vending/model/AssetRequest$SortOrderType;->NEWEST:Lcom/android/vending/model/AssetRequest$SortOrderType;

    goto :goto_0

    .line 198
    :cond_1
    sget-object v1, Lcom/android/vending/model/AssetRequest$SortOrderType;->POPULAR:Lcom/android/vending/model/AssetRequest$SortOrderType;

    goto :goto_0
.end method

.method private handlePromotedAppClick()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method private showListView()V
    .locals 5

    .prologue
    const v4, 0x7f0800df

    const v3, 0x7f080041

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 234
    iget-boolean v0, p0, Lcom/android/vending/FilteredAppListActivity;->mPromoInitialLoadComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vending/FilteredAppListActivity;->mAssetsLookupComplete:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0, v3}, Lcom/android/vending/FilteredAppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    invoke-virtual {p0, v4}, Lcom/android/vending/FilteredAppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/vending/FilteredAppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    invoke-virtual {p0, v4}, Lcom/android/vending/FilteredAppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected checkToLoadMore(II)V
    .locals 8
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"

    .prologue
    .line 248
    add-int v7, p1, p2

    .line 249
    .local v7, position:I
    if-nez v7, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v6

    .line 253
    .local v6, count:I
    int-to-long v0, v7

    int-to-long v2, v6

    const-wide/32 v4, 0x7fffffff

    invoke-static/range {v0 .. v5}, Lcom/android/vending/util/Util;->needLoadMore(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vending/FilteredAppListActivity;->mHasMoreAssets:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mAssetPageLoader:Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    invoke-virtual {v0}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->loadMore()V

    goto :goto_0
.end method

.method public getAssetRequest()Lcom/android/vending/model/AssetRequest;
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/vending/FilteredAppListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/vending/FilteredAppListActivity;->mNumAssetsBeforeRequest:I

    .line 204
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 205
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    iget-object v1, p0, Lcom/android/vending/FilteredAppListActivity;->mAssetType:Lcom/android/vending/model/Asset$AssetType;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setAssetType(Lcom/android/vending/model/Asset$AssetType;)V

    .line 206
    iget-object v1, p0, Lcom/android/vending/FilteredAppListActivity;->mSortOrder:Lcom/android/vending/model/AssetRequest$SortOrderType;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setSortOrder(Lcom/android/vending/model/AssetRequest$SortOrderType;)V

    .line 207
    iget-object v1, p0, Lcom/android/vending/FilteredAppListActivity;->mViewFilter:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setViewFilter(Lcom/android/vending/model/AssetRequest$ViewFilterType;)V

    .line 208
    iget v1, p0, Lcom/android/vending/FilteredAppListActivity;->mStartIndex:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setStartIndex(J)V

    .line 209
    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setNumEntries(J)V

    .line 210
    iget-object v1, p0, Lcom/android/vending/FilteredAppListActivity;->mCategoryId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/vending/FilteredAppListActivity;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setCategoryId(Ljava/lang/String;)V

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/vending/FilteredAppListActivity;->mRankingType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/vending/FilteredAppListActivity;->mRankingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setRankingType(Ljava/lang/String;)V

    .line 216
    :cond_1
    return-object v0
.end method

.method public getReferrerUri(I)Landroid/net/Uri;
    .locals 3
    .parameter "rowIndex"

    .prologue
    .line 436
    const-string v0, "filtered"

    invoke-virtual {p0}, Lcom/android/vending/FilteredAppListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "referrer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/android/vending/AssetInfoActivity;->getReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected isAlwaysShowListHeaders()Z
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public notifyInitialLoadComplete(Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;)V
    .locals 1
    .parameter "promotedAssetData"

    .prologue
    .line 290
    monitor-enter p0

    .line 293
    :try_start_0
    iget-boolean v0, p0, Lcom/android/vending/FilteredAppListActivity;->mActivityPaused:Z

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAppViewSwitcher:Lcom/android/vending/PromotedAppViewSwitcher;

    invoke-virtual {v0}, Lcom/android/vending/PromotedAppViewSwitcher;->startCycling()V

    .line 296
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/FilteredAppListActivity;->mPromoInitialLoadComplete:Z

    .line 300
    invoke-direct {p0}, Lcom/android/vending/FilteredAppListActivity;->showListView()V

    .line 301
    return-void

    .line 296
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 260
    invoke-super {p0, p1, p2, p3}, Lcom/android/vending/AssetListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 261
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAppViewSwitcher:Lcom/android/vending/PromotedAppViewSwitcher;

    if-ne p1, v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/vending/FilteredAppListActivity;->handlePromotedAppClick()V

    .line 174
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/vending/FilteredAppListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 97
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/AssetTypeData;->getAssetForMimeType(Ljava/lang/String;)Lcom/android/vending/AssetTypeData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/AssetTypeData;->getAssetType()Lcom/android/vending/model/Asset$AssetType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mAssetType:Lcom/android/vending/model/Asset$AssetType;

    .line 98
    invoke-static {v1}, Lcom/android/vending/FilteredAppListActivity;->getSortOrder(Landroid/content/Intent;)Lcom/android/vending/model/AssetRequest$SortOrderType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mSortOrder:Lcom/android/vending/model/AssetRequest$SortOrderType;

    .line 99
    const-string v4, "view_filter"

    sget-object v5, Lcom/android/vending/model/AssetRequest$ViewFilterType;->ALL:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    invoke-virtual {v5}, Lcom/android/vending/model/AssetRequest$ViewFilterType;->getValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 101
    .local v3, val:I
    invoke-static {v3}, Lcom/android/vending/model/AssetRequest$ViewFilterType;->valueOf(I)Lcom/android/vending/model/AssetRequest$ViewFilterType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mViewFilter:Lcom/android/vending/model/AssetRequest$ViewFilterType;

    .line 102
    const-string v4, "asset_category_id"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mCategoryId:Ljava/lang/String;

    .line 103
    const-string v4, "ranking_type"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mRankingType:Ljava/lang/String;

    .line 104
    iput-boolean v8, p0, Lcom/android/vending/FilteredAppListActivity;->mHasMoreAssets:Z

    .line 107
    new-instance v4, Lcom/android/vending/PromotedAppViewSwitcher;

    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/vending/PromotedAppViewSwitcher;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAppViewSwitcher:Lcom/android/vending/PromotedAppViewSwitcher;

    .line 108
    iget-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAppViewSwitcher:Lcom/android/vending/PromotedAppViewSwitcher;

    invoke-virtual {v4, p0}, Lcom/android/vending/PromotedAppViewSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAppViewSwitcher:Lcom/android/vending/PromotedAppViewSwitcher;

    invoke-virtual {v4, v7}, Lcom/android/vending/PromotedAppViewSwitcher;->setClickable(Z)V

    .line 112
    iget-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAppViewSwitcher:Lcom/android/vending/PromotedAppViewSwitcher;

    invoke-virtual {v4, v7}, Lcom/android/vending/PromotedAppViewSwitcher;->setFocusable(Z)V

    .line 113
    iget-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAppViewSwitcher:Lcom/android/vending/PromotedAppViewSwitcher;

    invoke-virtual {v4, v5, v9, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 121
    invoke-virtual {p0}, Lcom/android/vending/FilteredAppListActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f08003c

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, carousel:Landroid/view/View;
    instance-of v4, v0, Lcom/android/vending/velvet/PortraitOverlappingLayout;

    if-eqz v4, :cond_0

    .line 123
    check-cast v0, Lcom/android/vending/velvet/OverlappingLayout;

    .end local v0           #carousel:Landroid/view/View;
    iget-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAppViewSwitcher:Lcom/android/vending/PromotedAppViewSwitcher;

    invoke-virtual {v0, v4}, Lcom/android/vending/velvet/OverlappingLayout;->setCarouselPadder(Landroid/view/View;)V

    .line 125
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/vending/FilteredAppListActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mEmptyPaddingHeaderView:Landroid/view/View;

    .line 126
    iget-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mEmptyPaddingHeaderView:Landroid/view/View;

    const v5, 0x7f020083

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 127
    iget-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mEmptyPaddingHeaderView:Landroid/view/View;

    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity;->mEmptyPaddingHeaderView:Landroid/view/View;

    invoke-virtual {v4, v5, v9, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 132
    :cond_0
    invoke-super {p0}, Lcom/android/vending/AssetListActivity;->finishSetup()V

    .line 134
    new-instance v2, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;

    invoke-direct {v2, p0, p0}, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;-><init>(Lcom/android/vending/FilteredAppListActivity;Lcom/android/vending/BaseActivity;)V

    .line 135
    .local v2, startAction:Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;
    invoke-virtual {v2}, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->tryLoadFromCacheAndDisplay()V

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/vending/FilteredAppListActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 137
    if-nez p1, :cond_1

    move v4, v8

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/vending/FilteredAppListActivity;->startSetupActionChain(Z)V

    .line 138
    return-void

    :cond_1
    move v4, v7

    .line 137
    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAppViewSwitcher:Lcom/android/vending/PromotedAppViewSwitcher;

    if-ne p2, v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/android/vending/FilteredAppListActivity;->handlePromotedAppClick()V

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/vending/AssetListActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onLookupAssetsComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 221
    iget-object v1, p0, Lcom/android/vending/FilteredAppListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/android/vending/FilteredAppListActivity;->mNumAssetsBeforeRequest:I

    sub-int v0, v1, v2

    .line 222
    .local v0, assetsLoaded:I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/vending/FilteredAppListActivity;->mHasMoreAssets:Z

    .line 224
    iput-boolean v3, p0, Lcom/android/vending/FilteredAppListActivity;->mAssetsLookupComplete:Z

    .line 225
    invoke-direct {p0}, Lcom/android/vending/FilteredAppListActivity;->showListView()V

    .line 226
    return-void

    .line 222
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/vending/AssetListActivity;->onPause()V

    .line 156
    monitor-enter p0

    .line 157
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/vending/FilteredAppListActivity;->mActivityPaused:Z

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v1, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAppViewSwitcher:Lcom/android/vending/PromotedAppViewSwitcher;

    invoke-virtual {v1}, Lcom/android/vending/PromotedAppViewSwitcher;->stopCycling()V

    .line 162
    invoke-virtual {p0}, Lcom/android/vending/FilteredAppListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f08003d

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vending/velvet/CarouselView;

    .line 164
    .local v0, carouselView:Lcom/android/vending/velvet/CarouselView;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/android/vending/velvet/CarouselView;->reset()V

    .line 167
    :cond_0
    return-void

    .line 158
    .end local v0           #carouselView:Lcom/android/vending/velvet/CarouselView;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/vending/AssetListActivity;->onResume()V

    .line 143
    monitor-enter p0

    .line 144
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/vending/FilteredAppListActivity;->mActivityPaused:Z

    .line 145
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAppViewSwitcher:Lcom/android/vending/PromotedAppViewSwitcher;

    invoke-virtual {v0}, Lcom/android/vending/PromotedAppViewSwitcher;->startCycling()V

    .line 147
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mCarouselAction:Lcom/android/vending/GetPromotedBitmapsAction;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity;->mCarouselAction:Lcom/android/vending/GetPromotedBitmapsAction;

    invoke-virtual {v0}, Lcom/android/vending/GetPromotedBitmapsAction;->start()V

    .line 150
    :cond_0
    monitor-exit p0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected prepareRequest()V
    .locals 6

    .prologue
    .line 265
    invoke-super {p0}, Lcom/android/vending/AssetListActivity;->prepareRequest()V

    .line 269
    iget-object v3, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAssetIdToLoad:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 270
    new-instance v2, Lcom/android/vending/api/AssetService;

    iget-object v3, p0, Lcom/android/vending/FilteredAppListActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    .line 272
    .local v2, promoAssetService:Lcom/android/vending/api/AssetService;
    new-instance v1, Lcom/android/vending/api/GetImageService;

    iget-object v3, p0, Lcom/android/vending/FilteredAppListActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    iget-object v4, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAssetSwitcherAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    invoke-direct {v1, v3, v4}, Lcom/android/vending/api/GetImageService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/api/GetImageService$GetImageReceiver;)V

    .line 275
    .local v1, imageService:Lcom/android/vending/api/GetImageService;
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 276
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    iget-object v3, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAssetIdToLoad:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAssetIdToLoad:Ljava/lang/String;

    sget-object v4, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    const/4 v5, -0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/vending/api/GetImageService;->getImage(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 278
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/vending/model/AssetRequest;->setRetrieveExtendedInfo(Z)V

    .line 279
    iget-object v3, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAssetSwitcherAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    invoke-virtual {v2, v0, v3}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 281
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/vending/FilteredAppListActivity;->mPromotedAssetIdToLoad:Ljava/lang/String;

    .line 283
    .end local v0           #assetRequest:Lcom/android/vending/model/AssetRequest;
    .end local v1           #imageService:Lcom/android/vending/api/GetImageService;
    .end local v2           #promoAssetService:Lcom/android/vending/api/AssetService;
    :cond_0
    return-void
.end method
