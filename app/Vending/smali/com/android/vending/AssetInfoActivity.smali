.class public Lcom/android/vending/AssetInfoActivity;
.super Lcom/android/vending/BaseActivity;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;,
        Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;,
        Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;,
        Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;,
        Lcom/android/vending/AssetInfoActivity$CommentsSection;,
        Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;,
        Lcom/android/vending/AssetInfoActivity$MarketContentSection;,
        Lcom/android/vending/AssetInfoActivity$ShareSection;,
        Lcom/android/vending/AssetInfoActivity$ReviewSection;,
        Lcom/android/vending/AssetInfoActivity$DownloadSection;,
        Lcom/android/vending/AssetInfoActivity$DescriptionSection;,
        Lcom/android/vending/AssetInfoActivity$PermissionsSection;,
        Lcom/android/vending/AssetInfoActivity$Section;,
        Lcom/android/vending/AssetInfoActivity$VerticalScrollAnimator;,
        Lcom/android/vending/AssetInfoActivity$HeightAnimator;,
        Lcom/android/vending/AssetInfoActivity$PaddingTweaker;,
        Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;,
        Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;
    }
.end annotation


# instance fields
.field private mAboutDeveloperSection:Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;

.field protected mActualAssetId:Ljava/lang/String;

.field protected mAsset:Lcom/android/vending/model/Asset;

.field protected mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

.field private mAssetAdapterObserver:Landroid/database/DataSetObserver;

.field private mAssetService:Lcom/android/vending/api/AssetService;

.field protected mAssetTypeData:Lcom/android/vending/AssetTypeData;

.field private mAutoUpdateSection:Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;

.field private mCommentDialog:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;

.field private mCommentPostEnabled:Z

.field private mCommentRatingDialog:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

.field private mCommentsAdapter:Lcom/android/vending/CommentsAdapter;

.field private mCommentsLoaded:Z

.field private mCommentsRemoved:Z

.field private mCommentsSection:Lcom/android/vending/AssetInfoActivity$CommentsSection;

.field private mCommentsService:Lcom/android/vending/api/CommentsService;

.field private mContentContainer:Landroid/widget/LinearLayout;

.field private mDescriptionSection:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

.field private mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

.field private mDownloadSection:Lcom/android/vending/AssetInfoActivity$DownloadSection;

.field public mInitialContainerChildren:I

.field private mInstallActionEnabled:Z

.field private mInstallLabel:Landroid/widget/TextView;

.field private mLoadingIndicator:Landroid/view/View;

.field private mMarketContentSection:Lcom/android/vending/AssetInfoActivity$MarketContentSection;

.field private mNegativeButton:Landroid/widget/Button;

.field private mNotRefundableDialog:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

.field private mPaddingTweaker:Lcom/android/vending/AssetInfoActivity$PaddingTweaker;

.field private mPermissionsExpanded:Z

.field private mPermissionsSection:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

.field private mPositiveButton:Landroid/widget/Button;

.field private mRatingCreatorId:Ljava/lang/String;

.field private mRatingDialog:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;

.field private mRatingDialogShowing:Z

.field private mRatingSelectedPosition:I

.field private mReferrerUri:Ljava/lang/String;

.field private mReplaceAppDialog:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

.field private mReviewSection:Lcom/android/vending/AssetInfoActivity$ReviewSection;

.field private mScrollContainer:Landroid/widget/ScrollView;

.field private mSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/AssetInfoActivity$Section;",
            ">;"
        }
    .end annotation
.end field

.field protected mServerAssetId:Ljava/lang/String;

.field private mSimilarAssetSection:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

.field protected mThumbnailView:Landroid/widget/ImageView;

.field private mUninstallDialog:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

.field private mUpdateActionEnabled:Z

.field private mUserComment:Ljava/lang/String;

