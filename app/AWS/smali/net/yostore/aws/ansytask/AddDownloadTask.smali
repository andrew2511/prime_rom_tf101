.class public Lnet/yostore/aws/ansytask/AddDownloadTask;
.super Landroid/os/AsyncTask;
.source "AddDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field _mdialog:Landroid/app/ProgressDialog;

.field ctx:Landroid/content/Context;

.field currentPath:Ljava/lang/String;

.field di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

.field newName:Ljava/lang/String;

.field response:Lnet/yostore/aws/api/entity/FolderRemoveResponse;

.field task:Landroid/os/AsyncTask;

.field userid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/DownloadItem;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "currentPath"
    .parameter "di"
    .parameter "userid"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object v1, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->response:Lnet/yostore/aws/api/entity/FolderRemoveResponse;

    .line 33
    iput-object p0, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->task:Landroid/os/AsyncTask;

    .line 34
    iput-object p2, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->currentPath:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    .line 36
    iput-object p1, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->ctx:Landroid/content/Context;

    .line 37
    iput-object p4, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->userid:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v0, v0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->newName:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->task:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/ansytask/AddDownloadTask;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lnet/yostore/aws/ansytask/AddDownloadTask;->chkName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private chkName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, -0x1

    .line 153
    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 154
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 155
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 153
    goto :goto_0
.end method

.method private showRenameDialog()V
    .locals 5

    .prologue
    .line 107
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f06007f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 109
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 110
    .local v1, editName:Landroid/widget/EditText;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v2, v2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lnet/yostore/aws/ansytask/AddDownloadTask$1;

    invoke-direct {v3, p0}, Lnet/yostore/aws/ansytask/AddDownloadTask$1;-><init>(Lnet/yostore/aws/ansytask/AddDownloadTask;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lnet/yostore/aws/ansytask/AddDownloadTask$2;

    invoke-direct {v3, p0, v1}, Lnet/yostore/aws/ansytask/AddDownloadTask$2;-><init>(Lnet/yostore/aws/ansytask/AddDownloadTask;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 149
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 14
    .parameter "arg0"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 47
    const/4 v11, 0x0

    .line 48
    .local v11, rtn:I
    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->currentPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 50
    new-array v1, v13, [Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/AddDownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 53
    :try_start_0
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    if-eqz v1, :cond_0

    .line 55
    new-instance v0, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->userid:Ljava/lang/String;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v2, v2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    iget-object v4, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->currentPath:Ljava/lang/String;

    iget-object v5, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->newName:Ljava/lang/String;

    iget-object v6, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v6, v6, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    iget-object v8, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->di:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v8, v8, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileuploadtime:J

    invoke-direct/range {v0 .. v9}, Lnet/yostore/aws/sqlite/entity/DownloadItem;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)V

    .line 56
    .local v0, di:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    invoke-interface {v1, v0}, Lnet/yostore/aws/service/DownloadServiceInterface;->addDownloadItem(Lnet/yostore/aws/sqlite/entity/DownloadItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const/4 v11, 0x1

    .line 58
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/DownloadServiceInterface;->startDownload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0           #di:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    :cond_0
    :goto_0
    new-array v1, v13, [Ljava/lang/Integer;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/AddDownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 69
    :cond_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 62
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 65
    .local v10, e:Landroid/os/RemoteException;
    const-string v1, "DownloadService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/AddDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 77
    iget-object v0, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 100
    iget-object p0, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 103
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/AddDownloadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .parameter "values"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 85
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060033

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/AddDownloadTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/AddDownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
