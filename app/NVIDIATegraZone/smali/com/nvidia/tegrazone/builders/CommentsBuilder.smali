.class public Lcom/nvidia/tegrazone/builders/CommentsBuilder;
.super Ljava/lang/Object;
.source "CommentsBuilder.java"

# interfaces
.implements Lcom/nvidia/tegrazone/services/events/NVServiceEvent;
.implements Lcom/nvidia/tegrazone/RateThisHandler;


# instance fields
.field private activity:Landroid/app/Activity;

.field private capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

.field public commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

.field private currentIndex:I

.field public feedbackSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

.field private hasRateThis:Ljava/lang/Boolean;

.field private model:Lcom/nvidia/tegrazone/model/NVModel;

.field private nextCapsule:Landroid/view/View;

.field public rateThisView:Landroid/view/View;

.field private ratingHelper:Lcom/nvidia/tegrazone/utils/RatingHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->hasRateThis:Ljava/lang/Boolean;

    .line 46
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    .line 47
    new-instance v0, Lcom/nvidia/tegrazone/utils/RatingHelper;

    invoke-direct {v0, p1}, Lcom/nvidia/tegrazone/utils/RatingHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->ratingHelper:Lcom/nvidia/tegrazone/utils/RatingHelper;

    .line 48
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    .line 49
    new-instance v0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    invoke-direct {v0, p1}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/nvidia/tegrazone/builders/CommentsBuilder;)Lcom/nvidia/tegrazone/utils/RatingHelper;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->ratingHelper:Lcom/nvidia/tegrazone/utils/RatingHelper;

    return-object v0
.end method

