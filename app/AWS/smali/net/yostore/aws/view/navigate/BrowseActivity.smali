.class public Lnet/yostore/aws/view/navigate/BrowseActivity;
.super Landroid/app/ListActivity;
.source "BrowseActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowseActivity"

.field static ctx:Landroid/content/Context;


# instance fields
.field private PhotoPath:Ljava/lang/String;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

.field private browseType:I

.field private bto:Lnet/yostore/aws/dto/BrowseToObject;

.field private bv:Lnet/yostore/aws/vo/BrowseVo;

.field private fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

.field private mPath:Landroid/widget/TextView;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mUploadBrocastRecv:Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;

.field private mUploadFilter:Landroid/content/IntentFilter;

.field uploadFolder:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 90
    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 95
    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->uploadFolder:J

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->browseType:I

    .line 84
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/vo/BrowseVo;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/navigate/BrowseActivity;Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->successBrowseDisplay(Lnet/yostore/aws/vo/BrowseVo;)V

    return-void
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/navigate/BrowseActivity;Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->failBrowseDisplay(Lnet/yostore/aws/vo/BrowseVo;)V

    return-void
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/navigate/BrowseActivity;Lnet/yostore/aws/dto/BrowseToObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    return-void
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/dto/BrowseToObject;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    return-object v0
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/navigate/BrowseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->PhotoPath:Ljava/lang/String;

    return-void
.end method

.method private failBrowseDisplay(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 5
    .parameter "_bv"

    .prologue
    .line 314
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_1

    .line 316
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseTotal()I

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowsePage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    .line 322
    new-instance v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f03000d

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lnet/yostore/aws/api/ApiConfig;)V

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    :cond_1
    return-void
.end method

.method private filePreview(Lnet/yostore/aws/handler/entity/FsInfo;)V
    .locals 3
    .parameter "fi"

    .prologue
    .line 1038
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1039
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const-class v2, Lnet/yostore/aws/view/present/FilePreviewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1042
    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->startActivity(Landroid/content/Intent;)V

    .line 1043
    return-void
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 449
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 450
    .local v0, lv:Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 451
    new-instance v1, Lnet/yostore/aws/view/navigate/BrowseActivity$8;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/BrowseActivity$8;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 534
    new-instance v1, Lnet/yostore/aws/view/navigate/BrowseActivity$9;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/BrowseActivity$9;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 582
    return-void
.end method

.method private showCreateNewItem()V
    .locals 4

    .prologue
    .line 853
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->isBackup()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 855
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060074

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 856
    const v2, 0x7f04000b

    new-instance v3, Lnet/yostore/aws/view/navigate/BrowseActivity$13;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/navigate/BrowseActivity$13;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 963
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 964
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 966
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method private successBrowseDisplay(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 6
    .parameter "_bv"

    .prologue
    const/4 v5, 0x0

    .line 289
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    .line 290
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->mPath:Landroid/widget/TextView;

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowsePage()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 292
    :cond_0
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getSearchOffset()I

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    :cond_1
    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentChanges:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentUpload:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->AllShares:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_4

    .line 295
    :cond_2
    new-instance v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f03000d

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getFsInfos()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lnet/yostore/aws/api/ApiConfig;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 296
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    :goto_0
    sget-boolean v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isFirstTimeToUse:Z

    if-eqz v0, :cond_3

    .line 305
    sput-boolean v5, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isFirstTimeToUse:Z

    .line 306
    sget-object v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v5}, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->updateFirstTimeToUseFlag(Landroid/content/Context;I)V

    .line 307
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->showCreateNewItem()V

    .line 309
    :cond_3
    return-void

    .line 300
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getFsInfos()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    .line 301
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public allSharesBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1188
    new-instance v0, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->AllShares:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    .line 1189
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    const v1, 0x7f060020

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowseName(Ljava/lang/String;)V

    .line 1190
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowsePaging(ZII)V

    .line 1191
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->mPath:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1192
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    invoke-static {v1}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v1

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/dto/BrowseToObject;->setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 1193
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->refreshData()V

    .line 1195
    return-void
.end method

