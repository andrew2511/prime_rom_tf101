.class Lcom/github/droidfu/http/BetterHttpRequest$1;
.super Ljava/lang/Object;
.source "BetterHttpRequest.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/droidfu/http/BetterHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Lcom/github/droidfu/http/BetterHttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/droidfu/http/BetterHttpRequest;


# direct methods
.method constructor <init>(Lcom/github/droidfu/http/BetterHttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/github/droidfu/http/BetterHttpRequest$1;->this$0:Lcom/github/droidfu/http/BetterHttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Lcom/github/droidfu/http/BetterHttpResponse;
    .locals 4
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 100
    .local v0, status:I
    iget-object v1, p0, Lcom/github/droidfu/http/BetterHttpRequest$1;->this$0:Lcom/github/droidfu/http/BetterHttpRequest;

    invoke-static {v1}, Lcom/github/droidfu/http/BetterHttpRequest;->access$000(Lcom/github/droidfu/http/BetterHttpRequest;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/droidfu/http/BetterHttpRequest$1;->this$0:Lcom/github/droidfu/http/BetterHttpRequest;

    invoke-static {v1}, Lcom/github/droidfu/http/BetterHttpRequest;->access$000(Lcom/github/droidfu/http/BetterHttpRequest;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 104
    :cond_0
    new-instance v1, Lcom/github/droidfu/http/BetterHttpResponse;

    invoke-direct {v1, p1}, Lcom/github/droidfu/http/BetterHttpResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    return-object v1
.end method

.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/github/droidfu/http/BetterHttpRequest$1;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/github/droidfu/http/BetterHttpResponse;

    move-result-object v0

    return-object v0
.end method
