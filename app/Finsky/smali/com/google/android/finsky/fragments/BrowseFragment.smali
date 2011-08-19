.class public Lcom/google/android/finsky/fragments/BrowseFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "BrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/PageFragment",
        "<",
        "Lcom/google/android/finsky/api/model/DfeBrowse;",
        ">;"
    }
.end annotation


# instance fields
.field private mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

.field private final mBucketListViewBinder:Lcom/google/android/finsky/fragments/BrowseContentViewBinder;

.field private final mCategoriesBinder:Lcom/google/android/finsky/fragments/CategoriesViewBinder;

.field private mContentListData:Lcom/google/android/finsky/api/model/DfeList;

.field private mFinskyActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

.field private final mPromoBinder:Lcom/google/android/finsky/fragments/PromoViewBinder;

.field private mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

.field private final mSingleBucketViewBinder:Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    .line 27
    new-instance v0, Lcom/google/android/finsky/fragments/PromoViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/PromoViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mPromoBinder:Lcom/google/android/finsky/fragments/PromoViewBinder;

    .line 28
    new-instance v0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/CategoriesViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mCategoriesBinder:Lcom/google/android/finsky/fragments/CategoriesViewBinder;

    .line 29
    new-instance v0, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBucketListViewBinder:Lcom/google/android/finsky/fragments/BrowseContentViewBinder;

    .line 30
    new-instance v0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mSingleBucketViewBinder:Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;

    return-void
.end method

.method private getContentListData()Lcom/google/android/finsky/api/model/DfeList;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->buildContentList()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    goto :goto_0
.end method

.method private getPromoListData()Lcom/google/android/finsky/api/model/DfeList;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasPromotionalItems()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->buildPromoList()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    goto :goto_0
.end method

.method private isDataReady()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->getContentListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasPromotionalItems()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMultiBucket()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->getContentListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    .line 87
    .local v0, listData:Lcom/google/android/finsky/api/model/DfeList;
    if-nez v0, :cond_0

    move v1, v2

    .line 90
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v1

    if-le v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/android/finsky/fragments/BrowseFragment;
    .locals 3
    .parameter "url"

    .prologue
    .line 36
    new-instance v1, Lcom/google/android/finsky/fragments/BrowseFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/fragments/BrowseFragment;-><init>()V

    .line 37
    .local v1, fragment:Lcom/google/android/finsky/fragments/BrowseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "finsky.PageFragment.url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/fragments/BrowseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v1
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f040023

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->getFinskyActionBar()Lcom/google/android/finsky/layout/FinskyActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mFinskyActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mUrl:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeBrowse;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Lcom/google/android/finsky/analytics/Analytics;)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mCategoriesBinder:Lcom/google/android/finsky/fragments/CategoriesViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mFinskyActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/FinskyActionBar;->getChannelToLoad()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->setData(Lcom/google/android/finsky/api/model/DfeBrowse;I)V

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->switchToLoading()V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->requestData()V

    .line 75
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/PageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, result:Landroid/view/View;
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->isDataReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->rebindViews()V

    .line 56
    :cond_0
    return-object v0
.end method

.method public onDataChanged()V
    .locals 3

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->getContentListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    .line 160
    .local v0, listData:Lcom/google/android/finsky/api/model/DfeList;
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->isMultiBucket()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBucketListViewBinder:Lcom/google/android/finsky/fragments/BrowseContentViewBinder;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->setData(Lcom/google/android/finsky/api/model/DfeList;)V

    .line 166
    :goto_0
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v1

    .line 167
    .local v1, promoData:Lcom/google/android/finsky/api/model/DfeList;
    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mPromoBinder:Lcom/google/android/finsky/fragments/PromoViewBinder;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/fragments/PromoViewBinder;->setData(Lcom/google/android/finsky/api/model/DfeList;)V

    .line 168
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDataChanged()V

    .line 172
    .end local v0           #listData:Lcom/google/android/finsky/api/model/DfeList;
    .end local v1           #promoData:Lcom/google/android/finsky/api/model/DfeList;
    :goto_1
    return-void

    .line 163
    .restart local v0       #listData:Lcom/google/android/finsky/api/model/DfeList;
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mSingleBucketViewBinder:Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->setData(Lcom/google/android/finsky/api/model/BucketedList;)V

    goto :goto_0

    .line 170
    .end local v0           #listData:Lcom/google/android/finsky/api/model/DfeList;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->requestData()V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mPromoBinder:Lcom/google/android/finsky/fragments/PromoViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PromoViewBinder;->onDestroyView()V

    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mSingleBucketViewBinder:Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->onDestroyView()V

    .line 153
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mPromoBinder:Lcom/google/android/finsky/fragments/PromoViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/PromoViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mCategoriesBinder:Lcom/google/android/finsky/fragments/CategoriesViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBucketListViewBinder:Lcom/google/android/finsky/fragments/BrowseContentViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mSingleBucketViewBinder:Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 83
    return-void
.end method

.method protected rebindViews()V
    .locals 5

    .prologue
    .line 131
    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mFinskyActionBar:Lcom/google/android/finsky/layout/FinskyActionBar;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeBrowse;->getBreadcrumbList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/FinskyActionBar;->setupBreadcrumbs(Ljava/util/List;)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->switchToData()V

    .line 134
    iget-object v3, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mPromoBinder:Lcom/google/android/finsky/fragments/PromoViewBinder;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mDataView:Landroid/view/ViewGroup;

    const v4, 0x7f09005e

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Lcom/google/android/finsky/fragments/PromoViewBinder;->bind(Landroid/view/ViewGroup;)V

    .line 135
    iget-object v3, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mCategoriesBinder:Lcom/google/android/finsky/fragments/CategoriesViewBinder;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mDataView:Landroid/view/ViewGroup;

    const v4, 0x7f090061

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->bind(Landroid/view/ViewGroup;)V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 138
    .local v1, rows:I
    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasCategories()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v0, v2

    .line 141
    .local v0, columnsPerBucket:I
    :goto_0
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->isMultiBucket()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mBucketListViewBinder:Lcom/google/android/finsky/fragments/BrowseContentViewBinder;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mDataView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->bind(Landroid/view/ViewGroup;II)V

    .line 146
    :goto_1
    return-void

    .line 138
    .end local v0           #columnsPerBucket:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 144
    .restart local v0       #columnsPerBucket:I
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mSingleBucketViewBinder:Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BrowseFragment;->mDataView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->bind(Landroid/view/ViewGroup;I)V

    goto :goto_1
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->isDataReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->rebindViews()V

    .line 111
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->getContentListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    .line 101
    .local v0, list:Lcom/google/android/finsky/api/model/DfeList;
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->clearTransientState()V

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->clearTransientState()V

    .line 109
    :cond_2
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    goto :goto_0
.end method

.method protected requestData()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->getContentListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    .line 116
    .local v0, list:Lcom/google/android/finsky/api/model/DfeList;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BrowseFragment;->getPromoListData()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 123
    :cond_1
    return-void
.end method
