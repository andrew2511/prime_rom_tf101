.class public Lcom/layar/util/HttpManager$HttpTask;
.super Landroid/os/AsyncTask;
.source "HttpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/util/HttpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/apache/http/client/methods/HttpUriRequest;",
        "Ljava/lang/Void;",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private handler:Lcom/layar/util/HttpManager$ResponseHandler;

.field private host:Lorg/apache/http/HttpHost;

.field private lastException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpHost;Lcom/layar/util/HttpManager$ResponseHandler;)V
    .locals 1
    .parameter "host"
    .parameter "handler"

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/util/HttpManager$HttpTask;->lastException:Ljava/lang/Exception;

    .line 406
    iput-object p1, p0, Lcom/layar/util/HttpManager$HttpTask;->host:Lorg/apache/http/HttpHost;

    .line 407
    iput-object p2, p0, Lcom/layar/util/HttpManager$HttpTask;->handler:Lcom/layar/util/HttpManager$ResponseHandler;

    .line 408
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {p0, p1}, Lcom/layar/util/HttpManager$HttpTask;->doInBackground([Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 3
    .parameter "params"

    .prologue
    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/layar/util/HttpManager$HttpTask;->host:Lorg/apache/http/HttpHost;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 416
    :goto_0
    return-object v1

    .line 414
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 415
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Lcom/layar/util/HttpManager$HttpTask;->lastException:Ljava/lang/Exception;

    .line 416
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/layar/util/HttpManager$HttpTask;->onPostExecute(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method protected onPostExecute(Lorg/apache/http/HttpResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 422
    if-nez p1, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/layar/util/HttpManager$HttpTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/layar/util/HttpManager$HttpTask;->handler:Lcom/layar/util/HttpManager$ResponseHandler;

    iget-object v3, p0, Lcom/layar/util/HttpManager$HttpTask;->lastException:Ljava/lang/Exception;

    invoke-interface {v2, v3}, Lcom/layar/util/HttpManager$ResponseHandler;->handleException(Ljava/lang/Exception;)V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/layar/util/HttpManager;->responseAsString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, responseString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/layar/util/HttpManager$HttpTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/layar/util/HttpManager$HttpTask;->handler:Lcom/layar/util/HttpManager$ResponseHandler;

    invoke-interface {v2, v1}, Lcom/layar/util/HttpManager$ResponseHandler;->handleResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    .end local v1           #responseString:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 433
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/layar/util/HttpManager$HttpTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    iget-object v2, p0, Lcom/layar/util/HttpManager$HttpTask;->handler:Lcom/layar/util/HttpManager$ResponseHandler;

    invoke-interface {v2, v0}, Lcom/layar/util/HttpManager$ResponseHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
