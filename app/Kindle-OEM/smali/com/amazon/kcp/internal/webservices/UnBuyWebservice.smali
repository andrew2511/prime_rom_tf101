.class public Lcom/amazon/kcp/internal/webservices/UnBuyWebservice;
.super Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;
.source "UnBuyWebservice.java"


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 0
    .parameter "wc"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    .line 33
    return-void
.end method

.method public static getNewUnBuyDescriber(Lcom/amazon/kcp/application/models/internal/BuyResultsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .locals 8
    .parameter "model"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    const/4 v2, 0x1

    .line 101
    .local v2, ok:Z
    new-instance v1, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;-><init>()V

    .line 103
    .local v1, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v3

    .line 104
    .local v3, responseNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez v3, :cond_0

    move-object v4, v7

    .line 130
    :goto_0
    return-object v4

    .line 108
    :cond_0
    if-eqz v2, :cond_1

    const-string v4, "Response"

    invoke-virtual {v3, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v6

    .line 111
    :goto_1
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    .line 112
    .local v0, childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez v0, :cond_2

    move-object v4, v7

    .line 114
    goto :goto_0

    .end local v0           #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_1
    move v2, v5

    .line 108
    goto :goto_1

    .line 116
    .restart local v0       #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_2
    if-eqz v2, :cond_4

    const-string v4, "Message"

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v6

    .line 117
    :goto_2
    if-eqz v2, :cond_5

    new-instance v4, Lcom/amazon/kcp/internal/webservices/UnBuyWebservice$1;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/internal/webservices/UnBuyWebservice$1;-><init>(Lcom/amazon/kcp/application/models/internal/BuyResultsModel;)V

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v6

    .line 125
    :goto_3
    if-nez v2, :cond_3

    .line 127
    const/4 v1, 0x0

    :cond_3
    move-object v4, v1

    .line 130
    goto :goto_0

    :cond_4
    move v2, v5

    .line 116
    goto :goto_2

    :cond_5
    move v2, v5

    .line 117
    goto :goto_3
.end method


# virtual methods
.method public createUnBuyRequest(Lcom/amazon/kcp/store/models/IBuyResultsModel;Lcom/amazon/kcp/application/models/internal/BuyResultsModel;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getUnBuyURL()Lcom/amazon/foundation/internal/WebserviceURL;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/amazon/foundation/internal/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {p2}, Lcom/amazon/kcp/internal/webservices/UnBuyWebservice;->getNewUnBuyDescriber(Lcom/amazon/kcp/application/models/internal/BuyResultsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    move-result-object v2

    .line 53
    if-nez v2, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?asin="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kcp/store/models/IBuyResultsModel;->getBookDetails()Lcom/amazon/kcp/store/models/IBookDetails;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/store/models/IBookDetails;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&orderID="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kcp/store/models/IBuyResultsModel;->getOrderID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/internal/webservices/UnBuyWebservice;->addClientID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {p3}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;->generateCookieHeader(Lcom/amazon/kcp/application/AuthenticationManager;)Ljava/util/Hashtable;

    move-result-object v3

    .line 63
    iget-object v4, p0, Lcom/amazon/kcp/internal/webservices/UnBuyWebservice;->wc:Lcom/amazon/foundation/internal/net/LightWebConnector;

    invoke-static {v4, v1, v2, p4, v3}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/amazon/foundation/internal/WebserviceURL;->getTimeout()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->SetTimeout(J)V

    .line 69
    const-string v0, "text/xml"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    :cond_1
    move-object v0, v1

    .line 72
    goto :goto_0
.end method
