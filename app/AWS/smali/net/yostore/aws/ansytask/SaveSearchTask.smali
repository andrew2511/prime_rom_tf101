.class public Lnet/yostore/aws/ansytask/SaveSearchTask;
.super Landroid/os/AsyncTask;
.source "SaveSearchTask.java"


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

.field savestats:Z

.field search:Lnet/yostore/aws/handler/entity/Search;

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/handler/entity/Search;)V
    .locals 1
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "search"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->savestats:Z

    .line 29
    iput-object p1, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->ctx:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 31
    iput-object p3, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->search:Lnet/yostore/aws/handler/entity/Search;

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    iput-object p0, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->task:Landroid/os/AsyncTask;

    .line 38
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/SaveSearchTask;->publishProgress([Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->search:Lnet/yostore/aws/handler/entity/Search;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v0, v1}, Lnet/yostore/aws/handler/SearchHandler;->savedSearch(Lnet/yostore/aws/handler/entity/Search;Lnet/yostore/aws/api/ApiConfig;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->savestats:Z

    .line 41
    iget-boolean v0, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->savestats:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/SaveSearchTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 53
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 79
    new-array v1, v3, [Ljava/lang/Integer;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/SaveSearchTask;->publishProgress([Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isFromSavedOK"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->ctx:Landroid/content/Context;

    const-class v2, Lnet/yostore/aws/view/search/SavedActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    iget-object p0, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 91
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 89
    .restart local p0
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->ctx:Landroid/content/Context;

    const v3, 0x7f0600c0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/SaveSearchTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 63
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/ansytask/SaveSearchTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/SaveSearchTask$1;-><init>(Lnet/yostore/aws/ansytask/SaveSearchTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SaveSearchTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 71
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/SaveSearchTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
