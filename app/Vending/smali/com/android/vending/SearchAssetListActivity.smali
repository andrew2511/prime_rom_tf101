.class public Lcom/android/vending/SearchAssetListActivity;
.super Lcom/android/vending/AssetListActivity;
.source "SearchAssetListActivity.java"


# instance fields
.field private mCorrectedSearchQuery:Ljava/lang/String;

.field private mCorrectedTotalResultCount:J

.field private mEmptyView:Landroid/view/View;

.field private mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/vending/AssetListActivity;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vending/SearchAssetListActivity;->mCorrectedSearchQuery:Ljava/lang/String;

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/vending/SearchAssetListActivity;->mCorrectedTotalResultCount:J

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    return-void
.end method

.method private processSearchIntent()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 71
    const v7, 0x7f07018c

    invoke-virtual {p0, v7}, Lcom/android/vending/SearchAssetListActivity;->setTitle(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/vending/SearchAssetListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, intent:Landroid/content/Intent;
    iput-object v8, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    .line 77
    const/4 v5, 0x0

    .line 78
    .local v5, referrer:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 79
    .local v1, intentData:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 80
    invoke-static {v1}, Lcom/android/vending/util/Util;->getQueryFromSearchUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    .line 81
    invoke-static {v1}, Lcom/android/vending/util/Util;->getReferrerFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 83
    :cond_0
    iget-object v7, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 85
    const-string v7, "query"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    .line 87
    :cond_1
    iget-object v7, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 88
    iget-object v7, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    .line 91
    :cond_2
    iget-object v7, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 93
    invoke-virtual {p0, v8}, Lcom/android/vending/SearchAssetListActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 96
    if-eqz v1, :cond_4

    .line 97
    const v7, 0x7f070194

    invoke-virtual {p0, v7}, Lcom/android/vending/SearchAssetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, title:Ljava/lang/String;
    const v7, 0x7f070195

    invoke-virtual {p0, v7}, Lcom/android/vending/SearchAssetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, message:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x1

    invoke-virtual {p0, v6, v2, v7}, Lcom/android/vending/SearchAssetListActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    .end local v2           #message:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 100
    :cond_4
    const v7, 0x7f070037

    invoke-virtual {p0, v7}, Lcom/android/vending/SearchAssetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 101
    .restart local v6       #title:Ljava/lang/String;
    const v7, 0x7f070039

    invoke-virtual {p0, v7}, Lcom/android/vending/SearchAssetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #message:Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v2           #message:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_3

    .line 105
    iget-object v7, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    const-string v8, "pname:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 106
    .local v4, pnameIndex:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_3

    .line 107
    iget-object v7, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    add-int/lit8 v8, v4, 0x6

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/SearchAssetListActivity;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v7

    invoke-virtual {v7, v3, v5}, Lcom/android/vending/VendingApplication;->addPackageReferrer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected checkToLoadMore(II)V
    .locals 7
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/vending/SearchAssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v6

    .line 125
    .local v6, count:I
    add-int v0, p1, p2

    int-to-long v0, v0

    int-to-long v2, v6

    iget-wide v4, p0, Lcom/android/vending/SearchAssetListActivity;->mNumMatchingAssets:J

    invoke-static/range {v0 .. v5}, Lcom/android/vending/util/Util;->needLoadMore(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/vending/SearchAssetListActivity;->mAssetPageLoader:Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    invoke-virtual {v0}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->loadMore()V

    .line 128
    :cond_0
    return-void
.end method

.method protected getAssetListAdapter()Lcom/android/vending/AssetItemAdapter;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Lcom/android/vending/SearchAssetItemAdapter;

    iget-object v1, p0, Lcom/android/vending/SearchAssetListActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/SearchAssetItemAdapter;-><init>(Lcom/android/vending/SearchAssetListActivity;Landroid/os/Handler;)V

    return-object v0
.end method

.method public getAssetRequest()Lcom/android/vending/model/AssetRequest;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 116
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    iget-object v1, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setQuery(Ljava/lang/String;)V

    .line 117
    iget v1, p0, Lcom/android/vending/SearchAssetListActivity;->mStartIndex:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setStartIndex(J)V

    .line 118
    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setNumEntries(J)V

    .line 119
    return-object v0
.end method

.method public getCorrectedQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/vending/SearchAssetListActivity;->mCorrectedSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrectedTotalResultCount()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/android/vending/SearchAssetListActivity;->mCorrectedTotalResultCount:J

    return-wide v0
.end method

.method protected getLoadingString()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f07018c

    return v0
.end method

.method public getNumMatchingAssets()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/android/vending/SearchAssetListActivity;->mNumMatchingAssets:J

    return-wide v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrerUri(I)Landroid/net/Uri;
    .locals 12
    .parameter "rowIndex"

    .prologue
    const/4 v11, 0x1

    .line 227
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/vending/VendingApplication$ApiClientContext;->getUserLocale()Ljava/util/Locale;

    move-result-object v5

    .line 230
    .local v5, locale:Ljava/util/Locale;
    iget-object v7, p0, Lcom/android/vending/SearchAssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    check-cast v7, Lcom/android/vending/SearchAssetItemAdapter;

    .line 231
    .local v7, searchAssetAdapter:Lcom/android/vending/SearchAssetItemAdapter;
    invoke-virtual {v7, p1}, Lcom/android/vending/SearchAssetItemAdapter;->getItemViewType(I)I

    move-result v4

    .line 233
    .local v4, itemViewType:I
    move v6, p1

    .line 234
    .local v6, origRowIndex:I
    if-ne v4, v11, :cond_0

    .line 236
    add-int/lit8 p1, p1, -0x1

    .line 237
    invoke-virtual {v7}, Lcom/android/vending/SearchAssetItemAdapter;->getCorrectedAssetsCount()I

    move-result v1

    .line 238
    .local v1, correctedAssetsCount:I
    if-lez v1, :cond_0

    if-lt p1, v1, :cond_0

    .line 240
    sub-int v8, p1, v1

    sub-int p1, v8, v11

    .line 241
    invoke-virtual {v7}, Lcom/android/vending/SearchAssetItemAdapter;->hasCorrectedSectionFooterView()Z

    move-result v2

    .line 243
    .local v2, hasCorrectedSectionFooter:Z
    if-eqz v2, :cond_0

    .line 244
    add-int/lit8 p1, p1, -0x1

    .line 250
    .end local v1           #correctedAssetsCount:I
    .end local v2           #hasCorrectedSectionFooter:Z
    :cond_0
    const-string v8, "search"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    invoke-static {v8, v9, v10, p1}, Lcom/android/vending/AssetInfoActivity;->getReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 251
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v8, "hl"

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 253
    iget-object v8, p0, Lcom/android/vending/SearchAssetListActivity;->mCorrectedSearchQuery:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 254
    const-string v8, "correctedQuery"

    iget-object v9, p0, Lcom/android/vending/SearchAssetListActivity;->mCorrectedSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 257
    :cond_1
    if-ne v4, v11, :cond_2

    .line 258
    invoke-virtual {v7}, Lcom/android/vending/SearchAssetItemAdapter;->getCorrectedAssetsCount()I

    move-result v1

    .line 259
    .restart local v1       #correctedAssetsCount:I
    if-lez v1, :cond_3

    if-gt v6, v1, :cond_3

    move v3, v11

    .line 261
    .local v3, isClickOnCorrectedResult:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 263
    const-string v8, "corrected"

    const-string v9, "true"

    invoke-virtual {v0, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 267
    .end local v1           #correctedAssetsCount:I
    .end local v3           #isClickOnCorrectedResult:Z
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    return-object v8

    .line 259
    .restart local v1       #correctedAssetsCount:I
    :cond_3
    const/4 v8, 0x0

    move v3, v8

    goto :goto_0
.end method

.method protected isAlwaysShowListHeaders()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f07018b

    invoke-virtual {p0, v0}, Lcom/android/vending/SearchAssetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/SearchAssetListActivity;->setupSlimTitleBar(Ljava/lang/CharSequence;Z)V

    .line 44
    invoke-virtual {p0}, Lcom/android/vending/SearchAssetListActivity;->finishSetup()V

    .line 45
    invoke-direct {p0}, Lcom/android/vending/SearchAssetListActivity;->processSearchIntent()V

    .line 46
    const v0, 0x7f040051

    invoke-static {v0, p0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/SearchAssetListActivity;->mEmptyView:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/android/vending/SearchAssetListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/SearchAssetListActivity;->setEmptyView(Landroid/view/View;)V

    .line 48
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vending/SearchAssetListActivity;->startSetupActionChain(Z)V

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/vending/SearchAssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    check-cast v0, Lcom/android/vending/SearchAssetItemAdapter;

    invoke-virtual {v0, p3}, Lcom/android/vending/SearchAssetItemAdapter;->getItemViewType(I)I

    move-result v0

    .line 202
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    invoke-virtual {p0}, Lcom/android/vending/SearchAssetListActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/vending/SearchAssetListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 206
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v1, "query"

    iget-object v2, p0, Lcom/android/vending/SearchAssetListActivity;->mCorrectedSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/vending/SearchAssetListActivity;->startActivity(Landroid/content/Intent;)V

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/vending/AssetListActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onLookupAssetsComplete()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 151
    const v6, 0x7f08010c

    invoke-virtual {p0, v6}, Lcom/android/vending/SearchAssetListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 152
    .local v2, mainContentView:Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 153
    const v6, 0x7f080041

    invoke-virtual {p0, v6}, Lcom/android/vending/SearchAssetListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 154
    const v6, 0x7f0800df

    invoke-virtual {p0, v6}, Lcom/android/vending/SearchAssetListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-wide v6, p0, Lcom/android/vending/SearchAssetListActivity;->mNumMatchingAssets:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_0

    .line 157
    iget-object v6, p0, Lcom/android/vending/SearchAssetListActivity;->mEmptyView:Landroid/view/View;

    const v7, 0x7f080107

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 158
    .local v3, titleView:Landroid/widget/TextView;
    const v6, 0x7f07018e

    invoke-virtual {p0, v6}, Lcom/android/vending/SearchAssetListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .end local v3           #titleView:Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/android/vending/SearchAssetListActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    invoke-virtual {v6}, Lcom/android/vending/api/AssetService;->getCorrectedSearchQuery()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, correctedQuery:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 166
    iput-object v1, p0, Lcom/android/vending/SearchAssetListActivity;->mCorrectedSearchQuery:Ljava/lang/String;

    .line 169
    :cond_1
    iget-object v6, p0, Lcom/android/vending/SearchAssetListActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    invoke-virtual {v6}, Lcom/android/vending/api/AssetService;->getNumTotalCorrectedAssets()J

    move-result-wide v4

    .line 170
    .local v4, totalCorrectedAssets:J
    cmp-long v6, v4, v10

    if-ltz v6, :cond_2

    .line 171
    iput-wide v4, p0, Lcom/android/vending/SearchAssetListActivity;->mCorrectedTotalResultCount:J

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/android/vending/SearchAssetListActivity;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/vending/VendingApplication;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v6

    iget-object v7, p0, Lcom/android/vending/SearchAssetListActivity;->mQuery:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v6, p0, Lcom/android/vending/SearchAssetListActivity;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/vending/SearchAssetListActivity$1;

    invoke-direct {v7, p0}, Lcom/android/vending/SearchAssetListActivity$1;-><init>(Lcom/android/vending/SearchAssetListActivity;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    iget-object v0, p0, Lcom/android/vending/SearchAssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    check-cast v0, Lcom/android/vending/SearchAssetItemAdapter;

    .line 186
    .local v0, adapter:Lcom/android/vending/SearchAssetItemAdapter;
    sget-object v6, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Lcom/android/vending/SearchAssetItemAdapter;->loadBitmapsForCorrectedResults(Lcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 188
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/vending/SearchAssetListActivity;->setIntent(Landroid/content/Intent;)V

    .line 61
    invoke-direct {p0}, Lcom/android/vending/SearchAssetListActivity;->processSearchIntent()V

    .line 62
    invoke-virtual {p0}, Lcom/android/vending/SearchAssetListActivity;->getLookupAssetsActionToRestart()Lcom/android/vending/BaseActivity$BaseAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/BaseActivity$BaseAction;->start()V

    .line 63
    return-void
.end method

.method protected setupContentView()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/SearchAssetListActivity;->requestWindowFeature(I)Z

    .line 54
    const v0, 0x7f040053

    invoke-virtual {p0, v0}, Lcom/android/vending/SearchAssetListActivity;->setContentView(I)V

    .line 55
    return-void
.end method
