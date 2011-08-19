.class Lcom/github/droidfu/http/HttpPost;
.super Lcom/github/droidfu/http/BetterHttpRequest;
.source "HttpPost.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/HashMap;)V
    .locals 5
    .parameter "url"
    .parameter "payload"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, defaultHeaders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/github/droidfu/http/BetterHttpRequest;-><init>()V

    .line 26
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/github/droidfu/http/HttpPost;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 27
    iget-object v2, p0, Lcom/github/droidfu/http/HttpPost;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v2, p2}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 29
    iget-object v2, p0, Lcom/github/droidfu/http/HttpPost;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v3, "Content-Type"

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    .local v0, header:Ljava/lang/String;
    iget-object v3, p0, Lcom/github/droidfu/http/HttpPost;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    .end local v0           #header:Ljava/lang/String;
    :cond_0
    return-void
.end method
