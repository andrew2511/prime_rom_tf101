.class public Lnet/yostore/aws/ansytask/GetShareCodeTask;
.super Landroid/os/AsyncTask;
.source "GetShareCodeTask.java"


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

.field entryid:Ljava/lang/String;

.field entrytype:Ljava/lang/String;

.field error:Ljava/lang/String;

.field shareUri:Ljava/lang/String;

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "entrytype"
    .parameter "entryid"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->task:Landroid/os/AsyncTask;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->error:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 36
    iput-object p1, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->ctx:Landroid/content/Context;

    .line 37
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->task:Landroid/os/AsyncTask;

    .line 38
    iput-object p4, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->entryid:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->entrytype:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 9
    .parameter "arg0"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 45
    const/4 v3, 0x0

    .line 47
    .local v3, rtn:I
    new-array v4, v8, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lnet/yostore/aws/ansytask/GetShareCodeTask;->publishProgress([Ljava/lang/Object;)V

    .line 48
    new-instance v1, Lnet/yostore/aws/api/helper/GetShareCodeHelper;

    const-string v4, "1"

    iget-object v5, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->entrytype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "0"

    :goto_0
    iget-object v5, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->entryid:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lnet/yostore/aws/api/helper/GetShareCodeHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v1, helper:Lnet/yostore/aws/api/helper/GetShareCodeHelper;
    :try_start_0
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 52
    iget-object v4, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v4}, Lnet/yostore/aws/api/helper/GetShareCodeHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/api/entity/GetShareCodeResponse;

    .line 53
    .local v2, response:Lnet/yostore/aws/api/entity/GetShareCodeResponse;
    if-nez v2, :cond_1

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->ctx:Landroid/content/Context;

    const v6, 0x7f060031

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\rresponse is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->error:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v2           #response:Lnet/yostore/aws/api/entity/GetShareCodeResponse;
    :goto_1
    new-array v4, v8, [Ljava/lang/Integer;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lnet/yostore/aws/ansytask/GetShareCodeTask;->publishProgress([Ljava/lang/Object;)V

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 48
    .end local v1           #helper:Lnet/yostore/aws/api/helper/GetShareCodeHelper;
    :cond_0
    const-string v4, "1"

    goto :goto_0

    .line 57
    .restart local v1       #helper:Lnet/yostore/aws/api/helper/GetShareCodeHelper;
    .restart local v2       #response:Lnet/yostore/aws/api/entity/GetShareCodeResponse;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/GetShareCodeResponse;->getStatus()I

    move-result v4

    if-nez v4, :cond_2

    .line 58
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/GetShareCodeResponse;->getUri()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->shareUri:Ljava/lang/String;

    .line 59
    const/4 v3, 0x1

    goto :goto_1

    .line 62
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->ctx:Landroid/content/Context;

    const v6, 0x7f060031

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\rstatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/GetShareCodeResponse;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->error:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 64
    .end local v2           #response:Lnet/yostore/aws/api/entity/GetShareCodeResponse;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 65
    .local v0, e:Lnet/yostore/aws/api/exception/APIException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->ctx:Landroid/content/Context;

    const v6, 0x7f060031

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->error:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0           #e:Lnet/yostore/aws/api/exception/APIException;
    :catchall_0
    move-exception v4

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GetShareCodeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 77
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 104
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->shareUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    .local v0, screenshotUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .local v1, sendIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->ctx:Landroid/content/Context;

    const v4, 0x7f06008f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->ctx:Landroid/content/Context;

    const v5, 0x7f060090

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " <br><a href=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->shareUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->ctx:Landroid/content/Context;

    const v5, 0x7f060091

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 109
    const-string v2, "text/html"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    .end local v0           #screenshotUri:Landroid/net/Uri;
    .end local v1           #sendIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->error:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GetShareCodeTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 88
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 90
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/ansytask/GetShareCodeTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/GetShareCodeTask$1;-><init>(Lnet/yostore/aws/ansytask/GetShareCodeTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetShareCodeTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 96
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GetShareCodeTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
