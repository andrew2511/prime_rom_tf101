.class public Lnet/yostore/aws/ansytask/GoMySyncTask;
.super Landroid/os/AsyncTask;
.source "GoMySyncTask.java"


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

.field ctx:Landroid/content/Context;

.field errMsg:Ljava/lang/String;

.field intent:Landroid/content/Intent;

.field isCloseSource:Z

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V
    .locals 1
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "isCloseSource"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->task:Landroid/os/AsyncTask;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->isCloseSource:Z

    .line 35
    iput-object p2, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 36
    iput-object p1, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->ctx:Landroid/content/Context;

    .line 37
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->task:Landroid/os/AsyncTask;

    .line 38
    iput-boolean p3, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->isCloseSource:Z

    .line 39
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, rtn:I
    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lnet/yostore/aws/ansytask/GoMySyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 49
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lnet/yostore/aws/ansytask/GoMySyncTask;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V

    .line 50
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->haveInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 69
    :goto_0
    return-object v2

    .line 52
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->errMsg:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->errMsg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 53
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 55
    :cond_1
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-object v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    invoke-interface {v3}, Lnet/yostore/aws/service/AWSServiceInterface;->getMySyncFolderId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 56
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->ctx:Landroid/content/Context;

    const-class v4, Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->intent:Landroid/content/Intent;

    .line 57
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->intent:Landroid/content/Intent;

    const/high16 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->intent:Landroid/content/Intent;

    const-string v3, "fi.id"

    iget-object v4, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->intent:Landroid/content/Intent;

    const-string v3, "fi.display"

    iget-object v4, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->ctx:Landroid/content/Context;

    const v5, 0x7f060095

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->intent:Landroid/content/Intent;

    const-string v3, "fi.isbackup"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->intent:Landroid/content/Intent;

    const-string v3, "fi.isReadOnly"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 69
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 81
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    const v5, 0x7f060031

    const/4 v4, 0x1

    const v3, 0x7f060029

    .line 107
    new-array v0, v4, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/GoMySyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    new-instance v1, Lnet/yostore/aws/ansytask/GoMySyncTask$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoMySyncTask$2;-><init>(Lnet/yostore/aws/ansytask/GoMySyncTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 157
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 120
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    iget-boolean v0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->isCloseSource:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object p0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 125
    .restart local p0
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.freeze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    const v1, 0x7f060032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 129
    new-instance v1, Lnet/yostore/aws/ansytask/GoMySyncTask$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoMySyncTask$3;-><init>(Lnet/yostore/aws/ansytask/GoMySyncTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    new-instance v1, Lnet/yostore/aws/ansytask/GoMySyncTask$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoMySyncTask$4;-><init>(Lnet/yostore/aws/ansytask/GoMySyncTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 145
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.connect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 148
    new-instance v1, Lnet/yostore/aws/ansytask/GoMySyncTask$5;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoMySyncTask$5;-><init>(Lnet/yostore/aws/ansytask/GoMySyncTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 92
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/ansytask/GoMySyncTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/GoMySyncTask$1;-><init>(Lnet/yostore/aws/ansytask/GoMySyncTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 100
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V
    .locals 2
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "rtyCnt"

    .prologue
    .line 160
    invoke-static {p2}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 161
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_3

    .line 163
    :cond_0
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_2

    .line 164
    const-string v1, "err.login.freeze"

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->errMsg:Ljava/lang/String;

    .line 168
    :goto_0
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 186
    :cond_1
    :goto_1
    return-void

    .line 166
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_4

    .line 172
    const-string v1, "err.login.fail"

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 174
    :cond_4
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_1

    .line 177
    add-int/lit8 p3, p3, 0x1

    const/4 v1, 0x3

    if-lt p3, v1, :cond_5

    .line 179
    const-string v1, "err.connect"

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoMySyncTask;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 183
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lnet/yostore/aws/ansytask/GoMySyncTask;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V

    goto :goto_1
.end method
