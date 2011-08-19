.class public Lnet/yostore/aws/view/search/ResultActivity;
.super Landroid/app/ListActivity;
.source "ResultActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResultActivity"

.field static ctx:Landroid/content/Context;


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

.field private bto:Lnet/yostore/aws/dto/BrowseToObject;

.field private bv:Lnet/yostore/aws/vo/BrowseVo;

.field private fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

.field mPrefs:Landroid/content/SharedPreferences;

.field private tv:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 82
    iput-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 84
    iput-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    .line 85
    iput-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/search/ResultActivity;Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/search/ResultActivity;->successBrowseDisplay(Lnet/yostore/aws/vo/BrowseVo;)V

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/search/ResultActivity;Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/search/ResultActivity;->failBrowseDisplay(Lnet/yostore/aws/vo/BrowseVo;)V

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/vo/BrowseVo;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    return-object v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/search/ResultActivity;Lnet/yostore/aws/dto/BrowseToObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lnet/yostore/aws/view/search/ResultActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    return-void
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/dto/BrowseToObject;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    return-object v0
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method private failBrowseDisplay(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 7
    .parameter "_bv"

    .prologue
    .line 494
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v2

    sget-object v3, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v2, v3, :cond_3

    .line 495
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Search;->getName()Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, searchKW:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 497
    const-string v1, ""

    .line 499
    :cond_0
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseTotal()I

    move-result v2

    if-gtz v2, :cond_3

    .line 500
    :cond_1
    const v2, 0x7f060007

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/search/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Search;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0?-?-?1?0?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 502
    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    :cond_2
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getSearchOffset()I

    move-result v2

    if-nez v2, :cond_3

    .line 505
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    .line 506
    new-instance v2, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-object v3, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    const v4, 0x7f03000d

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iget-object v6, p0, Lnet/yostore/aws/view/search/ResultActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v2, v3, v4, v5, v6}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lnet/yostore/aws/api/ApiConfig;)V

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/search/ResultActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 510
    .end local v0           #s:Ljava/lang/String;
    .end local v1           #searchKW:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lnet/yostore/aws/view/search/ResultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 205
    .local v0, lv:Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 206
    new-instance v1, Lnet/yostore/aws/view/search/ResultActivity$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/ResultActivity$2;-><init>(Lnet/yostore/aws/view/search/ResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 258
    new-instance v1, Lnet/yostore/aws/view/search/ResultActivity$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/ResultActivity$3;-><init>(Lnet/yostore/aws/view/search/ResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 288
    return-void
.end method

.method private successBrowseDisplay(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 7
    .parameter "_bv"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 465
    iput-object p1, p0, Lnet/yostore/aws/view/search/ResultActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    .line 467
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v2

    sget-object v3, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v2, v3, :cond_3

    .line 468
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Search;->getName()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, searchKW:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 470
    const-string v1, ""

    .line 471
    :cond_0
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseTotal()I

    move-result v2

    if-gtz v2, :cond_1

    .line 472
    invoke-virtual {p1, v5}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseTotal(I)V

    .line 473
    :cond_1
    const v2, 0x7f06008d

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/search/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseTotal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Search;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0?-?-?1?0?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 476
    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    :cond_2
    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    .end local v0           #s:Ljava/lang/String;
    .end local v1           #searchKW:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v2

    sget-object v3, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowsePage()I

    move-result v2

    if-eq v2, v6, :cond_5

    :cond_4
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v2

    sget-object v3, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v2, v3, :cond_6

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getSearchOffset()I

    move-result v2

    if-nez v2, :cond_6

    .line 481
    :cond_5
    new-instance v2, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-object v3, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    const v4, 0x7f03000d

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getFsInfos()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lnet/yostore/aws/view/search/ResultActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v2, v3, v4, v5, v6}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lnet/yostore/aws/api/ApiConfig;)V

    iput-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 482
    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/search/ResultActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 490
    :goto_0
    return-void

    .line 484
    :cond_6
    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getFsInfos()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    .line 485
    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {v2}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public allSharesBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 564
    new-instance v0, Lnet/yostore/aws/ansytask/GoAllSharesTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 565
    return-void
.end method

.method public backFunction(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 290
    invoke-virtual {p0}, Lnet/yostore/aws/view/search/ResultActivity;->finish()V

    .line 291
    return-void
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 521
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyBackupTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 522
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 525
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyCollectionTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 526
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 517
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 518
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 160
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_1

    .line 161
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/ResultActivity;->setContentView(I)V

    .line 162
    new-instance v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f03000d

    iget-object v3, p0, Lnet/yostore/aws/view/search/ResultActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v3}, Lnet/yostore/aws/vo/BrowseVo;->getFsInfos()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/search/ResultActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lnet/yostore/aws/api/ApiConfig;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 163
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/ResultActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    invoke-direct {p0}, Lnet/yostore/aws/view/search/ResultActivity;->initList()V

    .line 168
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Search;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0?-?-?1?0?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    sput-object p0, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    .line 101
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/ResultActivity;->setContentView(I)V

    .line 102
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 103
    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    if-nez v1, :cond_1

    .line 104
    :cond_0
    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSplash(Landroid/content/Context;)V

    .line 105
    :cond_1
    new-instance v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-object v2, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    const v3, 0x7f03000d

    sget-object v4, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->defaultList:Ljava/util/List;

    iget-object v5, p0, Lnet/yostore/aws/view/search/ResultActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v1, v2, v3, v4, v5}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lnet/yostore/aws/api/ApiConfig;)V

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/ResultActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    new-instance v0, Lnet/yostore/aws/handler/entity/Search;

    invoke-virtual {p0}, Lnet/yostore/aws/view/search/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "skey"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/yostore/aws/handler/entity/Search;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, search:Lnet/yostore/aws/handler/entity/Search;
    invoke-virtual {p0}, Lnet/yostore/aws/view/search/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "saved"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 109
    const v1, 0x7f09001a

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 112
    :cond_2
    const v1, 0x7f090030

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->tv:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Search;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0?-?-?1?0?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->tv:Landroid/widget/TextView;

    const v2, 0x7f060017

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 120
    :goto_0
    invoke-direct {p0}, Lnet/yostore/aws/view/search/ResultActivity;->initList()V

    .line 122
    new-instance v1, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/Search;)V

    iput-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    .line 123
    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget-boolean v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageEnable:Z

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageSize:I

    invoke-virtual {v1, v2, v6, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setSearchPaging(ZII)V

    .line 124
    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v2

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v3}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 126
    new-instance v1, Lnet/yostore/aws/view/search/ResultActivity$1;

    sget-object v2, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/view/search/ResultActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-direct {v1, p0, v2, v3, v7}, Lnet/yostore/aws/view/search/ResultActivity$1;-><init>(Lnet/yostore/aws/view/search/ResultActivity;Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    .line 143
    aput-object v7, v2, v6

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/search/ResultActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    return-void

    .line 117
    :cond_3
    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Search;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 424
    invoke-virtual {p0}, Lnet/yostore/aws/view/search/ResultActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 425
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 426
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 181
    packed-switch p1, :pswitch_data_0

    .line 187
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 184
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/ResultActivity;->backFunction(Landroid/view/View;)V

    .line 185
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 194
    packed-switch p1, :pswitch_data_0

    .line 199
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 197
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 434
    .local v0, rtn:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 448
    :goto_0
    return v0

    .line 437
    :sswitch_0
    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSearch(Landroid/content/Context;)V

    goto :goto_0

    .line 440
    :sswitch_1
    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSetting(Landroid/content/Context;)V

    goto :goto_0

    .line 434
    :sswitch_data_0
    .sparse-switch
        0x7f090068 -> :sswitch_0
        0x7f09006c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 95
    return-void
.end method

.method public recentChangedBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 556
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentChangesTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 557
    return-void
.end method

.method public recentUploadBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 560
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 561
    return-void
.end method

.method public saveSearchBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 568
    new-instance v0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 569
    return-void
.end method

.method public saveSearchFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 513
    new-instance v0, Lnet/yostore/aws/ansytask/SaveSearchTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, p0, Lnet/yostore/aws/view/search/ResultActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v3}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/SaveSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/Search;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/SaveSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 514
    return-void
