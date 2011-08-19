.class public Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field private final requestSentRetryEnabled:Z

.field private final retryCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 72
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 73
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3
    .parameter "retryCount"
    .parameter "requestSentRetryEnabled"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    .line 65
    iput-boolean p2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    .line 66
    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 9
    .parameter "exception"
    .parameter "executionCount"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    if-nez p1, :cond_c

    .line 83
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Exception parameter may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_c
    if-nez p3, :cond_16

    .line 86
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP context may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_16
    iget v2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    if-le p2, v2, :cond_1c

    move v2, v3

    .line 117
    :goto_1b
    return v2

    .line 92
    :cond_1c
    instance-of v2, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v2, :cond_22

    move v2, v4

    .line 94
    goto :goto_1b

    .line 96
    :cond_22
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_28

    move v2, v3

    .line 98
    goto :goto_1b

    .line 100
    :cond_28
    instance-of v2, p1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_2e

    move v2, v3

    .line 102
    goto :goto_1b

    .line 104
    :cond_2e
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_34

    move v2, v3

    .line 106
    goto :goto_1b

    .line 108
    :cond_34
    const-string v2, "http.request_sent"

    invoke-interface {p3, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 110
    .local v0, b:Ljava/lang/Boolean;
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4d

    move v1, v4

    .line 111
    .local v1, sent:Z
    :goto_45
    if-eqz v1, :cond_4b

    iget-boolean v2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v2, :cond_4f

    :cond_4b
    move v2, v4

    .line 114
    goto :goto_1b

    .end local v1           #sent:Z
    :cond_4d
    move v1, v3

    .line 110
    goto :goto_45

    .restart local v1       #sent:Z
    :cond_4f
    move v2, v3

    .line 117
    goto :goto_1b
.end method
