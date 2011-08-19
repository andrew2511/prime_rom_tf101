.class public Lnet/yostore/aws/view/search/SavedActivity;
.super Landroid/app/ListActivity;
.source "SavedActivity.java"


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
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 83
    iput-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 85
    iput-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    .line 86
    iput-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 76
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/search/SavedActivity;Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/search/SavedActivity;->successBrowseDisplay(Lnet/yostore/aws/vo/BrowseVo;)V

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/search/SavedActivity;Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/search/SavedActivity;->failBrowseDisplay(Lnet/yostore/aws/vo/BrowseVo;)V

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/search/SavedActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/search/SavedActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method private failBrowseDisplay(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 5
    .parameter "_bv"

    .prologue
    .line 312
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_0

    .line 313
    new-instance v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f03000d

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lnet/yostore/aws/view/search/SavedActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lnet/yostore/aws/api/ApiConfig;)V

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SavedActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 315
    :cond_0
    return-void
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lnet/yostore/aws/view/search/SavedActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 186
    .local v0, lv:Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 187
    new-instance v1, Lnet/yostore/aws/view/search/SavedActivity$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SavedActivity$2;-><init>(Lnet/yostore/aws/view/search/SavedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    new-instance v1, Lnet/yostore/aws/view/search/SavedActivity$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SavedActivity$3;-><init>(Lnet/yostore/aws/view/search/SavedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 210
    return-void
.end method

.method private refreshData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    new-instance v0, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    .line 148
    new-instance v0, Lnet/yostore/aws/view/search/SavedActivity$1;

    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/search/SavedActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-direct {v0, p0, v1, v2, v3}, Lnet/yostore/aws/view/search/SavedActivity$1;-><init>(Lnet/yostore/aws/view/search/SavedActivity;Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 165
    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/search/SavedActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    return-void
.end method

.method private successBrowseDisplay(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 5
    .parameter "_bv"

    .prologue
    .line 293
    iput-object p1, p0, Lnet/yostore/aws/view/search/SavedActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    .line 295
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->tv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    :cond_0
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowsePage()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    :cond_1
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getSearchOffset()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->SavedSearch:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_4

    .line 299
    :cond_3
    new-instance v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f03000d

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getFsInfos()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/search/SavedActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lnet/yostore/aws/api/ApiConfig;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 300
    iget-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SavedActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 308
    :goto_0
    return-void

    .line 302
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getFsInfos()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    .line 303
    iget-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public allSharesBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 346
    new-instance v0, Lnet/yostore/aws/ansytask/GoAllSharesTask;

    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 347
    return-void
.end method

.method public backFunction(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 246
    invoke-virtual {p0}, Lnet/yostore/aws/view/search/SavedActivity;->finish()V

    .line 247
    return-void
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 326
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyBackupTask;

    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 327
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 330
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyCollectionTask;

    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 331
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 322
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 323
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 133
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_1

    .line 134
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SavedActivity;->setContentView(I)V

    .line 135
    new-instance v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f03000d

    iget-object v3, p0, Lnet/yostore/aws/view/search/SavedActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v3}, Lnet/yostore/aws/vo/BrowseVo;->getFsInfos()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/search/SavedActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lnet/yostore/aws/api/ApiConfig;)V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 136
    iget-object v0, p0, Lnet/yostore/aws/view/search/SavedActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SavedActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SavedActivity;->initList()V

    .line 143
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 100
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    sput-object p0, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    .line 102
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/SavedActivity;->setContentView(I)V

    .line 103
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/search/SavedActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 104
    iget-object v1, p0, Lnet/yostore/aws/view/search/SavedActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/search/SavedActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/search/SavedActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/search/SavedActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/search/SavedActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

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

    .line 105
    :cond_0
    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSplash(Landroid/content/Context;)V

    .line 106
    :cond_1
    new-instance v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-object v2, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    const v3, 0x7f03000d

    sget-object v4, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->defaultList:Ljava/util/List;

    iget-object v5, p0, Lnet/yostore/aws/view/search/SavedActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v1, v2, v3, v4, v5}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lnet/yostore/aws/api/ApiConfig;)V

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/SavedActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    invoke-virtual {p0}, Lnet/yostore/aws/view/search/SavedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 109
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isFromSavedOK"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    const v1, 0x7f0600bf

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 113
    :cond_2
    const v1, 0x7f090030

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/search/SavedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/yostore/aws/view/search/SavedActivity;->tv:Landroid/widget/TextView;

    .line 114
    iget-object v1, p0, Lnet/yostore/aws/view/search/SavedActivity;->tv:Landroid/widget/TextView;

    const v2, 0x7f060021

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/search/SavedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SavedActivity;->initList()V

    .line 117
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 252
    invoke-virtual {p0}, Lnet/yostore/aws/view/search/SavedActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 253
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 254
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 172
    packed-switch p1, :pswitch_data_0

    .line 178
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 175
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SavedActivity;->backFunction(Landroid/view/View;)V

    .line 176
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lnet/yostore/aws/view/search/ResultActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 240
    const-string v2, "skey"

    new-instance v3, Lnet/yostore/aws/handler/entity/Search;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SavedActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-direct {v3, v1}, Lnet/yostore/aws/handler/entity/Search;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/Search;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SavedActivity;->startActivity(Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 262
    .local v0, rtn:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 276
    :goto_0
    return v0

    .line 265
    :sswitch_0
    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSearch(Landroid/content/Context;)V

    goto :goto_0

    .line 268
    :sswitch_1
    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSetting(Landroid/content/Context;)V

    goto :goto_0

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x7f090068 -> :sswitch_0
        0x7f09006c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 124
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SavedActivity;->refreshData()V

    .line 125
    return-void
.end method

.method public recentChangedBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 338
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentChangesTask;

    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 339
    return-void
.end method

.method public recentUploadBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 342
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;

    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 343
    return-void
.end method

.method public saveSearchBtFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 351
    invoke-direct {p0}, Lnet/yostore/aws/view/search/SavedActivity;->refreshData()V

    .line 352
    return-void
.end method

.method public saveSearchFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 318
    new-instance v0, Lnet/yostore/aws/ansytask/SaveSearchTask;

    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/search/SavedActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, p0, Lnet/yostore/aws/view/search/SavedActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v3}, Lnet/yostore/aws/dto/BrowseToObject;->getSearch()Lnet/yostore/aws/handler/entity/Search;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/SaveSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/Search;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/SaveSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 319
    return-void
.end method

.method protected showFileContextMenu(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 215
    iget-object v4, p0, Lnet/yostore/aws/view/search/SavedActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v4, v4, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 216
    .local v1, fsinfo:Lnet/yostore/aws/handler/entity/FsInfo;
    new-instance v3, Lnet/yostore/aws/handler/entity/Search;

    iget-object v4, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-direct {v3, v4}, Lnet/yostore/aws/handler/entity/Search;-><init>(Ljava/lang/String;)V

    .line 217
    .local v3, search:Lnet/yostore/aws/handler/entity/Search;
    const-string v4, "ResultActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Now Position -->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const v2, 0x7f040005

    .line 221
    .local v2, menuid:I
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/Search;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lnet/yostore/aws/view/search/SavedActivity$4;

    invoke-direct {v5, p0, p1}, Lnet/yostore/aws/view/search/SavedActivity$4;-><init>(Lnet/yostore/aws/view/search/SavedActivity;I)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 232
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 233
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 234
    return-void
.end method

.method public tagBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 334
    new-instance v0, Lnet/yostore/aws/ansytask/GoMarkedTask;

    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMarkedTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMarkedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 335
    return-void
.end method
