.class public Lnet/yostore/aws/ansytask/GoMyBackupTask;
.super Landroid/os/AsyncTask;
.source "GoMyBackupTask.java"


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
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->task:Landroid/os/AsyncTask;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->isCloseSource:Z

    .line 34
    iput-object p2, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 35
    iput-object p1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->ctx:Landroid/content/Context;

    .line 36
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->task:Landroid/os/AsyncTask;

    .line 37
    iput-boolean p3, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->isCloseSource:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, rtn:I
    new-array v1, v5, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->publishProgress([Ljava/lang/Object;)V

    .line 46
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {p0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V

    .line 47
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->haveInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    .line 49
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->errMsg:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->errMsg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 53
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->ctx:Landroid/content/Context;

    const-class v3, Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->intent:Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->intent:Landroid/content/Intent;

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->intent:Landroid/content/Intent;

    const-string v2, "fi.id"

    const-string v3, "system.backup.root"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->intent:Landroid/content/Intent;

    const-string v2, "fi.display"

    iget-object v3, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->ctx:Landroid/content/Context;

    const v4, 0x7f060096

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->intent:Landroid/content/Intent;

    const-string v2, "fi.isbackup"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->intent:Landroid/content/Intent;

    const-string v2, "fi.isReadOnly"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 70
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 72
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

    .line 96
    new-array v0, v4, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->publishProgress([Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 100
    new-instance v1, Lnet/yostore/aws/ansytask/GoMyBackupTask$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoMyBackupTask$2;-><init>(Lnet/yostore/aws/ansytask/GoMyBackupTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 144
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 106
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 108
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
    iget-boolean v0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->isCloseSource:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object p0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 112
    .restart local p0
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.freeze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 115
    const v1, 0x7f060032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 116
    new-instance v1, Lnet/yostore/aws/ansytask/GoMyBackupTask$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoMyBackupTask$3;-><init>(Lnet/yostore/aws/ansytask/GoMyBackupTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 126
    new-instance v1, Lnet/yostore/aws/ansytask/GoMyBackupTask$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoMyBackupTask$4;-><init>(Lnet/yostore/aws/ansytask/GoMyBackupTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 132
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.connect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 135
    new-instance v1, Lnet/yostore/aws/ansytask/GoMyBackupTask$5;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoMyBackupTask$5;-><init>(Lnet/yostore/aws/ansytask/GoMyBackupTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 81
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/ansytask/GoMyBackupTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/GoMyBackupTask$1;-><init>(Lnet/yostore/aws/ansytask/GoMyBackupTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 89
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V
    .locals 2
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "rtyCnt"

    .prologue
    .line 148
    invoke-static {p2}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 149
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_3

    .line 151
    :cond_0
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_2

    .line 152
    const-string v1, "err.login.freeze"

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->errMsg:Ljava/lang/String;

    .line 156
    :goto_0
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 174
    :cond_1
    :goto_1
    return-void

    .line 154
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_4

    .line 160
    const-string v1, "err.login.fail"

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 162
    :cond_4
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_1

    .line 165
    add-int/lit8 p3, p3, 0x1

    const/4 v1, 0x3

    if-lt p3, v1, :cond_5

    .line 167
    const-string v1, "err.connect"

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoMyBackupTask;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 171
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V

    goto :goto_1
.end method
