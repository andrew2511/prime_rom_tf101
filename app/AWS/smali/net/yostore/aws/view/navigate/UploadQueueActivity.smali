.class public Lnet/yostore/aws/view/navigate/UploadQueueActivity;
.super Landroid/app/ListActivity;
.source "UploadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;,
        Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadQueueActivity"


# instance fields
.field private adapter:Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private downloadingPosition:I

.field isPaused:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadProgressBrocastRecv:Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;

.field private mUploadProgressFilter:Landroid/content/IntentFilter;

.field private msgtxt:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 49
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    .line 50
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->list:Ljava/util/List;

    .line 54
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->msgtxt:Landroid/widget/TextView;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->isPaused:Z

    .line 56
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->title:Landroid/widget/TextView;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->downloadingPosition:I

    .line 46
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->initList()V

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/navigate/UploadQueueActivity;Lnet/yostore/aws/view/navigate/UploadQueueAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->adapter:Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->adapter:Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->downloadingPosition:I

    return v0
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/navigate/UploadQueueActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->downloadingPosition:I

    return-void
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/navigate/UploadQueueActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->itemClickFunction(I)V

    return-void
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 95
    .local v0, lv:Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 96
    new-instance v1, Lnet/yostore/aws/view/navigate/UploadQueueActivity$1;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$1;-><init>(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    new-instance v1, Lnet/yostore/aws/view/navigate/UploadQueueActivity$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$2;-><init>(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 110
    return-void
.end method

.method private itemClickFunction(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, -0x2

    .line 113
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->adapter:Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/sqlite/entity/UploadItem;

    .line 115
    .local v2, itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    const v3, 0x7f040002

    .line 116
    .local v3, menuid:I
    const/4 v1, 0x0

    .line 124
    .local v1, isPauseItem:Z
    iget v5, v2, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    if-gtz v5, :cond_0

    iget v5, v2, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    if-le v5, v6, :cond_0

    sget-boolean v5, Lnet/yostore/aws/service/AWSService;->isUploading:Z

    if-eqz v5, :cond_0

    sget-object v5, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    if-nez v5, :cond_1

    .line 125
    :cond_0
    const v3, 0x7f040003

    .line 126
    const/4 v1, 0x1

    .line 129
    :cond_1
    if-eqz v1, :cond_3

    const/4 v5, -0x1

    move v4, v5

    .line 131
    .local v4, updateStatus:I
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 133
    new-instance v6, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;

    invoke-direct {v6, p0, v2, p1, v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;-><init>(Lnet/yostore/aws/view/navigate/UploadQueueActivity;Lnet/yostore/aws/sqlite/entity/UploadItem;II)V

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 174
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 175
    .local v0, dialog:Landroid/app/AlertDialog;
    iget v5, v2, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    if-eqz v5, :cond_2

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 177
    :cond_2
    return-void

    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v4           #updateStatus:I
    :cond_3
    move v4, v6

    .line 129
    goto :goto_0
.end method


# virtual methods
.method public allSharesBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 356
    new-instance v0, Lnet/yostore/aws/ansytask/GoAllSharesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 357
    return-void
.end method

.method public backFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 180
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->finish()V

    .line 181
    return-void
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 336
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyBackupTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 337
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 340
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyCollectionTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 341
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 332
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 333
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

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->setContentView(I)V

    .line 78
    iput-object p0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    .line 80
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->title:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->title:Landroid/widget/TextView;

    const-string v1, "Uploadload"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "net.yostore.aws.service.UploadPercentUpdate"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->mUploadProgressFilter:Landroid/content/IntentFilter;

    .line 84
    new-instance v0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;

    invoke-direct {v0, p0, v2}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;-><init>(Lnet/yostore/aws/view/navigate/UploadQueueActivity;Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->mUploadProgressBrocastRecv:Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;

    .line 85
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

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
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSplash(Landroid/content/Context;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_1
    new-instance v0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;-><init>(Lnet/yostore/aws/view/navigate/UploadQueueActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 273
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->popTopUploadFinishedQueueItem(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/UploadItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 275
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f080004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 276
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 278
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 287
    .local v0, rtn:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 295
    :goto_0
    return v0

    .line 290
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->deleteAllUploadedUploadItem(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    new-instance v1, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;-><init>(Lnet/yostore/aws/view/navigate/UploadQueueActivity;Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$InitListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x7f09006d
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->mUploadProgressBrocastRecv:Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 72
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 65
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 66
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->mUploadProgressBrocastRecv:Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->mUploadProgressFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method public recentChangedBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 348
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentChangesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 349
    return-void
.end method

.method public recentUploadBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 352
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 353
    return-void
.end method

.method public saveSearchBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 360
    new-instance v0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 361
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
    .line 344
    new-instance v0, Lnet/yostore/aws/ansytask/GoMarkedTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMarkedTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMarkedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 345
    return-void
.end method
