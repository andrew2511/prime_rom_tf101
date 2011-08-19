.class public Lnet/yostore/aws/view/capture/FileActivity;
.super Landroid/app/ListActivity;
.source "FileActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/capture/FileActivity$DirAlphaComparator;,
        Lnet/yostore/aws/view/capture/FileActivity$InitListTask;,
        Lnet/yostore/aws/view/capture/FileActivity$NameLengthComparator;
    }
.end annotation


# static fields
.field public static ROOT:Ljava/lang/String; = null

.field private static SDROOT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "FileActivity"


# instance fields
.field private ba:Lnet/yostore/aws/view/capture/FileAdapter;

.field private ctx:Landroid/content/Context;

.field private currentPath:Ljava/lang/String;

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

.field private uploadCount:I

.field private uploadFolder:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getSdRoot()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/yostore/aws/view/capture/FileActivity;->SDROOT:Ljava/lang/String;

    .line 46
    const-string v0, "/"

    sput-object v0, Lnet/yostore/aws/view/capture/FileActivity;->ROOT:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 48
    iput-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    .line 54
    iput-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->items:Ljava/util/List;

    .line 55
    iput-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->paths:Ljava/util/List;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/capture/FileActivity;->uploadCount:I

    .line 66
    iput-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->ba:Lnet/yostore/aws/view/capture/FileAdapter;

    .line 68
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/view/capture/FileActivity;->uploadFolder:J

    .line 43
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/capture/FileActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FileActivity;->currentPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/capture/FileActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FileActivity;->items:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/capture/FileActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FileActivity;->paths:Ljava/util/List;

    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/capture/FileActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/capture/FileActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity;->paths:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/capture/FileActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-wide v0, p0, Lnet/yostore/aws/view/capture/FileActivity;->uploadFolder:J

    return-wide v0
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/capture/FileActivity;Lnet/yostore/aws/view/capture/FileAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FileActivity;->ba:Lnet/yostore/aws/view/capture/FileAdapter;

    return-void
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/capture/FileActivity;)Lnet/yostore/aws/view/capture/FileAdapter;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity;->ba:Lnet/yostore/aws/view/capture/FileAdapter;

    return-object v0
.end method


# virtual methods
.method public allSharesBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 351
    new-instance v0, Lnet/yostore/aws/ansytask/GoAllSharesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 352
    return-void
.end method

.method public backFunction(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 157
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/FileActivity;->currentPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, currentPathFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lnet/yostore/aws/view/capture/FileActivity;->ROOT:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, rootFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object p0, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 163
    :goto_0
    return-void

    .line 162
    .restart local p0
    :cond_0
    new-instance v2, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;

    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/yostore/aws/view/capture/FileActivity;->mPath:Landroid/widget/TextView;

    invoke-direct {v2, p0, v3, v4, v5}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;-><init>(Lnet/yostore/aws/view/capture/FileActivity;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public cancelFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 153
    iget-object p0, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 154
    return-void
.end method

.method public goSDRootFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 167
    new-instance v0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    sget-object v2, Lnet/yostore/aws/view/capture/FileActivity;->SDROOT:Ljava/lang/String;

    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileActivity;->mPath:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, v2, v3}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;-><init>(Lnet/yostore/aws/view/capture/FileActivity;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 168
    return-void
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 331
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyBackupTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 332
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 335
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyCollectionTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 336
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 327
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 328
    return-void
.end method

.method public okClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 282
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity;->currentPath:Ljava/lang/String;

    sput-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->lastUploadPath:Ljava/lang/String;

    .line 283
    new-instance v0, Lnet/yostore/aws/ansytask/AddUploadTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/FileActivity;->ba:Lnet/yostore/aws/view/capture/FileAdapter;

    iget-object v2, v2, Lnet/yostore/aws/view/capture/FileAdapter;->hm:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/ansytask/AddUploadTask;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/AddUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 285
    return-void
.end method

.method public okFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/capture/FileActivity;->okClick(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iput-object p0, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    .line 76
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/FileActivity;->setContentView(I)V

    .line 77
    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/FileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FileActivity;->mPath:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p0}, Lnet/yostore/aws/view/capture/FileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uploadFolder"

    const-wide/16 v2, -0x3e7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/view/capture/FileActivity;->uploadFolder:J

    .line 81
    new-instance v0, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    sget-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->lastUploadPath:Ljava/lang/String;

    iget-object v3, p0, Lnet/yostore/aws/view/capture/FileActivity;->mPath:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, v2, v3}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;-><init>(Lnet/yostore/aws/view/capture/FileActivity;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 114
    packed-switch p1, :pswitch_data_0

    .line 119
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 116
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/FileActivity;->backFunction(Landroid/view/View;)V

    .line 117
    const/4 v0, 0x0

    goto :goto_0

    .line 114
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
    .line 140
    packed-switch p1, :pswitch_data_0

    .line 145
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .end local p0
    :goto_0
    return v0

    .line 142
    .restart local p0
    :pswitch_0
    iget-object p0, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 143
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 127
    packed-switch p1, :pswitch_data_0

    .line 132
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    .end local p0
    :goto_0
    return v0

    .line 129
    .restart local p0
    :pswitch_0
    iget-object p0, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 87
    iget-object v4, p0, Lnet/yostore/aws/view/capture/FileActivity;->items:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 88
    .local v3, itm:Ljava/lang/String;
    iget-object v4, p0, Lnet/yostore/aws/view/capture/FileActivity;->ba:Lnet/yostore/aws/view/capture/FileAdapter;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lnet/yostore/aws/view/capture/FileAdapter;->hm:Ljava/util/HashMap;

    .line 89
    const-string v4, "<b1>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    new-instance v4, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;

    iget-object v5, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    sget-object v6, Lnet/yostore/aws/view/capture/FileActivity;->SDROOT:Ljava/lang/String;

    iget-object v7, p0, Lnet/yostore/aws/view/capture/FileActivity;->mPath:Landroid/widget/TextView;

    invoke-direct {v4, p0, v5, v6, v7}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;-><init>(Lnet/yostore/aws/view/capture/FileActivity;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v4, v8}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v4, "<b2>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    new-instance v5, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;

    iget-object v6, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lnet/yostore/aws/view/capture/FileActivity;->paths:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v7, p0, Lnet/yostore/aws/view/capture/FileActivity;->mPath:Landroid/widget/TextView;

    invoke-direct {v5, p0, v6, v4, v7}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;-><init>(Lnet/yostore/aws/view/capture/FileActivity;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v5, v8}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 98
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lnet/yostore/aws/view/capture/FileActivity;->paths:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    new-instance v4, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;

    iget-object v5, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lnet/yostore/aws/view/capture/FileActivity;->mPath:Landroid/widget/TextView;

    invoke-direct {v4, p0, v5, v6, v7}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;-><init>(Lnet/yostore/aws/view/capture/FileActivity;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v4, v8}, Lnet/yostore/aws/view/capture/FileActivity$InitListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 104
    .local v0, convertView:Landroid/view/View;
    const v4, 0x7f090040

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 105
    .local v2, icadd:Landroid/widget/CheckBox;
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public recentChangedBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 343
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentChangesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 344
    return-void
.end method

.method public recentUploadBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 347
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 348
    return-void
.end method

.method public saveSearchBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 355
    new-instance v0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 356
    return-void
.end method

.method public tagBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 339
    new-instance v0, Lnet/yostore/aws/ansytask/GoMarkedTask;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/FileActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMarkedTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMarkedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 340
    return-void
.end method
