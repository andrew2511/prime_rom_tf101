.class public Lcom/google/android/finsky/fragments/SearchFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "SearchFragment.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/PageFragment",
        "<",
        "Lcom/google/android/finsky/api/model/DfeSearch;",
        ">;",
        "Lcom/google/android/finsky/api/model/OnDataChangedListener;"
    }
.end annotation


# instance fields
.field private final mAggregatedSearchResultsBinder:Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;

.field private mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

.field private final mSearchResultsBinder:Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    .line 21
    new-instance v0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchResultsBinder:Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;

    .line 23
    new-instance v0, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mAggregatedSearchResultsBinder:Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;

    return-void
.end method

.method private isDataReady()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/android/finsky/fragments/SearchFragment;
    .locals 3
    .parameter "url"

    .prologue
    .line 27
    new-instance v1, Lcom/google/android/finsky/fragments/SearchFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/fragments/SearchFragment;-><init>()V

    .line 28
    .local v1, fragment:Lcom/google/android/finsky/fragments/SearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "finsky.PageFragment.url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/fragments/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v1
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f040041

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/google/android/finsky/api/model/DfeSearch;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeSearch;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mAggregatedSearchResultsBinder:Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->setData(Lcom/google/android/finsky/api/model/DfeSearch;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchResultsBinder:Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->setData(Lcom/google/android/finsky/api/model/BucketedList;)V

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/SearchFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/SearchFragment;->switchToLoading()V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/SearchFragment;->requestData()V

    .line 69
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/PageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, result:Landroid/view/View;
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/SearchFragment;->isDataReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/SearchFragment;->rebindViews()V

    .line 50
    :cond_0
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchResultsBinder:Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->onDestroyView()V

    .line 113
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mAggregatedSearchResultsBinder:Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchResultsBinder:Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 75
    return-void
.end method

.method protected rebindViews()V
    .locals 4

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 98
    .local v1, rows:I
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 99
    .local v0, columns:I
    iget-object v2, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeSearch;->isAggregateResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mAggregatedSearchResultsBinder:Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mDataView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->bind(Landroid/view/ViewGroup;II)V

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 107
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchResultsBinder:Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mDataView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->bind(Landroid/view/ViewGroup;I)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/SearchFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/SearchFragment;->rebindViews()V

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->clearTransientState()V

    .line 86
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    goto :goto_0
.end method

.method protected requestData()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->startLoadItems()V

    .line 93
    return-void
.end method