.end method

.method protected showFileContextMenu(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    .line 328
    iget-object v5, p0, Lnet/yostore/aws/view/search/ResultActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 329
    .local v1, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    const v4, 0x7f040008

    .line 330
    .local v4, menuid:I
    iget-boolean v5, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    if-eqz v5, :cond_0

    .line 331
    const v4, 0x7f040007

    .line 337
    :cond_0
    invoke-virtual {p0}, Lnet/yostore/aws/view/search/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, itemArray:[Ljava/lang/String;
    iget-object v5, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    array-length v5, v2

    if-le v5, v7, :cond_1

    .line 339
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 340
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 341
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 342
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #itemArray:[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 345
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #itemArray:[Ljava/lang/String;
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 346
    iget-object v6, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 347
    new-instance v6, Lnet/yostore/aws/view/search/ResultActivity$5;

    invoke-direct {v6, p0, v1, p1}, Lnet/yostore/aws/view/search/ResultActivity$5;-><init>(Lnet/yostore/aws/view/search/ResultActivity;Lnet/yostore/aws/handler/entity/FsInfo;I)V

    invoke-virtual {v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 384
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 385
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 386
    return-void
.end method

.method protected showFolderContextMenu(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x1

    .line 293
    iget-object v4, p0, Lnet/yostore/aws/view/search/ResultActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v4, v4, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 294
    .local v1, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    invoke-virtual {p0}, Lnet/yostore/aws/view/search/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, itemArray:[Ljava/lang/String;
    iget-boolean v4, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    if-eqz v4, :cond_0

    .line 296
    invoke-virtual {p0}, Lnet/yostore/aws/view/search/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 298
    :cond_0
    iget-object v4, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    array-length v4, v2

    if-le v4, v6, :cond_1

    .line 299
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 300
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 301
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 302
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #itemArray:[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 304
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #itemArray:[Ljava/lang/String;
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    iget-object v5, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 306
    new-instance v5, Lnet/yostore/aws/view/search/ResultActivity$4;

    invoke-direct {v5, p0, p1, v1}, Lnet/yostore/aws/view/search/ResultActivity$4;-><init>(Lnet/yostore/aws/view/search/ResultActivity;ILnet/yostore/aws/handler/entity/FsInfo;)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 324
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 325
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 326
    return-void
.end method

.method protected showInfectedFileContextMenu(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x1

    .line 389
    iget-object v4, p0, Lnet/yostore/aws/view/search/ResultActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v4, v4, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 390
    .local v1, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    invoke-virtual {p0}, Lnet/yostore/aws/view/search/ResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, itemArray:[Ljava/lang/String;
    iget-object v4, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    array-length v4, v2

    if-le v4, v6, :cond_0

    .line 392
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 393
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 394
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #itemArray:[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 396
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #itemArray:[Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 397
    iget-object v5, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 398
    new-instance v5, Lnet/yostore/aws/view/search/ResultActivity$6;

    invoke-direct {v5, p0, v1, p1}, Lnet/yostore/aws/view/search/ResultActivity$6;-><init>(Lnet/yostore/aws/view/search/ResultActivity;Lnet/yostore/aws/handler/entity/FsInfo;I)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 418
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 419
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 420
    return-void
.end method

.method public tagBtFunction(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 529
    new-instance v0, Lnet/yostore/aws/handler/entity/Search;

    const-string v1, "0?-?-?1?0?"

    invoke-direct {v0, v1}, Lnet/yostore/aws/handler/entity/Search;-><init>(Ljava/lang/String;)V

    .line 530
    .local v0, search:Lnet/yostore/aws/handler/entity/Search;
    new-instance v1, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/Search;)V

    iput-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    .line 531
    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget-boolean v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageEnable:Z

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageSize:I

    invoke-virtual {v1, v2, v4, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setSearchPaging(ZII)V

    .line 532
    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v2

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v3}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 534
    new-instance v1, Lnet/yostore/aws/view/search/ResultActivity$7;

    sget-object v2, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/view/search/ResultActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-direct {v1, p0, v2, v3, v5}, Lnet/yostore/aws/view/search/ResultActivity$7;-><init>(Lnet/yostore/aws/view/search/ResultActivity;Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    .line 551
    aput-object v5, v2, v4

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/search/ResultActivity$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 553
    return-void
.end method
