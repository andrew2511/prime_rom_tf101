.class public Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsAllReviewsViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;


# instance fields
.field private mReviewAdapter:Lcom/google/android/finsky/adapters/ReviewListAdapter;

.field private mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method

.method private detachAll()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/ReviewRequest;->detachAll()V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V
    .locals 9
    .parameter "view"
    .parameter "doc"

    .prologue
    const v8, 0x7f090024

    .line 37
    const v4, 0x7f090022

    const v5, 0x7f0b005c

    invoke-super {p0, p1, p2, v4, v5}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;II)V

    .line 39
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->detachAll()V

    .line 40
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, reviewUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mLayout:Landroid/view/View;

    const v5, 0x7f090023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .local v0, backButton:Landroid/widget/ImageView;
    new-instance v4, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder$1;-><init>(Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 57
    .local v2, reviewList:Landroid/widget/ListView;
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-static {v4, v3}, Lcom/google/android/finsky/model/ReviewRequest;->getReviewRequest(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)Lcom/google/android/finsky/model/ReviewRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    .line 58
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v4, p0}, Lcom/google/android/finsky/model/ReviewRequest;->setErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 59
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v4, p0}, Lcom/google/android/finsky/model/ReviewRequest;->attach(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 62
    new-instance v4, Lcom/google/android/finsky/adapters/ReviewListAdapter;

    iget-object v5, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v7, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/finsky/adapters/ReviewListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/model/ReviewRequest;)V

    iput-object v4, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewAdapter:Lcom/google/android/finsky/adapters/ReviewListAdapter;

    .line 63
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewAdapter:Lcom/google/android/finsky/adapters/ReviewListAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    new-instance v1, Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mLayout:Landroid/view/View;

    invoke-direct {v1, v4, v8, p0}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;ILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V

    .line 67
    .local v1, layoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;
    const/16 v4, 0x15e

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    .line 68
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->setLayoutSwitcher(Lcom/google/android/finsky/layout/LayoutSwitcher;)V

    .line 70
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v4}, Lcom/google/android/finsky/model/ReviewRequest;->hadRequestError()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->getLayoutSwitcher()Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v5}, Lcom/google/android/finsky/model/ReviewRequest;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v4}, Lcom/google/android/finsky/model/ReviewRequest;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->getLayoutSwitcher()Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v4}, Lcom/google/android/finsky/model/ReviewRequest;->startLoadItems()V

    goto :goto_0
.end method

.method public onDataChanged()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->getLayoutSwitcher()Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->isDataMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->getLayoutSwitcher()Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 98
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->onDestroyView()V

    .line 126
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->detachAll()V

    .line 127
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "message"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, errorMessage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->getLayoutSwitcher()Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->isDataMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-super {p0, p1, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/model/ReviewRequest;->setErrorMessage(Ljava/lang/String;)V

    .line 117
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewAdapter:Lcom/google/android/finsky/adapters/ReviewListAdapter;

    invoke-virtual {v1}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->triggerFooterErrorMode()V

    goto :goto_0
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mReviewRequest:Lcom/google/android/finsky/model/ReviewRequest;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/ReviewRequest;->retryLoadItems()V

    .line 135
    return-void
.end method
