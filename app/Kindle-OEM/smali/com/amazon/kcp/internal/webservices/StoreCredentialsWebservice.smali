.class public Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice;
.super Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;
.source "StoreCredentialsWebservice.java"


# static fields
.field private static final NUM_CONNECT_RETRIES:I


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 0
    .parameter "webConnector"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    .line 34
    return-void
.end method

.method public static getStoreCredentialsDescriber(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 81
    new-instance v0, Lcom/amazon/kcp/store/models/internal/StoreCookie;

    invoke-direct {v0}, Lcom/amazon/kcp/store/models/internal/StoreCookie;-><init>()V

    .line 92
    new-instance v1, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;-><init>()V

    .line 94
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 95
    if-nez v2, :cond_0

    move-object v0, v7

    .line 151
    :goto_0
    return-object v0

    .line 96
    :cond_0
    if-eqz v5, :cond_1

    const-string v3, "response"

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    .line 99
    :goto_1
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 100
    if-nez v2, :cond_2

    move-object v0, v7

    goto :goto_0

    :cond_1
    move v3, v6

    .line 96
    goto :goto_1

    .line 101
    :cond_2
    if-eqz v3, :cond_3

    const-string v3, "cookies"

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    .line 102
    :goto_2
    if-eqz v3, :cond_4

    new-instance v3, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$1;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$1;-><init>(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V

    invoke-virtual {v2, v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    .line 111
    :goto_3
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 112
    if-nez v2, :cond_5

    move-object v0, v7

    goto :goto_0

    :cond_3
    move v3, v6

    .line 101
    goto :goto_2

    :cond_4
    move v3, v6

    .line 102
    goto :goto_3

    .line 113
    :cond_5
    if-eqz v3, :cond_6

    const-string v3, "cookie"

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v5

    .line 114
    :goto_4
    if-eqz v3, :cond_7

    new-instance v3, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$2;

    invoke-direct {v3, p0, v0}, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$2;-><init>(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;Lcom/amazon/kcp/store/models/internal/StoreCookie;)V

    invoke-virtual {v2, v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    .line 123
    :goto_5
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 124
    if-nez v4, :cond_8

    move-object v0, v7

    goto :goto_0

    :cond_6
    move v3, v6

    .line 113
    goto :goto_4

    :cond_7
    move v3, v6

    .line 114
    goto :goto_5

    .line 125
    :cond_8
    if-eqz v3, :cond_9

    const-string v3, "url"

    invoke-virtual {v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v5

    .line 126
    :goto_6
    if-eqz v3, :cond_a

    new-instance v3, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$3;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$3;-><init>(Lcom/amazon/kcp/store/models/internal/StoreCookie;)V

    invoke-virtual {v4, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v5

    .line 135
    :goto_7
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 136
    if-nez v2, :cond_b

    move-object v0, v7

    goto :goto_0

    :cond_9
    move v3, v6

    .line 125
    goto :goto_6

    :cond_a
    move v3, v6

    .line 126
    goto :goto_7

    .line 137
    :cond_b
    if-eqz v3, :cond_c

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v5

    .line 138
    :goto_8
    if-eqz v3, :cond_d

    new-instance v3, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$4;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice$4;-><init>(Lcom/amazon/kcp/store/models/internal/StoreCookie;)V

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v5

    .line 146
    :goto_9
    if-nez v0, :cond_e

    move-object v0, v7

    .line 148
    goto/16 :goto_0

    :cond_c
    move v3, v6

    .line 137
    goto :goto_8

    :cond_d
    move v0, v6

    .line 138
    goto :goto_9

    :cond_e
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public createStoreCredentialsRequest(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getStoreCredentialsURL()Lcom/amazon/foundation/internal/WebserviceURL;

    move-result-object v6

    .line 48
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/WebserviceURL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {p2}, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice;->getStoreCredentialsDescriber(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    move-result-object v2

    .line 53
    if-nez v2, :cond_1

    .line 55
    const/4 v0, 0x0

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 58
    :cond_1
    const-string v0, "GET"

    const-string v3, ""

    invoke-static {p1, v0, v1, v3}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;->generateSignedHeaders(Lcom/amazon/kcp/application/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v4

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/StoreCredentialsWebservice;->wc:Lcom/amazon/foundation/internal/net/LightWebConnector;

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

    const/4 v5, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v6}, Lcom/amazon/foundation/internal/WebserviceURL;->getTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->SetTimeout(J)V

    .line 65
    const-string v1, "text/xml"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    goto :goto_0
.end method
