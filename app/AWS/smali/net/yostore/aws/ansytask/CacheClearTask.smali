.class public Lnet/yostore/aws/ansytask/CacheClearTask;
.super Landroid/os/AsyncTask;
.source "CacheClearTask.java"


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

.field cacheView:Landroid/widget/TextView;

.field ctx:Landroid/content/Context;

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0
    .parameter "ctx"
    .parameter "cacheView"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p0, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->task:Landroid/os/AsyncTask;

    .line 28
    iput-object p2, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->cacheView:Landroid/widget/TextView;

    .line 29
    iput-object p1, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->ctx:Landroid/content/Context;

    .line 30
    iput-object p0, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->task:Landroid/os/AsyncTask;

    .line 31
    return-void
.end method

.method private deleteDir(Ljava/io/File;)Z
    .locals 5
    .parameter "dir"

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, children:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 114
    const/4 v3, 0x1

    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    :goto_1
    return v3

    .line 104
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #i:I
    :cond_0
    aget-object v3, v0, v1

    const-string v4, ".nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lnet/yostore/aws/ansytask/CacheClearTask;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 106
    .local v2, success:Z
    if-nez v2, :cond_1

    .line 107
    const/4 v3, 0x0

    goto :goto_1

    .line 103
    .end local v2           #success:Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    const/4 v0, 0x0

    .line 39
    .local v0, rtn:I
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/CacheClearTask;->publishProgress([Ljava/lang/Object;)V

    .line 40
    iget-object v1, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/yostore/aws/ansytask/CacheClearTask;->deleteDir(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 43
    :cond_0
    new-array v1, v4, [Ljava/lang/Integer;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/CacheClearTask;->publishProgress([Ljava/lang/Object;)V

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/CacheClearTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 53
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 92
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->cacheView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->ctx:Landroid/content/Context;

    const v3, 0x7f0600f7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " 0MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->ctx:Landroid/content/Context;

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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/CacheClearTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 86
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 64
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->ctx:Landroid/content/Context;

    const v4, 0x7f060030

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lnet/yostore/aws/ansytask/CacheClearTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/CacheClearTask$1;-><init>(Lnet/yostore/aws/ansytask/CacheClearTask;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->_mdialog:Landroid/app/ProgressDialog;

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/CacheClearTask;->_mdialog:Landroid/app/ProgressDialog;

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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/CacheClearTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
