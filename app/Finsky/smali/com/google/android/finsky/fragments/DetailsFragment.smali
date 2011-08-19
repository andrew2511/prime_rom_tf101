.class public Lcom/google/android/finsky/fragments/DetailsFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "DetailsFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/PageFragment",
        "<",
        "Lcom/google/android/finsky/api/model/DfeDetails;",
        ">;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/DetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAllReviewsViewBinder:Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;

.field private final mCastCrewViewBinder:Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;

.field private final mCreatorRelatedViewBinder:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

.field private mCurrentState:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

.field private final mDescriptionViewBinder:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

.field private final mDeveloperViewBinder:Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private final mItemDetailsViewBinder:Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;

.field private final mPromoViewBinder:Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;

.field private final mRelatedViewBinder:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

.field private final mReviewsViewBinder:Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;

.field private final mScreenshotsViewBinder:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

.field private final mTrailerViewBinder:Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;

.field private final mVideoViewBinder:Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;

.field private final mWhatsNewViewBinder:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    .line 104
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mItemDetailsViewBinder:Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;

    .line 105
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    .line 108
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mAllReviewsViewBinder:Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;

    .line 111
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mPromoViewBinder:Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;

    .line 112
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    .line 113
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    .line 114
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mScreenshotsViewBinder:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    .line 115
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mVideoViewBinder:Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;

    .line 116
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mTrailerViewBinder:Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;

    .line 117
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mCastCrewViewBinder:Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;

    .line 118
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mReviewsViewBinder:Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;

    .line 119
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDeveloperViewBinder:Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;

    .line 120
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    .line 121
    return-void
.end method