.method private loadCurrentGameComments(Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 2
    .parameter "currentGame"
    .parameter "tracker"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->buildTopCapsule(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public buildComments()V
    .locals 13

    .prologue
    const v12, 0x7f02000f

    const v11, 0x7f02000b

    const/4 v10, 0x1

    .line 85
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v6, Lcom/nvidia/tegrazone/model/NVModel;->comments:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    .line 86
    .local v2, comments:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    array-length v6, v6

    if-nez v6, :cond_5

    .line 87
    :cond_0
    iput-object v2, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    .line 95
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    const v7, 0x7f0a004a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 101
    .local v3, commentsLayout:Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    array-length v6, v6

    if-lez v6, :cond_4

    .line 102
    const/4 v4, 0x0

    .line 103
    .local v4, counter:I
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    array-length v7, v6

    const/4 v8, 0x0

    move v5, v4

    .end local v4           #counter:I
    .local v5, counter:I
    :goto_1
    if-lt v8, v7, :cond_6

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, commentCount:I
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v6, v6, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v6, v6, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v6, v6, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getCommentCount()I

    move-result v1

    .line 112
    :cond_2
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->nextCapsule:Landroid/view/View;

    if-nez v6, :cond_a

    .line 113
    if-ge v5, v1, :cond_3

    .line 114
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->buildLoadMoreCapsule(Ljava/lang/Boolean;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->nextCapsule:Landroid/view/View;

    .line 115
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->nextCapsule:Landroid/view/View;

    new-instance v7, Lcom/nvidia/tegrazone/builders/CommentsBuilder$1;

    invoke-direct {v7, p0}, Lcom/nvidia/tegrazone/builders/CommentsBuilder$1;-><init>(Lcom/nvidia/tegrazone/builders/CommentsBuilder;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->nextCapsule:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    rem-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_9

    .line 122
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->nextCapsule:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 143
    :cond_3
    :goto_2
    add-int/lit8 v4, v5, 0x1

    .end local v5           #counter:I
    .restart local v4       #counter:I
    iput v5, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->currentIndex:I

    .line 146
    .end local v1           #commentCount:I
    .end local v4           #counter:I
    :cond_4
    return-void

    .line 89
    .end local v3           #commentsLayout:Landroid/widget/LinearLayout;
    :cond_5
    if-eqz v2, :cond_1

    .line 90
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    invoke-static {v6, v2}, Lcom/nvidia/tegrazone/utils/NVUtils;->combineComments([Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;)[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    move-result-object v6

    iput-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    goto :goto_0

    .line 103
    .restart local v3       #commentsLayout:Landroid/widget/LinearLayout;
    .restart local v5       #counter:I
    :cond_6
    aget-object v0, v6, v8

    .line 104
    .local v0, comment:Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    if-eqz v0, :cond_8

    iget v9, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->currentIndex:I

    sub-int/2addr v9, v10

    if-lt v9, v5, :cond_7

    iget v9, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->currentIndex:I

    if-nez v9, :cond_8

    .line 106
    :cond_7
    iget-object v9, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    invoke-virtual {v9, v0, v5}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->buildCommentsCapsule(Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    :cond_8
    add-int/lit8 v4, v5, 0x1

    .line 103
    .end local v5           #counter:I
    .restart local v4       #counter:I
    add-int/lit8 v8, v8, 0x1

    move v5, v4

    .end local v4           #counter:I
    .restart local v5       #counter:I
    goto :goto_1

    .line 124
    .end local v0           #comment:Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    .restart local v1       #commentCount:I
    :cond_9
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->nextCapsule:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 131
    :cond_a
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->nextCapsule:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 132
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v6, v6, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getCommentCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 133
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->nextCapsule:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    rem-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_b

    .line 136
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->nextCapsule:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 138
    :cond_b
    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->nextCapsule:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public buildRateThis()V
    .locals 5

    .prologue
    .line 149
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    const v3, 0x7f0a004a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 151
    .local v0, commentsLayout:Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->hasRateThis:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->rateThisView:Landroid/view/View;

    .line 156
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->rateThisView:Landroid/view/View;

    new-instance v3, Lcom/nvidia/tegrazone/builders/CommentsBuilder$2;

    invoke-direct {v3, p0}, Lcom/nvidia/tegrazone/builders/CommentsBuilder$2;-><init>(Lcom/nvidia/tegrazone/builders/CommentsBuilder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->rateThisView:Landroid/view/View;

    const v3, 0x7f0a00b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 163
    .local v1, rateThisButton:Landroid/widget/Button;
    new-instance v2, Lcom/nvidia/tegrazone/builders/CommentsBuilder$3;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/builders/CommentsBuilder$3;-><init>(Lcom/nvidia/tegrazone/builders/CommentsBuilder;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->rateThisView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->hasRateThis:Ljava/lang/Boolean;

    .line 173
    .end local v1           #rateThisButton:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public buyApp(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchMarket(Landroid/app/Activity;Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method

.method public clearComments()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    .line 77
    iput v2, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->currentIndex:I

    .line 78
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->hasRateThis:Ljava/lang/Boolean;

    .line 80
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    const v2, 0x7f0a004a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 81
    .local v0, commentsLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 82
    return-void
.end method

.method public getComments()V
    .locals 5

    .prologue
    .line 66
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/nvidia/tegrazone/control/LoadingController;->showDialog(Landroid/app/Activity;)V

    .line 67
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->feedbackSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->feedbackSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/16 v2, 0x8

    iget v3, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->currentIndex:I

    invoke-static {v3}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetComments(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 71
    .local v0, e1:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public handleMoreClicked()V
    .locals 5

    .prologue
    .line 178
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->feedbackSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->feedbackSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/16 v2, 0x8

    iget v3, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->currentIndex:I

    invoke-static {v3}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetComments(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 182
    .local v0, e1:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 54
    .local v0, currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;
    invoke-direct {p0, v0, p1}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->loadCurrentGameComments(Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    .line 56
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->buildRateThis()V

    .line 57
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->getComments()V

    .line 244
    return-void
.end method

.method public serviceFault(II)V
    .locals 3
    .parameter "methodName"
    .parameter "errorCode"

    .prologue
    const/4 v2, 0x1

    .line 220
    packed-switch p1, :pswitch_data_0

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    const v1, 0x7f060047

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    :goto_0
    return-void

    .line 222
    :pswitch_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    const-string v1, "Save comment failed, Please try again"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 225
    :pswitch_2
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    .line 226
    invoke-static {v0, v1, v2}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showOK(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 232
    :goto_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->buildRateThis()V

    .line 233
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    goto :goto_0

    .line 229
    :cond_0
    new-instance v1, Lcom/nvidia/tegrazone/utils/NVBroadcast;

    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/nvidia/tegrazone/services/events/NVServiceEvent;

    invoke-direct {v1, v0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showRetry(Landroid/app/Activity;)V

    goto :goto_1

    .line 220
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public serviceResult(I)V
    .locals 1
    .parameter "methodName"

    .prologue
    .line 210
    packed-switch p1, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 212
    :pswitch_0
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 213
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->buildComments()V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public updateRating(Ljava/lang/String;)V
    .locals 5
    .parameter "rating"

    .prologue
    .line 188
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->rateThisView:Landroid/view/View;

    const v4, 0x7f0a00b0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 189
    .local v0, rateThisButton:Landroid/widget/Button;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->rateThisView:Landroid/view/View;

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    .line 192
    .local v1, ratingBar:Landroid/widget/RatingBar;
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->rateThisView:Landroid/view/View;

    const v4, 0x7f0a00b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 193
    .local v2, ratingInfo:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    invoke-static {v1, p1}, Lcom/nvidia/tegrazone/utils/RatingHelper;->setRatingOnBarByRating(Landroid/widget/RatingBar;Ljava/lang/String;)Landroid/widget/RatingBar;

    .line 196
    return-void
.end method
