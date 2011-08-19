.class public Lnet/yostore/aws/api/SearchServerApi;
.super Lnet/yostore/aws/api/BaseApi;
.source "SearchServerApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchServerApi"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "Url"
    .parameter "proxy"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/api/BaseApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public fulltextQuery(Lnet/yostore/aws/api/entity/FulltextQueryRequest;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, params:Ljava/lang/String;
    const-string v1, "SearchServerApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/fulltext/query/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FulltextQueryRequest;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/FulltextQuery;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FulltextQuery;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    return-object p0
.end method

.method public sqlQuery(Lnet/yostore/aws/api/entity/SqlQueryRequest;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SqlQueryRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, params:Ljava/lang/String;
    const-string v1, "SearchServerApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/fulltext/sqlquery/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SqlQueryRequest;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/SqlQuery;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/SqlQuery;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    return-object p0
.end method
