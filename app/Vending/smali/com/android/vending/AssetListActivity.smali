.class public abstract Lcom/android/vending/AssetListActivity;
.super Lcom/android/vending/BaseActivity;
.source "AssetListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetListActivity$LookupAssetsAction;,
        Lcom/android/vending/AssetListActivity$PaginationAwareAction;
    }
.end annotation


# instance fields
.field protected mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

.field protected mAssetPageLoader:Lcom/android/vending/AssetListActivity$PaginationAwareAction;

.field protected mAssetService:Lcom/android/vending/api/AssetService;

.field protected mDisplayingFooterView:Z

.field protected mErrorFooter:Landroid/view/View;

.field private mErrorFooterClickListener:Landroid/view/View$OnClickListener;

.field protected mFooterView:Landroid/view/View;

.field protected mListView:Landroid/widget/ListView;

.field protected mLoadingFooter:Landroid/view/View;

.field protected mNoAssetsView:Landroid/widget/FrameLayout;

.field protected mNumMatchingAssets:J

.field private mOnListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field protected mStartIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 378
    new-instance v0, Lcom/android/vending/AssetListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/vending/AssetListActivity$2;-><init>(Lcom/android/vending/AssetListActivity;)V

    iput-object v0, p0, Lcom/android/vending/AssetListActivity;->mOnListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 389
    new-instance v0, Lcom/android/vending/AssetListActivity$3;

    invoke-direct {v0, p0}, Lcom/android/vending/AssetListActivity$3;-><init>(Lcom/android/vending/AssetListActivity;)V

    iput-object v0, p0, Lcom/android/vending/AssetListActivity;->mErrorFooterClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected checkToLoadMore(II)V
    .locals 0
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"

    .prologue
    .line 262
    return-void
.end method

.method protected createPaginationAwareAction()Lcom/android/vending/AssetListActivity$PaginationAwareAction;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/android/vending/AssetListActivity$LookupAssetsAction;

    invoke-direct {v0, p0}, Lcom/android/vending/AssetListActivity$LookupAssetsAction;-><init>(Lcom/android/vending/AssetListActivity;)V

    return-object v0
.end method

