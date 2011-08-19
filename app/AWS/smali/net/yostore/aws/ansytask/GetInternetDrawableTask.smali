.class public Lnet/yostore/aws/ansytask/GetInternetDrawableTask;
.super Landroid/os/AsyncTask;
.source "GetInternetDrawableTask.java"


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

.field ctx:Landroid/content/Context;

.field d:Landroid/graphics/drawable/Drawable;

.field previewUrl:Ljava/lang/String;

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "ctx"
    .parameter "previewUrl"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->task:Landroid/os/AsyncTask;

    .line 28
    iput-object p1, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->ctx:Landroid/content/Context;

    .line 29
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->task:Landroid/os/AsyncTask;

    .line 30
    iput-object p2, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->previewUrl:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private ImageOperations(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "ctx"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 70
    :try_start_0
    invoke-direct {p0, p2}, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->fetch(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 71
    .local v2, is:Ljava/io/InputStream;
    const-string v3, "src"

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .local v0, d:Landroid/graphics/drawable/Drawable;
    move-object v3, v0

    .line 78
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 73
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 74
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v3, v4

    .line 75
    goto :goto_0

    .line 76
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 77
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 78
    goto :goto_0
.end method

.method private fetch(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, url:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, content:Ljava/lang/Object;
    return-object v0
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

    .line 38
    .local v0, rtn:I
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->publishProgress([Ljava/lang/Object;)V

    .line 39
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->previewUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->previewUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->ImageOperations(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->d:Landroid/graphics/drawable/Drawable;

    .line 42
    :cond_0
    new-array v1, v4, [Ljava/lang/Integer;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->publishProgress([Ljava/lang/Object;)V

    .line 43
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected drawableFinish(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 104
    return-void
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 51
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 66
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->drawableFinish(Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 62
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->onUpdateStatus(I)V

    .line 63
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected onUpdateStatus(I)V
    .locals 6
    .parameter "values"

    .prologue
    .line 91
    if-nez p1, :cond_1

    .line 93
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/ansytask/GetInternetDrawableTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/GetInternetDrawableTask$1;-><init>(Lnet/yostore/aws/ansytask/GetInternetDrawableTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetDrawableTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    goto :goto_0
.end method
