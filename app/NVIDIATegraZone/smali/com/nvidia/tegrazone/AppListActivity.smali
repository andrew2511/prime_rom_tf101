.class public Lcom/nvidia/tegrazone/AppListActivity;
.super Lcom/nvidia/tegrazone/AppDetailsActivity;
.source "AppListActivity.java"

# interfaces
.implements Lcom/nvidia/tegrazone/services/events/NVServiceEvent;
.implements Lcom/nvidia/tegrazone/RateThisHandler;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nvidia/tegrazone/AppDetailsActivity;",
        "Lcom/nvidia/tegrazone/services/events/NVServiceEvent;",
        "Lcom/nvidia/tegrazone/RateThisHandler;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field public aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

.field private appGalleryBuilder:Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;

.field public appId:Ljava/lang/String;

.field private appListingBuilder:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

.field game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

.field gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

.field games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

.field public gamesArray:Lorg/json/JSONArray;

.field genreSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

.field listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

.field model:Lcom/nvidia/tegrazone/model/NVModel;

.field private s:Landroid/widget/Spinner;

.field tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/nvidia/tegrazone/AppDetailsActivity;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 49
    iput-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 50
    iput-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->genreSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 51
    iput-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 52
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 53
    iput-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->gamesArray:Lorg/json/JSONArray;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/nvidia/tegrazone/AppListActivity;Landroid/widget/Spinner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nvidia/tegrazone/AppListActivity;->s:Landroid/widget/Spinner;

    return-void
.end method

