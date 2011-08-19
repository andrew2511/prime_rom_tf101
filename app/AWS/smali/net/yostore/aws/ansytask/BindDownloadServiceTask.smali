.class public Lnet/yostore/aws/ansytask/BindDownloadServiceTask;
.super Landroid/os/AsyncTask;
.source "BindDownloadServiceTask.java"


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

.field bBind:Z

.field ctx:Landroid/content/Context;

.field private downloadConnection:Landroid/content/ServiceConnection;

.field isShaowDialod:Z

.field startIntent:Landroid/content/Intent;

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 1
    .parameter "ctx"
    .parameter "startIntent"
    .parameter "isShaowDialod"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->task:Landroid/os/AsyncTask;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->bBind:Z

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->isShaowDialod:Z

    .line 132
    new-instance v0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/ansytask/BindDownloadServiceTask$1;-><init>(Lnet/yostore/aws/ansytask/BindDownloadServiceTask;)V

    iput-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->downloadConnection:Landroid/content/ServiceConnection;

    .line 34
    iput-object p1, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    .line 35
    iput-object p0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->task:Landroid/os/AsyncTask;

    .line 36
    iput-object p2, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->startIntent:Landroid/content/Intent;

    .line 37
    iput-boolean p3, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->isShaowDialod:Z

    .line 38
    return-void
.end method

.method private CheckDownloadServiceExit()Z
    .locals 7

    .prologue
    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, mReturn:Z
    iget-object v4, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 119
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 121
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 129
    :cond_1
    :goto_0
    return v2

    .line 121
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 122
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "net.yostore.aws.service.DownloadService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 123
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 124
    const/4 v2, 0x1

    .line 126
    goto :goto_0
.end method

.method static synthetic access$3(Lnet/yostore/aws/ansytask/BindDownloadServiceTask;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->goNextPage()V

    return-void
.end method

.method private goNextPage()V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->bBind:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->downloadConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->startIntent:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goHome(Landroid/content/Context;)V

    .line 153
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 154
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 162
    .end local p0
    :cond_1
    :goto_0
    return-void

    .line 156
    .restart local p0
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->startIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->startIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x400

    if-ne v0, v1, :cond_1

    .line 158
    iget-object p0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 42
    const/4 v2, 0x0

    .line 44
    .local v2, rtn:I
    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->publishProgress([Ljava/lang/Object;)V

    .line 45
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    const-class v4, Lnet/yostore/aws/service/DownloadService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v1, intent:Landroid/content/Intent;
    sget-object v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->CheckDownloadServiceExit()Z

    move-result v3

    if-nez v3, :cond_2

    .line 47
    :cond_0
    iget-object v3, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    :try_start_0
    iget-object v3, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->downloadConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    iput-boolean v3, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->bBind:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    return-object v3

    .line 52
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 53
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v3, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->bBind:Z

    if-nez v3, :cond_1

    .line 54
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 58
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 68
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->bBind:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->downloadConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 74
    :cond_1
    return-void

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->publishProgress([Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    const v1, 0x7f060029

    new-instance v2, Lnet/yostore/aws/ansytask/BindDownloadServiceTask$3;

    invoke-direct {v2, p0}, Lnet/yostore/aws/ansytask/BindDownloadServiceTask$3;-><init>(Lnet/yostore/aws/ansytask/BindDownloadServiceTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 110
    invoke-direct {p0}, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->goNextPage()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 81
    iget-boolean v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->isShaowDialod:Z

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/ansytask/BindDownloadServiceTask$2;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/BindDownloadServiceTask$2;-><init>(Lnet/yostore/aws/ansytask/BindDownloadServiceTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 90
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/BindDownloadServiceTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
