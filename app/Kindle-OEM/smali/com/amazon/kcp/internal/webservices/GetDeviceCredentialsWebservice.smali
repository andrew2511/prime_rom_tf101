.class public Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsWebservice;
.super Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;
.source "GetDeviceCredentialsWebservice.java"


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 0
    .parameter "webConnector"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    .line 29
    return-void
.end method


# virtual methods
.method public createGetCredentialsRequest(Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/models/internal/TodoItem;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?reason=TodoItem."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getActionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {p1}, Lcom/amazon/kcp/internal/webservices/RegisterWebservice;->getNewRegisterDescriber(Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    move-result-object v2

    .line 48
    if-nez v2, :cond_1

    .line 50
    const/4 v0, 0x0

    .line 64
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    const-string v0, "GET"

    const/16 v3, 0x2f

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {p2, v0, v3, v4}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;->generateSignedHeaders(Lcom/amazon/kcp/application/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v4

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetDeviceCredentialsWebservice;->wc:Lcom/amazon/foundation/internal/net/LightWebConnector;

    const/4 v5, 0x1

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 60
    sget v1, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->WEBSERVICE_DEFAULT_30_SEC_TIMEOUT:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->SetTimeout(J)V

    .line 61
    const-string v1, "text/xml"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    goto :goto_0
.end method