.field private mUserRating:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vending/AssetInfoActivity;->mRatingSelectedPosition:I

    .line 125
    iput-boolean v1, p0, Lcom/android/vending/AssetInfoActivity;->mRatingDialogShowing:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/vending/AssetInfoActivity;->mPermissionsExpanded:Z

    .line 147
    iput-boolean v2, p0, Lcom/android/vending/AssetInfoActivity;->mInstallActionEnabled:Z

    .line 148
    iput-boolean v2, p0, Lcom/android/vending/AssetInfoActivity;->mUpdateActionEnabled:Z

    .line 2491
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/AssetInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->updateLocalStateDependentUi()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/vending/AssetInfoActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity;->displayMarkCommentDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/api/AssetService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/vending/AssetInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->isAssetReviewable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/vending/AssetInfoActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mLoadingIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/AssetInfoActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity;->doHandleMarkedAsSpam(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/vending/AssetInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->setupContentArea()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/vending/AssetInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->displayAssetInfo()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/vending/AssetInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mReferrerUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/api/CommentsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsService:Lcom/android/vending/api/CommentsService;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/model/CommentsResponse;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/vending/AssetInfoActivity;->displayComments(Lcom/android/vending/model/CommentsResponse;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mSimilarAssetSection:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/AssetInfoActivity$PaddingTweaker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mPaddingTweaker:Lcom/android/vending/AssetInfoActivity$PaddingTweaker;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/vending/AssetInfoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mContentContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/AssetInfoActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/vending/AssetInfoActivity;->mRatingSelectedPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/vending/AssetInfoActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/vending/AssetInfoActivity;->mRatingSelectedPosition:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/vending/AssetInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/vending/AssetInfoActivity;->mPermissionsExpanded:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/vending/AssetInfoActivity;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mScrollContainer:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAutoUpdateSection:Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/vending/AssetInfoActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/vending/AssetInfoActivity;->mRatingDialogShowing:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/AssetInfoActivity$ReviewSection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mReviewSection:Lcom/android/vending/AssetInfoActivity$ReviewSection;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/model/DownloadProgressManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/vending/AssetInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mUserComment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/vending/AssetInfoActivity;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mUserRating:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/vending/AssetInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/vending/AssetInfoActivity;->mCommentPostEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/vending/AssetInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity;->mRatingCreatorId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/CommentsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsAdapter:Lcom/android/vending/CommentsAdapter;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/vending/AssetInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsLoaded:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/android/vending/AssetInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsRemoved:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/vending/AssetInfoActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/vending/AssetInfoActivity;->mUpdateActionEnabled:Z

    return p1
.end method

.method private displayAssetInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 591
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0, v3}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    .line 592
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getLocalId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mActualAssetId:Ljava/lang/String;

    .line 593
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v0

    const-string v1, "asset"

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 597
    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT_THUMBNAIL:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, v3, v0}, Lcom/android/vending/AssetItemAdapter;->loadBitmapsForAsset(ILjava/util/List;)V

    .line 600
    const-string v0, "AssetInfoActivity displayAssetInfo() - images preload requested"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->event(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getType()Lcom/android/vending/model/Asset$AssetType;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/AssetTypeData;->get(Lcom/android/vending/model/Asset$AssetType;)Lcom/android/vending/AssetTypeData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAssetTypeData:Lcom/android/vending/AssetTypeData;

    .line 603
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0, v3}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vending/AssetInfoActivity;->setupFatHeader(Lcom/android/vending/model/Asset;)V

    .line 604
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->setupButtons()V

    .line 606
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mThumbnailView:Landroid/widget/ImageView;

    .line 608
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mDescriptionSection:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->refresh()V

    .line 609
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAboutDeveloperSection:Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->refresh()V

    .line 610
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->updateLocalStateDependentUi()V

    .line 616
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->isAssetReviewable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->showSectionList()V

    .line 619
    :cond_0
    return-void
.end method

.method private displayComments(Lcom/android/vending/model/CommentsResponse;I)V
    .locals 8
    .parameter "commentResponse"
    .parameter "pageNum"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x1

    .line 813
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsAdapter:Lcom/android/vending/CommentsAdapter;

    invoke-virtual {v2}, Lcom/android/vending/CommentsAdapter;->getCount()I

    move-result v2

    sub-int v2, v4, v2

    invoke-virtual {p1}, Lcom/android/vending/model/CommentsResponse;->getNumComments()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 815
    .local v1, numComments:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 816
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsAdapter:Lcom/android/vending/CommentsAdapter;

    invoke-virtual {p1, v0}, Lcom/android/vending/model/CommentsResponse;->getComment(I)Lcom/android/vending/model/Comment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/vending/CommentsAdapter;->addComment(Lcom/android/vending/model/Comment;)V

    .line 815
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    :cond_0
    if-nez p2, :cond_2

    if-ge v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/android/vending/model/CommentsResponse;->getNumTotalComments()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 823
    new-instance v2, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;

    invoke-direct {v2, p0, v6}, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;-><init>(Lcom/android/vending/AssetInfoActivity;I)V

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity;->startAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 828
    :goto_1
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsSection:Lcom/android/vending/AssetInfoActivity$CommentsSection;

    invoke-virtual {v2}, Lcom/android/vending/AssetInfoActivity$CommentsSection;->refresh()V

    .line 831
    if-nez p2, :cond_1

    .line 832
    invoke-virtual {p1}, Lcom/android/vending/model/CommentsResponse;->hasSelfComment()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 833
    invoke-virtual {p1}, Lcom/android/vending/model/CommentsResponse;->getSelfComment()Lcom/android/vending/model/Comment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/Comment;->getRating()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mUserRating:Ljava/lang/Integer;

    .line 834
    invoke-virtual {p1}, Lcom/android/vending/model/CommentsResponse;->getSelfComment()Lcom/android/vending/model/Comment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/Comment;->getBody()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mUserComment:Ljava/lang/String;

    .line 840
    :goto_2
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mReviewSection:Lcom/android/vending/AssetInfoActivity$ReviewSection;

    invoke-virtual {v2}, Lcom/android/vending/AssetInfoActivity$ReviewSection;->refresh()V

    .line 843
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->showSectionList()V

    .line 845
    :cond_1
    return-void

    .line 825
    :cond_2
    iput-boolean v6, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsLoaded:Z

    goto :goto_1

    .line 836
    :cond_3
    iput-object v7, p0, Lcom/android/vending/AssetInfoActivity;->mUserRating:Ljava/lang/Integer;

    .line 837
    iput-object v7, p0, Lcom/android/vending/AssetInfoActivity;->mUserComment:Ljava/lang/String;

    goto :goto_2
.end method

.method private displayMarkCommentDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "creatorId"

    .prologue
    .line 2356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/AssetInfoActivity;->mRatingDialogShowing:Z

    .line 2357
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity;->mRatingCreatorId:Ljava/lang/String;

    .line 2359
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mCommentRatingDialog:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->setCommentInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mCommentRatingDialog:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 2361
    return-void
.end method

.method private displayNotRefundableDialog()V
    .locals 6

    .prologue
    .line 908
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mNotRefundableDialog:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    const v0, 0x7f07019d

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f07019e

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0700e7

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/vending/AlertUtil;->displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 913
    return-void
.end method

