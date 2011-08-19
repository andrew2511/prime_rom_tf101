.class public Lnet/yostore/aws/ansytask/GoAllSharesTask;
.super Landroid/os/AsyncTask;
.source "GoAllSharesTask.java"


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

.field isCloseSource:Z

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V
    .locals 1
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "isCloseSource"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->task:Landroid/os/AsyncTask;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->isCloseSource:Z

    .line 33
    iput-object p2, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 34
    iput-object p1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->ctx:Landroid/content/Context;

    .line 35
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->task:Landroid/os/AsyncTask;

    .line 36
    iput-boolean p3, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->isCloseSource:Z

    .line 37
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, rtn:I
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->publishProgress([Ljava/lang/Object;)V

    .line 45
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {p0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V

    .line 46
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->haveInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 51
    :goto_0
    return-object v1

    .line 48
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->errMsg:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->errMsg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 60
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .parameter "result"

    .prologue
    const v6, 0x7f060031

    const/4 v5, 0x1

    const v4, 0x7f060029

    .line 86
    new-array v1, v5, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->publishProgress([Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 88
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 90
    new-instance v2, Lnet/yostore/aws/ansytask/GoAllSharesTask$2;

    invoke-direct {v2, p0}, Lnet/yostore/aws/ansytask/GoAllSharesTask$2;-><init>(Lnet/yostore/aws/ansytask/GoAllSharesTask;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 137
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->ctx:Landroid/content/Context;

    const-class v2, Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 99
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    const-string v1, "browseType"

    sget-object v2, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->AllShares:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->getInt()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    iget-boolean v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->isCloseSource:Z

    if-eqz v1, :cond_0

    .line 103
    iget-object p0, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 105
    .end local v0           #intent:Landroid/content/Intent;
    .restart local p0
    :cond_2
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->errMsg:Ljava/lang/String;

    const-string v2, "err.login.freeze"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    const v2, 0x7f06002e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 108
    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 109
    new-instance v2, Lnet/yostore/aws/ansytask/GoAllSharesTask$3;

    invoke-direct {v2, p0}, Lnet/yostore/aws/ansytask/GoAllSharesTask$3;-><init>(Lnet/yostore/aws/ansytask/GoAllSharesTask;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 116
    :cond_3
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->errMsg:Ljava/lang/String;

    const-string v2, "err.login.fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 119
    new-instance v2, Lnet/yostore/aws/ansytask/GoAllSharesTask$4;

    invoke-direct {v2, p0}, Lnet/yostore/aws/ansytask/GoAllSharesTask$4;-><init>(Lnet/yostore/aws/ansytask/GoAllSharesTask;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 125
    :cond_4
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->errMsg:Ljava/lang/String;

    const-string v2, "err.connect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 128
    new-instance v2, Lnet/yostore/aws/ansytask/GoAllSharesTask$5;

    invoke-direct {v2, p0}, Lnet/yostore/aws/ansytask/GoAllSharesTask$5;-><init>(Lnet/yostore/aws/ansytask/GoAllSharesTask;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 71
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/ansytask/GoAllSharesTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/GoAllSharesTask$1;-><init>(Lnet/yostore/aws/ansytask/GoAllSharesTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 79
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V
    .locals 2
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "rtyCnt"

    .prologue
    .line 140
    invoke-static {p2}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 141
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_3

    .line 143
    :cond_0
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_2

    .line 144
    const-string v1, "err.login.freeze"

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->errMsg:Ljava/lang/String;

    .line 148
    :goto_0
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 166
    :cond_1
    :goto_1
    return-void

    .line 146
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_4

    .line 152
    const-string v1, "err.login.fail"

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 154
    :cond_4
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_1

    .line 157
    add-int/lit8 p3, p3, 0x1

    const/4 v1, 0x3

    if-lt p3, v1, :cond_5

    .line 159
    const-string v1, "err.connect"

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoAllSharesTask;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 163
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V

    goto :goto_1
.end method
