.class public Lnet/yostore/aws/view/navigate/DownloadQueueActivity;
.super Landroid/app/ListActivity;
.source "DownloadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/navigate/DownloadQueueActivity$InitListTask;,
        Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadQueueActivity"


# instance fields
.field private adapter:Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

.field isPaused:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadProgressBrocastRecv:Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;

.field private mDownloadProgressFilter:Landroid/content/IntentFilter;

.field private taggle:Landroid/widget/Button;

.field private title:Landroid/widget/TextView;

.field private uploadingPosition:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 53
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->ctx:Landroid/content/Context;

    .line 54
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->list:Ljava/util/List;

    .line 59
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->taggle:Landroid/widget/Button;

    .line 61
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->title:Landroid/widget/TextView;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->isPaused:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->uploadingPosition:I

    .line 50
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->initList()V

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->adapter:Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->adapter:Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->uploadingPosition:I

    return v0
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput p1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->uploadingPosition:I

    return-void
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->itemClickFunction(I)V

    return-void
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private deleteItem(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 272
    return-void
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 92
    .local v0, lv:Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 93
    new-instance v1, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$1;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$1;-><init>(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    new-instance v1, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$2;-><init>(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 107
    return-void
.end method

.method private itemClickFunction(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, -0x2

    .line 110
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->adapter:Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    .line 111
    .local v2, itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    const/high16 v3, 0x7f04

    .line 112
    .local v3, menuid:I
    const/4 v1, 0x0

    .line 120
    .local v1, isPauseItem:Z
    iget v5, v2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->status:I

    if-gtz v5, :cond_0

    iget v5, v2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->status:I

    if-le v5, v6, :cond_0

    sget-boolean v5, Lnet/yostore/aws/service/DownloadService;->isDownLoading:Z

    if-eqz v5, :cond_0

    sget-object v5, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    if-nez v5, :cond_1

    .line 121
    :cond_0
    const v3, 0x7f040001

    .line 122
    const/4 v1, 0x1

    .line 125
    :cond_1
    if-eqz v1, :cond_2

    const/4 v5, -0x1

    move v4, v5

    .line 127
    .local v4, updateStatus:I
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->ctx:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 129
    new-instance v6, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;

    invoke-direct {v6, p0, v2, p1, v4}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;-><init>(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;Lnet/yostore/aws/sqlite/entity/DownloadItem;II)V

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 174
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 175
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 176
    return-void

    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v4           #updateStatus:I
    :cond_2
    move v4, v6

    .line 125
    goto :goto_0
.end method


# virtual methods
.method public allSharesBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 336
    new-instance v0, Lnet/yostore/aws/ansytask/GoAllSharesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 337
    return-void
.end method

.method public backFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 179
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->finish()V

    .line 180
    return-void
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 316
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyBackupTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 317
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 320
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyCollectionTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 321
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 312
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 313
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->setContentView(I)V

    .line 78
    iput-object p0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->ctx:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "net.yostore.aws.service.DownloadPercentUpdate"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->mDownloadProgressFilter:Landroid/content/IntentFilter;

    .line 80
    new-instance v0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;

    invoke-direct {v0, p0, v2}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;-><init>(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->mDownloadProgressBrocastRecv:Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;

    .line 82
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->title:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->title:Landroid/widget/TextView;

    const-string v1, "Download"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 85
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    if-nez v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSplash(Landroid/content/Context;)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_1
    new-instance v0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$InitListTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$InitListTask;-><init>(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$InitListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 71
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->mDownloadProgressBrocastRecv:Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->mDownloadProgressFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    return-void
.end method

.method public recentChangedBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 328
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentChangesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 329
    return-void
.end method

.method public recentUploadBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 332
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 333
    return-void
.end method

.method public saveSearchBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 340
    new-instance v0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 341
    return-void
.end method

.method protected showBatchItemMenu(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 268
    return-void
.end method

.method public tagBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 324
    new-instance v0, Lnet/yostore/aws/ansytask/GoMarkedTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMarkedTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMarkedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 325
    return-void
.end method
