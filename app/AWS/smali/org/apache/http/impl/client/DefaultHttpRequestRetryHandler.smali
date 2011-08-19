.class public Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final requestSentRetryEnabled:Z

.field private final retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 75
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .parameter "retryCount"
    .parameter "requestSentRetryEnabled"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    .line 67
    iput-boolean p2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    .line 68
    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 7
    .parameter "exception"
    .parameter "executionCount"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Exception parameter may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    :cond_0
    if-nez p3, :cond_1

    .line 88
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "HTTP context may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    :cond_1
    iget v4, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    if-le p2, v4, :cond_2

    move v4, v5

    .line 133
    :goto_0
    return v4

    .line 94
    :cond_2
    instance-of v4, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v4, :cond_3

    move v4, v6

    .line 96
    goto :goto_0

    .line 98
    :cond_3
    instance-of v4, p1, Ljava/io/InterruptedIOException;

    if-eqz v4, :cond_4

    move v4, v5

    .line 100
    goto :goto_0

    .line 102
    :cond_4
    instance-of v4, p1, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_5

    move v4, v5

    .line 104
    goto :goto_0

    .line 106
    :cond_5
    instance-of v4, p1, Ljava/net/ConnectException;

    if-eqz v4, :cond_6

    move v4, v5

    .line 108
    goto :goto_0

    .line 110
    :cond_6
    instance-of v4, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_7

    move v4, v5

    .line 112
    goto :goto_0

    .line 115
    :cond_7
    const-string v4, "http.request"

    invoke-interface {p3, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpRequest;

    .line 117
    .local v2, request:Lorg/apache/http/HttpRequest;
    instance-of v4, v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-nez v4, :cond_8

    move v1, v6

    .line 118
    .local v1, idempotent:Z
    :goto_1
    if-eqz v1, :cond_9

    move v4, v6

    .line 120
    goto :goto_0

    .end local v1           #idempotent:Z
    :cond_8
    move v1, v5

    .line 117
    goto :goto_1

    .line 123
    .restart local v1       #idempotent:Z
    :cond_9
    const-string v4, "http.request_sent"

    invoke-interface {p3, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 125
    .local v0, b:Ljava/lang/Boolean;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    move v3, v6

    .line 127
    .local v3, sent:Z
    :goto_2
    if-eqz v3, :cond_a

    iget-boolean v4, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v4, :cond_c

    :cond_a
    move v4, v6

    .line 130
    goto :goto_0

    .end local v3           #sent:Z
    :cond_b
    move v3, v5

    .line 125
    goto :goto_2

    .restart local v3       #sent:Z
    :cond_c
    move v4, v5

    .line 133
    goto :goto_0
.end method
