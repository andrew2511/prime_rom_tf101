.class public Lcom/amazon/kcp/internal/webservices/BuyWebservice;
.super Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;
.source "BuyWebservice.java"


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 0
    .parameter "wc"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    .line 32
    return-void
.end method

.method public static getNewBuyDescriber(Lcom/amazon/kcp/application/models/internal/BuyResultsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .locals 8
    .parameter "model"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    const/4 v2, 0x1

    .line 94
    .local v2, ok:Z
    new-instance v1, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;-><init>()V

    .line 96
    .local v1, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v3

    .line 97
    .local v3, responseNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez v3, :cond_0

    move-object v4, v7

    .line 176
    :goto_0
    return-object v4

    .line 101
    :cond_0
    if-eqz v2, :cond_1

    const-string v4, "Response"

    invoke-virtual {v3, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v6

    .line 104
    :goto_1
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    .line 105
    .local v0, childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez v0, :cond_2

    move-object v4, v7

    .line 107
    goto :goto_0

    .end local v0           #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_1
    move v2, v5

    .line 101
    goto :goto_1

    .line 109
    .restart local v0       #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_2
    if-eqz v2, :cond_3

    const-string v4, "StatusCode"

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v6

    .line 110
    :goto_2
    if-eqz v2, :cond_4

    new-instance v4, Lcom/amazon/kcp/internal/webservices/BuyWebservice$1;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/internal/webservices/BuyWebservice$1;-><init>(Lcom/amazon/kcp/application/models/internal/BuyResultsModel;)V

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v6

    .line 127
    :goto_3
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    .line 128
    if-nez v0, :cond_5

    move-object v4, v7

    .line 130
    goto :goto_0

    :cond_3
    move v2, v5

    .line 109
    goto :goto_2

    :cond_4
    move v2, v5

    .line 110
    goto :goto_3

    .line 132
    :cond_5
    if-eqz v2, :cond_6

    const-string v4, "Message"

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v6

    .line 133
    :goto_4
    if-eqz v2, :cond_7

    new-instance v4, Lcom/amazon/kcp/internal/webservices/BuyWebservice$2;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/internal/webservices/BuyWebservice$2;-><init>(Lcom/amazon/kcp/application/models/internal/BuyResultsModel;)V

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v2, v6

    .line 142
    :goto_5
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    .line 143
    if-nez v0, :cond_8

    move-object v4, v7

    .line 145
    goto :goto_0

    :cond_6
    move v2, v5

    .line 132
    goto :goto_4

    :cond_7
    move v2, v5

    .line 133
    goto :goto_5

    .line 147
    :cond_8
    if-eqz v2, :cond_9

    const-string v4, "OrderID"

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v2, v6

    .line 148
    :goto_6
    if-eqz v2, :cond_a

    new-instance v4, Lcom/amazon/kcp/internal/webservices/BuyWebservice$3;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/internal/webservices/BuyWebservice$3;-><init>(Lcom/amazon/kcp/application/models/internal/BuyResultsModel;)V

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v2, v6

    .line 157
    :goto_7
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    .line 158
    if-nez v0, :cond_b

    move-object v4, v7

    .line 160
    goto :goto_0

    :cond_9
    move v2, v5

    .line 147
    goto :goto_6

    :cond_a
    move v2, v5

    .line 148
    goto :goto_7

    .line 162
    :cond_b
    if-eqz v2, :cond_d

    const-string v4, "DateAcquired"

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v2, v6

    .line 163
    :goto_8
    if-eqz v2, :cond_e

    new-instance v4, Lcom/amazon/kcp/internal/webservices/BuyWebservice$4;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/internal/webservices/BuyWebservice$4;-><init>(Lcom/amazon/kcp/application/models/internal/BuyResultsModel;)V

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v2, v6

    .line 171
    :goto_9
    if-nez v2, :cond_c

    .line 173
    const/4 v1, 0x0

    :cond_c
    move-object v4, v1

    .line 176
    goto/16 :goto_0

    :cond_d
    move v2, v5

    .line 162
    goto :goto_8

    :cond_e
    move v2, v5

    .line 163
    goto :goto_9
.end method


# virtual methods
.method public createBuyRequest(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/models/internal/BuyResultsModel;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getBuyURL()Lcom/amazon/foundation/internal/WebserviceURL;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/amazon/foundation/internal/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {p2}, Lcom/amazon/kcp/internal/webservices/BuyWebservice;->getNewBuyDescriber(Lcom/amazon/kcp/application/models/internal/BuyResultsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    move-result-object v2

    .line 48
    if-nez v2, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 53
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?asin="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->getBookDetails()Lcom/amazon/kcp/store/models/IBookDetails;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/store/models/IBookDetails;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/internal/webservices/BuyWebservice;->addClientID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {p1}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;->generateCookieHeader(Lcom/amazon/kcp/application/AuthenticationManager;)Ljava/util/Hashtable;

    move-result-object v3

    .line 58
    iget-object v4, p0, Lcom/amazon/kcp/internal/webservices/BuyWebservice;->wc:Lcom/amazon/foundation/internal/net/LightWebConnector;

    invoke-static {v4, v1, v2, p3, v3}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/amazon/foundation/internal/WebserviceURL;->getTimeout()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->SetTimeout(J)V

    .line 64
    const-string v0, "text/xml"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    :cond_1
    move-object v0, v1

    .line 67
    goto :goto_0
.end method