.method public backFunction(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 358
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v4}, Lnet/yostore/aws/vo/BrowseVo;->getParentFolderId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v4}, Lnet/yostore/aws/vo/BrowseVo;->getParentFolderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v4}, Lnet/yostore/aws/vo/BrowseVo;->getParentFolderId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 359
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v4}, Lnet/yostore/aws/vo/BrowseVo;->getParentFolderId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-999"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 363
    :try_start_0
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v4}, Lnet/yostore/aws/vo/BrowseVo;->getParentFolderId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 364
    .local v2, longParentId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v4, -0x3

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 366
    :cond_0
    new-instance v1, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>()V

    .line 367
    .local v1, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v4}, Lnet/yostore/aws/vo/BrowseVo;->getParentFolderId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 368
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v4}, Lnet/yostore/aws/vo/BrowseVo;->getParentFolderName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 369
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v4}, Lnet/yostore/aws/dto/BrowseToObject;->isBackup()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    :goto_0
    iput-object v4, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 370
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v4}, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly()Z

    move-result v4

    iput-boolean v4, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 371
    new-instance v4, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/FsInfo;)V

    iput-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    .line 372
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget-boolean v5, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageEnable:Z

    const/4 v6, 0x1

    sget v7, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageSize:I

    invoke-virtual {v4, v5, v6, v7}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowsePaging(ZII)V

    .line 373
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v5, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    invoke-static {v5}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v5

    sget v6, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v6}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/dto/BrowseToObject;->setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 374
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v5, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v5}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/dto/BrowseToObject;->setSortDirection(Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 375
    new-instance v4, Lnet/yostore/aws/view/navigate/BrowseActivity$6;

    sget-object v5, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v5, v6, v7}, Lnet/yostore/aws/view/navigate/BrowseActivity$6;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Void;

    const/4 v6, 0x0

    .line 394
    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lnet/yostore/aws/view/navigate/BrowseActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 412
    .end local v1           #fi:Lnet/yostore/aws/handler/entity/FsInfo;
    .end local v2           #longParentId:J
    :goto_1
    return-void

    .line 369
    .restart local v1       #fi:Lnet/yostore/aws/handler/entity/FsInfo;
    .restart local v2       #longParentId:J
    :cond_1
    const-string v4, "0"

    goto :goto_0

    .line 398
    .end local v1           #fi:Lnet/yostore/aws/handler/entity/FsInfo;
    :cond_2
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 401
    .end local v2           #longParentId:J
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 403
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->finish()V

    goto :goto_1

    .line 409
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->finish()V

    goto :goto_1
.end method

