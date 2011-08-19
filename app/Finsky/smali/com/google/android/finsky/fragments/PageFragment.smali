.class public abstract Lcom/google/android/finsky/fragments/PageFragment;
.super Landroid/support/v4/app/Fragment;
.source "PageFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/finsky/api/model/DfeModel;",
        ">",
        "Landroid/support/v4/app/Fragment;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;",
        "Lcom/google/android/finsky/api/model/OnDataChangedListener;"
    }
.end annotation


# instance fields
.field protected mActivity:Lcom/google/android/finsky/activities/MainActivity;

.field protected mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field protected mContext:Landroid/content/Context;

.field protected mDataView:Landroid/view/ViewGroup;

.field protected mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

.field protected mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, this:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<TT;>;"
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getLayoutRes()I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 86
    .local p0, this:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/MainActivity;

    .line 89
    .local v0, activity:Lcom/google/android/finsky/activities/MainActivity;
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eq v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/MainActivity;

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    .line 91
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mContext:Landroid/content/Context;

    .line 92
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/MainActivity;->getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 93
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/MainActivity;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 94
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/MainActivity;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onInitViewBinders()V

    .line 97
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 53
    .local p0, this:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.PageFragment.url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mUrl:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .local p0, this:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<TT;>;"
    const v2, 0x7f090028

    .line 66
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getLayoutRes()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDataView:Landroid/view/ViewGroup;

    .line 70
    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher;

    const v3, 0x7f09007c

    const v4, 0x7f09007d

    const/4 v6, 0x2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;IIILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;I)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    .line 74
    return-object v1
.end method

.method public onDataChanged()V
    .locals 1

    .prologue
    .line 133
    .local p0, this:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->switchToData()V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->rebindViews()V

    .line 137
    :cond_0
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "message"

    .prologue
    .line 167
    .local p0, this:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<TT;>;"
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, errorMessage:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/fragments/PageFragment;->switchToError(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method protected abstract onInitViewBinders()V
.end method

.method public onRetry()V
    .locals 0

    .prologue
    .line 117
    .local p0, this:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    .line 118
    return-void
.end method

.method protected abstract rebindViews()V
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 112
    .local p0, this:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->requestData()V

    .line 113
    return-void
.end method

.method protected abstract requestData()V
.end method

.method protected switchToBlank()V
    .locals 1

    .prologue
    .line 148
    .local p0, this:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToBlankMode()V

    .line 149
    return-void
.end method

.method protected switchToData()V
    .locals 1

    .prologue
    .line 162
    .local p0, this:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 163
    return-void
.end method

.method protected switchToError(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 158
    .local p0, this:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method protected switchToLoading()V
    .locals 2

    .prologue
    .line 154
    .local p0, this:Lcom/google/android/finsky/fragments/PageFragment;,"Lcom/google/android/finsky/fragments/PageFragment<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    .line 155
    return-void
.end method
