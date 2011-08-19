.class public Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsReviewsViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/DetailsViewBinder;",
        "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
        ">;",
        "Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;"
    }
.end annotation


# instance fields
.field private mReviewList:Landroid/widget/LinearLayout;

.field private mReviewsUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method

.method private loadReviews()V
    .locals 6

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mReviewsUrl:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x5

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->getReviews(Ljava/lang/String;IILcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 78
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V
    .locals 6
    .parameter "view"
    .parameter "doc"

    .prologue
    const v5, 0x7f090030

    const v4, 0x7f090026

    const/4 v3, 0x0

    .line 41
    const v1, 0x7f090022

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/CorpusMetadata;->getReviewsHeaderStringId(I)I

    move-result v2

    invoke-super {p0, p1, p2, v1, v2}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;II)V

    .line 44
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mReviewsUrl:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mReviewsUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mReviewList:Landroid/widget/LinearLayout;

    .line 56
    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mLayout:Landroid/view/View;

    invoke-direct {v0, v1, v5, p0}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;ILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V

    .line 57
    .local v0, layoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->setLayoutSwitcher(Lcom/google/android/finsky/layout/LayoutSwitcher;)V

    .line 58
    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    .line 61
    const v1, 0x7f0b006d

    invoke-virtual {p0, v4, v3, v1}, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->setButtonVisibility(III)V

    .line 62
    new-instance v1, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder$1;-><init>(Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;)V

    invoke-virtual {p0, v4, v1}, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->setButtonClickListener(ILandroid/view/View$OnClickListener;)V

    .line 70
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->loadReviews()V

    goto :goto_0
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;II)V
    .locals 8
    .parameter "response"
    .parameter "requestOffset"
    .parameter "requestCount"

    .prologue
    const/16 v5, 0x8

    .line 98
    if-nez p1, :cond_1

    .line 99
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getGetResponse()Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    move-result-object v3

    .line 103
    .local v3, reviewsResponse:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getReviewList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 104
    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mReviewList:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->getLayoutSwitcher()Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 116
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getReviewList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 118
    .local v1, review:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04003f

    iget-object v6, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mReviewList:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 120
    .local v2, reviewItem:Landroid/widget/LinearLayout;
    invoke-static {v1, v2}, Lcom/google/android/finsky/adapters/ReviewListAdapter;->fillReviewItem(Lcom/google/android/finsky/remoting/protos/Rev$Review;Landroid/view/View;)V

    .line 121
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->mReviewList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->onResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;II)V

    return-void
.end method

.method public onRetry()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->loadReviews()V

    .line 88
    return-void
.end method
