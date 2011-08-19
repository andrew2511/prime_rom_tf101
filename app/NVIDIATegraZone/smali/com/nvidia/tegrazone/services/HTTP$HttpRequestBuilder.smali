.class public abstract Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
.super Ljava/lang/Object;
.source "HTTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/tegrazone/services/HTTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HttpRequestBuilder"
.end annotation


# instance fields
.field protected charset:Ljava/lang/String;

.field protected client:Lorg/apache/http/client/HttpClient;

.field protected customizers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nvidia/tegrazone/services/HTTP$RequestCustomizer;",
            ">;"
        }
    .end annotation
.end field

.field protected followRedirects:Ljava/lang/Boolean;

.field protected headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field protected request:Lorg/apache/http/client/methods/HttpUriRequest;

.field protected final url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->charset:Ljava/lang/String;

    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "URL must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iput-object p1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->url:Ljava/lang/String;

    .line 207
    return-void
.end method

.method private applyCustomizers(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 487
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->customizers:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->customizers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 492
    :cond_0
    return-void

    .line 488
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nvidia/tegrazone/services/HTTP$RequestCustomizer;

    .line 489
    .local v0, modifier:Lcom/nvidia/tegrazone/services/HTTP$RequestCustomizer;
    invoke-interface {v0, p1}, Lcom/nvidia/tegrazone/services/HTTP$RequestCustomizer;->customize(Lorg/apache/http/client/methods/HttpUriRequest;)V

    goto :goto_0
.end method

.method private applyHeaders(Lorg/apache/http/HttpRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 479
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->headers:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 484
    :cond_0
    return-void

    .line 480
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 481
    .local v0, h:Lorg/apache/http/Header;
    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->setHeader(Lorg/apache/http/Header;)V

    goto :goto_0
.end method

.method private createFinalRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->createRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 469
    .local v0, request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {p0, v0}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->applyHeaders(Lorg/apache/http/HttpRequest;)V

    .line 470
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->followRedirects:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 471
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->followRedirects:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 473
    :cond_0
    invoke-direct {p0, v0}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->applyCustomizers(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 475
    return-object v0
.end method


# virtual methods
.method public as(Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    .local p1, handler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    if-nez p1, :cond_0

    .line 408
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ResponseHandler must not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->asResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 412
    .local v0, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p1, v0}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public asFile(Ljava/io/File;)Z
    .locals 3
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->asResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 395
    .local v0, response:Lorg/apache/http/HttpResponse;
    new-instance v1, Lcom/nvidia/tegrazone/services/HTTP$FileResponseHandler;

    iget-object v2, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->url:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/nvidia/tegrazone/services/HTTP$FileResponseHandler;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/nvidia/tegrazone/services/HTTP$FileResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public asResponse()Lorg/apache/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->client:Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_0

    .line 350
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 351
    const-string v2, "Please specify a HttpClient instance to use for this request."

    .line 350
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->createFinalRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 356
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->client:Lorg/apache/http/client/HttpClient;

    iget-object v2, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 358
    .local v0, response:Lorg/apache/http/HttpResponse;
    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->asResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 371
    .local v1, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 372
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_0

    .line 373
    const/4 v2, 0x0

    .line 376
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->charset:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public charset(Ljava/lang/String;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 0
    .parameter "charset"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->charset:Ljava/lang/String;

    .line 324
    return-object p0
.end method

.method public consumeResponse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->asResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 434
    .local v1, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 435
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto :goto_0
.end method

.method protected abstract createRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public customize(Lcom/nvidia/tegrazone/services/HTTP$RequestCustomizer;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 1
    .parameter "customizer"

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->getCustomizers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    return-object p0
.end method

.method public data(Ljava/lang/String;Ljava/lang/String;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 247
    const-string v1, "This HTTP-method doesn\'t support to add data."

    .line 246
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public data(Ljava/util/Map;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, data:Ljava/util/Map;,"Ljava/util/Map<**>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 261
    const-string v1, "This HTTP-method doesn\'t support to add data."

    .line 260
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs data([Lorg/apache/http/NameValuePair;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 2
    .parameter "data"

    .prologue
    .line 231
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 232
    const-string v1, "This HTTP-method doesn\'t support to add data."

    .line 231
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public entity(Lorg/apache/http/HttpEntity;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 2
    .parameter "entity"

    .prologue
    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 219
    const-string v1, "This HTTP-method doesn\'t support to add an entity."

    .line 218
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public followRedirects(Z)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 1
    .parameter "follow"

    .prologue
    .line 336
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->followRedirects:Ljava/lang/Boolean;

    .line 337
    return-object p0
.end method

.method protected getClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->client:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method protected getCustomizers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nvidia/tegrazone/services/HTTP$RequestCustomizer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->customizers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->customizers:Ljava/util/List;

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->customizers:Ljava/util/List;

    return-object v0
.end method

.method protected getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->headers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->headers:Ljava/util/List;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->headers:Ljava/util/List;

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->url:Ljava/lang/String;

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->getHeaders()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    return-object p0
.end method

.method public header(Lorg/apache/http/Header;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 1
    .parameter "header"

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    return-object p0
.end method

.method public throwAwayResponse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->asResponse()Lorg/apache/http/HttpResponse;

    .line 423
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 424
    return-void
.end method

.method public use(Lorg/apache/http/client/HttpClient;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 2
    .parameter "client"

    .prologue
    .line 272
    if-nez p1, :cond_0

    .line 273
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "HttpClient must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iput-object p1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;->client:Lorg/apache/http/client/HttpClient;

    .line 276
    return-object p0
.end method
