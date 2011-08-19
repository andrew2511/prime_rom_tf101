.class public Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;
.super Ljava/lang/Object;
.source "FeaturedPanelManager.java"


# instance fields
.field public activity:Landroid/app/Activity;

.field public game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

.field public timer:Ljava/util/Timer;

.field public timerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "a"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 37
    iput-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->activity:Landroid/app/Activity;

    .line 45
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$1;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$1;-><init>(Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->timerHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->activity:Landroid/app/Activity;

    .line 57
    return-void
.end method


# virtual methods
.method public startTimer()V
    .locals 4

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->timer:Ljava/util/Timer;

    .line 62
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->timer:Ljava/util/Timer;

    .line 63
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$2;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$2;-><init>(Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;)V

    .line 70
    const-wide/16 v2, 0x1f4

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 71
    return-void
.end method

.method public updateGame(Lcom/nvidia/tegrazone/model/vo/SmallGameVO;)V
    .locals 1
    .parameter "newGame"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    if-eq v0, p1, :cond_0

    .line 81
    iput-object p1, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 82
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->timer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->startTimer()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 86
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->startTimer()V

    goto :goto_0
.end method

.method public updatePanelContents()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 93
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->activity:Landroid/app/Activity;

    const v11, 0x7f0a007a

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 94
    .local v8, featuredText:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v10

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 98
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->activity:Landroid/app/Activity;

    const v11, 0x7f0a0082

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/nvidia/tegrazone/components/GFWebImageView;

    .line 99
    .local v5, featuredImage:Lcom/nvidia/tegrazone/components/GFWebImageView;
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getTabletFeaturedImage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/nvidia/tegrazone/utils/ImageUtils;->loadImage(Lcom/nvidia/tegrazone/components/GFWebImageView;Ljava/lang/String;)V

    .line 100
    new-instance v10, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$3;

    invoke-direct {v10, p0}, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$3;-><init>(Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;)V

    invoke-virtual {v5, v10}, Lcom/nvidia/tegrazone/components/GFWebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .end local v5           #featuredImage:Lcom/nvidia/tegrazone/components/GFWebImageView;
    :cond_0
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->activity:Landroid/app/Activity;

    const v11, 0x7f0a007e

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 108
    .local v6, featuredPrice:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getPrice()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getPrice()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_1
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->activity:Landroid/app/Activity;

    const v11, 0x7f0a007d

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 112
    .local v4, featuredDash:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->activity:Landroid/app/Activity;

    const v11, 0x7f0a007f

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 113
    .local v7, featuredShortDescription:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getShortDescription()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xfa

    invoke-static {v10, v11}, Lcom/nvidia/tegrazone/utils/StringSupport;->trimText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->activity:Landroid/app/Activity;

    const v11, 0x7f0a003b

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    .local v0, btn:Landroid/widget/Button;
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->activity:Landroid/app/Activity;

    const v11, 0x7f0a0081

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    .local v2, commentView:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->activity:Landroid/app/Activity;

    const v11, 0x7f0a0080

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RatingBar;

    .line 120
    .local v9, ratingBar:Landroid/widget/RatingBar;
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 122
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    invoke-virtual {v9, v12}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 127
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 131
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nvidia/tegrazone/utils/RatingHelper;->setRatingOnBarByFeedback(Landroid/widget/RatingBar;Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;)Landroid/widget/RatingBar;

    .line 133
    :cond_2
    new-instance v10, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$4;

    invoke-direct {v10, p0}, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$4;-><init>(Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getCommentCount()I

    move-result v1

    .line 140
    .local v1, commentCount:I
    iget-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060042

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, commentsFormat:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .end local v1           #commentCount:I
    .end local v3           #commentsFormat:Ljava/lang/String;
    :goto_0
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->timer:Ljava/util/Timer;

    .line 152
    return-void

    .line 144
    :cond_3
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    invoke-virtual {v0, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    invoke-virtual {v9, v13}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 148
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
