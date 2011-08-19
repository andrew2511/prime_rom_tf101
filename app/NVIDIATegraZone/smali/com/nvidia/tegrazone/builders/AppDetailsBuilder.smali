.class public Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;
.super Ljava/lang/Object;
.source "AppDetailsBuilder.java"

# interfaces
.implements Lcom/nvidia/tegrazone/adapters/AppDetailsAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;
    }
.end annotation


# static fields
.field private static feedbackSrv:Lcom/nvidia/tegrazone/services/ServiceManager;


# instance fields
.field addboxPosition:I

.field private callingActivity:Landroid/app/Activity;

.field private capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

.field private commentsBuilder:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

.field private currentScreenContents:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

.field gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

.field private minisiteBody:Landroid/widget/LinearLayout;

.field model:Lcom/nvidia/tegrazone/model/NVModel;

.field private reviewsBuilder:Lcom/nvidia/tegrazone/builders/ReviewsBuilder;

.field tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->feedbackSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->addboxPosition:I

    .line 63
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    .line 65
    sget-object v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->GAME_DETAILS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    iput-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->currentScreenContents:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    .line 68
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    .line 71
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->reviewsBuilder:Lcom/nvidia/tegrazone/builders/ReviewsBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;

    invoke-direct {v0, p1}, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->reviewsBuilder:Lcom/nvidia/tegrazone/builders/ReviewsBuilder;

    .line 72
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/app/Activity;Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 759
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->openImage(Landroid/app/Activity;Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;I)V

    return-void
.end method

