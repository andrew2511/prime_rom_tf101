.class public Lcom/nvidia/tegrazone/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"

# interfaces
.implements Lcom/nvidia/tegrazone/services/events/NVServiceEvent;


# instance fields
.field private activeSelection:I

.field builtIndicators:Ljava/lang/Boolean;

.field private dots:[Landroid/widget/ImageView;

.field featureServiceManager:Lcom/nvidia/tegrazone/services/ServiceManager;

.field public featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

.field indicator:Landroid/widget/LinearLayout;

.field model:Lcom/nvidia/tegrazone/model/NVModel;

.field myinflater:Landroid/view/LayoutInflater;

.field public newsItems:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

.field newsServiceManager:Lcom/nvidia/tegrazone/services/ServiceManager;

.field private panelManager:Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;

.field private previousSelection:I

.field public serviceCounter:I

.field tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->serviceCounter:I

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->builtIndicators:Ljava/lang/Boolean;

    .line 64
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/nvidia/tegrazone/HomeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->activeSelection:I

    return v0
.end method


# virtual methods
.method public buildFeatured()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 166
    iget-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v6, v6, Lcom/nvidia/tegrazone/model/NVModel;->featuredGames:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    iput-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 167
    iget-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    array-length v6, v6

    if-lez v6, :cond_1

    .line 169
    const v6, 0x7f0a0079

    invoke-virtual {p0, v6}, Lcom/nvidia/tegrazone/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 171
    .local v0, coverFlow:Landroid/widget/Gallery;
    new-instance v1, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;

    iget-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-direct {v1, p0, v6}, Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;-><init>(Landroid/content/Context;[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;)V

    .line 174
    .local v1, coverImageAdapter:Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;
    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 176
    invoke-virtual {v0, v9, v9}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 177
    const/16 v6, 0xfa

    invoke-virtual {v0, v6}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    .line 180
    new-instance v6, Lcom/nvidia/tegrazone/HomeActivity$2;

    invoke-direct {v6, p0}, Lcom/nvidia/tegrazone/HomeActivity$2;-><init>(Lcom/nvidia/tegrazone/HomeActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    new-instance v6, Lcom/nvidia/tegrazone/HomeActivity$3;

    invoke-direct {v6, p0}, Lcom/nvidia/tegrazone/HomeActivity$3;-><init>(Lcom/nvidia/tegrazone/HomeActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 206
    iget-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->indicator:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 208
    iget-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    array-length v6, v6

    new-array v6, v6, [Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->dots:[Landroid/widget/ImageView;

    .line 209
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    array-length v6, v6

    if-lt v3, v6, :cond_2

    .line 220
    iput v9, p0, Lcom/nvidia/tegrazone/HomeActivity;->activeSelection:I

    .line 222
    invoke-virtual {p0, v9}, Lcom/nvidia/tegrazone/HomeActivity;->handleItemSelected(I)V

    .line 223
    iget-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v6, v6, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v6, v6, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v6, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    :cond_0
    const v6, 0x7f0a007b

    invoke-virtual {p0, v6}, Lcom/nvidia/tegrazone/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 225
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 228
    .end local v0           #coverFlow:Landroid/widget/Gallery;
    .end local v1           #coverImageAdapter:Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;
    .end local v3           #i:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    return-void

    .line 210
    .restart local v0       #coverFlow:Landroid/widget/Gallery;
    .restart local v1       #coverImageAdapter:Lcom/nvidia/tegrazone/adapters/FeaturedAdapter;
    .restart local v3       #i:I
    :cond_2
    iget-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->myinflater:Landroid/view/LayoutInflater;

    if-eqz v6, :cond_3

    .line 211
    iget-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->myinflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03001e

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 212
    .local v2, dot:Landroid/view/View;
    const v6, 0x7f0a008c

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 213
    .local v4, indicatorDot:Landroid/widget/ImageView;
    const v6, 0x7f020017

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    iget-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->indicator:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v6, p0, Lcom/nvidia/tegrazone/HomeActivity;->dots:[Landroid/widget/ImageView;

    aput-object v4, v6, v3

    .line 209
    .end local v2           #dot:Landroid/view/View;
    .end local v4           #indicatorDot:Landroid/widget/ImageView;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public buildNews()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 133
    const v5, 0x7f0a0087

    invoke-virtual {p0, v5}, Lcom/nvidia/tegrazone/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 135
    .local v2, l:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 137
    :cond_0
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/nvidia/tegrazone/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 139
    .local v3, linflater:Landroid/view/LayoutInflater;
    iget-object v5, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v5, v5, Lcom/nvidia/tegrazone/model/NVModel;->news:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    iput-object v5, p0, Lcom/nvidia/tegrazone/HomeActivity;->newsItems:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    .line 140
    iget-object v5, p0, Lcom/nvidia/tegrazone/HomeActivity;->newsItems:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nvidia/tegrazone/HomeActivity;->newsItems:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 141
    const/4 v0, 0x0

    .line 144
    .local v0, counter:I
    iget-object v5, p0, Lcom/nvidia/tegrazone/HomeActivity;->newsItems:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    array-length v6, v5

    move v7, v9

    :goto_0
    if-lt v7, v6, :cond_2

    .line 162
    .end local v0           #counter:I
    :cond_1
    return-void

    .line 144
    .restart local v0       #counter:I
    :cond_2
    aget-object v4, v5, v7

    .line 145
    .local v4, newsItem:Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    if-eqz v4, :cond_3

    .line 147
    invoke-static {v3, v4, v0, v9}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->buildNewsCapsule(Landroid/view/LayoutInflater;Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;IZ)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, customView:Landroid/view/View;
    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getNewsId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    new-instance v8, Lcom/nvidia/tegrazone/HomeActivity$1;

    invoke-direct {v8, p0}, Lcom/nvidia/tegrazone/HomeActivity$1;-><init>(Lcom/nvidia/tegrazone/HomeActivity;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 144
    .end local v1           #customView:Landroid/view/View;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public checkDots(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->dots:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/nvidia/tegrazone/HomeActivity;->previousSelection:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 262
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->dots:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/nvidia/tegrazone/HomeActivity;->activeSelection:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 264
    return-void
.end method

.method public getGames()V
    .locals 5

    .prologue
    .line 316
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/nvidia/tegrazone/HomeActivity$4;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/HomeActivity$4;-><init>(Lcom/nvidia/tegrazone/HomeActivity;)V

    .line 320
    const-wide/16 v3, 0x1f4

    .line 316
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/HomeActivity;->featureServiceManager:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/4 v2, 0x2

    invoke-static {}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetFeaturedGames()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 330
    .local v0, e1:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNews()V
    .locals 5

    .prologue
    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/HomeActivity;->newsServiceManager:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/4 v2, 0x0

    invoke-static {}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetAllNews()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 340
    .local v0, e1:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public handleItemSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 232
    iget-object v2, p0, Lcom/nvidia/tegrazone/HomeActivity;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    aget-object v1, v2, p1

    .line 234
    .local v1, game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    iget v2, p0, Lcom/nvidia/tegrazone/HomeActivity;->activeSelection:I

    iput v2, p0, Lcom/nvidia/tegrazone/HomeActivity;->previousSelection:I

    .line 235
    iput p1, p0, Lcom/nvidia/tegrazone/HomeActivity;->activeSelection:I

    .line 237
    invoke-virtual {p0, p1}, Lcom/nvidia/tegrazone/HomeActivity;->checkDots(I)V

    .line 242
    iget-object v2, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v2, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/nvidia/tegrazone/HomeActivity;->panelManager:Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;

    if-nez v2, :cond_1

    .line 244
    new-instance v2, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/nvidia/tegrazone/HomeActivity;->panelManager:Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/nvidia/tegrazone/HomeActivity;->panelManager:Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;

    invoke-virtual {v2, v1}, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->updateGame(Lcom/nvidia/tegrazone/model/vo/SmallGameVO;)V

    .line 251
    :goto_0
    return-void

    .line 248
    :cond_2
    const v2, 0x7f0a007a

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    .local v0, featuredText:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public handleServiceCounter()V
    .locals 2

    .prologue
    .line 273
    iget v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->serviceCounter:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 274
    :cond_0
    return-void
.end method

.method public onAppClick(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "position"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchApp(Landroid/app/Activity;Ljava/lang/String;)V

    .line 125
    const/high16 v0, 0x7f04

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/tegrazone/HomeActivity;->overridePendingTransition(II)V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 75
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 77
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "UA-1273456-49"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Spotlight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 83
    new-instance v0, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->featureServiceManager:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 84
    new-instance v0, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->newsServiceManager:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 87
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/HomeActivity;->setContentView(I)V

    .line 89
    const v0, 0x7f0a0075

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->indicator:Landroid/widget/LinearLayout;

    .line 90
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->myinflater:Landroid/view/LayoutInflater;

    .line 93
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->featuredGames:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/HomeActivity;->getGames()V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->news:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/HomeActivity;->getNews()V

    .line 114
    :goto_1
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/HomeActivity;->buildFeatured()V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/HomeActivity;->buildNews()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 419
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 420
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    .line 422
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 404
    invoke-static {}, Lcom/nvidia/tegrazone/components/ImageLoader;->clearCache()V

    .line 405
    return-void
.end method

.method public onNewsClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchNews(Landroid/app/Activity;Ljava/lang/String;)V

    .line 119
    const/high16 v0, 0x7f04

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/tegrazone/HomeActivity;->overridePendingTransition(II)V

    .line 120
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 346
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 352
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 348
    :pswitch_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/HomeActivity;->getGames()V

    .line 349
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/HomeActivity;->getNews()V

    .line 350
    const/4 v0, 0x1

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x7f0a00cb
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 396
    const-string v0, "onPausing"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 398
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 399
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 366
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 367
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 378
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 382
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->lastDataLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 387
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/HomeActivity;->refresh()V

    .line 390
    :cond_1
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 391
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 372
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 373
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 410
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 411
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 413
    const-string v0, "onStopping"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/HomeActivity;->getGames()V

    .line 359
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/HomeActivity;->getNews()V

    .line 360
    return-void
.end method

.method public serviceFault(II)V
    .locals 1
    .parameter "methodName"
    .parameter "errorCode"

    .prologue
    .line 294
    packed-switch p1, :pswitch_data_0

    .line 304
    :goto_0
    :pswitch_0
    return-void

    .line 300
    :pswitch_1
    new-instance v0, Lcom/nvidia/tegrazone/utils/NVBroadcast;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showRetry(Landroid/app/Activity;)V

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public serviceResult(I)V
    .locals 1
    .parameter "methodName"

    .prologue
    .line 279
    packed-switch p1, :pswitch_data_0

    .line 291
    :goto_0
    :pswitch_0
    return-void

    .line 281
    :pswitch_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/HomeActivity;->buildNews()V

    .line 282
    iget v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->serviceCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->serviceCounter:I

    .line 283
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/HomeActivity;->handleServiceCounter()V

    goto :goto_0

    .line 286
    :pswitch_2
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/HomeActivity;->buildFeatured()V

    .line 287
    iget v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->serviceCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nvidia/tegrazone/HomeActivity;->serviceCounter:I

    .line 288
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/HomeActivity;->handleServiceCounter()V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public showDialog()V
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/control/LoadingController;->showDialog(Landroid/app/Activity;)V

    .line 309
    return-void
.end method

.method public updateFeaturedPanel(Lcom/nvidia/tegrazone/model/vo/SmallGameVO;)V
    .locals 0
    .parameter "game"

    .prologue
    .line 269
    return-void
.end method
