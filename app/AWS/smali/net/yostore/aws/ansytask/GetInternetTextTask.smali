.class public Lnet/yostore/aws/ansytask/GetInternetTextTask;
.super Landroid/os/AsyncTask;
.source "GetInternetTextTask.java"


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

.field previewUrl:Ljava/lang/String;

.field sb:Ljava/lang/StringBuilder;

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "ctx"
    .parameter "previewUrl"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->task:Landroid/os/AsyncTask;

    .line 31
    iput-object p1, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->ctx:Landroid/content/Context;

    .line 32
    iput-object p0, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->task:Landroid/os/AsyncTask;

    .line 33
    iput-object p2, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->previewUrl:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private DownloadText(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 7
    .parameter "URL"

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, _sb:Ljava/lang/StringBuilder;
    const/16 v0, 0x7d0

    .line 86
    .local v0, BUFFER_SIZE:I
    const/4 v3, 0x0

    .line 88
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, p1}, Lnet/yostore/aws/ansytask/GetInternetTextTask;->getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 92
    :goto_0
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v5, isr:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #_sb:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .restart local v1       #_sb:Ljava/lang/StringBuilder;
    new-array v4, v0, [C

    .line 97
    .local v4, inputBuffer:[C
    :goto_1
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    .local v2, charRead:I
    if-gtz v2, :cond_0

    .line 104
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 107
    .end local v2           #charRead:I
    :goto_2
    return-object v1

    .line 101
    .restart local v2       #charRead:I
    :cond_0
    const/4 v6, 0x0

    invoke-static {v4, v6, v2}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-array v4, v0, [C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 89
    .end local v2           #charRead:I
    .end local v4           #inputBuffer:[C
    .end local v5           #isr:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 105
    .restart local v4       #inputBuffer:[C
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method private getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, content:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 116
    .local v2, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 117
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    .end local v1           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v2           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, rtn:I
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/GetInternetTextTask;->publishProgress([Ljava/lang/Object;)V

    .line 42
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->previewUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->previewUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lnet/yostore/aws/ansytask/GetInternetTextTask;->DownloadText(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->sb:Ljava/lang/StringBuilder;

    .line 45
    :cond_0
    new-array v1, v4, [Ljava/lang/Integer;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lnet/yostore/aws/ansytask/GetInternetTextTask;->publishProgress([Ljava/lang/Object;)V

    .line 46
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GetInternetTextTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getTextFinish(Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter "sb"

    .prologue
    .line 140
    return-void
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 54
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 80
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/GetInternetTextTask;->getTextFinish(Ljava/lang/StringBuilder;)V

    .line 81
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GetInternetTextTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 65
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/ansytask/GetInternetTextTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/GetInternetTextTask$1;-><init>(Lnet/yostore/aws/ansytask/GetInternetTextTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 73
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/GetInternetTextTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected onUpdateStatus(I)V
    .locals 6
    .parameter "values"

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 129
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/ansytask/GetInternetTextTask$2;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/GetInternetTextTask$2;-><init>(Lnet/yostore/aws/ansytask/GetInternetTextTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GetInternetTextTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 135
    :catch_1
    move-exception v0

    goto :goto_0
.end method