.method public getRealPathFromURI(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "contentUri"
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 1087
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    .local v2, proj:[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 1088
    invoke-virtual/range {v0 .. v5}, Lnet/yostore/aws/view/navigate/BrowseActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1092
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, -0x1

    .line 1093
    .local v6, column_index:I
    if-eqz v7, :cond_0

    .line 1095
    invoke-interface {v7, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1096
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1097
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1101
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///"

    const-string v3, "/"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 1131
    new-instance v0, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>()V

    .line 1132
    .local v0, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    const-string v1, "system.backup.root"

    iput-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 1133
    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f060096

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 1134
    const-string v1, "1"

    iput-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 1135
    iput-boolean v4, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 1136
    new-instance v1, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/FsInfo;)V

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    .line 1137
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget-boolean v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageEnable:Z

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageSize:I

    invoke-virtual {v1, v2, v4, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowsePaging(ZII)V

    .line 1138
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v2

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v3}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 1139
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/dto/BrowseToObject;->setSortDirection(Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 1140
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->refreshData()V

    .line 1142
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1146
    new-instance v0, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>()V

    .line 1147
    .local v0, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "system."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".home.root"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 1148
    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f060094

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 1149
    const-string v1, "0"

    iput-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 1150
    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 1151
    new-instance v1, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/FsInfo;)V

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    .line 1152
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget-boolean v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageEnable:Z

    const/4 v3, 0x1

    sget v4, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageSize:I

    invoke-virtual {v1, v2, v3, v4}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowsePaging(ZII)V

    .line 1153
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v2

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v3}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 1154
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/dto/BrowseToObject;->setSortDirection(Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 1155
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->refreshData()V

    .line 1157
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1110
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/AWSServiceInterface;->getMySyncFolderId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 1111
    new-instance v0, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>()V

    .line 1112
    .local v0, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    iput-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 1113
    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f060094

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 1114
    const-string v1, "0"

    iput-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 1115
    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 1116
    new-instance v1, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/FsInfo;)V

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    .line 1117
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget-boolean v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageEnable:Z

    const/4 v3, 0x1

    sget v4, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageSize:I

    invoke-virtual {v1, v2, v3, v4}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowsePaging(ZII)V

    .line 1118
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v2

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v3}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 1119
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/dto/BrowseToObject;->setSortDirection(Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 1120
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->refreshData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    .end local v0           #fi:Lnet/yostore/aws/handler/entity/FsInfo;
    :goto_0
    return-void

    .line 1122
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 17
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 972
    const/4 v4, -0x1

    move/from16 v0, p2

    move v1, v4

    if-ne v0, v1, :cond_0

    .line 975
    const/16 v16, 0x0

    .line 976
    .local v16, fn:Ljava/lang/String;
    const/4 v15, 0x0

    .line 979
    .local v15, file:Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 1034
    .end local v15           #file:Ljava/io/File;
    .end local v16           #fn:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 982
    .restart local v15       #file:Ljava/io/File;
    .restart local v16       #fn:Ljava/lang/String;
    :pswitch_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 984
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 985
    .local v13, currImageURI:Landroid/net/Uri;
    const-string v4, "_data"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getRealPathFromURI(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 991
    .end local v13           #currImageURI:Landroid/net/Uri;
    :goto_1
    new-instance v15, Ljava/io/File;

    .end local v15           #file:Ljava/io/File;
    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 992
    .restart local v15       #file:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 994
    new-instance v3, Lnet/yostore/aws/sqlite/entity/UploadItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v4, v0

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->uploadFolder:J

    move-wide v10, v0

    const-string v12, ""

    invoke-direct/range {v3 .. v12}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)V

    .line 995
    .local v3, ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    new-instance v4, Lnet/yostore/aws/ansytask/AddCreateUploadTask;

    sget-object v5, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    goto :goto_0

    .line 989
    .end local v3           #ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->PhotoPath:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_1

    .line 999
    :cond_2
    sget-object v4, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const-string v5, "Fail!"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1003
    :pswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 1005
    .restart local v13       #currImageURI:Landroid/net/Uri;
    const-string v4, "_data"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getRealPathFromURI(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1006
    new-instance v15, Ljava/io/File;

    .end local v15           #file:Ljava/io/File;
    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1007
    .restart local v15       #file:Ljava/io/File;
    new-instance v3, Lnet/yostore/aws/sqlite/entity/UploadItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v4, v0

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->uploadFolder:J

    move-wide v10, v0

    const-string v12, ""

    invoke-direct/range {v3 .. v12}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)V

    .line 1008
    .restart local v3       #ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    new-instance v4, Lnet/yostore/aws/ansytask/AddCreateUploadTask;

    sget-object v5, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    goto/16 :goto_0

    .line 1012
    .end local v3           #ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    .end local v13           #currImageURI:Landroid/net/Uri;
    :pswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 1013
    .local v14, extras:Landroid/os/Bundle;
    if-eqz v14, :cond_0

    .line 1015
    const-string v4, "fileuri"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1016
    new-instance v15, Ljava/io/File;

    .end local v15           #file:Ljava/io/File;
    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1017
    .restart local v15       #file:Ljava/io/File;
    new-instance v3, Lnet/yostore/aws/sqlite/entity/UploadItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v4, v0

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v7

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->uploadFolder:J

    move-wide v10, v0

    const-string v12, ""

    invoke-direct/range {v3 .. v12}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)V

    .line 1018
    .restart local v3       #ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    new-instance v4, Lnet/yostore/aws/ansytask/AddCreateUploadTask;

    sget-object v5, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    goto/16 :goto_0

    .line 1023
    .end local v3           #ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    .end local v14           #extras:Landroid/os/Bundle;
    :pswitch_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 1024
    .restart local v14       #extras:Landroid/os/Bundle;
    if-eqz v14, :cond_0

    .line 1026
    const-string v4, "fileuri"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1027
    new-instance v15, Ljava/io/File;

    .end local v15           #file:Ljava/io/File;
    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1028
    .restart local v15       #file:Ljava/io/File;
    new-instance v3, Lnet/yostore/aws/sqlite/entity/UploadItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v4, v0

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v7

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->uploadFolder:J

    move-wide v10, v0

    const-string v12, ""

    invoke-direct/range {v3 .. v12}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)V

    .line 1029
    .restart local v3       #ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    new-instance v4, Lnet/yostore/aws/ansytask/AddCreateUploadTask;

    sget-object v5, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    goto/16 :goto_0

    .line 979
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 787
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 788
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 791
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_1

    .line 793
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->setContentView(I)V

    .line 794
    new-instance v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f03000d

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v3}, Lnet/yostore/aws/vo/BrowseVo;->getFsInfos()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lnet/yostore/aws/api/ApiConfig;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 795
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 796
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->initList()V

    .line 797
    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->mPath:Landroid/widget/TextView;

    .line 798
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->mPath:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v1}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f060037

    const v8, 0x7f060026

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 128
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->setContentView(I)V

    .line 130
    const-string v1, "AWSPrefs"

    invoke-virtual {p0, v1, v7}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 131
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 132
    const v1, 0x7f090030

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->mPath:Landroid/widget/TextView;

    .line 133
    sput-object p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    .line 134
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    if-nez v1, :cond_1

    .line 136
    :cond_0
    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSplash(Landroid/content/Context;)V

    .line 141
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "net.yostore.aws.service.UploadService"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->mUploadFilter:Landroid/content/IntentFilter;

    .line 142
    new-instance v1, Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;

    invoke-direct {v1, p0, v10}, Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;)V

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->mUploadBrocastRecv:Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;

    .line 143
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "browseType"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->browseType:I

    .line 144
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->initList()V

    .line 145
    new-instance v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-object v2, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const v3, 0x7f03000d

    sget-object v4, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->defaultList:Ljava/util/List;

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v1, v2, v3, v4, v5}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lnet/yostore/aws/api/ApiConfig;)V

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    new-instance v1, Lnet/yostore/aws/handler/FolderBrowseHandler;

    sget-object v2, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/handler/FolderBrowseHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    .line 147
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    iget-object v1, v1, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 149
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    iget-object v1, v1, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    const-string v2, "err.login.fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 153
    new-instance v2, Lnet/yostore/aws/view/navigate/BrowseActivity$1;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/BrowseActivity$1;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 278
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 279
    return-void

    .line 162
    :cond_3
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    iget-object v1, v1, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    const-string v2, "err.login.reject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->doLogout(Landroid/content/Context;)Z

    .line 166
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 167
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/view/navigate/BrowseActivity$2;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/BrowseActivity$2;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 179
    invoke-static {p0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSplash(Landroid/content/Context;)V

    goto :goto_0

    .line 181
    :cond_4
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    iget-object v1, v1, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    const-string v2, "err.connect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 184
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 185
    new-instance v2, Lnet/yostore/aws/view/navigate/BrowseActivity$3;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/BrowseActivity$3;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 195
    :cond_5
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    iget-object v1, v1, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    const-string v2, "err.login.freeze"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->doLogout(Landroid/content/Context;)Z

    .line 199
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060039

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 200
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/view/navigate/BrowseActivity$4;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/BrowseActivity$4;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 212
    invoke-static {p0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSplash(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 217
    :cond_6
    iget v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->browseType:I

    sget-object v2, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->AllShares:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->getInt()I

    move-result v2

    if-eq v1, v2, :cond_7

    iget v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->browseType:I

    sget-object v2, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentChanges:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->getInt()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 218
    iget v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->browseType:I

    sget-object v2, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentUpload:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->getInt()I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 220
    :cond_7
    new-instance v1, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget v3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->browseType:I

    invoke-static {v3}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    .line 221
    iget v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->browseType:I

    sget-object v2, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->AllShares:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->getInt()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 223
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    const v2, 0x7f060020

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowseName(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    const/16 v2, 0x64

    invoke-virtual {v1, v7, v6, v2}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowsePaging(ZII)V

    .line 234
    :goto_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->mPath:Landroid/widget/TextView;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v2

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v3}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 257
    :goto_2
    new-instance v1, Lnet/yostore/aws/view/navigate/BrowseActivity$5;

    sget-object v2, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-direct {v1, p0, v2, v3, v10}, Lnet/yostore/aws/view/navigate/BrowseActivity$5;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    new-array v2, v6, [Ljava/lang/Void;

    .line 276
    aput-object v10, v2, v7

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/BrowseActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 228
    :cond_8
    iget v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->browseType:I

    sget-object v2, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentChanges:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->getInt()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 229
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    const v2, 0x7f06001a

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowseName(Ljava/lang/String;)V

    .line 232
    :goto_3
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    const/16 v2, 0x14

    invoke-virtual {v1, v7, v6, v2}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowsePaging(ZII)V

    goto :goto_1

    .line 231
    :cond_9
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    const v2, 0x7f06001f

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowseName(Ljava/lang/String;)V

    goto :goto_3

    .line 239
    :cond_a
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "FromWhere"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    new-instance v0, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>()V

    .line 244
    .local v0, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fi.id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 245
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fi.id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 246
    :cond_b
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fi.display"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 247
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fi.display"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 248
    :cond_c
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fi.isbackup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 249
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fi.isbackup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 251
    :cond_d
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fi.isReadOnly"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 252
    new-instance v1, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/FsInfo;)V

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    .line 253
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget-boolean v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageEnable:Z

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageSize:I

    invoke-virtual {v1, v2, v6, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowsePaging(ZII)V

    .line 254
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v2

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v3}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    goto/16 :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 332
    packed-switch p1, :pswitch_data_0

    .line 338
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 335
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->backFunction(Landroid/view/View;)V

    .line 336
    const/4 v0, 0x0

    goto :goto_0

    .line 332
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
    .line 346
    packed-switch p1, :pswitch_data_0

    .line 352
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .end local p0
    :goto_0
    return v0

    .line 349
    .restart local p0
    :pswitch_0
    sget-object p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 350
    const/4 v0, 0x0

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 806
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 807
    .local v1, rtn:Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 808
    .local v0, intent:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 848
    :goto_0
    return v1

    .line 811
    :pswitch_0
    sget-object v2, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSearch(Landroid/content/Context;)V

    goto :goto_0

    .line 814
    :pswitch_1
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->refreshData()V

    goto :goto_0

    .line 825
    :pswitch_2
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->showCreateNewItem()V

    goto :goto_0

    .line 828
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 829
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v2}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseFolderId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "system."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".home.root"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    const-string v2, "uploadFolder"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 837
    :goto_1
    sget-object v2, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const-class v3, Lnet/yostore/aws/view/capture/FileActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 838
    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 835
    :cond_0
    const-string v2, "uploadFolder"

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v3}, Lnet/yostore/aws/vo/BrowseVo;->getBrowseFolderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 841
    :pswitch_4
    sget-object v2, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSetting(Landroid/content/Context;)V

    goto :goto_0

    .line 808
    nop

    :pswitch_data_0
    .packed-switch 0x7f090068
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->mUploadBrocastRecv:Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 124
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 774
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 775
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 776
    .local v0, inflater:Landroid/view/MenuInflater;
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->isBackup()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 777
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 780
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 779
    :cond_0
    const v1, 0x7f080002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 112
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 113
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    if-nez v0, :cond_1

    .line 115
    :cond_0
    sget-object v0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSplash(Landroid/content/Context;)V

    .line 116
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->mUploadBrocastRecv:Lnet/yostore/aws/view/navigate/BrowseActivity$MyUploadBroadcastRecv;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->mUploadFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 585
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 11
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v7, 0x1

    .line 589
    packed-switch p2, :pswitch_data_0

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 592
    :pswitch_0
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lnet/yostore/aws/view/navigate/BrowseAdapter;->mBusy:Z

    .line 594
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    .line 595
    .local v3, first:I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 596
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 598
    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 599
    .local v0, convertView:Landroid/view/View;
    const v6, 0x7f090032

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 600
    .local v5, icon:Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 602
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v6, v6, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    add-int v7, v3, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 603
    .local v2, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    iget v6, v2, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    const v7, 0x7f02006f

    if-ne v6, v7, :cond_1

    .line 605
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v6, v6, Lnet/yostore/aws/view/navigate/BrowseAdapter;->imageDownloader:Lnet/yostore/aws/view/common/ImageDownloader;

    iget-object v7, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v8, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v9, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getThumbnailUrl(Lnet/yostore/aws/api/ApiConfig;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lnet/yostore/aws/view/common/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 607
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 596
    .end local v2           #fi:Lnet/yostore/aws/handler/entity/FsInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 614
    .end local v0           #convertView:Landroid/view/View;
    .end local v1           #count:I
    .end local v3           #first:I
    .end local v4           #i:I
    .end local v5           #icon:Landroid/widget/ImageView;
    :pswitch_1
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iput-boolean v7, v6, Lnet/yostore/aws/view/navigate/BrowseAdapter;->mBusy:Z

    goto :goto_0

    .line 618
    :pswitch_2
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iput-boolean v7, v6, Lnet/yostore/aws/view/navigate/BrowseAdapter;->mBusy:Z

    goto :goto_0

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public recentChangedBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1166
    new-instance v0, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentChanges:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    .line 1167
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    const v1, 0x7f06001a

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowseName(Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowsePaging(ZII)V

    .line 1169
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->mPath:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1170
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    invoke-static {v1}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v1

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/dto/BrowseToObject;->setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 1171
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->refreshData()V

    .line 1173
    return-void
.end method

.method public recentUploadBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1177
    new-instance v0, Lnet/yostore/aws/dto/BrowseToObject;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentUpload:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/dto/BrowseToObject;-><init>(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    .line 1178
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    const v1, 0x7f06001f

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowseName(Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowsePaging(ZII)V

    .line 1180
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->mPath:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    sget v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    invoke-static {v1}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v1

    sget v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    invoke-static {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getType(I)Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/dto/BrowseToObject;->setSort(Lnet/yostore/aws/dto/BrowseToObject$SortBy;Lnet/yostore/aws/dto/BrowseToObject$SortDirection;)V

    .line 1182
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->refreshData()V

    .line 1184
    return-void
.end method

.method public refreshData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 420
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f03000d

    sget-object v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->defaultList:Ljava/util/List;

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lnet/yostore/aws/api/ApiConfig;)V

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 423
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowsePage(I)V

    .line 424
    new-instance v0, Lnet/yostore/aws/view/navigate/BrowseActivity$7;

    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-direct {v0, p0, v1, v2, v6}, Lnet/yostore/aws/view/navigate/BrowseActivity$7;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V

    new-array v1, v5, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 443
    aput-object v6, v1, v2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 445
    :cond_0
    return-void
.end method

.method public saveSearchBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1199
    new-instance v0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;

    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1200
    return-void
.end method

.method public saveSearchFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 284
    return-void
.end method

.method protected showFileContextMenu(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v8, 0x1

    .line 707
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 708
    .local v1, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    const-string v5, "BrowseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Now Position -->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const v4, 0x7f040008

    .line 711
    .local v4, menuid:I
    iget-boolean v5, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    if-eqz v5, :cond_0

    .line 713
    const v4, 0x7f040007

    .line 716
    :cond_0
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 717
    .local v2, itemArray:[Ljava/lang/String;
    iget-object v5, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    array-length v5, v2

    if-le v5, v8, :cond_1

    .line 719
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 720
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 721
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 722
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #itemArray:[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 725
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #itemArray:[Ljava/lang/String;
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lnet/yostore/aws/view/navigate/BrowseActivity$12;

    invoke-direct {v6, p0, v1, p1}, Lnet/yostore/aws/view/navigate/BrowseActivity$12;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;Lnet/yostore/aws/handler/entity/FsInfo;I)V

    invoke-virtual {v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 767
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 768
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 769
    return-void
.end method

.method protected showFolderContextMenu(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x1

    .line 626
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v4, v4, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 627
    .local v1, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, itemArray:[Ljava/lang/String;
    iget-boolean v4, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    if-eqz v4, :cond_0

    .line 630
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 632
    :cond_0
    iget-object v4, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    array-length v4, v2

    if-le v4, v6, :cond_1

    .line 634
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 635
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 636
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 637
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #itemArray:[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 639
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #itemArray:[Ljava/lang/String;
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v4, v4, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 640
    new-instance v5, Lnet/yostore/aws/view/navigate/BrowseActivity$10;

    invoke-direct {v5, p0, p1, v1}, Lnet/yostore/aws/view/navigate/BrowseActivity$10;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;ILnet/yostore/aws/handler/entity/FsInfo;)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 660
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 661
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 662
    return-void
.end method

.method protected showInfectedFileContextMenu(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x1

    .line 666
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v4, v4, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 667
    .local v1, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, itemArray:[Ljava/lang/String;
    iget-object v4, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    array-length v4, v2

    if-le v4, v6, :cond_0

    .line 670
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 671
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 672
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #itemArray:[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 674
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #itemArray:[Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lnet/yostore/aws/view/navigate/BrowseActivity$11;

    invoke-direct {v5, p0, v1, p1}, Lnet/yostore/aws/view/navigate/BrowseActivity$11;-><init>(Lnet/yostore/aws/view/navigate/BrowseActivity;Lnet/yostore/aws/handler/entity/FsInfo;I)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 701
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 702
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 703
    return-void
.end method

.method public tagBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1161
    new-instance v0, Lnet/yostore/aws/ansytask/GoMarkedTask;

    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMarkedTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMarkedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1162
    return-void
.end method
