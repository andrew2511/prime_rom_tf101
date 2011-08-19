.class public Lcom/nvidia/tegrazone/ArticleActivity;
.super Landroid/app/Activity;
.source "ArticleActivity.java"

# interfaces
.implements Lcom/nvidia/tegrazone/services/events/NVServiceEvent;


# instance fields
.field public aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

.field public articleSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

.field model:Lcom/nvidia/tegrazone/model/NVModel;

.field public newsItem:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

.field private relatedItemsBuilder:Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;

.field tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->articleSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 45
    new-instance v0, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    invoke-direct {v0}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;-><init>()V

    iput-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->newsItem:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    .line 53
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    .line 39
    return-void
.end method


# virtual methods
.method public buildArticle()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 129
    iget-object v3, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->currentNews:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    iput-object v3, p0, Lcom/nvidia/tegrazone/ArticleActivity;->newsItem:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    .line 132
    const v3, 0x7f0a009a

    invoke-virtual {p0, v3}, Lcom/nvidia/tegrazone/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 133
    .local v0, articleScroller:Landroid/widget/ScrollView;
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v6, v6}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 136
    :cond_0
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/nvidia/tegrazone/ArticleActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 138
    iget-object v3, p0, Lcom/nvidia/tegrazone/ArticleActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v4, "UA-1273456-49"

    invoke-virtual {v3, v4, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 140
    iget-object v3, p0, Lcom/nvidia/tegrazone/ArticleActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v5, v5, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/News/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nvidia/tegrazone/ArticleActivity;->newsItem:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    invoke-virtual {v5}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/nvidia/tegrazone/ArticleActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 143
    invoke-static {p0}, Lcom/nvidia/tegrazone/builders/NewsBuilder;->buildNews(Landroid/app/Activity;)V

    .line 145
    const v3, 0x7f0a00a2

    invoke-virtual {p0, v3}, Lcom/nvidia/tegrazone/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 146
    .local v1, relatedHolder:Landroid/widget/LinearLayout;
    const v3, 0x7f0a002f

    invoke-virtual {p0, v3}, Lcom/nvidia/tegrazone/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 147
    .local v2, relatedList:Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/nvidia/tegrazone/ArticleActivity;->newsItem:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    invoke-virtual {v3}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getRelatedItems()[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nvidia/tegrazone/ArticleActivity;->newsItem:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    invoke-virtual {v3}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getRelatedItems()[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_2

    .line 148
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 149
    :cond_1
    iget-object v3, p0, Lcom/nvidia/tegrazone/ArticleActivity;->relatedItemsBuilder:Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;

    iget-object v4, p0, Lcom/nvidia/tegrazone/ArticleActivity;->newsItem:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getRelatedItems()[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;->buildRelatedItems([Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;)V

    .line 150
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public buildNewsList(Ljava/lang/String;)V
    .locals 14
    .parameter "newsId"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 235
    const v9, 0x7f0a0087

    invoke-virtual {p0, v9}, Lcom/nvidia/tegrazone/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 236
    .local v4, l:Landroid/widget/LinearLayout;
    if-nez v4, :cond_0

    .line 280
    :goto_0
    return-void

    .line 239
    :cond_0
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/nvidia/tegrazone/ArticleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 240
    .local v5, linflater:Landroid/view/LayoutInflater;
    iget-object v9, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v7, v9, Lcom/nvidia/tegrazone/model/NVModel;->news:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    .line 241
    .local v7, newsItems:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    if-eqz v7, :cond_1

    array-length v9, v7

    if-lez v9, :cond_1

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, counter:I
    array-length v9, v7

    move v10, v12

    :goto_1
    if-lt v10, v9, :cond_2

    .line 279
    .end local v0           #counter:I
    :cond_1
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 244
    .restart local v0       #counter:I
    :cond_2
    aget-object v6, v7, v10

    .line 245
    .local v6, newsItem:Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    if-eqz v6, :cond_5

    .line 246
    invoke-static {v5, v6, v0, v12}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->buildNewsCapsule(Landroid/view/LayoutInflater;Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;IZ)Landroid/view/View;

    move-result-object v8

    .line 248
    .local v8, view:Landroid/view/View;
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getNewsId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 249
    new-instance v11, Lcom/nvidia/tegrazone/ArticleActivity$1;

    invoke-direct {v11, p0}, Lcom/nvidia/tegrazone/ArticleActivity$1;-><init>(Lcom/nvidia/tegrazone/ArticleActivity;)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v11, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v11, v11, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 257
    const v11, 0x7f0a00a6

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 258
    .local v2, firstLine:Landroid/widget/TextView;
    const v11, 0x7f0a00aa

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 260
    .local v1, firstLargeLine:Landroid/widget/TextView;
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    .end local v1           #firstLargeLine:Landroid/widget/TextView;
    .end local v2           #firstLine:Landroid/widget/TextView;
    :cond_3
    const v11, 0x7f0a00a8

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 267
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getNewsId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 270
    invoke-virtual {p0, v8}, Lcom/nvidia/tegrazone/ArticleActivity;->selectNews(Landroid/view/View;)V

    .line 272
    :cond_4
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    .line 244
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v8           #view:Landroid/view/View;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public clearRelatedItems()V
    .locals 3

    .prologue
    .line 160
    const v2, 0x7f0a002f

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 161
    .local v1, relatedLayout:Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 167
    return-void

    .line 165
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getArticle()V
    .locals 5

    .prologue
    .line 198
    iget-object v1, p0, Lcom/nvidia/tegrazone/ArticleActivity;->articleSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/ArticleActivity;->articleSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/ArticleActivity;->articleSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->isRunning()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/ArticleActivity;->articleSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->lastNewsId:Ljava/lang/String;

    invoke-static {v3}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetSelectedNews(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->OBJECT_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 206
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public initMasthead()V
    .locals 2

    .prologue
    .line 359
    const v1, 0x7f0a008e

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, masthead:Landroid/view/View;
    new-instance v1, Lcom/nvidia/tegrazone/ArticleActivity$2;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/ArticleActivity$2;-><init>(Lcom/nvidia/tegrazone/ArticleActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f020069

    .line 59
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/ArticleActivity;->finishActivity(I)V

    .line 62
    iget-object v4, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v4, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 65
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->orientationSetter(Landroid/app/Activity;)V

    .line 67
    new-instance v4, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;

    invoke-direct {v4, p0}, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/nvidia/tegrazone/ArticleActivity;->relatedItemsBuilder:Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v4, 0x7f030027

    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/ArticleActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->initMasthead()V

    .line 74
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, ""

    .line 76
    .local v1, newsId:Ljava/lang/String;
    iget-object v4, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->currentNews:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->newsBlocker:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 77
    :cond_0
    if-eqz v0, :cond_1

    const-string v4, "newsId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_1
    :goto_0
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->lastNewsId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 84
    iget-object v4, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iput-object v1, v4, Lcom/nvidia/tegrazone/model/NVModel;->lastNewsId:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/nvidia/tegrazone/control/LoadingController;->showDialog(Landroid/app/Activity;)V

    .line 87
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getArticle()V

    .line 101
    :goto_1
    invoke-static {p0}, Lcom/nvidia/tegrazone/builders/TabButtonBuilder;->buildTabs(Landroid/app/Activity;)V

    .line 103
    const v4, 0x7f0a0096

    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 104
    .local v3, tab1:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 105
    :cond_2
    iget-object v4, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v4, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 106
    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/ArticleActivity;->buildNewsList(Ljava/lang/String;)V

    .line 108
    :cond_3
    const v4, 0x7f0a0094

    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 110
    .local v2, tab0:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v4, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 111
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02005e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020060

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    .end local v2           #tab0:Landroid/widget/LinearLayout;
    :goto_2
    return-void

    .line 79
    .end local v3           #tab1:Landroid/widget/LinearLayout;
    :cond_4
    iget-object v4, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->currentNews:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getNewsId()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 90
    :cond_5
    iget-object v4, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->currentNews:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    if-eqz v4, :cond_6

    .line 91
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->buildArticle()V

    goto :goto_1

    .line 94
    :cond_6
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/nvidia/tegrazone/control/LoadingController;->showDialog(Landroid/app/Activity;)V

    .line 96
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getArticle()V

    goto :goto_1

    .line 115
    .restart local v2       #tab0:Landroid/widget/LinearLayout;
    .restart local v3       #tab1:Landroid/widget/LinearLayout;
    :cond_7
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 120
    .end local v2           #tab0:Landroid/widget/LinearLayout;
    :cond_8
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 173
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 174
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 437
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 438
    iget-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    .line 440
    :cond_0
    return-void
.end method

.method public onNewsClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/nvidia/tegrazone/ArticleActivity;->selectNews(Landroid/view/View;)V

    .line 298
    iget-object v3, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->currentNews:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    if-eqz v3, :cond_0

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->currentNews:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getNewsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 301
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, newsId:Ljava/lang/String;
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/nvidia/tegrazone/control/LoadingController;->showDialog(Landroid/app/Activity;)V

    .line 303
    iget-object v3, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iput-object v1, v3, Lcom/nvidia/tegrazone/model/NVModel;->lastNewsId:Ljava/lang/String;

    .line 304
    new-instance v2, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    .line 306
    .local v2, newsSrv:Lcom/nvidia/tegrazone/services/ServiceManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetSelectedNews(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/nvidia/tegrazone/services/NVServices;->OBJECT_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->clearRelatedItems()V

    .line 314
    .end local v1           #newsId:Ljava/lang/String;
    .end local v2           #newsSrv:Lcom/nvidia/tegrazone/services/ServiceManager;
    :cond_1
    return-void

    .line 308
    .restart local v1       #newsId:Ljava/lang/String;
    .restart local v2       #newsSrv:Lcom/nvidia/tegrazone/services/ServiceManager;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 310
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 183
    :pswitch_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->shareThis()V

    move v0, v1

    .line 184
    goto :goto_0

    .line 186
    :pswitch_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getArticle()V

    move v0, v1

    .line 187
    goto :goto_0

    .line 189
    :pswitch_2
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->showAboutMenu()V

    move v0, v1

    .line 190
    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x7f0a00cb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 415
    const-string v0, "onPausing"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 417
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 420
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/NVUtils;->checkAboutWindow(Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;)V

    .line 423
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 383
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 384
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->newsBlocker:Ljava/lang/Boolean;

    .line 353
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 399
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 401
    iget-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->lastDataLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 406
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchSpotlight(Landroid/app/Activity;)V

    .line 409
    :cond_1
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 410
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 347
    iget-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->newsBlocker:Ljava/lang/Boolean;

    .line 348
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 389
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 390
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    :cond_0
    new-instance v0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    .line 392
    iget-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/NVUtils;->restartAboutWindow(Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;)V

    .line 394
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 427
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 428
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 429
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 431
    const-string v0, "onStopping"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public openGames(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 226
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchGamesList(Landroid/app/Activity;)V

    .line 227
    return-void
.end method

.method public openSpotlight(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 231
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchSpotlight(Landroid/app/Activity;)V

    .line 232
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getArticle()V

    .line 376
    return-void
.end method

.method public selectNews(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 283
    const v4, 0x7f0a0087

    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/ArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 285
    .local v2, newsLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 286
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 287
    move-object v0, v3

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 289
    .local v1, lastNews:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 292
    .end local v1           #lastNews:Landroid/view/View;
    :cond_0
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 293
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 294
    return-void
.end method

.method public serviceFault(II)V
    .locals 3
    .parameter "methodName"
    .parameter "errorCode"

    .prologue
    .line 328
    packed-switch p1, :pswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 330
    :pswitch_0
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->isOnline(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v0, v1, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showOK(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 336
    :goto_1
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    goto :goto_0

    .line 334
    :cond_0
    new-instance v0, Lcom/nvidia/tegrazone/utils/NVBroadcast;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showRetry(Landroid/app/Activity;)V

    goto :goto_1

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public serviceResult(I)V
    .locals 1
    .parameter "methodName"

    .prologue
    .line 319
    packed-switch p1, :pswitch_data_0

    .line 325
    :goto_0
    return-void

    .line 321
    :pswitch_0
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 322
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->buildArticle()V

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public shareThis()V
    .locals 3

    .prologue
    .line 219
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nvidia/tegrazone/ArticleActivity;->newsItem:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {p0, v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public showAboutMenu()V
    .locals 1

    .prologue
    .line 369
    new-instance v0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    .line 370
    iget-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->showAboutWindow()V

    .line 371
    return-void
.end method
