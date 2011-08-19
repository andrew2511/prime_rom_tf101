.class public Lnet/yostore/aws/ansytask/GoFilePreviewTask;
.super Landroid/os/AsyncTask;
.source "GoFilePreviewTask.java"


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

.field bundle:Landroid/os/Bundle;

.field ctx:Landroid/content/Context;

.field private errMsg:Ljava/lang/String;

.field fi:Lnet/yostore/aws/handler/entity/FsInfo;

.field intent:Landroid/content/Intent;

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/FsInfo;Landroid/os/Bundle;)V
    .locals 1
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "fi"
    .parameter "bundle"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->task:Landroid/os/AsyncTask;

    .line 37
    iput-object p2, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 38
    iput-object p1, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->ctx:Landroid/content/Context;

    .line 39
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->task:Landroid/os/AsyncTask;

    .line 40
    iput-object p3, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 41
    if-eqz p4, :cond_0

    .line 42
    iput-object p4, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->bundle:Landroid/os/Bundle;

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->bundle:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, rtn:I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->publishProgress([Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->haveInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 75
    :goto_0
    return-object v2

    .line 58
    :cond_0
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-object v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    invoke-interface {v3}, Lnet/yostore/aws/service/AWSServiceInterface;->getMySyncFolderId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 59
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->ctx:Landroid/content/Context;

    const-class v4, Lnet/yostore/aws/view/present/FilePreviewActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->intent:Landroid/content/Intent;

    .line 60
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->intent:Landroid/content/Intent;

    const/high16 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->fi:Lnet/yostore/aws/handler/entity/FsInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 63
    :try_start_1
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->bundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lnet/yostore/aws/handler/entity/FsInfo;->putIntoBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    const/4 v1, 0x1

    .line 69
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 75
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 65
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 88
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 90
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

    .line 114
    new-array v0, v4, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->publishProgress([Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 118
    new-instance v1, Lnet/yostore/aws/ansytask/GoFilePreviewTask$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoFilePreviewTask$2;-><init>(Lnet/yostore/aws/ansytask/GoFilePreviewTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 127
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.freeze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 133
    const v1, 0x7f060032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 134
    new-instance v1, Lnet/yostore/aws/ansytask/GoFilePreviewTask$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoFilePreviewTask$3;-><init>(Lnet/yostore/aws/ansytask/GoFilePreviewTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 141
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 144
    new-instance v1, Lnet/yostore/aws/ansytask/GoFilePreviewTask$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoFilePreviewTask$4;-><init>(Lnet/yostore/aws/ansytask/GoFilePreviewTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 150
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.connect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    new-instance v1, Lnet/yostore/aws/ansytask/GoFilePreviewTask$5;

    invoke-direct {v1, p0}, Lnet/yostore/aws/ansytask/GoFilePreviewTask$5;-><init>(Lnet/yostore/aws/ansytask/GoFilePreviewTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 99
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/ansytask/GoFilePreviewTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/GoFilePreviewTask$1;-><init>(Lnet/yostore/aws/ansytask/GoFilePreviewTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 107
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