.method private static getDetailsUrl(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter "doc"

    .prologue
    .line 207
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 212
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/fragments/DetailsFragment;
    .locals 4
    .parameter "url"
    .parameter "doc"

    .prologue
    .line 124
    new-instance v1, Lcom/google/android/finsky/fragments/DetailsFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/fragments/DetailsFragment;-><init>()V

    .line 125
    .local v1, detailsFragment:Lcom/google/android/finsky/fragments/DetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "finsky.PageFragment.url"

    invoke-static {p0, p1}, Lcom/google/android/finsky/fragments/DetailsFragment;->getDetailsUrl(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "finsky.DetailsFragment.document"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/fragments/DetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 129
    return-object v1
.end method

.method private setupHeaderBackground()V
    .locals 3

    .prologue
    .line 189
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/CorpusMetadata;->getDetailsHeaderBackgroundResource(I)I

    move-result v0

    .line 191
    .local v0, backgroundRes:I
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 192
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090054

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 193
    return-void
.end method

.method private updateStatusBar()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->getFinskyActionBar()Lcom/google/android/finsky/layout/FinskyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/FinskyActionBar;->setCurrentCollectionType(I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->invalidateOptionsMenu()V

    .line 200
    return-void
.end method


# virtual methods
.method public getDocument()Lcom/google/android/finsky/api/model/Document;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 142
    const v0, 0x7f040011

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mCurrentState:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->access$000(Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;Landroid/view/View;)V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->switchToBlank()V

    .line 155
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->switchToLoading()V

    .line 157
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->requestData()V

    .line 164
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->onDataChanged()V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->requestData()V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->onDataChanged()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.DetailsFragment.document"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 137
    sget-object v0, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->ALL_DETAILS:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mCurrentState:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    .line 138
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 382
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    .line 384
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mItemDetailsViewBinder:Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->onDestroyView()V

    .line 385
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->onDestroyView()V

    .line 387
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mAllReviewsViewBinder:Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->onDestroyView()V

    .line 389
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mPromoViewBinder:Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;->onDestroyView()V

    .line 390
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->onDestroyView()V

    .line 391
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->onDestroyView()V

    .line 392
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mScreenshotsViewBinder:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->onDestroyView()V

    .line 393
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mVideoViewBinder:Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;->onDestroyView()V

    .line 394
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mTrailerViewBinder:Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->onDestroyView()V

    .line 395
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mCastCrewViewBinder:Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->onDestroyView()V

    .line 396
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mReviewsViewBinder:Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->onDestroyView()V

    .line 397
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDeveloperViewBinder:Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->onDestroyView()V

    .line 398
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->onDestroyView()V

    .line 399
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 5

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mItemDetailsViewBinder:Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mAllReviewsViewBinder:Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mPromoViewBinder:Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mScreenshotsViewBinder:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mVideoViewBinder:Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mTrailerViewBinder:Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mCastCrewViewBinder:Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mReviewsViewBinder:Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDeveloperViewBinder:Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 181
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/DetailsResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 362
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, cookie:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->DETAILS:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-interface {v1, v2, v0}, Lcom/google/android/finsky/analytics/Analytics;->reportVirtualPageView(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->getDoc()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    move-result-object v1

    if-nez v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0037

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialog(Ljava/lang/String;Z)V

    goto :goto_0

    .line 375
    :cond_1
    new-instance v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->getDoc()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 377
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->onDataChanged()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Lcom/google/android/finsky/remoting/protos/DetailsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/DetailsFragment;->onResponse(Lcom/google/android/finsky/remoting/protos/DetailsResponse;)V

    return-void
.end method

.method protected rebindViews()V
    .locals 23

    .prologue
    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->setupHeaderBackground()V

    .line 294
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->updateStatusBar()V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mItemDetailsViewBinder:Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09004f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/fragments/DetailsSummaryViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getMoreByHeader()Ljava/lang/String;

    move-result-object v8

    .line 302
    .local v8, creatorRelatedHeader:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 304
    .local v17, creatorRelatedItemsRowCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090050

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Document;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    mul-int/lit8 v12, v17, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mAllReviewsViewBinder:Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090052

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mPromoViewBinder:Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090054

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v18

    .line 317
    .local v18, descriptionText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090055

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v8, v0

    .end local v8           #creatorRelatedHeader:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/finsky/utils/CorpusMetadata;->getDescriptionHeaderStringId(I)I

    move-result v8

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getWhatsNew()Ljava/lang/CharSequence;

    move-result-object v22

    .line 322
    .local v22, whatsNewText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090056

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v7, v0

    const v8, 0x7f0b0058

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mScreenshotsViewBinder:Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090057

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mReviewsViewBinder:Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09005b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/fragments/DetailsReviewsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDeveloperViewBinder:Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09005c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->hasCreatorRelatedContent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f0b0060

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 338
    .local v19, relatedHeader:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    move-object v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f09005d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getRelatedHeader()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getRelatedUrl()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    const/16 v16, 0x4

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 345
    .end local v19           #relatedHeader:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    .line 346
    .local v21, videoColumns:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mVideoViewBinder:Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090058

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v7, v0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    .line 350
    .local v20, trailerColumns:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mTrailerViewBinder:Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090059

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v7, v0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mCastCrewViewBinder:Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09005a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V

    .line 354
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 285
    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, cacheKey:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/volley/Cache;->invalidate(Ljava/lang/String;Z)V

    .line 287
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    .line 288
    return-void
.end method

.method protected requestData()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getDetails(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 186
    return-void
.end method

.method public switchLayout(Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;)V
    .locals 13
    .parameter "state"

    .prologue
    .line 223
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mCurrentState:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    if-ne p1, v9, :cond_0

    .line 277
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mCurrentState:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    .line 229
    .local v6, oldState:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mCurrentState:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    .line 230
    iget-object v9, p0, Lcom/google/android/finsky/fragments/DetailsFragment;->mCurrentState:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->access$000(Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;Landroid/view/View;)V

    .line 232
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f09005b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 233
    .local v8, reviewsPanel:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f09005c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 234
    .local v5, developerPanel:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f09005d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 235
    .local v7, relatedPanel:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f090052

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 236
    .local v2, allReviewsPanel:Landroid/view/View;
    sget-object v9, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->ALL_DETAILS:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    if-ne v6, v9, :cond_1

    const/high16 v9, 0x3f80

    move v3, v9

    .line 240
    .local v3, alpha:F
    :goto_1
    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v3, v9, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f80

    sub-float/2addr v11, v3

    aput v11, v9, v10

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    const-wide/16 v10, 0x1f4

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 242
    .local v0, allDetailsAnimator:Landroid/animation/ValueAnimator;
    new-instance v9, Lcom/google/android/finsky/fragments/DetailsFragment$1;

    invoke-direct {v9, p0, v8, v5, v7}, Lcom/google/android/finsky/fragments/DetailsFragment$1;-><init>(Lcom/google/android/finsky/fragments/DetailsFragment;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 253
    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v3

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v3, v10, v11

    invoke-static {v2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x1f4

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 256
    .local v1, allReviewsAnimator:Landroid/animation/Animator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 257
    .local v4, animatorSet:Landroid/animation/AnimatorSet;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 258
    new-instance v9, Lcom/google/android/finsky/fragments/DetailsFragment$2;

    invoke-direct {v9, p0, v6}, Lcom/google/android/finsky/fragments/DetailsFragment$2;-><init>(Lcom/google/android/finsky/fragments/DetailsFragment;Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;)V

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 276
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 236
    .end local v0           #allDetailsAnimator:Landroid/animation/ValueAnimator;
    .end local v1           #allReviewsAnimator:Landroid/animation/Animator;
    .end local v3           #alpha:F
    .end local v4           #animatorSet:Landroid/animation/AnimatorSet;
    :cond_1
    const/4 v9, 0x0

    move v3, v9

    goto :goto_1
.end method
