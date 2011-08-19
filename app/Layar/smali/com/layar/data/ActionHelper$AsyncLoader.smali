.class Lcom/layar/data/ActionHelper$AsyncLoader;
.super Landroid/os/AsyncTask;
.source "ActionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/ActionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAction:Lcom/layar/data/PoiAction;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Lcom/layar/ui/SmartDialog;

.field private final mLayer:Lcom/layar/data/layer/Layer20;

.field private final mOwner:Landroid/app/Activity;

.field private final mPoi:Lcom/layar/data/BasePOI;

.field private final mPoiContainer:Lcom/layar/core/POIsContainer;

.field private mRedirectUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/layar/data/PoiAction;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/core/POIsContainer;Landroid/app/Activity;)V
    .locals 1
    .parameter "action"
    .parameter "context"
    .parameter "layer"
    .parameter "poi"
    .parameter "poisContainer"
    .parameter "owner"

    .prologue
    .line 393
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mRedirectUrl:Ljava/lang/String;

    .line 394
    iput-object p1, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mAction:Lcom/layar/data/PoiAction;

    .line 395
    iput-object p2, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mContext:Landroid/content/Context;

    .line 396
    iput-object p3, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mLayer:Lcom/layar/data/layer/Layer20;

    .line 397
    iput-object p4, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mPoi:Lcom/layar/data/BasePOI;

    .line 398
    iput-object p5, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mPoiContainer:Lcom/layar/core/POIsContainer;

    .line 399
    iput-object p6, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mOwner:Landroid/app/Activity;

    .line 400
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/data/ActionHelper$AsyncLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x0

    .line 422
    iget-object v7, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mOwner:Landroid/app/Activity;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mOwner:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v10

    .line 474
    :goto_0
    return-object v7

    .line 429
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v10

    .line 430
    goto :goto_0

    .line 431
    :cond_1
    iget-object v7, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mAction:Lcom/layar/data/PoiAction;

    iget-object v7, v7, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 433
    .local v5, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mAction:Lcom/layar/data/PoiAction;

    invoke-virtual {v7}, Lcom/layar/data/PoiAction;->isGetMethod()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 435
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mAction:Lcom/layar/data/PoiAction;

    iget-object v8, v8, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    iget-object v9, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mAction:Lcom/layar/data/PoiAction;

    iget-object v9, v9, Lcom/layar/data/PoiAction;->params:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/layar/util/UriHelper;->appendActionParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 436
    .local v6, url:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 442
    .end local v6           #url:Ljava/lang/String;
    .local v3, request:Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_1
    iget-object v7, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v7, v7, Lcom/layar/data/layer/Layer20;->poiDomainURL:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 443
    invoke-static {}, Lcom/layar/util/CookieStore;->get()Lcom/layar/util/CookieStore;

    move-result-object v7

    iget-object v8, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v8, v8, Lcom/layar/data/layer/Layer20;->poiDomainURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/layar/util/CookieStore;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, cookies:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 446
    const-string v7, "X-Layar-Dev-Cookies"

    invoke-interface {v3, v7, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v7, "Cookie"

    invoke-interface {v3, v7, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v0           #cookies:Ljava/lang/String;
    :cond_2
    new-instance v7, Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v3}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 452
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 453
    .local v1, httpStatus:I
    const/16 v7, 0xc8

    if-ne v1, v7, :cond_4

    .line 455
    :try_start_1
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/layar/util/HttpManager;->responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_0

    .line 438
    .end local v1           #httpStatus:I
    .end local v3           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_2
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v7, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mAction:Lcom/layar/data/PoiAction;

    iget-object v7, v7, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 440
    .restart local v3       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v7

    check-cast v3, Lorg/apache/http/client/methods/HttpPost;

    .end local v3           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v8, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mAction:Lcom/layar/data/PoiAction;

    iget-object v8, v8, Lcom/layar/data/PoiAction;->params:Ljava/lang/String;

    invoke-virtual {v7, v3, v8}, Lcom/layar/util/UriHelper;->addActionParams(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .restart local v3       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_1

    .line 459
    .restart local v1       #httpStatus:I
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :cond_4
    const/16 v7, 0x12e

    if-ne v1, v7, :cond_6

    .line 461
    :try_start_3
    const-string v7, "location"

    invoke-interface {v4, v7}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 462
    .local v2, locationHeader:Lorg/apache/http/Header;
    if-eqz v2, :cond_5

    .line 463
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mRedirectUrl:Ljava/lang/String;

    .line 466
    :cond_5
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/layar/util/HttpManager;->responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .line 471
    .end local v1           #httpStatus:I
    .end local v2           #locationHeader:Lorg/apache/http/Header;
    .end local v3           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    :cond_6
    :goto_2
    move-object v7, v10

    .line 474
    goto/16 :goto_0

    .line 467
    .restart local v1       #httpStatus:I
    .restart local v3       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v5       #uri:Landroid/net/Uri;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 456
    :catch_2
    move-exception v7

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/layar/data/ActionHelper$AsyncLoader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 479
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mOwner:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mOwner:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mRedirectUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mRedirectUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v3, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v4, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mPoiContainer:Lcom/layar/core/POIsContainer;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/layar/data/ActionHelper;->startLayer(Ljava/lang/String;Landroid/content/Context;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/core/POIsContainer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 485
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mRedirectUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mAction:Lcom/layar/data/PoiAction;

    iget-object v2, v2, Lcom/layar/data/PoiAction;->params:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/layar/util/UriHelper;->appendActionParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mAction:Lcom/layar/data/PoiAction;

    iget-boolean v1, v1, Lcom/layar/data/PoiAction;->closeBiw:Z

    iget-object v2, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v3, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mOwner:Landroid/app/Activity;

    .line 485
    invoke-static {v0, v1, v2, v3}, Lcom/layar/data/ActionHelper;->startHttp(Ljava/lang/String;ZLcom/layar/data/layer/Layer20;Landroid/app/Activity;)V

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mDialog:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->dismiss()V

    .line 491
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 496
    const/4 v1, 0x0

    .line 495
    invoke-static {v0, p1, v1}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/layar/ui/SmartToast;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Lcom/layar/ui/SmartToast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 404
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 405
    iget-object v0, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mOwner:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mOwner:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mAction:Lcom/layar/data/PoiAction;

    iget-object v1, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/layar/data/ActionHelper;->showActivity(Lcom/layar/data/PoiAction;Landroid/content/Context;)Lcom/layar/ui/SmartDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mDialog:Lcom/layar/ui/SmartDialog;

    .line 409
    iget-object v0, p0, Lcom/layar/data/ActionHelper$AsyncLoader;->mDialog:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->show()V

    goto :goto_0
.end method
