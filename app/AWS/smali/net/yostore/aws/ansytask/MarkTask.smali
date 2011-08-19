.class public Lnet/yostore/aws/ansytask/MarkTask;
.super Landroid/os/AsyncTask;
.source "MarkTask.java"


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

.field ctx:Landroid/content/Context;

.field fi:Lnet/yostore/aws/handler/entity/FsInfo;

.field position:I

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V
    .locals 2
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "ba"
    .parameter "position"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/ansytask/MarkTask;->position:I

    .line 28
    iput-object p0, p0, Lnet/yostore/aws/ansytask/MarkTask;->task:Landroid/os/AsyncTask;

    .line 32
    iput-object p2, p0, Lnet/yostore/aws/ansytask/MarkTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 33
    iput p4, p0, Lnet/yostore/aws/ansytask/MarkTask;->position:I

    .line 34
    iget-object v0, p3, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    iput-object v0, p0, Lnet/yostore/aws/ansytask/MarkTask;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 35
    iput-object p1, p0, Lnet/yostore/aws/ansytask/MarkTask;->ctx:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lnet/yostore/aws/ansytask/MarkTask;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 37
    iput-object p0, p0, Lnet/yostore/aws/ansytask/MarkTask;->task:Landroid/os/AsyncTask;

    .line 38
    iget-object v0, p0, Lnet/yostore/aws/ansytask/MarkTask;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 39
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 9
    .parameter "arg0"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 43
    const/4 v3, 0x0

    .line 45
    .local v3, rtn:I
    new-array v4, v8, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lnet/yostore/aws/ansytask/MarkTask;->publishProgress([Ljava/lang/Object;)V

    .line 46
    new-instance v1, Lnet/yostore/aws/api/helper/SetMarkHelper;

    iget-object v4, p0, Lnet/yostore/aws/ansytask/MarkTask;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    iget-object v5, p0, Lnet/yostore/aws/ansytask/MarkTask;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v5, v5, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v6, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v5, v6, :cond_1

    move v5, v8

    :goto_0
    iget-object v6, p0, Lnet/yostore/aws/ansytask/MarkTask;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-boolean v6, v6, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    if-eqz v6, :cond_2

    const-string v6, ""

    :goto_1
    invoke-direct {v1, v4, v5, v6}, Lnet/yostore/aws/api/helper/SetMarkHelper;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 50
    .local v1, helper:Lnet/yostore/aws/api/helper/SetMarkHelper;
    :try_start_0
    iget-object v4, p0, Lnet/yostore/aws/ansytask/MarkTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v4}, Lnet/yostore/aws/api/helper/SetMarkHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/api/entity/SetMarkResponse;

    .line 51
    .local v2, response:Lnet/yostore/aws/api/entity/SetMarkResponse;
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/SetMarkResponse;->getStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 52
    const/4 v3, 0x1

    .line 56
    .end local v2           #response:Lnet/yostore/aws/api/entity/SetMarkResponse;
    :cond_0
    :goto_2
    new-array v4, v8, [Ljava/lang/Integer;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lnet/yostore/aws/ansytask/MarkTask;->publishProgress([Ljava/lang/Object;)V

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .end local v1           #helper:Lnet/yostore/aws/api/helper/SetMarkHelper;
    :cond_1
    move v5, v7

    .line 46
    goto :goto_0

    :cond_2
    const-string v6, "1"

    goto :goto_1

    .line 53
    .restart local v1       #helper:Lnet/yostore/aws/api/helper/SetMarkHelper;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 54
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

    goto :goto_2

    .end local v0           #e:Lnet/yostore/aws/api/exception/APIException;
    :catchall_0
    move-exception v4

    goto :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/MarkTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 66
    iget-object v0, p0, Lnet/yostore/aws/ansytask/MarkTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lnet/yostore/aws/ansytask/MarkTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/MarkTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 92
    iget-object v0, p0, Lnet/yostore/aws/ansytask/MarkTask;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/MarkTask;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-boolean v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 93
    iget-object v0, p0, Lnet/yostore/aws/ansytask/MarkTask;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->notifyDataSetChanged()V

    .line 98
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 92
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/MarkTask;->ctx:Landroid/content/Context;

    const-string v1, "fail..."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/MarkTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 76
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/MarkTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/MarkTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/MarkTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/ansytask/MarkTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/MarkTask$1;-><init>(Lnet/yostore/aws/ansytask/MarkTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/MarkTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/MarkTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/MarkTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 84
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/MarkTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
