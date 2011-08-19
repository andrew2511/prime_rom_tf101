.class public Lnet/yostore/aws/view/capture/FolderActivity;
.super Landroid/app/ListActivity;
.source "FolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/capture/FolderActivity$DirAlphaComparator;,
        Lnet/yostore/aws/view/capture/FolderActivity$NameLengthComparator;,
        Lnet/yostore/aws/view/capture/FolderActivity$browseTask;
    }
.end annotation


# static fields
.field public static ROOT:Ljava/lang/String; = null

.field private static SDROOT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "FileActivity"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ba:Lnet/yostore/aws/view/capture/FolderAdapter;

.field private ctx:Landroid/content/Context;

.field private currentPath:Ljava/lang/String;

.field private di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

.field filefilter:Ljava/io/FileFilter;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPath:Landroid/widget/TextView;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getSdRoot()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/yostore/aws/view/capture/FolderActivity;->SDROOT:Ljava/lang/String;

    .line 44
    const-string v0, "/"

    sput-object v0, Lnet/yostore/aws/view/capture/FolderActivity;->ROOT:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 54
    iput-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    .line 60
    iput-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->items:Ljava/util/List;

    .line 61
    iput-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->paths:Ljava/util/List;

    .line 63
    sget-object v0, Lnet/yostore/aws/view/capture/FolderActivity;->SDROOT:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity;->currentPath:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ba:Lnet/yostore/aws/view/capture/FolderAdapter;

    .line 257
    new-instance v0, Lnet/yostore/aws/view/capture/FolderActivity$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/capture/FolderActivity$1;-><init>(Lnet/yostore/aws/view/capture/FolderActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity;->filefilter:Ljava/io/FileFilter;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/capture/FolderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->currentPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/capture/FolderActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->items:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/capture/FolderActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->paths:Ljava/util/List;

    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/capture/FolderActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/capture/FolderActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity;->paths:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/capture/FolderActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/capture/FolderActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity;->mPath:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/capture/FolderActivity;Lnet/yostore/aws/view/capture/FolderAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ba:Lnet/yostore/aws/view/capture/FolderAdapter;

    return-void
.end method

.method static synthetic access$8(Lnet/yostore/aws/view/capture/FolderActivity;)Lnet/yostore/aws/view/capture/FolderAdapter;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ba:Lnet/yostore/aws/view/capture/FolderAdapter;

    return-object v0
.end method


# virtual methods
.method public allSharesBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 354
    new-instance v0, Lnet/yostore/aws/ansytask/GoAllSharesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 355
    return-void
.end method

.method public backFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 126
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/FolderActivity;->currentPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, currentPathFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lnet/yostore/aws/view/capture/FolderActivity;->ROOT:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, rootFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-object p0, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 132
    :goto_0
    return-void

    .line 131
    .restart local p0
    :cond_0
    new-instance v2, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;-><init>(Lnet/yostore/aws/view/capture/FolderActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public cancelFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 122
    iget-object p0, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 123
    return-void
.end method

.method public goSDRootFunction(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 136
    new-instance v0, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;

    sget-object v1, Lnet/yostore/aws/view/capture/FolderActivity;->SDROOT:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;-><init>(Lnet/yostore/aws/view/capture/FolderActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    return-void
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 334
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyBackupTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 335
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 338
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyCollectionTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 339
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 330
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 331
    return-void
.end method

.method public okClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 273
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->currentPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, _tmpPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->currentPath:Ljava/lang/String;

    sput-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->lastDownloadPath:Ljava/lang/String;

    .line 276
    new-instance v1, Lnet/yostore/aws/ansytask/AddDownloadTask;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/view/capture/FolderActivity;->currentPath:Ljava/lang/String;

    iget-object v4, p0, Lnet/yostore/aws/view/capture/FolderActivity;->di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v5, p0, Lnet/yostore/aws/view/capture/FolderActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lnet/yostore/aws/ansytask/AddDownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/DownloadItem;Ljava/lang/String;)V

    .line 288
    :goto_0
    return-void

    .line 278
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 279
    const-string v2, "This Folder is read only!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 280
    const v2, 0x7f060029

    new-instance v3, Lnet/yostore/aws/view/capture/FolderActivity$2;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/capture/FolderActivity$2;-><init>(Lnet/yostore/aws/view/capture/FolderActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public okFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/capture/FolderActivity;->okClick(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const-wide/16 v5, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    iput-object p0, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    .line 75
    new-instance v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    invoke-direct {v1}, Lnet/yostore/aws/sqlite/entity/DownloadItem;-><init>()V

    iput-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    .line 76
    invoke-virtual {p0}, Lnet/yostore/aws/view/capture/FolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, fromItent:Landroid/content/Intent;
    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    const-string v2, "fi.id"

    const-wide/16 v3, -0x3e7

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    .line 78
    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v1, v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lnet/yostore/aws/view/capture/FolderActivity;->finish()V

    .line 90
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 82
    const v1, 0x7f030011

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/capture/FolderActivity;->setContentView(I)V

    .line 83
    const v1, 0x7f090030

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/capture/FolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->mPath:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    const-string v2, "fi.display"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    const-string v2, "fi.size"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    .line 86
    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    const-string v2, "fi.fileUploadTime"

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileuploadtime:J

    .line 87
    new-instance v1, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;

    sget-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->lastDownloadPath:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;-><init>(Lnet/yostore/aws/view/capture/FolderActivity;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 101
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 98
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/FolderActivity;->backFunction(Landroid/view/View;)V

    .line 99
    const/4 v0, 0x0

    goto :goto_0

    .line 96
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
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 114
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .end local p0
    :goto_0
    return v0

    .line 111
    .restart local p0
    :pswitch_0
    iget-object p0, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 112
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 141
    iget-object v2, p0, Lnet/yostore/aws/view/capture/FolderActivity;->items:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, itm:Ljava/lang/String;
    const-string v2, "<b1>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    new-instance v2, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;

    sget-object v3, Lnet/yostore/aws/view/capture/FolderActivity;->SDROOT:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;-><init>(Lnet/yostore/aws/view/capture/FolderActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const-string v2, "<b2>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    new-instance v3, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/FolderActivity;->paths:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, p0, v2}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;-><init>(Lnet/yostore/aws/view/capture/FolderActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 150
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/FolderActivity;->paths:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    new-instance v2, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;-><init>(Lnet/yostore/aws/view/capture/FolderActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lnet/yostore/aws/view/capture/FolderActivity$browseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public recentChangedBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 346
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentChangesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 347
    return-void
.end method

.method public recentUploadBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 350
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 351
    return-void
.end method

.method public saveSearchBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 358
    new-instance v0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 359
    return-void
.end method

.method public tagBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 342
    new-instance v0, Lnet/yostore/aws/ansytask/GoMarkedTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FolderActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMarkedTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMarkedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 343
    return-void
.end method
