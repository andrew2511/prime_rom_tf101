.class Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;
.super Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
.source "HTTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/tegrazone/services/HTTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpPostRequestBuilder"
.end annotation


# instance fields
.field protected data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected entity:Lorg/apache/http/HttpEntity;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method private ensureNoEntity()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    .line 646
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 647
    const-string v1, "You cannot set the data after specifying a custom entity."

    .line 646
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_0
    return-void
.end method


# virtual methods
.method protected createRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 629
    .local v0, request:Lorg/apache/http/client/methods/HttpPost;
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 630
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v2, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->data:Ljava/util/List;

    iget-object v3, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->charset:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->entity:Lorg/apache/http/HttpEntity;

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->entity:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 634
    return-object v0
.end method

.method public data(Ljava/lang/String;Ljava/lang/String;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->ensureNoEntity()V

    .line 594
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->getData()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    return-object p0
.end method

.method public data(Ljava/util/Map;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 6
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
    .line 615
    .local p1, data:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-direct {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->ensureNoEntity()V

    .line 617
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->getData()Ljava/util/List;

    move-result-object v0

    .line 618
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 623
    return-object p0

    .line 618
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 619
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, name:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, value:Ljava/lang/String;
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v5, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public varargs data([Lorg/apache/http/NameValuePair;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 4
    .parameter "data"

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->ensureNoEntity()V

    .line 602
    if-eqz p1, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->getData()Ljava/util/List;

    move-result-object v1

    .line 604
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 610
    .end local v1           #dataList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    return-object p0

    .line 604
    .restart local v1       #dataList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_1
    aget-object v0, p1, v3

    .line 605
    .local v0, d:Lorg/apache/http/NameValuePair;
    if-eqz v0, :cond_2

    .line 606
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public entity(Lorg/apache/http/HttpEntity;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 2
    .parameter "entity"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 583
    const-string v1, "You cannot specify the entity after setting POST data."

    .line 582
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    iput-object p1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->entity:Lorg/apache/http/HttpEntity;

    .line 587
    return-object p0
.end method

.method protected getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->data:Ljava/util/List;

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->data:Ljava/util/List;

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;->data:Ljava/util/List;

    return-object v0
.end method