.method private displayReplaceAppDialog()V
    .locals 7

    .prologue
    .line 917
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 918
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 920
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mReplaceAppDialog:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    const v2, 0x7f070199

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07019a

    invoke-virtual {p0, v3}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v6}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v6}, Lcom/android/vending/model/Asset;->getVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/vending/AlertUtil;->displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :goto_0
    return-void

    .line 926
    :catch_0
    move-exception v0

    .line 930
    const-string v0, "Not showing replace app dialog because no existing package."

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mController:Lcom/android/vending/controller/Controller;

    const/16 v1, 0x11

    invoke-interface {v0, v1, p0}, Lcom/android/vending/controller/Controller;->handleRequest(ILcom/android/vending/BaseActivity;)V

    goto :goto_0
.end method

.method private displayUninstallDialog()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2341
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0, p0, v4}, Lcom/android/vending/model/Asset;->getUninstallActionLabel(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 2342
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isRefundable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07015c

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v3}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 2345
    :goto_0
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mUninstallDialog:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/vending/AlertUtil;->displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2347
    return-void

    .line 2342
    :cond_0
    const v0, 0x7f07015b

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v3}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0
.end method

.method private doHandleMarkedAsSpam(Ljava/lang/String;)V
    .locals 1
    .parameter "creatorId"

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsAdapter:Lcom/android/vending/CommentsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/vending/CommentsAdapter;->removeComment(Ljava/lang/String;)V

    .line 2370
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsSection:Lcom/android/vending/AssetInfoActivity$CommentsSection;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$CommentsSection;->refresh()V

    .line 2371
    return-void
.end method

.method public static getReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2627
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 2628
    const-string v1, "utm_source"

    const-string v2, "androidmarket"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2629
    const-string v1, "utm_medium"

    const-string v2, "device"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2630
    const-string v1, "utm_campaign"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2631
    if-eqz p1, :cond_0

    .line 2632
    const-string v1, "utm_content"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2634
    :cond_0
    if-eqz p2, :cond_1

    .line 2635
    const-string v1, "utm_term"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2637
    :cond_1
    if-ltz p3, :cond_2

    .line 2638
    const-string v1, "rowindex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2640
    :cond_2
    return-object v0
.end method

.method private initComments()V
    .locals 2

    .prologue
    .line 801
    new-instance v0, Lcom/android/vending/CommentsAdapter;

    new-instance v1, Lcom/android/vending/AssetInfoActivity$8;

    invoke-direct {v1, p0}, Lcom/android/vending/AssetInfoActivity$8;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/android/vending/CommentsAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsAdapter:Lcom/android/vending/CommentsAdapter;

    .line 807
    new-instance v0, Lcom/android/vending/api/CommentsService;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v0, v1}, Lcom/android/vending/api/CommentsService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsService:Lcom/android/vending/api/CommentsService;

    .line 808
    return-void
.end method

.method private isAssetReviewable()Z
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isEverInstalledByUser()Z

    move-result v0

    return v0
.end method

