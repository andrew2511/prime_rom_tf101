.class public Lnet/yostore/aws/ansytask/GoSavedSearchTask;
.super Landroid/os/AsyncTask;
.source "GoSavedSearchTask.java"


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
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->task:Landroid/os/AsyncTask;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->isCloseSource:Z

    .line 32
    iput-object p2, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 33
    iput-object p1, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->ctx:Landroid/content/Context;

    .line 34
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->task:Landroid/os/AsyncTask;

    .line 35
    iput-boolean p3, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->isCloseSource:Z

    .line 36
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, rtn:I
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->publishProgress([Ljava/lang/Object;)V

    .line 44
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {p0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V

    .line 45
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->haveInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50
    :goto_0
    return-object v1

    .line 47
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->errMsg:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->errMsg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 50
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 59
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 61
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

    .line 85
    new-array v0, v4, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->publishProgress([Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    new-instance v1, Lnet/yostore/aws/ansytask/GoSavedSearchTask$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoSavedSearchTask$2;-><init>(Lnet/yostore/aws/ansytask/GoSavedSearchTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 135
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 95
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 96
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->ctx:Landroid/content/Context;

    .line 97
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 98
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->ctx:Landroid/content/Context;

    const-class v3, Lnet/yostore/aws/view/search/SavedActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    iget-boolean v0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->isCloseSource:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 103
    .restart local p0
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.freeze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 106
    const v1, 0x7f060032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 107
    new-instance v1, Lnet/yostore/aws/ansytask/GoSavedSearchTask$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoSavedSearchTask$3;-><init>(Lnet/yostore/aws/ansytask/GoSavedSearchTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 114
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 117
    new-instance v1, Lnet/yostore/aws/ansytask/GoSavedSearchTask$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoSavedSearchTask$4;-><init>(Lnet/yostore/aws/ansytask/GoSavedSearchTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 123
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.connect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 126
    new-instance v1, Lnet/yostore/aws/ansytask/GoSavedSearchTask$5;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoSavedSearchTask$5;-><init>(Lnet/yostore/aws/ansytask/GoSavedSearchTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/ansytask/GoSavedSearchTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/GoSavedSearchTask$1;-><init>(Lnet/yostore/aws/ansytask/GoSavedSearchTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 78
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V
    .locals 2
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "rtyCnt"

    .prologue
    .line 138
    invoke-static {p2}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 139
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_3

    .line 141
    :cond_0
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_2

    .line 142
    const-string v1, "err.login.freeze"

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->errMsg:Ljava/lang/String;

    .line 146
    :goto_0
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 164
    :cond_1
    :goto_1
    return-void

    .line 144
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_4

    .line 150
    const-string v1, "err.login.fail"

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 152
    :cond_4
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_1

    .line 155
    add-int/lit8 p3, p3, 0x1

    const/4 v1, 0x3

    if-lt p3, v1, :cond_5

    .line 157
    const-string v1, "err.connect"

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V

    goto :goto_1
.end method
