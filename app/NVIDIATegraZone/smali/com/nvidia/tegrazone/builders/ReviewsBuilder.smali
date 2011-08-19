.class public Lcom/nvidia/tegrazone/builders/ReviewsBuilder;
.super Ljava/lang/Object;
.source "ReviewsBuilder.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private reviewItems:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->activity:Landroid/app/Activity;

    .line 20
    return-void
.end method


# virtual methods
.method public buildReviews()V
    .locals 13

    .prologue
    .line 39
    iget-object v10, p0, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->activity:Landroid/app/Activity;

    const v11, 0x7f0a006c

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 42
    .local v8, reviewsLayout:Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 44
    .local v2, individualItem:Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v10, p0, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->reviewItems:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    array-length v10, v10

    if-lt v0, v10, :cond_0

    .line 104
    return-void

    .line 45
    :cond_0
    iget-object v10, p0, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->reviewItems:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    aget-object v10, v10, v0

    if-eqz v10, :cond_4

    .line 48
    iget-object v10, p0, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->reviewItems:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    aget-object v2, v10, v0

    .line 54
    iget-object v10, p0, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030035

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 58
    .local v9, reviewsView:Landroid/view/View;
    const v10, 0x7f0a00c4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, index:Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v0, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, reviewIndex:Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v10, 0x7f0a00c5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 64
    .local v7, reviewTitle:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->getReviewSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v10, 0x7f0a00c6

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 67
    .local v5, reviewDescription:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->getReviewText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v10

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v10

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 70
    :cond_1
    const v10, 0x7f0a00c7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 71
    .local v4, reviewDate:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, releaseDate:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 73
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .end local v3           #releaseDate:Ljava/lang/String;
    .end local v4           #reviewDate:Landroid/widget/TextView;
    :cond_2
    rem-int/lit8 v10, v0, 0x2

    if-eqz v10, :cond_6

    .line 79
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v10

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v10

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 80
    :cond_3
    const v10, 0x7f020007

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    :goto_1
    invoke-virtual {v9, v0}, Landroid/view/View;->setId(I)V

    .line 93
    new-instance v10, Lcom/nvidia/tegrazone/builders/ReviewsBuilder$1;

    invoke-direct {v10, p0}, Lcom/nvidia/tegrazone/builders/ReviewsBuilder$1;-><init>(Lcom/nvidia/tegrazone/builders/ReviewsBuilder;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44
    .end local v1           #index:Landroid/widget/TextView;
    .end local v5           #reviewDescription:Landroid/widget/TextView;
    .end local v6           #reviewIndex:Ljava/lang/String;
    .end local v7           #reviewTitle:Landroid/widget/TextView;
    .end local v9           #reviewsView:Landroid/view/View;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 82
    .restart local v1       #index:Landroid/widget/TextView;
    .restart local v5       #reviewDescription:Landroid/widget/TextView;
    .restart local v6       #reviewIndex:Ljava/lang/String;
    .restart local v7       #reviewTitle:Landroid/widget/TextView;
    .restart local v9       #reviewsView:Landroid/view/View;
    :cond_5
    const v10, 0x7f02000b

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 85
    :cond_6
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v10

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v10

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 86
    :cond_7
    const v10, 0x7f020005

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 88
    :cond_8
    const v10, 0x7f02000f

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public clearReviews()V
    .locals 3

    .prologue
    .line 23
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->activity:Landroid/app/Activity;

    const v2, 0x7f0a006c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 24
    .local v0, commentsLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 25
    return-void
.end method

.method public loadReviewsData()V
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOfficialReviews()[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    iput-object v1, p0, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->reviewItems:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    .line 30
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOfficialReviews()[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 35
    return-void

    .line 31
    :cond_0
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOfficialReviews()[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->reviewItems:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOfficialReviews()[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 30
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public openFullArticle(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->reviewItems:[Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;->getReviewURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 109
    return-void
.end method
