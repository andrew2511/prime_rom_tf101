.class public Lnet/yostore/aws/ansytask/FolderRemoveTask;
.super Landroid/os/AsyncTask;
.source "FolderRemoveTask.java"


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

.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

.field br:Lnet/yostore/aws/handler/entity/FsInfo;

.field ctx:Landroid/content/Context;

.field newName:Ljava/lang/String;

.field position:I

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V
    .locals 1
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "ba"
    .parameter "position"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->position:I

    .line 28
    iput-object p0, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->task:Landroid/os/AsyncTask;

    .line 34
    iput-object p2, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 35
    iput p4, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->position:I

    .line 36
    iget-object v0, p3, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    iput-object v0, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->br:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 37
    iput-object p1, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->ctx:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 39
    iput-object p0, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->task:Landroid/os/AsyncTask;

    .line 40
    invoke-direct {p0}, Lnet/yostore/aws/ansytask/FolderRemoveTask;->showRemoveDialog()V

    .line 41
    return-void
.end method

.method private showRemoveDialog()V
    .locals 5

    .prologue
    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 88
    iget-object v1, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->br:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 92
    iget-object v1, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/ansytask/FolderRemoveTask$1;

    invoke-direct {v2, p0}, Lnet/yostore/aws/ansytask/FolderRemoveTask$1;-><init>(Lnet/yostore/aws/ansytask/FolderRemoveTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    iget-object v1, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/ansytask/FolderRemoveTask$2;

    invoke-direct {v2, p0}, Lnet/yostore/aws/ansytask/FolderRemoveTask$2;-><init>(Lnet/yostore/aws/ansytask/FolderRemoveTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 113
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    const/4 v3, 0x0

    .line 49
    .local v3, rtn:I
    new-array v4, v7, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lnet/yostore/aws/ansytask/FolderRemoveTask;->publishProgress([Ljava/lang/Object;)V

    .line 50
    new-instance v1, Lnet/yostore/aws/api/helper/FolderRemoveHelper;

    iget-object v4, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->br:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-direct {v1, v4}, Lnet/yostore/aws/api/helper/FolderRemoveHelper;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, helper:Lnet/yostore/aws/api/helper/FolderRemoveHelper;
    :try_start_0
    iget-object v4, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v4}, Lnet/yostore/aws/api/helper/FolderRemoveHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/api/entity/FolderRemoveResponse;

    .line 56
    .local v2, response:Lnet/yostore/aws/api/entity/FolderRemoveResponse;
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/FolderRemoveResponse;->getStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 58
    const/4 v3, 0x1

    .line 68
    .end local v2           #response:Lnet/yostore/aws/api/entity/FolderRemoveResponse;
    :cond_0
    :goto_0
    new-array v4, v7, [Ljava/lang/Integer;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lnet/yostore/aws/ansytask/FolderRemoveTask;->publishProgress([Ljava/lang/Object;)V

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 62
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 64
    .local v0, e:Lnet/yostore/aws/api/exception/APIException;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Lnet/yostore/aws/api/exception/APIException;
    :catchall_0
    move-exception v4

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/FolderRemoveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 79
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 148
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    iget v1, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->notifyDataSetChanged()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->ctx:Landroid/content/Context;

    const-string v1, "fail..."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/FolderRemoveTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 142
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 119
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 120
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->ctx:Landroid/content/Context;

    const v4, 0x7f060030

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lnet/yostore/aws/ansytask/FolderRemoveTask$3;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/FolderRemoveTask$3;-><init>(Lnet/yostore/aws/ansytask/FolderRemoveTask;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->_mdialog:Landroid/app/ProgressDialog;

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FolderRemoveTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/FolderRemoveTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
