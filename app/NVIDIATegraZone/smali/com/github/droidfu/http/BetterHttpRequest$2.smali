.class Lcom/github/droidfu/http/BetterHttpRequest$2;
.super Ljava/lang/Object;
.source "BetterHttpRequest.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/droidfu/http/BetterHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/droidfu/http/BetterHttpRequest;


# direct methods
.method constructor <init>(Lcom/github/droidfu/http/BetterHttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/github/droidfu/http/BetterHttpRequest$2;->this$0:Lcom/github/droidfu/http/BetterHttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 8
    .parameter "exception"
    .parameter "executionCount"
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 116
    const/4 v4, 0x5

    if-le p2, v4, :cond_0

    move v4, v7

    .line 146
    :goto_0
    return v4

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 121
    const-class v4, Lcom/github/droidfu/http/BetterHttpRequest;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/github/droidfu/http/BetterHttpRequest$2;->this$0:Lcom/github/droidfu/http/BetterHttpRequest;

    iget-object v6, v6, Lcom/github/droidfu/http/BetterHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (tried: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " times)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v4, "http.request"

    invoke-interface {p3, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/impl/client/RequestWrapper;

    .line 128
    .local v2, request:Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v3

    .line 129
    .local v3, rewrittenUri:Ljava/net/URI;
    const-string v4, "request_uri_backup"

    invoke-interface {p3, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    .line 130
    .local v1, originalUri:Ljava/net/URI;
    invoke-virtual {v2, v1}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 133
    iget-object v4, p0, Lcom/github/droidfu/http/BetterHttpRequest$2;->this$0:Lcom/github/droidfu/http/BetterHttpRequest;

    invoke-static {v4}, Lcom/github/droidfu/http/BetterHttpRequest;->access$100(Lcom/github/droidfu/http/BetterHttpRequest;)Loauth/signpost/OAuthConsumer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 135
    :try_start_0
    iget-object v4, p0, Lcom/github/droidfu/http/BetterHttpRequest$2;->this$0:Lcom/github/droidfu/http/BetterHttpRequest;

    invoke-static {v4}, Lcom/github/droidfu/http/BetterHttpRequest;->access$100(Lcom/github/droidfu/http/BetterHttpRequest;)Loauth/signpost/OAuthConsumer;

    move-result-object v4

    invoke-interface {v4, v2}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_1
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 146
    const/4 v4, 0x1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 137
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v7

    .line 139
    goto :goto_0
.end method