.method private setupButton(Landroid/widget/TextView;ILjava/lang/Object;Z)V
    .locals 1
    .parameter "button"
    .parameter "textId"
    .parameter "actionTag"
    .parameter "isEnabled"

    .prologue
    .line 675
    invoke-virtual {p0, p2}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/vending/AssetInfoActivity;->setupButton(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 676
    return-void
.end method

.method private setupButton(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .parameter "button"
    .parameter "text"
    .parameter "actionTag"
    .parameter "isEnabled"

    .prologue
    .line 668
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 670
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 671
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 672
    return-void
.end method

.method private setupButtons()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x0

    const/4 v2, 0x4

    const/4 v3, -0x6

    .line 712
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mInstallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isOwnedByUser()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const v0, 0x7f07009d

    .line 719
    :goto_0
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 721
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0700cc

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2, v4}, Lcom/android/vending/AssetInfoActivity;->setupPositiveButton(ILjava/lang/Object;Z)V

    .line 726
    const v1, 0x7f07002c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v3}, Lcom/android/vending/model/Asset;->isDownloading()Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/vending/AssetInfoActivity;->setupNegativeButton(ILjava/lang/Object;Z)V

    .line 777
    :goto_2
    iget-boolean v1, p0, Lcom/android/vending/AssetInfoActivity;->mPermissionsExpanded:Z

    if-eqz v1, :cond_1

    .line 780
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/vending/AssetInfoActivity;->mInstallActionEnabled:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vending/AssetInfoActivity;->setupPositiveButton(ILjava/lang/Object;Z)V

    .line 785
    :cond_1
    return-void

    .line 716
    :cond_2
    const v0, 0x7f0700e7

    goto :goto_0

    .line 721
    :cond_3
    const v1, 0x7f0700cd

    goto :goto_1

    .line 730
    :cond_4
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->isUninstalling()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 732
    const v1, 0x7f0700cf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2, v4}, Lcom/android/vending/AssetInfoActivity;->setupPositiveButton(ILjava/lang/Object;Z)V

    goto :goto_2

    .line 736
    :cond_5
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 739
    const v1, 0x7f070175

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/vending/AssetInfoActivity;->mUpdateActionEnabled:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/vending/AssetInfoActivity;->setupPositiveButton(ILjava/lang/Object;Z)V

    .line 743
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->setupRefundOrUninstallButton()V

    goto :goto_2

    .line 745
    :cond_6
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->isDownloadable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 747
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->isRefundable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 748
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 750
    iget-boolean v1, p0, Lcom/android/vending/AssetInfoActivity;->mPermissionsExpanded:Z

    if-nez v1, :cond_7

    .line 751
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/vending/AssetInfoActivity;->mInstallActionEnabled:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vending/AssetInfoActivity;->setupInstallButton(ILjava/lang/Object;Z)V

    .line 755
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-static {p0, v1}, Lcom/android/vending/AssetItemAdapter;->getPriceOrPurchaseStateString(Landroid/content/Context;Lcom/android/vending/model/Asset;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/vending/AssetInfoActivity;->mInstallActionEnabled:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/vending/AssetInfoActivity;->setupPositiveButton(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_2

    .line 761
    :cond_7
    const v1, 0x7f080025

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 764
    :cond_8
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-static {p0, v1}, Lcom/android/vending/AssetItemAdapter;->getPriceOrPurchaseStateString(Landroid/content/Context;Lcom/android/vending/model/Asset;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/vending/AssetInfoActivity;->mInstallActionEnabled:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/vending/AssetInfoActivity;->setupPositiveButton(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 768
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->setupRefundOrUninstallButton()V

    goto/16 :goto_2

    .line 772
    :cond_9
    const v1, 0x7f0700a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v3, p0}, Lcom/android/vending/model/Asset;->hasLaunchIntent(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/vending/AssetInfoActivity;->setupPositiveButton(ILjava/lang/Object;Z)V

    .line 774
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->setupRefundOrUninstallButton()V

    goto/16 :goto_2
.end method

.method private setupContentArea()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 338
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mSections:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mSections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/AssetInfoActivity$Section;

    .line 340
    .local v1, section:Lcom/android/vending/AssetInfoActivity$Section;
    invoke-virtual {v1}, Lcom/android/vending/AssetInfoActivity$Section;->refresh()V

    goto :goto_0

    .line 345
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #section:Lcom/android/vending/AssetInfoActivity$Section;
    :cond_0
    new-instance v2, Lcom/android/vending/AssetInfoActivity$DownloadSection;

    invoke-direct {v2, p0, v6}, Lcom/android/vending/AssetInfoActivity$DownloadSection;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mDownloadSection:Lcom/android/vending/AssetInfoActivity$DownloadSection;

    .line 346
    new-instance v2, Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    invoke-direct {v2, p0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mPermissionsSection:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    .line 347
    new-instance v2, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;

    invoke-direct {v2, p0, v6}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mAutoUpdateSection:Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;

    .line 348
    new-instance v2, Lcom/android/vending/AssetInfoActivity$ReviewSection;

    invoke-direct {v2, p0, v6}, Lcom/android/vending/AssetInfoActivity$ReviewSection;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mReviewSection:Lcom/android/vending/AssetInfoActivity$ReviewSection;

    .line 349
    new-instance v2, Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-direct {v2, p0, v6}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mDescriptionSection:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    .line 350
    new-instance v2, Lcom/android/vending/AssetInfoActivity$CommentsSection;

    invoke-direct {v2, p0, v6}, Lcom/android/vending/AssetInfoActivity$CommentsSection;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsSection:Lcom/android/vending/AssetInfoActivity$CommentsSection;

    .line 351
    new-instance v2, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;

    invoke-direct {v2, p0, v6}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mAboutDeveloperSection:Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;

    .line 352
    new-instance v2, Lcom/android/vending/AssetInfoActivity$MarketContentSection;

    invoke-direct {v2, p0, v6}, Lcom/android/vending/AssetInfoActivity$MarketContentSection;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mMarketContentSection:Lcom/android/vending/AssetInfoActivity$MarketContentSection;

    .line 353
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mSections:Ljava/util/List;

    .line 354
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mSections:Ljava/util/List;

    const/16 v3, 0x8

    new-array v3, v3, [Lcom/android/vending/AssetInfoActivity$Section;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity;->mPermissionsSection:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity;->mDownloadSection:Lcom/android/vending/AssetInfoActivity$DownloadSection;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity;->mAutoUpdateSection:Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity;->mReviewSection:Lcom/android/vending/AssetInfoActivity$ReviewSection;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity;->mDescriptionSection:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsSection:Lcom/android/vending/AssetInfoActivity$CommentsSection;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity;->mAboutDeveloperSection:Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity;->mMarketContentSection:Lcom/android/vending/AssetInfoActivity$MarketContentSection;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    sget-object v2, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_ENABLE_APP_SHARING:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v2}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mSections:Ljava/util/List;

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity;->mSections:Ljava/util/List;

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity;->mDescriptionSection:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Lcom/android/vending/AssetInfoActivity$ShareSection;

    invoke-direct {v4, p0, v6}, Lcom/android/vending/AssetInfoActivity$ShareSection;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 364
    :cond_1
    sget-object v2, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_SHOW_SIMILAR_TAB_IN_APP_INFO_PAGE:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v2}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    new-instance v2, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    invoke-direct {v2, p0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    iput-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mSimilarAssetSection:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    .line 366
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mSections:Ljava/util/List;

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity;->mSections:Ljava/util/List;

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity;->mCommentsSection:Lcom/android/vending/AssetInfoActivity$CommentsSection;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity;->mSimilarAssetSection:Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 369
    :cond_2
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity;->mDescriptionSection:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-virtual {v2, v3}, Lcom/android/vending/AssetItemAdapter;->addImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V

    .line 371
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mSections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/AssetInfoActivity$Section;

    .line 372
    .restart local v1       #section:Lcom/android/vending/AssetInfoActivity$Section;
    invoke-virtual {v1}, Lcom/android/vending/AssetInfoActivity$Section;->attach()V

    goto :goto_1

    .line 374
    .end local v1           #section:Lcom/android/vending/AssetInfoActivity$Section;
    :cond_3
    return-void
.end method

.method private setupFatHeader(Lcom/android/vending/model/Asset;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 622
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 623
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/vending/AssetInfoActivity;->setupSlimTitleBar(Ljava/lang/CharSequence;Z)V

    .line 625
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 626
    const v2, 0x7f080023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 627
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 630
    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 631
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 634
    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RatingBar;

    .line 635
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getNumRaters()I

    move-result v0

    if-lez v0, :cond_0

    .line 636
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getRating()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 641
    :goto_0
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupInstallButton(ILjava/lang/Object;Z)V
    .locals 1
    .parameter "textId"
    .parameter "actionTag"
    .parameter "isEnabled"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mInstallLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/vending/AssetInfoActivity;->setupButton(Landroid/widget/TextView;ILjava/lang/Object;Z)V

    .line 665
    return-void
.end method

.method private setupNegativeButton(ILjava/lang/Object;Z)V
    .locals 1
    .parameter "textId"
    .parameter "actionTag"
    .parameter "isEnabled"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mNegativeButton:Landroid/widget/Button;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/vending/AssetInfoActivity;->setupButton(Landroid/widget/TextView;ILjava/lang/Object;Z)V

    .line 661
    return-void
.end method

.method private setupPositiveButton(ILjava/lang/Object;Z)V
    .locals 1
    .parameter "textId"
    .parameter "actionTag"
    .parameter "isEnabled"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mPositiveButton:Landroid/widget/Button;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/vending/AssetInfoActivity;->setupButton(Landroid/widget/TextView;ILjava/lang/Object;Z)V

    .line 653
    return-void
.end method

.method private setupPositiveButton(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .parameter "text"
    .parameter "actionTag"
    .parameter "isEnabled"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mPositiveButton:Landroid/widget/Button;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/vending/AssetInfoActivity;->setupButton(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 649
    return-void
.end method

.method private setupRefundOrUninstallButton()V
    .locals 5

    .prologue
    const v4, 0x7f070101

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 680
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isRefundable()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 683
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1, p0}, Lcom/android/vending/model/Asset;->canUninstall(Landroid/content/Context;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 689
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 691
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v4, v0, v2}, Lcom/android/vending/AssetInfoActivity;->setupNegativeButton(ILjava/lang/Object;Z)V

    .line 703
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v3

    .line 680
    goto :goto_0

    .line 684
    :catch_0
    move-exception v1

    .line 687
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->updateToUninstalled()V

    move v1, v3

    goto :goto_1

    .line 693
    :cond_2
    if-eqz v0, :cond_3

    .line 695
    const/4 v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v4, v0, v2}, Lcom/android/vending/AssetInfoActivity;->setupNegativeButton(ILjava/lang/Object;Z)V

    goto :goto_2

    .line 696
    :cond_3
    if-eqz v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0, p0}, Lcom/android/vending/model/Asset;->isUpdatedSystemApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f07009f

    .line 700
    :goto_3
    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/vending/AssetInfoActivity;->setupNegativeButton(ILjava/lang/Object;Z)V

    goto :goto_2

    .line 698
    :cond_4
    const v0, 0x7f07009e

    goto :goto_3
.end method

.method private showSectionList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 941
    const v2, 0x7f080039

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 942
    .local v1, sectionList:Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 943
    const v2, 0x7f08003c

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 944
    .local v0, carousel:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 945
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 947
    :cond_0
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mLoadingIndicator:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 948
    const v2, 0x7f08003a

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 949
    return-void
.end method

.method private updateLocalStateDependentUi()V
    .locals 4

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v0, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->setupButtons()V

    .line 573
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mDownloadSection:Lcom/android/vending/AssetInfoActivity$DownloadSection;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$DownloadSection;->refresh()V

    .line 574
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAutoUpdateSection:Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->refresh()V

    .line 575
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mReviewSection:Lcom/android/vending/AssetInfoActivity$ReviewSection;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$ReviewSection;->refresh()V

    .line 576
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mDescriptionSection:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->refresh()V

    .line 580
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset([Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->getGTalkServiceHelper()Lcom/android/vending/GTalkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/GTalkServiceHelper;->requestSendHeartbeat()Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1081
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1084
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onClick(Landroid/view/View;)V

    .line 1123
    :goto_0
    :sswitch_0
    return-void

    .line 1088
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1091
    :goto_1
    sparse-switch v0, :sswitch_data_0

    .line 1121
    :goto_2
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mController:Lcom/android/vending/controller/Controller;

    invoke-interface {v1, v0, p0}, Lcom/android/vending/controller/Controller;->handleRequest(ILcom/android/vending/BaseActivity;)V

    goto :goto_0

    .line 1088
    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    .line 1093
    :sswitch_1
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->displayUninstallDialog()V

    goto :goto_0

    .line 1096
    :sswitch_2
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mRatingDialog:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0

    .line 1099
    :sswitch_3
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mCommentDialog:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0

    .line 1105
    :sswitch_4
    iput-boolean v5, p0, Lcom/android/vending/AssetInfoActivity;->mPermissionsExpanded:Z

    .line 1106
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mPermissionsSection:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->activate()V

    .line 1107
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->setupButtons()V

    goto :goto_0

    .line 1110
    :sswitch_5
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mController:Lcom/android/vending/controller/Controller;

    invoke-interface {v1, v0, p0}, Lcom/android/vending/controller/Controller;->handleRequest(ILcom/android/vending/BaseActivity;)V

    goto :goto_0

    .line 1113
    :sswitch_6
    iput-boolean v4, p0, Lcom/android/vending/AssetInfoActivity;->mUpdateActionEnabled:Z

    .line 1114
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mController:Lcom/android/vending/controller/Controller;

    invoke-interface {v1, v0, p0}, Lcom/android/vending/controller/Controller;->handleRequest(ILcom/android/vending/BaseActivity;)V

    goto :goto_0

    .line 1117
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v1

    const-string v2, "auto_update"

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v3, p0}, Lcom/android/vending/model/Asset;->isAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mController:Lcom/android/vending/controller/Controller;

    invoke-interface {v1, v0, p0}, Lcom/android/vending/controller/Controller;->handleRequest(ILcom/android/vending/BaseActivity;)V

    goto :goto_2

    :cond_2
    move v3, v4

    .line 1117
    goto :goto_3

    .line 1091
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_4
        -0x5 -> :sswitch_0
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        0x0 -> :sswitch_6
        0x12 -> :sswitch_7
        0x14 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 219
    new-instance v1, Lcom/android/vending/model/DownloadProgressManager;

    invoke-direct {v1}, Lcom/android/vending/model/DownloadProgressManager;-><init>()V

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    .line 221
    if-eqz p1, :cond_0

    .line 222
    const-string v1, "permissionsShowing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vending/AssetInfoActivity;->mPermissionsExpanded:Z

    .line 225
    :cond_0
    new-instance v1, Lcom/android/vending/controller/AssetInfoActivityController;

    invoke-direct {v1}, Lcom/android/vending/controller/AssetInfoActivityController;-><init>()V

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mController:Lcom/android/vending/controller/Controller;

    .line 226
    new-instance v1, Lcom/android/vending/api/AssetService;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    .line 228
    invoke-virtual {p0, v5}, Lcom/android/vending/AssetInfoActivity;->requestWindowFeature(I)Z

    .line 229
    const v1, 0x7f040010

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->setContentView(I)V

    .line 230
    const v1, 0x7f080039

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mScrollContainer:Landroid/widget/ScrollView;

    .line 231
    const v1, 0x7f08003a

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mContentContainer:Landroid/widget/LinearLayout;

    .line 232
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/android/vending/AssetInfoActivity;->mInitialContainerChildren:I

    .line 234
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->initComments()V

    .line 236
    new-instance v1, Lcom/android/vending/AssetItemAdapter;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 237
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, p0}, Lcom/android/vending/AssetItemAdapter;->addImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V

    .line 240
    new-instance v1, Lcom/android/vending/AssetInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/android/vending/AssetInfoActivity$1;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapterObserver:Landroid/database/DataSetObserver;

    .line 247
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/vending/AssetItemAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 249
    const v1, 0x7f0800df

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mLoadingIndicator:Landroid/view/View;

    .line 251
    new-instance v1, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;

    invoke-direct {v1, p0, v4}, Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mCommentDialog:Lcom/android/vending/AssetInfoActivity$CommentDialogAccessor;

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 252
    new-instance v1, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    new-instance v2, Lcom/android/vending/AssetInfoActivity$2;

    invoke-direct {v2, p0}, Lcom/android/vending/AssetInfoActivity$2;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    new-instance v3, Lcom/android/vending/AssetInfoActivity$3;

    invoke-direct {v3, p0}, Lcom/android/vending/AssetInfoActivity$3;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/util/CommentUtil$OnMarkedAsSpamHandler;Lcom/android/vending/util/CommentUtil$LifecycleHandler;)V

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mCommentRatingDialog:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    .line 273
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mCommentRatingDialog:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 274
    new-instance v1, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;

    invoke-direct {v1, p0, v4}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mRatingDialog:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 275
    new-instance v1, Lcom/android/vending/AssetInfoActivity$4;

    invoke-direct {v1, p0}, Lcom/android/vending/AssetInfoActivity$4;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    invoke-static {p0, v1, v4, v4}, Lcom/android/vending/AlertUtil;->registerMutableDialogAccessor(Lcom/android/vending/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mUninstallDialog:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    .line 282
    new-instance v1, Lcom/android/vending/AssetInfoActivity$5;

    invoke-direct {v1, p0}, Lcom/android/vending/AssetInfoActivity$5;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    new-instance v2, Lcom/android/vending/AssetInfoActivity$6;

    invoke-direct {v2, p0}, Lcom/android/vending/AssetInfoActivity$6;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    invoke-static {p0, v1, v2, v4}, Lcom/android/vending/AlertUtil;->registerMutableDialogAccessor(Lcom/android/vending/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mReplaceAppDialog:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    .line 294
    new-instance v1, Lcom/android/vending/AssetInfoActivity$7;

    invoke-direct {v1, p0}, Lcom/android/vending/AssetInfoActivity$7;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    invoke-static {p0, v1, v4, v4}, Lcom/android/vending/AlertUtil;->registerMutableDialogAccessor(Lcom/android/vending/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mNotRefundableDialog:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    .line 302
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->getMetadata()Lcom/android/vending/VendingApplicationMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/VendingApplicationMetadata;->getCommentPostEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vending/AssetInfoActivity;->mCommentPostEnabled:Z

    .line 305
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 306
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mActualAssetId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 307
    new-instance v1, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;

    invoke-direct {v1, p0}, Lcom/android/vending/AssetInfoActivity$LoadAssetInfoAction;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 308
    if-nez p1, :cond_3

    move v1, v5

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->startSetupActionChain(Z)V

    .line 311
    :cond_1
    const v1, 0x7f080025

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mInstallLabel:Landroid/widget/TextView;

    .line 312
    const v1, 0x7f080026

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mPositiveButton:Landroid/widget/Button;

    .line 313
    const v1, 0x7f080027

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mNegativeButton:Landroid/widget/Button;

    .line 315
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->setViewOnClickListener(Landroid/view/View;)V

    .line 316
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->setViewOnClickListener(Landroid/view/View;)V

    .line 318
    const v1, 0x7f08003c

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, carousel:Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/android/vending/velvet/LandscapeOverlappingLayout;

    if-eqz v1, :cond_2

    .line 320
    new-instance v1, Lcom/android/vending/AssetInfoActivity$PaddingTweaker;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mContentContainer:Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Lcom/android/vending/AssetInfoActivity$PaddingTweaker;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mPaddingTweaker:Lcom/android/vending/AssetInfoActivity$PaddingTweaker;

    .line 321
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity;->mPaddingTweaker:Lcom/android/vending/AssetInfoActivity$PaddingTweaker;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 323
    :cond_2
    return-void

    .line 308
    .end local v0           #carousel:Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v6, 0x7f0700c5

    const/4 v5, 0x0

    .line 528
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget-object v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 529
    .local v2, pressedView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 530
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 531
    .local v0, creatorId:Ljava/lang/String;
    const v4, 0x7f0700c0

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 532
    invoke-interface {p1, v5, v6, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 534
    .local v1, item:Landroid/view/MenuItem;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "creator_id"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 564
    .end local v0           #creatorId:Ljava/lang/String;
    .end local v1           #item:Landroid/view/MenuItem;
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 535
    .restart local p0
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 536
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 537
    .local v3, requestId:I
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 542
    :sswitch_0
    const v4, 0x7f0700e6

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 539
    :sswitch_1
    const v4, 0x7f0700e5

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 545
    :sswitch_2
    const v4, 0x7f0700cb

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 548
    :sswitch_3
    const v4, 0x7f0701a6

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 551
    :sswitch_4
    const v4, 0x7f0701a7

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 554
    :sswitch_5
    const v4, 0x7f0701a8

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 557
    :sswitch_6
    const v4, 0x7f0701a9

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 560
    :sswitch_7
    const v4, 0x7f0701ae

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 537
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_1
        0x5 -> :sswitch_7
        0x6 -> :sswitch_4
        0x8 -> :sswitch_3
        0xa -> :sswitch_2
        0xf -> :sswitch_5
        0x10 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 396
    invoke-super {p0}, Lcom/android/vending/BaseActivity;->onDestroy()V

    .line 398
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetItemAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 400
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    invoke-virtual {v0}, Lcom/android/vending/model/DownloadProgressManager;->onDestroy()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    .line 402
    return-void
.end method

.method public onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 8
    .parameter "position"
    .parameter "imageUsage"
    .parameter "imageId"

    .prologue
    const/4 v7, 0x0

    .line 433
    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mThumbnailView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, v7, p2}, Lcom/android/vending/AssetItemAdapter;->getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 435
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff6666666666666L

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mThumbnailView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 442
    :goto_0
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 443
    const-string v1, "AssetInfoActivity onImageLoaded() - app icon"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/vending/util/Log;->event(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void

    .line 440
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mThumbnailView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    .line 449
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, assetId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 453
    .local v1, assetPackageName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 455
    .local v5, referrer:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 456
    .local v3, intentData:Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 457
    invoke-static {v3}, Lcom/android/vending/util/Util;->getAssetIdFromInfoUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-static {v3}, Lcom/android/vending/util/Util;->getReferrerFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 462
    :goto_0
    if-nez v0, :cond_0

    .line 463
    const-string v8, "assetid"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    :cond_0
    const-string v8, "asset_package"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 468
    iput-object v5, p0, Lcom/android/vending/AssetInfoActivity;->mReferrerUri:Ljava/lang/String;

    .line 470
    if-eqz v0, :cond_3

    iget-object v8, p0, Lcom/android/vending/AssetInfoActivity;->mServerAssetId:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/vending/AssetInfoActivity;->mActualAssetId:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/vending/AssetInfoActivity;->mServerAssetId:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/vending/AssetInfoActivity;->mActualAssetId:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/vending/AssetInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 510
    :cond_1
    :goto_1
    return-void

    .line 460
    :cond_2
    const-string v8, "referrer"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 475
    :cond_3
    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mActualAssetId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mServerAssetId:Ljava/lang/String;

    .line 476
    invoke-virtual {p0, p1}, Lcom/android/vending/AssetInfoActivity;->setIntent(Landroid/content/Intent;)V

    .line 477
    invoke-virtual {p0, p1}, Lcom/android/vending/AssetInfoActivity;->maybeDisplayMessage(Landroid/content/Intent;)V

    .line 480
    iget-object v8, p0, Lcom/android/vending/AssetInfoActivity;->mActualAssetId:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 483
    if-eqz v3, :cond_4

    .line 484
    const v8, 0x7f0700df

    invoke-virtual {p0, v8}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 485
    .local v7, title:Ljava/lang/String;
    const v8, 0x7f0700e0

    invoke-virtual {p0, v8}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, message:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v7, v4, v10}, Lcom/android/vending/AssetInfoActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 487
    .end local v4           #message:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    :cond_4
    const v8, 0x7f070037

    invoke-virtual {p0, v8}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 488
    .restart local v7       #title:Ljava/lang/String;
    const v8, 0x7f070039

    invoke-virtual {p0, v8}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #message:Ljava/lang/String;
    goto :goto_2

    .line 491
    .end local v4           #message:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_1

    .line 493
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 496
    if-eqz v1, :cond_1

    .line 497
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v8

    invoke-virtual {v8, v1, v5}, Lcom/android/vending/VendingApplication;->addPackageReferrer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 499
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 502
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 503
    .local v6, splitByColons:[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 504
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v8

    aget-object v9, v6, v10

    invoke-virtual {v8, v9, v5}, Lcom/android/vending/VendingApplication;->addPackageReferrer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 506
    :cond_6
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v8

    invoke-virtual {v8, v0, v5}, Lcom/android/vending/VendingApplication;->addPackageReferrer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 387
    invoke-super {p0}, Lcom/android/vending/BaseActivity;->onPause()V

    .line 389
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/vending/VendingApplication;->registerAssetInfoScreen(Ljava/lang/String;Lcom/android/vending/AssetInfoActivity;)V

    .line 391
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    invoke-virtual {v0}, Lcom/android/vending/model/DownloadProgressManager;->onPause()V

    .line 392
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 514
    invoke-super {p0}, Lcom/android/vending/BaseActivity;->onRestart()V

    .line 517
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetItemAdapter;->reloadLocalAssetInfo(Ljava/lang/String;)V

    .line 520
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 420
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 422
    iget-boolean v0, p0, Lcom/android/vending/AssetInfoActivity;->mRatingDialogShowing:Z

    if-eqz v0, :cond_1

    .line 423
    const-string v0, "selectedRatingPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "selectedRatingPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vending/AssetInfoActivity;->mRatingSelectedPosition:I

    .line 426
    :cond_0
    const-string v0, "creatorId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mRatingCreatorId:Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mRatingCreatorId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vending/AssetInfoActivity;->displayMarkCommentDialog(Ljava/lang/String;)V

    .line 430
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 378
    invoke-super {p0}, Lcom/android/vending/BaseActivity;->onResume()V

    .line 380
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mActualAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/vending/VendingApplication;->registerAssetInfoScreen(Ljava/lang/String;Lcom/android/vending/AssetInfoActivity;)V

    .line 382
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mDownloadProgressManager:Lcom/android/vending/model/DownloadProgressManager;

    invoke-virtual {v0, p0}, Lcom/android/vending/model/DownloadProgressManager;->onResume(Landroid/content/Context;)V

    .line 383
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 406
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 408
    const-string v0, "permissionsShowing"

    iget-boolean v1, p0, Lcom/android/vending/AssetInfoActivity;->mPermissionsExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 409
    const-string v0, "dialogShowing"

    iget-boolean v1, p0, Lcom/android/vending/AssetInfoActivity;->mRatingDialogShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 410
    iget-boolean v0, p0, Lcom/android/vending/AssetInfoActivity;->mRatingDialogShowing:Z

    if-eqz v0, :cond_1

    .line 411
    iget v0, p0, Lcom/android/vending/AssetInfoActivity;->mRatingSelectedPosition:I

    if-ltz v0, :cond_0

    .line 412
    const-string v0, "selectedRatingPosition"

    iget v1, p0, Lcom/android/vending/AssetInfoActivity;->mRatingSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    :cond_0
    const-string v0, "creatorId"

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mRatingCreatorId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_1
    return-void
.end method

.method public updateActivity(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 856
    packed-switch p1, :pswitch_data_0

    .line 905
    :goto_0
    :pswitch_0
    return-void

    .line 858
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v0

    const-string v1, "rating"

    invoke-virtual {v0, v1}, Lcom/android/vending/controller/RequestParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mUserRating:Ljava/lang/Integer;

    .line 859
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mReviewSection:Lcom/android/vending/AssetInfoActivity$ReviewSection;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$ReviewSection;->refresh()V

    goto :goto_0

    .line 862
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v0

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Lcom/android/vending/controller/RequestParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mUserComment:Ljava/lang/String;

    .line 863
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mReviewSection:Lcom/android/vending/AssetInfoActivity$ReviewSection;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$ReviewSection;->refresh()V

    goto :goto_0

    .line 866
    :pswitch_3
    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mUserRating:Ljava/lang/Integer;

    .line 867
    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mUserComment:Ljava/lang/String;

    .line 868
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mReviewSection:Lcom/android/vending/AssetInfoActivity$ReviewSection;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$ReviewSection;->refresh()V

    goto :goto_0

    .line 871
    :pswitch_4
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->displayReplaceAppDialog()V

    goto :goto_0

    .line 874
    :pswitch_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/AssetInfoActivity;->mInstallActionEnabled:Z

    goto :goto_0

    .line 877
    :pswitch_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/AssetInfoActivity;->mInstallActionEnabled:Z

    goto :goto_0

    .line 880
    :pswitch_7
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->clearPurchaseInfo()V

    .line 881
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0, v1}, Lcom/android/vending/api/AssetService;->invalidate(Lcom/android/vending/model/Asset;)V

    .line 882
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->displayAssetInfo()V

    goto :goto_0

    .line 887
    :pswitch_8
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->updateLocalStateDependentUi()V

    goto :goto_0

    .line 890
    :pswitch_9
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity;->displayNotRefundableDialog()V

    goto :goto_0

    .line 893
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity;->finish()V

    goto :goto_0

    .line 896
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity;->finish()V

    goto :goto_0

    .line 902
    :pswitch_c
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAutoUpdateSection:Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->refresh()V

    goto :goto_0

    .line 856
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 1
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mActualAssetId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0, p1}, Lcom/android/vending/AssetItemAdapter;->reloadLocalAssetInfo(Ljava/lang/String;)V

    .line 852
    :cond_0
    return-void
.end method