.method static synthetic access$1(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 798
    invoke-direct {p0, p1, p2}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->openRelatedItemsView(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/app/Activity;Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 788
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->openRatingsView(Landroid/app/Activity;Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 793
    invoke-direct {p0, p1, p2}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->openReviewsView(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 667
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->showDescriptionFullText(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$6(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 675
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->showDescriptionLessText(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private getCommentCountText(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 4
    .parameter "activity"
    .parameter "commentCount"

    .prologue
    .line 427
    if-nez p2, :cond_0

    .line 428
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, commentCountText:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 429
    .end local v0           #commentCountText:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #commentCountText:Ljava/lang/String;
    goto :goto_0

    .line 432
    .end local v0           #commentCountText:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #commentCountText:Ljava/lang/String;
    goto :goto_0
.end method

.method private getOfficialReviewsCountText(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 4
    .parameter "activity"
    .parameter "officialReviewsCount"

    .prologue
    .line 591
    if-nez p2, :cond_0

    .line 592
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, reviewsLabel:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 593
    .end local v0           #reviewsLabel:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #reviewsLabel:Ljava/lang/String;
    goto :goto_0

    .line 596
    .end local v0           #reviewsLabel:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #reviewsLabel:Ljava/lang/String;
    goto :goto_0
.end method

.method private hideCommentsAndRatingsViewMoreLink(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 395
    const v2, 0x7f0a0022

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, viewMoreLink:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 398
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 400
    const v2, 0x7f0a0023

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 401
    .local v1, viewMoreText:Landroid/view/View;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    return-void
.end method

.method private initCommentsAndRatings(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "activity"
    .parameter "game"
    .parameter "parentView"

    .prologue
    .line 286
    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    :cond_0
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    check-cast p1, Lcom/nvidia/tegrazone/services/events/NVServiceEvent;

    .end local p1
    invoke-direct {v1, p1}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    sput-object v1, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->feedbackSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 290
    :try_start_0
    sget-object v1, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->feedbackSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetComments(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 293
    .local v0, e1:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 296
    .end local v0           #e1:Lorg/json/JSONException;
    .restart local p1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initCommentsAndRatingsForPhone(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->hideCommentsAndRatings()V

    goto :goto_0
.end method

.method private initCommentsAndRatingsBottomArea(Landroid/app/Activity;[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;)V
    .locals 8
    .parameter "activity"
    .parameter "comments"

    .prologue
    const/4 v7, 0x0

    .line 357
    const v6, 0x7f0a002b

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    .line 358
    .local v3, firstCommentRatingBar:Landroid/widget/RatingBar;
    const v6, 0x7f0a0029

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 359
    .local v1, firstCommentArea:Landroid/view/View;
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 360
    if-eqz p2, :cond_0

    array-length v6, p2

    if-lez v6, :cond_0

    .line 361
    aget-object v0, p2, v7

    .line 362
    .local v0, firstComment:Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    if-eqz v0, :cond_0

    .line 363
    const v6, 0x7f0a002a

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 364
    .local v5, firstCommentTitle:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getRating()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/nvidia/tegrazone/utils/RatingHelper;->setRatingOnBarByRating(Landroid/widget/RatingBar;Ljava/lang/String;)Landroid/widget/RatingBar;

    .line 368
    const v6, 0x7f0a002c

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 369
    .local v4, firstCommentSourceText:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    const v6, 0x7f0a002d

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 372
    .local v2, firstCommentPreviewText:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 377
    .end local v0           #firstComment:Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    .end local v2           #firstCommentPreviewText:Landroid/widget/TextView;
    .end local v4           #firstCommentSourceText:Landroid/widget/TextView;
    .end local v5           #firstCommentTitle:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initCommentsAndRatingsForPhone(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "activity"
    .parameter "game"
    .parameter "parentView"

    .prologue
    .line 439
    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 440
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030031

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 443
    .local v2, ratingsView:Landroid/view/View;
    iget v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->addboxPosition:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 444
    const v3, 0x7f02000b

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 450
    :goto_0
    const v3, 0x7f0a00ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 451
    .local v0, commentLine:Landroid/widget/TextView;
    const v3, 0x7f0a00bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    .line 453
    .local v1, ratingBar:Landroid/widget/RatingBar;
    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 454
    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nvidia/tegrazone/utils/RatingHelper;->setRatingOnBarByFeedback(Landroid/widget/RatingBar;Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;)Landroid/widget/RatingBar;

    .line 461
    :cond_0
    new-instance v3, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$8;

    invoke-direct {v3, p0, p1, p2}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$8;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 469
    iget v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->addboxPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->addboxPosition:I

    .line 471
    .end local v0           #commentLine:Landroid/widget/TextView;
    .end local v1           #ratingBar:Landroid/widget/RatingBar;
    .end local v2           #ratingsView:Landroid/view/View;
    :cond_1
    return-void

    .line 446
    .restart local v2       #ratingsView:Landroid/view/View;
    :cond_2
    const v3, 0x7f02000f

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 456
    .restart local v0       #commentLine:Landroid/widget/TextView;
    .restart local v1       #ratingBar:Landroid/widget/RatingBar;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getRatingCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private initCommentsAndRatingsTopArea(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
    .locals 8
    .parameter "activity"
    .parameter "game"

    .prologue
    .line 336
    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getCommentCount()I

    move-result v1

    .line 337
    .local v1, commentCount:I
    invoke-direct {p0, p1, v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->getCommentCountText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, commentCountText:Ljava/lang/String;
    const v7, 0x7f0a0026

    invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 339
    .local v2, commentCountLabel:Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    new-instance v6, Lcom/nvidia/tegrazone/utils/RatingHelper;

    invoke-direct {v6, p1}, Lcom/nvidia/tegrazone/utils/RatingHelper;-><init>(Landroid/app/Activity;)V

    .line 343
    .local v6, ratingHelper:Lcom/nvidia/tegrazone/utils/RatingHelper;
    const v7, 0x7f0a0025

    invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 344
    .local v5, ratingArea:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 346
    const v7, 0x7f0a0028

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 347
    .local v4, rateThisGameButton:Landroid/widget/TextView;
    new-instance v7, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$6;

    invoke-direct {v7, p0, v6}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$6;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Lcom/nvidia/tegrazone/utils/RatingHelper;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    const v7, 0x7f0a0027

    invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 353
    .local v0, avgRatingBar:Landroid/widget/RatingBar;
    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/nvidia/tegrazone/utils/RatingHelper;->setRatingOnBarByFeedback(Landroid/widget/RatingBar;Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;)Landroid/widget/RatingBar;

    .line 354
    return-void
.end method

.method private initCommentsAndRatingsViewMoreLink(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
    .locals 4
    .parameter "activity"
    .parameter "game"

    .prologue
    const/4 v3, 0x0

    .line 380
    const v2, 0x7f0a0022

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, viewMoreLink:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 382
    new-instance v2, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$7;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$7;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 390
    const v2, 0x7f0a0023

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 391
    .local v1, viewMoreText:Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 392
    return-void
.end method

.method private initDescriptionSection(Landroid/app/Activity;Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
    .locals 20
    .parameter "activity"
    .parameter "parentView"
    .parameter "game"

    .prologue
    .line 602
    const v5, 0x7f0a0050

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 604
    .local v10, descriptionArea:Landroid/view/ViewGroup;
    const/16 v19, 0x0

    .line 605
    .local v19, markedUpDescriptionText:Landroid/text/Spanned;
    invoke-virtual/range {p3 .. p3}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getLongDescription()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getLongDescription()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getLongDescription()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 606
    invoke-virtual/range {p3 .. p3}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getLongDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v19

    .line 609
    :cond_0
    const v5, 0x7f0a0051

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 610
    .local v9, descriptionText:Landroid/widget/TextView;
    if-eqz v19, :cond_1

    .line 611
    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    :cond_1
    const v5, 0x7f0a0054

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 616
    .local v8, featuresArea:Landroid/view/View;
    invoke-virtual/range {p3 .. p3}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeatures()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 617
    const v5, 0x7f0a0056

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 618
    .local v17, featuresList:Landroid/widget/LinearLayout;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 619
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeatures()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v18

    move v1, v5

    if-lt v0, v1, :cond_3

    .line 630
    .end local v17           #featuresList:Landroid/widget/LinearLayout;
    .end local v18           #i:I
    :cond_2
    const v5, 0x7f0a004f

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 631
    .local v14, descriptionSection:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 633
    const v5, 0x7f0a0053

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 634
    .local v13, descriptionMoreLink:Landroid/widget/TextView;
    const v5, 0x7f0a0052

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 637
    .local v7, descriptionMoreLinkArea:Landroid/view/ViewGroup;
    new-instance v5, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$12;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$12;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    new-instance v5, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$13;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$13;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    const v5, 0x7f0a0058

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 649
    .local v11, descriptionLessLink:Landroid/widget/TextView;
    const v5, 0x7f0a0057

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 651
    .local v12, descriptionLessLinkArea:Landroid/view/ViewGroup;
    new-instance v5, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$14;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$14;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    new-instance v5, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$15;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$15;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->showDescriptionLessText(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    .line 665
    return-void

    .line 620
    .end local v7           #descriptionMoreLinkArea:Landroid/view/ViewGroup;
    .end local v11           #descriptionLessLink:Landroid/widget/TextView;
    .end local v12           #descriptionLessLinkArea:Landroid/view/ViewGroup;
    .end local v13           #descriptionMoreLink:Landroid/widget/TextView;
    .end local v14           #descriptionSection:Landroid/view/ViewGroup;
    .restart local v17       #featuresList:Landroid/widget/LinearLayout;
    .restart local v18       #i:I
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeatures()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v18

    if-eqz v5, :cond_4

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030014

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 622
    .local v15, featureItem:Landroid/view/View;
    const v5, 0x7f0a0074

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 623
    .local v16, featureText:Landroid/widget/TextView;
    invoke-virtual/range {p3 .. p3}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeatures()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v18

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 619
    .end local v15           #featureItem:Landroid/view/View;
    .end local v16           #featureText:Landroid/widget/TextView;
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0
.end method

.method private initOfficialReviews(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
    .locals 1
    .parameter "activity"
    .parameter "game"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initOfficialReviewsForTablet(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initOfficialReviewsForPhone(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    goto :goto_0
.end method

.method private initOfficialReviewsForPhone(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
    .locals 8
    .parameter "a"
    .parameter "game"

    .prologue
    .line 500
    move-object v0, p1

    .line 501
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030034

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 503
    .local v4, reviewsView:Landroid/view/View;
    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOfficialReviews()[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    move-result-object v2

    .line 506
    .local v2, officialReviews:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;
    iget v5, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->addboxPosition:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 507
    const v5, 0x7f02000b

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 513
    :goto_0
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 515
    const v5, 0x7f0a006b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 516
    .local v3, officialReviewsCountText:Landroid/widget/TextView;
    array-length v5, v2

    invoke-direct {p0, v0, v5}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->getOfficialReviewsCountText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    const v5, 0x7f0a005d

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 518
    .local v1, addBox:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    iget v5, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->addboxPosition:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->addboxPosition:I

    .line 526
    .end local v1           #addBox:Landroid/widget/LinearLayout;
    .end local v3           #officialReviewsCountText:Landroid/widget/TextView;
    :cond_0
    new-instance v5, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$9;

    invoke-direct {v5, p0, v0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$9;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    return-void

    .line 509
    :cond_1
    const v5, 0x7f02000f

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private initOfficialReviewsForTablet(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
    .locals 13
    .parameter "a"
    .parameter "game"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 534
    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOfficialReviews()[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    move-result-object v3

    .line 535
    .local v3, officialReviews:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;
    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v10, 0x7f0a0063

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 536
    .local v6, reviewsArticleSection:Landroid/view/View;
    if-eqz v3, :cond_1

    array-length v9, v3

    if-lez v9, :cond_1

    .line 537
    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v10, 0x7f0a0031

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 539
    .local v4, officialReviewsCountText:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    array-length v10, v3

    invoke-direct {p0, v9, v10}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->getOfficialReviewsCountText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v7

    .line 540
    .local v7, reviewsLabel:Ljava/lang/String;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    aget-object v0, v3, v11

    .line 543
    .local v0, firstOfficialReview:Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;
    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v10, 0x7f0a0034

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 544
    .local v2, firstReviewTitle:Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "1. "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->getReviewSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v10, 0x7f0a0035

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 547
    .local v1, firstReviewPreviewText:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->getReviewText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v10, 0x7f0a0033

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 550
    .local v5, reviewsArticleArea:Landroid/view/View;
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 551
    new-instance v9, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$10;

    invoke-direct {v9, p0, v0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$10;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v10, 0x7f0a0036

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 558
    .local v8, viewMoreLink:Landroid/view/View;
    array-length v9, v3

    if-eqz v9, :cond_0

    array-length v9, v3

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 559
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 560
    new-instance v9, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$11;

    invoke-direct {v9, p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$11;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    :goto_0
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->reviewsBuilder:Lcom/nvidia/tegrazone/builders/ReviewsBuilder;

    invoke-virtual {v9}, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->clearReviews()V

    .line 571
    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->reviewsBuilder:Lcom/nvidia/tegrazone/builders/ReviewsBuilder;

    invoke-virtual {v9}, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->loadReviewsData()V

    .line 572
    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->reviewsBuilder:Lcom/nvidia/tegrazone/builders/ReviewsBuilder;

    invoke-virtual {v9}, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->buildReviews()V

    .line 578
    .end local v0           #firstOfficialReview:Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;
    .end local v1           #firstReviewPreviewText:Landroid/widget/TextView;
    .end local v2           #firstReviewTitle:Landroid/widget/TextView;
    .end local v4           #officialReviewsCountText:Landroid/widget/TextView;
    .end local v5           #reviewsArticleArea:Landroid/view/View;
    .end local v7           #reviewsLabel:Ljava/lang/String;
    .end local v8           #viewMoreLink:Landroid/view/View;
    :goto_1
    return-void

    .line 566
    .restart local v0       #firstOfficialReview:Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;
    .restart local v1       #firstReviewPreviewText:Landroid/widget/TextView;
    .restart local v2       #firstReviewTitle:Landroid/widget/TextView;
    .restart local v4       #officialReviewsCountText:Landroid/widget/TextView;
    .restart local v5       #reviewsArticleArea:Landroid/view/View;
    .restart local v7       #reviewsLabel:Ljava/lang/String;
    .restart local v8       #viewMoreLink:Landroid/view/View;
    :cond_0
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 575
    .end local v0           #firstOfficialReview:Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;
    .end local v1           #firstReviewPreviewText:Landroid/widget/TextView;
    .end local v2           #firstReviewTitle:Landroid/widget/TextView;
    .end local v4           #officialReviewsCountText:Landroid/widget/TextView;
    .end local v5           #reviewsArticleArea:Landroid/view/View;
    .end local v7           #reviewsLabel:Ljava/lang/String;
    .end local v8           #viewMoreLink:Landroid/view/View;
    :cond_1
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private initRelatedNewsAndGames([Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter "relatedItems"
    .parameter "parentView"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    invoke-direct {p0, p1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initRelatedNewsAndGamesForTablet([Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initRelatedNewsAndGamesForPhone([Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method private initRelatedNewsAndGamesForPhone([Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;Landroid/widget/LinearLayout;)V
    .locals 5
    .parameter "relatedItems"
    .parameter "parentView"

    .prologue
    .line 259
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030033

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 261
    .local v1, relatedNewsView:Landroid/view/View;
    const v2, 0x7f0a00c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 262
    .local v0, linksText:Landroid/widget/TextView;
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    new-instance v2, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$5;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$5;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget v2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->addboxPosition:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 274
    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 279
    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    iget v2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->addboxPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->addboxPosition:I

    .line 283
    .end local v0           #linksText:Landroid/widget/TextView;
    .end local v1           #relatedNewsView:Landroid/view/View;
    :cond_0
    return-void

    .line 264
    .restart local v0       #linksText:Landroid/widget/TextView;
    .restart local v1       #relatedNewsView:Landroid/view/View;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 276
    :cond_2
    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private initRelatedNewsAndGamesForTablet([Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;)V
    .locals 4
    .parameter "relatedItems"

    .prologue
    .line 247
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v3, 0x7f0a0064

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 248
    .local v1, relatedSection:Landroid/view/View;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v3, 0x7f0a002f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 250
    .local v0, relatedLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 251
    new-instance v2, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;

    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, p1}, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;->buildRelatedItems([Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;)V

    .line 252
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 256
    .end local v0           #relatedLayout:Landroid/widget/LinearLayout;
    :goto_0
    return-void

    .line 254
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initShareThisView(Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "game"
    .parameter "parentView"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initShareThisViewForTablet(Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initShareThisViewForPhone(Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private initShareThisViewForPhone(Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "game"
    .parameter "parentView"

    .prologue
    .line 209
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030036

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 210
    .local v1, socialView:Landroid/view/View;
    new-instance v2, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$2;

    invoke-direct {v2, p0, p1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$2;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v2, 0x7f0a003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 216
    .local v0, shareBttn:Landroid/widget/Button;
    new-instance v2, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$3;

    invoke-direct {v2, p0, p1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$3;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget v2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->addboxPosition:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 223
    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    return-void

    .line 225
    :cond_0
    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private initShareThisViewForTablet(Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
    .locals 3
    .parameter "game"

    .prologue
    .line 230
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v2, 0x7f0a003c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 231
    .local v0, shareBttn:Landroid/widget/Button;
    new-instance v1, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$4;

    invoke-direct {v1, p0, p1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$4;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    return-void
.end method

.method private openImage(Landroid/app/Activity;Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;I)V
    .locals 6
    .parameter "activity"
    .parameter "v"
    .parameter "game"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 762
    invoke-virtual {p3}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v1

    aget-object v1, v1, p4

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/vo/MediaVO;->itemType:Ljava/lang/String;

    sget-object v2, Lcom/nvidia/tegrazone/model/vo/MediaVO;->VIDEO_TYPE:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 763
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    invoke-static {v1, p4}, Lcom/nvidia/tegrazone/utils/VideoHelper;->loadVideo(Landroid/app/Activity;I)V

    .line 765
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v1

    aget-object v0, v1, p4

    check-cast v0, Lcom/nvidia/tegrazone/model/vo/VideoVO;

    .line 767
    .local v0, video:Lcom/nvidia/tegrazone/model/vo/VideoVO;
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v3

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Clicks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 769
    const-string v3, "Video"

    .line 770
    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/VideoVO;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 767
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 772
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 786
    .end local v0           #video:Lcom/nvidia/tegrazone/model/vo/VideoVO;
    :goto_0
    return-void

    .line 775
    :cond_0
    invoke-static {p1, p4}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchImageViewerView(Landroid/app/Activity;I)V

    .line 778
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v3

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Clicks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 780
    const-string v3, "Image"

    .line 781
    invoke-virtual {p3}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v4

    aget-object v4, v4, p4

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 778
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 783
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    goto :goto_0
.end method

.method private openRatingsView(Landroid/app/Activity;Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "v"
    .parameter "game"
    .parameter "developerString"

    .prologue
    .line 790
    invoke-static {p1, p3, p4}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchRatingsView(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method private openRelatedItemsView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .parameter "activity"
    .parameter "v"

    .prologue
    .line 800
    invoke-static {p1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchRelatedItemsView(Landroid/app/Activity;)V

    .line 801
    return-void
.end method

.method private openReviewsView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .parameter "activity"
    .parameter "v"

    .prologue
    .line 795
    invoke-static {p1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchReviewsView(Landroid/app/Activity;)V

    .line 796
    return-void
.end method

.method public static removeListeners(Landroid/app/Activity;)V
    .locals 10
    .parameter "activity"

    .prologue
    const/4 v9, 0x0

    .line 804
    const v8, 0x7f0a0042

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 805
    .local v6, topCapsule:Landroid/widget/LinearLayout;
    if-eqz v6, :cond_4

    .line 806
    const v8, 0x7f0a0038

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 808
    .local v7, topCapsuleContents:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 809
    const v8, 0x7f0a003b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 810
    .local v0, btn:Landroid/widget/Button;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    :cond_0
    const v8, 0x7f0a005c

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    .line 813
    .local v1, coverFlow:Landroid/widget/Gallery;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v9}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 815
    :cond_1
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 817
    .local v2, linflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030031

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 818
    .local v3, ratingsView:Landroid/view/View;
    const v8, 0x7f030034

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 819
    .local v5, reviewsView:Landroid/view/View;
    const v8, 0x7f030033

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 821
    .local v4, relatedNewsView:Landroid/view/View;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 826
    .end local v0           #btn:Landroid/widget/Button;
    .end local v1           #coverFlow:Landroid/widget/Gallery;
    .end local v2           #linflater:Landroid/view/LayoutInflater;
    .end local v3           #ratingsView:Landroid/view/View;
    .end local v4           #relatedNewsView:Landroid/view/View;
    .end local v5           #reviewsView:Landroid/view/View;
    .end local v7           #topCapsuleContents:Landroid/view/View;
    :cond_4
    return-void
.end method

.method private setCurrentScreenContents(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;)V
    .locals 0
    .parameter "currentDetailsPage"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->currentScreenContents:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    .line 92
    return-void
.end method

.method public static shareThis(Landroid/app/Activity;Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
    .locals 4
    .parameter "activity"
    .parameter "v"
    .parameter "game"

    .prologue
    .line 831
    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 831
    invoke-static {p0, v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method private showDescriptionFullText(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "descArea"
    .parameter "featuresArea"
    .parameter "descText"
    .parameter "descSection"

    .prologue
    .line 668
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 669
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 670
    const/16 v0, 0x1f4

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 672
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    return-void
.end method

.method private showDescriptionLessText(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "descArea"
    .parameter "featuresArea"
    .parameter "descText"
    .parameter "descSection"

    .prologue
    const/4 v2, -0x1

    .line 676
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 677
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 678
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 680
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x8c

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    :goto_0
    return-void

    .line 683
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xdc

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public buildPDP(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 12
    .parameter "a"
    .parameter "t"

    .prologue
    const/4 v11, 0x1

    .line 113
    move-object v0, p1

    .line 114
    .local v0, activity:Landroid/app/Activity;
    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v8, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 115
    .local v4, game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;
    iput-object p2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 117
    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v8, v8, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v8, p1}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 118
    :cond_0
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 119
    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/Games/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 123
    :goto_0
    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v8}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 126
    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    if-nez v8, :cond_1

    new-instance v8, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    .line 127
    :cond_1
    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v8, v9, v4, v10}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->buildTopCapsule(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    .line 130
    const v8, 0x7f0a004e

    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->minisiteBody:Landroid/widget/LinearLayout;

    .line 131
    const v8, 0x7f0a005d

    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 132
    .local v1, addBox:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 134
    :cond_2
    const v8, 0x7f0a005c

    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Gallery;

    .line 137
    .local v2, coverFlow:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/nvidia/tegrazone/builders/TabButtonBuilder;->buildTabs(Landroid/app/Activity;)V

    .line 139
    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->minisiteBody:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v8, v4}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initDescriptionSection(Landroid/app/Activity;Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    .line 144
    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_3

    .line 147
    new-instance v3, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v8

    invoke-direct {v3, v0, v8}, Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;-><init>(Landroid/content/Context;[Lcom/nvidia/tegrazone/model/vo/MediaVO;)V

    .line 148
    .local v3, coverImageAdapter:Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;
    invoke-virtual {v2, v3}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 151
    new-instance v8, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$1;

    invoke-direct {v8, p0, v0, v4}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$1;-><init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    invoke-virtual {v2, v8}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    const/16 v8, 0x3e8

    invoke-virtual {v2, v8}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    .line 161
    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getImages()[Lcom/nvidia/tegrazone/model/vo/ImageVO;

    move-result-object v8

    array-length v8, v8

    if-le v8, v11, :cond_3

    invoke-virtual {v2, v11, v11}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 163
    .end local v3           #coverImageAdapter:Lcom/nvidia/tegrazone/adapters/NVGalleryAdapter;
    :cond_3
    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v8, v8, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v8, v8, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 164
    :cond_4
    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v9, 0x7f0a0060

    invoke-virtual {v8, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 165
    .local v5, imagesAndVIdeosSection:Landroid/view/ViewGroup;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->showGameDetailsArea()V

    .line 172
    .end local v5           #imagesAndVIdeosSection:Landroid/view/ViewGroup;
    :cond_5
    invoke-direct {p0, v0, v4, v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initCommentsAndRatings(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/view/ViewGroup;)V

    .line 176
    invoke-direct {p0, v0, v4}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initOfficialReviews(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    .line 179
    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getRelatedItems()[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initRelatedNewsAndGames([Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;Landroid/widget/LinearLayout;)V

    .line 181
    invoke-direct {p0, v4, v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initShareThisView(Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/view/ViewGroup;)V

    .line 184
    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v8, v8, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v8, v8, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_9

    .line 185
    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->minisiteBody:Landroid/widget/LinearLayout;

    const v9, 0x7f0a003d

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 186
    .local v6, pullquote:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->minisiteBody:Landroid/widget/LinearLayout;

    const v9, 0x7f0a003e

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 187
    .local v7, quoteSource:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getPullquote()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 188
    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getPullquote()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_6
    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getQuoteSource()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 191
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getQuoteSource()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .end local v6           #pullquote:Landroid/widget/TextView;
    .end local v7           #quoteSource:Landroid/widget/TextView;
    :cond_7
    :goto_1
    sget-object v8, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->GAME_DETAILS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    invoke-direct {p0, v8}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->setCurrentScreenContents(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;)V

    .line 198
    return-void

    .line 121
    .end local v1           #addBox:Landroid/widget/LinearLayout;
    .end local v2           #coverFlow:Landroid/widget/Gallery;
    :cond_8
    iget-object v8, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/Games/notitleset"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    .restart local v1       #addBox:Landroid/widget/LinearLayout;
    .restart local v2       #coverFlow:Landroid/widget/Gallery;
    :cond_9
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->managePanelSizesForTablets()V

    goto :goto_1
.end method

.method public getCurrentScreenContents()Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->currentScreenContents:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    return-object v0
.end method

.method public hideCommentsAndRatings()V
    .locals 3

    .prologue
    .line 838
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v2, 0x7f0a0062

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 839
    .local v0, commentsAndRatingsSection:Landroid/view/View;
    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 840
    :cond_0
    return-void
.end method

.method public initCommentsAndRatingsForTablet(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 307
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v3, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 308
    .local v2, game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v3, Lcom/nvidia/tegrazone/model/NVModel;->comments:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    .line 310
    .local v0, comments:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v4, 0x7f0a0062

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 311
    .local v1, commentsAndRatingsSection:Landroid/view/View;
    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 312
    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 313
    invoke-direct {p0, p1, v2}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initCommentsAndRatingsTopArea(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    .line 314
    invoke-direct {p0, p1, v0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initCommentsAndRatingsBottomArea(Landroid/app/Activity;[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;)V

    .line 315
    if-eqz v0, :cond_2

    array-length v3, v0

    if-ltz v3, :cond_2

    .line 316
    invoke-direct {p0, p1, v2}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initCommentsAndRatingsViewMoreLink(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    .line 319
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_0
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->commentsBuilder:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    if-nez v3, :cond_1

    new-instance v3, Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->commentsBuilder:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    .line 323
    :cond_1
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->commentsBuilder:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v3, v4}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->init(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    .line 324
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->commentsBuilder:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    invoke-virtual {v3}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->clearComments()V

    .line 325
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->commentsBuilder:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    invoke-virtual {v3}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->buildComments()V

    .line 331
    :goto_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->managePanelSizesForTablets()V

    .line 333
    return-void

    .line 318
    :cond_2
    invoke-direct {p0, p1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->hideCommentsAndRatingsViewMoreLink(Landroid/app/Activity;)V

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->hideCommentsAndRatings()V

    goto :goto_1
.end method

.method public isCommentsPageShowing()Z
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->COMMENTS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->currentScreenContents:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGameDetailsShowing()Z
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->GAME_DETAILS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->currentScreenContents:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReviewsPageShowing()Z
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->REVIEWS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->currentScreenContents:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public managePanelSizesForTablets()V
    .locals 10

    .prologue
    const/16 v9, 0xaa

    const/16 v8, 0x78

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 693
    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v5, 0x7f0a0032

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 694
    .local v3, reviewsBodyArea:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v5, 0x7f0a002f

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 697
    .local v1, relatedBodyArea:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOfficialReviews()[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    move-result-object v0

    .line 698
    .local v0, officialReviews:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;
    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getRelatedItems()[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    move-result-object v2

    .line 702
    .local v2, relatedItems:[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    .line 705
    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 707
    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 710
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0xf0

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    array-length v4, v0

    if-le v4, v7, :cond_3

    .line 719
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    array-length v4, v2

    if-eqz v4, :cond_0

    .line 727
    array-length v4, v2

    if-le v4, v7, :cond_4

    .line 728
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 721
    :cond_3
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 730
    :cond_4
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public openFullArticle(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;)V
    .locals 1
    .parameter "activity"
    .parameter "officialReview"

    .prologue
    .line 585
    invoke-virtual {p2}, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->getReviewURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->updatePDP(Landroid/app/Activity;Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public serviceFault(II)V
    .locals 3
    .parameter "methodName"
    .parameter "errorCode"

    .prologue
    .line 859
    packed-switch p1, :pswitch_data_0

    .line 870
    :goto_0
    return-void

    .line 861
    :pswitch_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/NVUtils;->isOnline(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 863
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    .line 862
    invoke-static {v0, v1, v2}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showOK(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 867
    :goto_1
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    goto :goto_0

    .line 865
    :cond_0
    new-instance v0, Lcom/nvidia/tegrazone/utils/NVBroadcast;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showRetry(Landroid/app/Activity;)V

    goto :goto_1

    .line 859
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public serviceResult(I)V
    .locals 2
    .parameter "methodName"

    .prologue
    .line 846
    packed-switch p1, :pswitch_data_0

    .line 853
    :goto_0
    return-void

    .line 848
    :pswitch_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->buildPDP(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 850
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    goto :goto_0

    .line 846
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public setCallingActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    .line 108
    return-void
.end method

.method public setCommentsBuilder(Lcom/nvidia/tegrazone/builders/CommentsBuilder;)V
    .locals 0
    .parameter "commentsBuilder"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->commentsBuilder:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    .line 80
    return-void
.end method

.method public setReviewsBuilder(Lcom/nvidia/tegrazone/builders/ReviewsBuilder;)V
    .locals 0
    .parameter "reviewsBuilder"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->reviewsBuilder:Lcom/nvidia/tegrazone/builders/ReviewsBuilder;

    .line 84
    return-void
.end method

.method public showCommentsArea()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v1, 0x7f0a005e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    sget-object v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->COMMENTS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    invoke-direct {p0, v0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->setCurrentScreenContents(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;)V

    .line 408
    return-void
.end method

.method public showGameDetailsArea()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 417
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v2, 0x7f0a0065

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v2, 0x7f0a0066

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v2, 0x7f0a005e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 420
    .local v0, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v0, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 421
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 422
    sget-object v1, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->GAME_DETAILS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    invoke-direct {p0, v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->setCurrentScreenContents(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;)V

    .line 423
    return-void
.end method

.method public showReviewsArea()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v1, 0x7f0a005e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    sget-object v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->REVIEWS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    invoke-direct {p0, v0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->setCurrentScreenContents(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;)V

    .line 414
    return-void
.end method

.method public updatePDP(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .parameter "a"
    .parameter "appId"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->callingActivity:Landroid/app/Activity;

    .line 479
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nvidia/tegrazone/control/LoadingController;->showDialog(Landroid/app/Activity;)V

    .line 482
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 484
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/4 v2, 0x4

    invoke-static {p2}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetSelectedGame(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->OBJECT_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 487
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
