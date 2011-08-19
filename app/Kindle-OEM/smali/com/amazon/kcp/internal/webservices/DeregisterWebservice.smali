.class public Lcom/amazon/kcp/internal/webservices/DeregisterWebservice;
.super Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;
.source "DeregisterWebservice.java"


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 0
    .parameter "webConnector"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    .line 32
    return-void
.end method

.method public static getNewDeregisterDescriber(Lcom/amazon/kcp/application/models/internal/DeregisterModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .locals 8
    .parameter "model"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    const/4 v1, 0x1

    .line 87
    .local v1, ok:Z
    new-instance v0, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;-><init>()V

    .line 89
    .local v0, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    invoke-virtual {v0}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 90
    .local v2, responseNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez v2, :cond_0

    move-object v4, v7

    .line 116
    :goto_0
    return-object v4

    .line 94
    :cond_0
    if-eqz v1, :cond_1

    const-string v4, "response"

    invoke-virtual {v2, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v6

    .line 97
    :goto_1
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v3

    .line 98
    .local v3, statusNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez v3, :cond_2

    move-object v4, v7

    .line 100
    goto :goto_0

    .end local v3           #statusNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_1
    move v1, v5

    .line 94
    goto :goto_1

    .line 102
    .restart local v3       #statusNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_2
    if-eqz v1, :cond_4

    const-string v4, "status"

    invoke-virtual {v3, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v6

    .line 103
    :goto_2
    if-eqz v1, :cond_5

    new-instance v4, Lcom/amazon/kcp/internal/webservices/DeregisterWebservice$1;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/internal/webservices/DeregisterWebservice$1;-><init>(Lcom/amazon/kcp/application/models/internal/DeregisterModel;)V

    invoke-virtual {v3, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v6

    .line 111
    :goto_3
    if-nez v1, :cond_3

    .line 113
    const/4 v0, 0x0

    :cond_3
    move-object v4, v0

    .line 116
    goto :goto_0

    :cond_4
    move v1, v5

    .line 102
    goto :goto_2

    :cond_5
    move v1, v5

    .line 103
    goto :goto_3
.end method


# virtual methods
.method public createDeregisterRequest(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/models/internal/DeregisterModel;ZLcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getDeregisterURL()Lcom/amazon/foundation/internal/WebserviceURL;

    move-result-object v6

    .line 44
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/WebserviceURL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?contentDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_1

    const-string v1, "true"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {p2}, Lcom/amazon/kcp/internal/webservices/DeregisterWebservice;->getNewDeregisterDescriber(Lcom/amazon/kcp/application/models/internal/DeregisterModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    move-result-object v2

    .line 50
    if-nez v2, :cond_2

    .line 52
    const/4 v0, 0x0

    .line 65
    :cond_0
    :goto_1
    return-object v0

    .line 47
    :cond_1
    const-string v1, "false"

    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "GET"

    const-string v3, ""

    invoke-static {p1, v0, v1, v3}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;->generateSignedHeaders(Lcom/amazon/kcp/application/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v4

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DeregisterWebservice;->wc:Lcom/amazon/foundation/internal/net/LightWebConnector;

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

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/WebserviceURL;->getTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->SetTimeout(J)V

    .line 62
    const-string v1, "text/xml"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    goto :goto_1
.end method
