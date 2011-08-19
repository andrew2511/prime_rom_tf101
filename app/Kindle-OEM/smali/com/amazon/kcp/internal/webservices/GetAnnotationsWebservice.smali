.class public Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice;
.super Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;
.source "GetAnnotationsWebservice.java"


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 0
    .parameter "wc"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    .line 34
    return-void
.end method

.method public static getNewGetAnnotationDescriber(Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .locals 8
    .parameter "model"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    const/4 v2, 0x1

    .line 92
    .local v2, ok:Z
    new-instance v1, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;-><init>()V

    .line 94
    .local v1, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v3

    .line 95
    .local v3, responseNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez v3, :cond_0

    move-object v4, v5

    .line 143
    :goto_0
    return-object v4

    .line 99
    :cond_0
    if-eqz v2, :cond_1

    const-string v4, "book"

    invoke-virtual {v3, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v7

    .line 102
    :goto_1
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    .line 103
    .local v0, childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez v0, :cond_2

    move-object v4, v5

    .line 105
    goto :goto_0

    .end local v0           #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_1
    move v2, v6

    .line 99
    goto :goto_1

    .line 107
    .restart local v0       #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_2
    if-eqz v2, :cond_4

    const-string v4, "last_read"

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v7

    .line 108
    :goto_2
    if-eqz v2, :cond_5

    new-instance v4, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice$1;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice$1;-><init>(Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;)V

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v7

    .line 115
    :goto_3
    if-eqz v2, :cond_6

    const-string v4, "pos"

    new-instance v5, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice$2;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice$2;-><init>(Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;)V

    invoke-virtual {v0, v4, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v7

    .line 130
    :goto_4
    if-eqz v2, :cond_7

    const-string v4, "method"

    new-instance v5, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice$3;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice$3;-><init>(Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;)V

    invoke-virtual {v0, v4, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v2, v7

    .line 138
    :goto_5
    if-nez v2, :cond_3

    .line 140
    const/4 v1, 0x0

    :cond_3
    move-object v4, v1

    .line 143
    goto :goto_0

    :cond_4
    move v2, v6

    .line 107
    goto :goto_2

    :cond_5
    move v2, v6

    .line 108
    goto :goto_3

    :cond_6
    move v2, v6

    .line 115
    goto :goto_4

    :cond_7
    move v2, v6

    .line 130
    goto :goto_5
.end method


# virtual methods
.method public createGetAnnotationsRequest(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getGetAnnotationsURL()Lcom/amazon/foundation/internal/WebserviceURL;

    move-result-object v6

    .line 47
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/WebserviceURL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type=EBOK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&filter=last_read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {p2}, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice;->getNewGetAnnotationDescriber(Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    move-result-object v2

    .line 54
    if-nez v2, :cond_1

    .line 56
    const/4 v0, 0x0

    .line 70
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    const-string v0, "GET"

    const-string v3, ""

    invoke-static {p1, v0, v1, v3}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;->generateSignedHeaders(Lcom/amazon/kcp/application/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v4

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice;->wc:Lcom/amazon/foundation/internal/net/LightWebConnector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/amazon/foundation/internal/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/WebserviceURL;->getTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->SetTimeout(J)V

    .line 67
    const-string v1, "text/xml"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    goto :goto_0
.end method