.method static synthetic access$1(Lcom/nvidia/tegrazone/AppListActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->s:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method public buildGames()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 387
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v2, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 389
    const v2, 0x7f0a0005

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, appGalleryView:Landroid/view/View;
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->appGalleryBuilder:Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;

    if-nez v2, :cond_0

    new-instance v2, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->appGalleryBuilder:Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->appGalleryBuilder:Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->appGalleryBuilder:Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->buildGallery()V

    .line 395
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 405
    .end local v0           #appGalleryView:Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 397
    :cond_3
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->appListingBuilder:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->buildGameList()V

    .line 399
    const v2, 0x7f0a004b

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 401
    .local v1, appListingView:Landroid/view/View;
    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 403
    :cond_4
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->checkLoadMore()V

    goto :goto_0
.end method

.method public checkLoadMore()V
    .locals 3

    .prologue
    .line 566
    const v2, 0x7f0a004c

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 567
    .local v0, l:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 568
    const-string v2, "nextCapsule"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 569
    .local v1, nextCapsule:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 570
    new-instance v2, Lcom/nvidia/tegrazone/AppListActivity$3;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/AppListActivity$3;-><init>(Lcom/nvidia/tegrazone/AppListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    .end local v1           #nextCapsule:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public clearList()V
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v1, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    const v1, 0x7f0a004c

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 208
    .local v0, l:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 210
    .end local v0           #l:Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method public clearSearch()V
    .locals 5

    .prologue
    .line 322
    const v2, 0x7f0a000a

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 323
    .local v1, searchTxt:Landroid/widget/EditText;
    const v2, 0x7f0a000b

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 325
    .local v0, searchClearBtn:Landroid/widget/Button;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->s:Landroid/widget/Spinner;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->s:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->s:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 327
    :cond_1
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const-string v3, ""

    iput-object v3, v2, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    .line 328
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->clearList()V

    .line 329
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 330
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const-string v3, ""

    iput-object v3, v2, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    .line 331
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getList()V

    .line 341
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 342
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 343
    return-void

    .line 334
    :cond_2
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 335
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->featuredGames:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    iput-object v3, v2, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 336
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->buildGames()V

    goto :goto_0

    .line 338
    :cond_3
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getList()V

    goto :goto_0
.end method

.method public getGame()V
    .locals 5

    .prologue
    .line 450
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->isRunning()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nvidia/tegrazone/control/LoadingController;->showDialog(Landroid/app/Activity;)V

    .line 454
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    invoke-static {v3}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetSelectedGame(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->OBJECT_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 459
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 463
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nvidia/tegrazone/control/LoadingController;->showDialog(Landroid/app/Activity;)V

    .line 465
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 467
    :try_start_1
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    invoke-static {v3}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetSelectedGame(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->OBJECT_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 468
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 470
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getGenres()V
    .locals 5

    .prologue
    .line 439
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->genreSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->genreSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/16 v2, 0xa

    invoke-static {}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetGenres()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 444
    .local v0, e1:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getList()V
    .locals 5

    .prologue
    .line 414
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->isRunning()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nvidia/tegrazone/control/LoadingController;->showDialog(Landroid/app/Activity;)V

    .line 417
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetAllGames(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 422
    .local v0, e1:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 426
    .end local v0           #e1:Lorg/json/JSONException;
    :cond_1
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nvidia/tegrazone/control/LoadingController;->showDialog(Landroid/app/Activity;)V

    .line 427
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 429
    :try_start_1
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetAllGames(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 430
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 432
    .restart local v0       #e1:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public handleMoreClicked()V
    .locals 6

    .prologue
    .line 580
    const v2, 0x7f0a004c

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 581
    .local v1, l:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 583
    :try_start_0
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/4 v3, 0x3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v4}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetAllGames(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 586
    .local v0, e1:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public initFilters()V
    .locals 3

    .prologue
    .line 215
    const v1, 0x7f0a0009

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->s:Landroid/widget/Spinner;

    .line 216
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030037

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->genres:[Lcom/nvidia/tegrazone/model/vo/GenreVO;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 217
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/nvidia/tegrazone/model/vo/GenreVO;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 218
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->s:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 220
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->s:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 222
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->setSelectedFilter()V

    .line 223
    return-void
.end method

.method public initSearch()V
    .locals 4

    .prologue
    .line 280
    const v2, 0x7f0a000a

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 281
    .local v1, searchTxt:Landroid/widget/EditText;
    const v2, 0x7f0a000b

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 283
    .local v0, searchClearBtn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 288
    :cond_0
    new-instance v2, Lcom/nvidia/tegrazone/AppListActivity$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/nvidia/tegrazone/AppListActivity$1;-><init>(Lcom/nvidia/tegrazone/AppListActivity;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 310
    new-instance v2, Lcom/nvidia/tegrazone/AppListActivity$2;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/AppListActivity$2;-><init>(Lcom/nvidia/tegrazone/AppListActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 318
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 676
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

    if-eqz v0, :cond_3

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->isCommentsPageShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->isReviewsPageShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->showGameDetailsArea()V

    .line 685
    :goto_0
    return-void

    .line 680
    :cond_2
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchSpotlight(Landroid/app/Activity;)V

    goto :goto_0

    .line 683
    :cond_3
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchSpotlight(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 78
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 80
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "UA-1273456-49"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Games"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 86
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appListingBuilder:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AppListingBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appListingBuilder:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appGalleryBuilder:Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appGalleryBuilder:Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->setCallingActivity(Landroid/app/Activity;)V

    .line 92
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/AppListActivity;->setContentView(I)V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->genres:[Lcom/nvidia/tegrazone/model/vo/GenreVO;

    if-nez v0, :cond_7

    .line 105
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getGenres()V

    .line 109
    :goto_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->initSearch()V

    .line 112
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->setAppId()V

    .line 117
    :cond_4
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->setGamesList()V

    .line 119
    return-void

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 96
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/AppListActivity;->setContentView(I)V

    goto :goto_0

    .line 99
    :cond_6
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/AppListActivity;->setContentView(I)V

    goto :goto_0

    .line 107
    :cond_7
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->initFilters()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 352
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 353
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 667
    invoke-super {p0}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onDestroy()V

    .line 668
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    .line 670
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->blockSpinnerDispatch:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 239
    const v3, 0x7f0a0009

    invoke-virtual {p0, v3}, Lcom/nvidia/tegrazone/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/nvidia/tegrazone/AppListActivity;->s:Landroid/widget/Spinner;

    .line 241
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppListActivity;->s:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nvidia/tegrazone/model/vo/GenreVO;

    .line 242
    .local v0, genre:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const-string v4, ""

    iput-object v4, v3, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    .line 243
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 244
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->clearList()V

    .line 246
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    const-string v4, "featured"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getList()V

    .line 259
    :cond_0
    :goto_0
    const v3, 0x7f0a000a

    invoke-virtual {p0, v3}, Lcom/nvidia/tegrazone/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 260
    .local v2, searchTxt:Landroid/widget/EditText;
    const v3, 0x7f0a000b

    invoke-virtual {p0, v3}, Lcom/nvidia/tegrazone/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 263
    .local v1, searchClearBtn:Landroid/widget/Button;
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    .end local v0           #genre:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    .end local v1           #searchClearBtn:Landroid/widget/Button;
    .end local v2           #searchTxt:Landroid/widget/EditText;
    :goto_1
    return-void

    .line 250
    .restart local v0       #genre:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    :cond_1
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->featuredGames:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    iput-object v4, v3, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 252
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->buildGames()V

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getList()V

    goto :goto_0

    .line 266
    .end local v0           #genre:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    :cond_3
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/nvidia/tegrazone/model/NVModel;->blockSpinnerDispatch:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 359
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 369
    invoke-super {p0, p1}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 362
    :pswitch_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->shareThis()V

    move v0, v1

    .line 363
    goto :goto_0

    .line 365
    :pswitch_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->clearList()V

    .line 366
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->refresh()V

    move v0, v1

    .line 367
    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x7f0a00cb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 644
    const-string v0, "onPausing"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 646
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 647
    invoke-super {p0}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onPause()V

    .line 653
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 376
    invoke-super {p0, p1}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 599
    invoke-super {p0}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onRestart()V

    .line 600
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 615
    invoke-super {p0}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onResume()V

    .line 617
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->lastDataLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 622
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->refresh()V

    .line 634
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 635
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->clearSearch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 636
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->clearSearch()V

    .line 637
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->clearSearch:Ljava/lang/Boolean;

    .line 639
    :cond_2
    return-void

    .line 625
    :cond_3
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 626
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->setAppId()V

    .line 630
    :cond_5
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->setGamesList()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 605
    invoke-super {p0}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onStart()V

    .line 610
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 657
    invoke-super {p0}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onStop()V

    .line 658
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 659
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 661
    const-string v0, "onStopping"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getList()V

    .line 478
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getGenres()V

    .line 479
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getGame()V

    .line 482
    :cond_2
    return-void
.end method

.method public serviceFault(II)V
    .locals 3
    .parameter "methodName"
    .parameter "errorCode"

    .prologue
    const v1, 0x7f060029

    .line 530
    packed-switch p1, :pswitch_data_0

    .line 561
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 532
    :pswitch_1
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->isOnline(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-static {v0, v1, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showOK(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 538
    :goto_1
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    goto :goto_0

    .line 536
    :cond_1
    new-instance v0, Lcom/nvidia/tegrazone/utils/NVBroadcast;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showRetry(Landroid/app/Activity;)V

    goto :goto_1

    .line 541
    :pswitch_2
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->isOnline(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-static {v0, v1, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showOK(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 547
    :goto_2
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    goto :goto_0

    .line 545
    :cond_2
    new-instance v0, Lcom/nvidia/tegrazone/utils/NVBroadcast;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showRetry(Landroid/app/Activity;)V

    goto :goto_2

    .line 550
    :pswitch_3
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    :cond_3
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initCommentsAndRatingsForTablet(Landroid/app/Activity;)V

    goto :goto_0

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public serviceResult(I)V
    .locals 3
    .parameter "methodName"

    .prologue
    const/4 v2, 0x0

    .line 488
    packed-switch p1, :pswitch_data_0

    .line 527
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 490
    :pswitch_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->buildGames()V

    .line 491
    iput-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 493
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 498
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/services/ServiceManager;->isRunning()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    .line 501
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getGame()V

    .line 502
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appListingBuilder:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->selectGameByTag(Ljava/lang/String;)V

    .line 506
    :cond_4
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    goto :goto_0

    .line 509
    :pswitch_2
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0, p0, v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->buildPDP(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    .line 510
    iput-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 512
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v0, :cond_5

    .line 513
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 516
    :cond_5
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    goto :goto_0

    .line 519
    :pswitch_3
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    :cond_6
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initCommentsAndRatingsForTablet(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 524
    :pswitch_4
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->initFilters()V

    goto/16 :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setAppId()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    iput-object v2, v1, Lcom/nvidia/tegrazone/model/NVModel;->lastAppId:Ljava/lang/String;

    .line 163
    :cond_2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_4

    .line 164
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->lastAppId:Ljava/lang/String;

    if-eq v1, v2, :cond_4

    .line 165
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v1, :cond_3

    .line 166
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    iput-object v2, v1, Lcom/nvidia/tegrazone/model/NVModel;->lastAppId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v1, :cond_5

    .line 174
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    if-eq v1, v2, :cond_8

    .line 175
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 176
    :cond_5
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getGame()V

    .line 200
    :cond_6
    :goto_2
    return-void

    .line 155
    :cond_7
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-nez v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->featuredGames:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->featuredGames:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->featuredGames:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    iput-object v2, v1, Lcom/nvidia/tegrazone/model/NVModel;->lastAppId:Ljava/lang/String;

    goto :goto_0

    .line 178
    :cond_8
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_9

    .line 179
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppListActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v1, p0, v2}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->buildPDP(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    goto :goto_2

    .line 182
    :cond_9
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->isOnline(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 184
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 185
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getGame()V

    goto :goto_2

    .line 188
    :cond_a
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    array-length v1, v1

    if-lez v1, :cond_b

    .line 189
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->appId:Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getGame()V

    goto :goto_2

    .line 191
    :cond_b
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->isRunning()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    .line 192
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getList()V

    goto/16 :goto_2

    .line 196
    :cond_c
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchNoInternet(Landroid/app/Activity;)V

    goto/16 :goto_2

    .line 169
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method public setGamesList()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getList()V

    .line 141
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->featuredGames:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 130
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->buildGames()V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->clearSearch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->clearSearch()V

    .line 136
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->clearSearch:Ljava/lang/Boolean;

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->buildGames()V

    goto :goto_0
.end method

.method public setSelectedFilter()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->s:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppListActivity;->s:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppListActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    invoke-static {v1}, Lcom/nvidia/tegrazone/utils/NVUtils;->getFilterPosition(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method public shareThis()V
    .locals 4

    .prologue
    .line 381
    .line 382
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-static {p0, v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public updateRating(Ljava/lang/String;)V
    .locals 0
    .parameter "rating"

    .prologue
    .line 593
    return-void
.end method
