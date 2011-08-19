.class public Lcom/nvidia/tegrazone/AppActivity;
.super Lcom/nvidia/tegrazone/AppDetailsActivity;
.source "AppActivity.java"

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

.field appId:Ljava/lang/String;

.field private appListingBuilder:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

.field developerString:Ljava/lang/String;

.field public game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

.field public gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

.field public games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

.field public genreSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

.field public listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

.field model:Lcom/nvidia/tegrazone/model/NVModel;

.field private s:Landroid/widget/Spinner;

.field tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/nvidia/tegrazone/AppDetailsActivity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 46
    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 47
    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->genreSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 48
    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->developerString:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/nvidia/tegrazone/AppActivity;Landroid/widget/Spinner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nvidia/tegrazone/AppActivity;->s:Landroid/widget/Spinner;

    return-void
.end method

.method static synthetic access$1(Lcom/nvidia/tegrazone/AppActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->s:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method public clearList()V
    .locals 2

    .prologue
    .line 544
    const v1, 0x7f0a004c

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 545
    .local v0, l:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 546
    return-void
.end method

.method public clearSearch()V
    .locals 4

    .prologue
    .line 528
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v2, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 529
    const v2, 0x7f0a000a

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 530
    .local v1, searchTxt:Landroid/widget/EditText;
    const v2, 0x7f0a000b

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 531
    .local v0, searchClearBtn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->s:Landroid/widget/Spinner;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->s:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->s:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 532
    :cond_1
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const-string v3, ""

    iput-object v3, v2, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    .line 533
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->clearList()V

    .line 534
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getList()V

    .line 535
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const-string v3, ""

    iput-object v3, v2, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    .line 538
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 540
    .end local v0           #searchClearBtn:Landroid/widget/Button;
    .end local v1           #searchTxt:Landroid/widget/EditText;
    :cond_2
    return-void
.end method

.method public getGame()V
    .locals 5

    .prologue
    .line 226
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->isRunning()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nvidia/tegrazone/control/LoadingController;->showDialog(Landroid/app/Activity;)V

    .line 230
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    invoke-static {v3}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetSelectedGame(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->OBJECT_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 235
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nvidia/tegrazone/control/LoadingController;->showDialog(Landroid/app/Activity;)V

    .line 241
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 243
    :try_start_1
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    invoke-static {v3}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetSelectedGame(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->OBJECT_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 244
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 246
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getGenres()V
    .locals 5

    .prologue
    .line 253
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->genreSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->genreSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/16 v2, 0xa

    invoke-static {}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetGenres()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 258
    .local v0, e1:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getList()V
    .locals 5

    .prologue
    .line 200
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->isRunning()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nvidia/tegrazone/control/LoadingController;->showDialog(Landroid/app/Activity;)V

    .line 203
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetAllGames(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 208
    .local v0, e1:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 212
    .end local v0           #e1:Lorg/json/JSONException;
    :cond_1
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nvidia/tegrazone/control/LoadingController;->showDialog(Landroid/app/Activity;)V

    .line 213
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 215
    :try_start_1
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildGetAllGames(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 216
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 218
    .restart local v0       #e1:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public initBuilder()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appListingBuilder:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AppListingBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appListingBuilder:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    .line 645
    :cond_1
    return-void
.end method

.method public initFilters()V
    .locals 3

    .prologue
    .line 436
    const v1, 0x7f0a0009

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->s:Landroid/widget/Spinner;

    .line 437
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030037

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->genres:[Lcom/nvidia/tegrazone/model/vo/GenreVO;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 438
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/nvidia/tegrazone/model/vo/GenreVO;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 439
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->s:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 440
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->s:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 443
    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->s:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    invoke-static {v2}, Lcom/nvidia/tegrazone/utils/NVUtils;->getFilterPosition(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 444
    return-void
.end method

.method public initMasthead()V
    .locals 2

    .prologue
    .line 409
    const v1, 0x7f0a008e

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 410
    .local v0, masthead:Landroid/view/View;
    new-instance v1, Lcom/nvidia/tegrazone/AppActivity$1;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/AppActivity$1;-><init>(Lcom/nvidia/tegrazone/AppActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    return-void
.end method

.method public initSearch()V
    .locals 4

    .prologue
    .line 487
    const v2, 0x7f0a000a

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 488
    .local v1, searchTxt:Landroid/widget/EditText;
    const v2, 0x7f0a000b

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 490
    .local v0, searchClearBtn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 492
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 495
    :cond_0
    new-instance v2, Lcom/nvidia/tegrazone/AppActivity$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/nvidia/tegrazone/AppActivity$2;-><init>(Lcom/nvidia/tegrazone/AppActivity;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 518
    new-instance v2, Lcom/nvidia/tegrazone/AppActivity$3;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/AppActivity$3;-><init>(Lcom/nvidia/tegrazone/AppActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 71
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->orientationSetter(Landroid/app/Activity;)V

    .line 74
    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/AppActivity;->finishActivity(I)V

    .line 76
    invoke-super {p0, p1}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 82
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "UA-1273456-49"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->blocker:Ljava/lang/Boolean;

    .line 88
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->initBuilder()V

    .line 89
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->setCallingActivity(Landroid/app/Activity;)V

    .line 90
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/AppActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->initMasthead()V

    .line 97
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->setAppId()V

    .line 99
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->setAppList()V

    .line 102
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 266
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 267
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 629
    const-string v0, "destroying?"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 630
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 633
    invoke-static {p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->removeListeners(Landroid/app/Activity;)V

    .line 635
    invoke-super {p0}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onDestroy()V

    .line 638
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    .line 639
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 450
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->blockSpinnerDispatch:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 451
    const v3, 0x7f0a0009

    invoke-virtual {p0, v3}, Lcom/nvidia/tegrazone/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->s:Landroid/widget/Spinner;

    .line 453
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->s:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nvidia/tegrazone/model/vo/GenreVO;

    .line 454
    .local v0, genre:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const-string v4, ""

    iput-object v4, v3, Lcom/nvidia/tegrazone/model/NVModel;->search:Ljava/lang/String;

    .line 455
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 456
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    .line 457
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->clearList()V

    .line 458
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 459
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getList()V

    .line 467
    :cond_0
    :goto_0
    const v3, 0x7f0a000a

    invoke-virtual {p0, v3}, Lcom/nvidia/tegrazone/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 468
    .local v2, searchTxt:Landroid/widget/EditText;
    const v3, 0x7f0a000b

    invoke-virtual {p0, v3}, Lcom/nvidia/tegrazone/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 471
    .local v1, searchClearBtn:Landroid/widget/Button;
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 472
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 477
    .end local v0           #genre:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    .end local v1           #searchClearBtn:Landroid/widget/Button;
    .end local v2           #searchTxt:Landroid/widget/EditText;
    :goto_1
    return-void

    .line 462
    .restart local v0       #genre:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    :cond_1
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->featuredGames:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    iput-object v4, v3, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 463
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->appListingBuilder:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    invoke-virtual {v3}, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->buildGameList()V

    goto :goto_0

    .line 474
    .end local v0           #genre:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    :cond_2
    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/nvidia/tegrazone/model/NVModel;->blockSpinnerDispatch:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 616
    invoke-static {}, Lcom/nvidia/tegrazone/components/ImageLoader;->clearCache()V

    .line 617
    return-void
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
    .line 481
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 285
    invoke-super {p0, p1}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 276
    :pswitch_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->shareThis()V

    move v0, v1

    .line 277
    goto :goto_0

    .line 279
    :pswitch_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->refresh()V

    move v0, v1

    .line 280
    goto :goto_0

    .line 282
    :pswitch_2
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->showAboutMenu()V

    move v0, v1

    .line 283
    goto :goto_0

    .line 273
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
    .line 602
    invoke-super {p0}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onPause()V

    .line 604
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 605
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 608
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

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/NVUtils;->checkAboutWindow(Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;)V

    .line 611
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 292
    invoke-super {p0, p1}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 552
    invoke-super {p0}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onRestart()V

    .line 553
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 554
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->appBlocker:Ljava/lang/Boolean;

    .line 404
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 570
    invoke-super {p0}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onResume()V

    .line 571
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->lastDataLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 575
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    .line 577
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->refresh()V

    .line 592
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 593
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->clearSearch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 594
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->clearSearch()V

    .line 595
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->clearSearch:Ljava/lang/Boolean;

    .line 597
    :cond_3
    return-void

    .line 581
    :cond_4
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchGamesList(Landroid/app/Activity;)V

    goto :goto_0

    .line 585
    :cond_5
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->setAppId()V

    .line 587
    :cond_6
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_7
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->setAppList()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 396
    invoke-super {p0, p1}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 397
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->appBlocker:Ljava/lang/Boolean;

    .line 399
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 559
    invoke-super {p0}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onStart()V

    .line 561
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

    .line 562
    :cond_0
    new-instance v0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    .line 563
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/NVUtils;->restartAboutWindow(Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;)V

    .line 565
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 621
    invoke-super {p0}, Lcom/nvidia/tegrazone/AppDetailsActivity;->onStop()V

    .line 622
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 624
    const-string v0, "stopping?"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getGame()V

    .line 427
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getList()V

    .line 429
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getGenres()V

    .line 431
    :cond_2
    return-void
.end method

.method public serviceFault(II)V
    .locals 3
    .parameter "methodName"
    .parameter "errorCode"

    .prologue
    const v1, 0x7f060029

    .line 353
    packed-switch p1, :pswitch_data_0

    .line 384
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 355
    :pswitch_1
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->isOnline(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {v0, v1, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showOK(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 361
    :goto_1
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    goto :goto_0

    .line 359
    :cond_1
    new-instance v0, Lcom/nvidia/tegrazone/utils/NVBroadcast;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showRetry(Landroid/app/Activity;)V

    goto :goto_1

    .line 364
    :pswitch_2
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->isOnline(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-static {v0, v1, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showOK(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 370
    :goto_2
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    goto :goto_0

    .line 368
    :cond_2
    new-instance v0, Lcom/nvidia/tegrazone/utils/NVBroadcast;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showRetry(Landroid/app/Activity;)V

    goto :goto_2

    .line 373
    :pswitch_3
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initCommentsAndRatingsForTablet(Landroid/app/Activity;)V

    goto :goto_0

    .line 353
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

    .line 308
    packed-switch p1, :pswitch_data_0

    .line 350
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appListingBuilder:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->buildGameList()V

    .line 311
    const v0, 0x7f0a004b

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->gameSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/services/ServiceManager;->isRunning()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getGame()V

    .line 324
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 325
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    goto :goto_0

    .line 328
    :pswitch_2
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 330
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v0, :cond_5

    .line 331
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 334
    :cond_5
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0, p0, v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->buildPDP(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    .line 335
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->initBuilder()V

    .line 337
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appListingBuilder:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->selectGameByTag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    :pswitch_3
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    :cond_7
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initCommentsAndRatingsForTablet(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 346
    :pswitch_4
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->initFilters()V

    goto/16 :goto_0

    .line 308
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
    .line 107
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 108
    .local v1, extras:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->appBlocker:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 109
    if-eqz v1, :cond_0

    const-string v2, "appId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    .line 117
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_2

    .line 118
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->lastAppId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    .line 119
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    iput-object v3, v2, Lcom/nvidia/tegrazone/model/NVModel;->lastAppId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    :cond_2
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v2, :cond_3

    .line 131
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 132
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getGame()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    :cond_4
    :goto_2
    return-void

    .line 111
    :cond_5
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 136
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iget-object v3, p0, Lcom/nvidia/tegrazone/AppActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v2, p0, v3}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->buildPDP(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 157
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 159
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 160
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getGame()V

    goto :goto_2

    .line 139
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_3
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->isOnline(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 141
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 142
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getGame()V

    goto :goto_2

    .line 145
    :cond_8
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 146
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->appId:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getGame()V

    goto :goto_2

    .line 148
    :cond_9
    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->listSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/services/ServiceManager;->isRunning()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getList()V

    goto/16 :goto_2

    .line 153
    :cond_a
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchNoInternet(Landroid/app/Activity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 123
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method public setAppList()V
    .locals 5

    .prologue
    const v4, 0x7f0a004b

    const/4 v3, 0x0

    .line 170
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->genres:[Lcom/nvidia/tegrazone/model/vo/GenreVO;

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getGenres()V

    .line 176
    :goto_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->initSearch()V

    .line 179
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    if-nez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->filter:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getList()V

    .line 196
    :goto_1
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->initFilters()V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->featuredGames:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 184
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appListingBuilder:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->buildGameList()V

    .line 185
    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->clearSearch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->clearSearch()V

    .line 190
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->clearSearch:Ljava/lang/Boolean;

    goto :goto_1

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->appListingBuilder:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->buildGameList()V

    .line 193
    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/AppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public shareThis()V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/AppActivity;->getResources()Landroid/content/res/Resources;

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

    iget-object v2, p0, Lcom/nvidia/tegrazone/AppActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {p0, v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_0
    return-void
.end method

.method public showAboutMenu()V
    .locals 1

    .prologue
    .line 419
    new-instance v0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    .line 420
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->showAboutWindow()V

    .line 421
    return-void
.end method

.method public updateRating(Ljava/lang/String;)V
    .locals 0
    .parameter "rating"

    .prologue
    .line 388
    return-void
.end method