.method public finishSetup()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 127
    invoke-virtual {p0}, Lcom/android/vending/AssetListActivity;->isAlwaysShowListHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mNoAssetsView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    new-instance v1, Lcom/android/vending/AssetListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/vending/AssetListActivity$1;-><init>(Lcom/android/vending/AssetListActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetItemAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 141
    :cond_0
    return-void
.end method

.method protected getAssetListAdapter()Lcom/android/vending/AssetItemAdapter;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcom/android/vending/AssetItemAdapter;

    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public abstract getAssetRequest()Lcom/android/vending/model/AssetRequest;
.end method

.method protected getLoadingString()I
    .locals 1

    .prologue
    .line 148
    const v0, 0x7f070031

    return v0
.end method

.method protected getLookupAssetsActionToRestart()Lcom/android/vending/BaseActivity$BaseAction;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mAssetPageLoader:Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    invoke-virtual {v0}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mAssetPageLoader:Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    invoke-virtual {v0}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->cancel()V

    .line 277
    invoke-virtual {p0}, Lcom/android/vending/AssetListActivity;->createPaginationAwareAction()Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetListActivity;->mAssetPageLoader:Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/AssetListActivity;->showInitialAssetsLoadIndicator()V

    .line 282
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetItemAdapter;->clearAllAssets()V

    .line 283
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetItemAdapter;->notifyDataSetInvalidated()V

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/AssetListActivity;->mStartIndex:I

    .line 286
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mAssetPageLoader:Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    return-object v0
.end method

.method protected hideErrorFooter()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 246
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mLoadingFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mErrorFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-boolean v0, p0, Lcom/android/vending/AssetListActivity;->mDisplayingFooterView:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/AssetListActivity;->mDisplayingFooterView:Z

    .line 252
    :cond_0
    return-void
.end method

.method protected hideLoadingFooter()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 228
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mLoadingFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mErrorFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-boolean v0, p0, Lcom/android/vending/AssetListActivity;->mDisplayingFooterView:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/AssetListActivity;->mDisplayingFooterView:Z

    .line 234
    :cond_0
    return-void
.end method

.method protected abstract isAlwaysShowListHeaders()Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0, v5}, Lcom/android/vending/AssetListActivity;->requestWindowFeature(I)Z

    .line 77
    new-instance v1, Lcom/android/vending/api/AssetService;

    iget-object v2, p0, Lcom/android/vending/AssetListActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    iput-object v1, p0, Lcom/android/vending/AssetListActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    .line 79
    invoke-virtual {p0}, Lcom/android/vending/AssetListActivity;->setupContentView()V

    .line 80
    const v1, 0x7f0800e0

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/vending/AssetListActivity;->getLoadingString()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 81
    const v1, 0x7f080042

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/vending/AssetListActivity;->mListView:Landroid/widget/ListView;

    .line 83
    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 85
    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/vending/AssetListActivity;->mNoAssetsView:Landroid/widget/FrameLayout;

    .line 86
    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/vending/AssetListActivity;->mNoAssetsView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 88
    const v1, 0x7f040016

    invoke-static {v1, p0, v6}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/AssetListActivity;->mFooterView:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/vending/AssetListActivity;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v2, v6, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 90
    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mFooterView:Landroid/view/View;

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/AssetListActivity;->mLoadingFooter:Landroid/view/View;

    .line 91
    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mFooterView:Landroid/view/View;

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/AssetListActivity;->mErrorFooter:Landroid/view/View;

    .line 96
    invoke-virtual {p0}, Lcom/android/vending/AssetListActivity;->getAssetListAdapter()Lcom/android/vending/AssetItemAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/AssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 97
    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mErrorFooter:Landroid/view/View;

    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 100
    .local v0, retryButton:Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mErrorFooterClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/vending/AssetListActivity;->mOnListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 104
    iput v4, p0, Lcom/android/vending/AssetListActivity;->mStartIndex:I

    .line 105
    invoke-virtual {p0}, Lcom/android/vending/AssetListActivity;->createPaginationAwareAction()Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/AssetListActivity;->mAssetPageLoader:Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    .line 106
    invoke-virtual {p0}, Lcom/android/vending/AssetListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/AssetTypeData;->getAssetForMimeType(Ljava/lang/String;)Lcom/android/vending/AssetTypeData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/AssetTypeData;->getAssetType()Lcom/android/vending/model/Asset$AssetType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetListActivity;->setAssetType(Lcom/android/vending/model/Asset$AssetType;)V

    .line 107
    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mAssetPageLoader:Lcom/android/vending/AssetListActivity$PaginationAwareAction;

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetListActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 108
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 165
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 166
    .local v0, asset:Lcom/android/vending/model/Asset;
    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {v0, p0, p3}, Lcom/android/vending/model/Asset;->getViewInfoIntent(Lcom/android/vending/BaseActivity;I)Landroid/content/Intent;

    move-result-object v1

    .line 171
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/vending/AssetListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public abstract onLookupAssetsComplete()V
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/vending/BaseActivity;->onRestart()V

    .line 156
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetItemAdapter;->reloadLocalAssetInfo(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method protected prepareRequest()V
    .locals 3

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/vending/AssetListActivity;->getAssetRequest()Lcom/android/vending/model/AssetRequest;

    move-result-object v0

    .line 375
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    iget-object v2, p0, Lcom/android/vending/AssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, v0, v2}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 376
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2
    .parameter "emptyView"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mNoAssetsView:Landroid/widget/FrameLayout;

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mNoAssetsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 180
    return-void
.end method

.method protected setupContentView()V
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f040015

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetListActivity;->setContentView(I)V

    .line 120
    return-void
.end method

.method protected showErrorFooter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mLoadingFooter:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mErrorFooter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-boolean v0, p0, Lcom/android/vending/AssetListActivity;->mDisplayingFooterView:Z

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mFooterView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/AssetListActivity;->mDisplayingFooterView:Z

    .line 243
    :cond_0
    return-void
.end method

.method protected showInitialAssetsLoadIndicator()V
    .locals 3

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/vending/AssetListActivity;->isAlwaysShowListHeaders()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/vending/AssetListActivity;->showLoadingFooter()V

    .line 302
    :goto_0
    return-void

    .line 298
    :cond_0
    const v1, 0x7f080041

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 299
    .local v0, view:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    const v1, 0x7f0800df

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showLoadingFooter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/vending/AssetListActivity;->isAlwaysShowListHeaders()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mLoadingFooter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mErrorFooter:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-boolean v0, p0, Lcom/android/vending/AssetListActivity;->mDisplayingFooterView:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vending/AssetListActivity;->mFooterView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/AssetListActivity;->mDisplayingFooterView:Z

    goto :goto_0
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 1
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/vending/AssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0, p1}, Lcom/android/vending/AssetItemAdapter;->reloadLocalAssetInfo(Ljava/lang/String;)V

    .line 267
    return-void
.end method
