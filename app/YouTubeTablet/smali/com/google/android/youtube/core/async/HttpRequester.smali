.class public final Lcom/google/android/youtube/core/async/HttpRequester;
.super Lcom/google/android/youtube/core/async/ConvertingRequester;
.source "HttpRequester.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/youtube/core/async/ConvertingRequester",
        "<TR;TE;",
        "Lorg/apache/http/client/methods/HttpUriRequest;",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final respondNull:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/RequestConverter;)V
    .locals 1
    .parameter "httpClient"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<TR;TE;>;"
    .local p2, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;Lorg/apache/http/client/methods/HttpUriRequest;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/youtube/core/async/ConvertingRequester;-><init>(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)V

    .line 48
    const-string v0, "httpClient may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/HttpRequester;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/HttpRequester;->respondNull:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)V
    .locals 1
    .parameter "httpClient"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ">;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<",
            "Lorg/apache/http/HttpResponse;",
            "TE;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<TR;TE;>;"
    .local p2, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;Lorg/apache/http/client/methods/HttpUriRequest;>;"
    .local p3, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<Lorg/apache/http/HttpResponse;TE;>;"
    invoke-direct {p0, p2, p3}, Lcom/google/android/youtube/core/async/ConvertingRequester;-><init>(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)V

    .line 41
    const-string v0, "httpClient may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/HttpRequester;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/HttpRequester;->respondNull:Z

    .line 43
    return-void
.end method

.method private consumeContentResponse(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .parameter "httpResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<TR;TE;>;"
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 97
    .local v0, httpEntity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 100
    :cond_0
    return-void
.end method

.method private is2xxStatusCode(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 103
    .local p0, this:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<TR;TE;>;"
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doRequest(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    .local p0, this:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<TR;TE;>;"
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/HttpRequester;->doRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method

.method protected doRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 6
    .parameter "httpRequest"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<TR;TE;>;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;>;"
    const-string v4, "request can\'t be null"

    invoke-static {p1, v4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_0
    iget-object v4, p0, Lcom/google/android/youtube/core/async/HttpRequester;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 63
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 64
    .local v0, code:I
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, reason:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/HttpRequester;->is2xxStatusCode(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http error: request=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] status=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] msg=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/async/HttpRequester;->consumeContentResponse(Lorg/apache/http/HttpResponse;)V

    .line 68
    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-direct {v4, v0, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1, v4}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 89
    .end local v0           #code:I
    .end local v3           #reason:Ljava/lang/String;
    :goto_0
    return-void

    .line 71
    .restart local v0       #code:I
    .restart local v3       #reason:Ljava/lang/String;
    :cond_0
    iget-boolean v4, p0, Lcom/google/android/youtube/core/async/HttpRequester;->respondNull:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p2, p1, v4}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/async/HttpRequester;->consumeContentResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 73
    .end local v0           #code:I
    .end local v3           #reason:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 74
    .local v1, e:Ljava/lang/RuntimeException;
    if-eqz p1, :cond_1

    .line 75
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 77
    :cond_1
    throw v1

    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #code:I
    .restart local v3       #reason:Ljava/lang/String;
    :cond_2
    move-object v4, v2

    .line 71
    goto :goto_1

    .line 78
    .end local v0           #code:I
    .end local v3           #reason:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 80
    .local v1, e:Ljava/lang/Exception;
    if-eqz v2, :cond_3

    .line 82
    :try_start_1
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/async/HttpRequester;->consumeContentResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 87
    :cond_3
    :goto_2
    invoke-interface {p2, p1, v1}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 83
    :catch_2
    move-exception v4

    goto :goto_2
.end method
