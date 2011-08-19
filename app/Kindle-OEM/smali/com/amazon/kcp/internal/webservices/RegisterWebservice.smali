.class public Lcom/amazon/kcp/internal/webservices/RegisterWebservice;
.super Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;
.source "RegisterWebservice.java"


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 0
    .parameter "webConnector"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    .line 35
    return-void
.end method

.method private constructPOSTXML(Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    .line 71
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getCannonicalAppName()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->sanitizeURLParameterForDMSMetricsReporting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceModelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->sanitizeURLParameterForDMSMetricsReporting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/amazon/kcp/application/AssociateInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object v3

    .line 81
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    const-string v5, "<request>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v5, "<parameters>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v5, "<deviceType>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->getDeviceType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</deviceType>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v5, "<deviceSerialNumber>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->getDeviceSerial()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</deviceSerialNumber>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v5, "<email>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</email>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v5, "<password>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</password>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v5, "<deviceName>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</deviceName>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v5, "<pid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->getPid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</pid>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v5, "<softwareVersion>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;->getInternalVersionNumber()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</softwareVersion>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v5, "<os_version>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "</os_version>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v2, "<device_model>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "</device_model>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v0, "</parameters>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v0, "<softwareVersions>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v0, "<softwareVersion name=\"oem_vendor\" value=\"Kindle\"/>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v0, "<softwareVersion name=\"oem_platform\" value=\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v0, "<softwareVersion name=\"oem_version\" value=\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v0, "</softwareVersions>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v0, "</request>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNewRegisterDescriber(Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .locals 8
    .parameter "resultsModel"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 128
    const/4 v2, 0x1

    .line 129
    .local v2, ok:Z
    new-instance v1, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;-><init>()V

    .line 131
    .local v1, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v3

    .line 132
    .local v3, responseNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez v3, :cond_0

    move-object v4, v7

    .line 218
    :goto_0
    return-object v4

    .line 136
    :cond_0
    if-eqz v2, :cond_1

    const-string v4, "response"

    invoke-virtual {v3, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v6

    .line 139
    :goto_1
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    .line 140
    .local v0, childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-nez v0, :cond_2

    move-object v4, v7

    .line 142
    goto :goto_0

    .end local v0           #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_1
    move v2, v5

    .line 136
    goto :goto_1

    .line 144
    .restart local v0       #childNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_2
    if-eqz v2, :cond_3

    const-string v4, "device_private_key"

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v6

    .line 145
    :goto_2
    if-eqz v2, :cond_4

    new-instance v4, Lcom/amazon/kcp/internal/webservices/RegisterWebservice$1;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/internal/webservices/RegisterWebservice$1;-><init>(Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;)V

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v6

    .line 154
    :goto_3
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    .line 155
    if-nez v0, :cond_5

    move-object v4, v7

    .line 157
    goto :goto_0

    :cond_3
    move v2, v5

    .line 144
    goto :goto_2

    :cond_4
    move v2, v5

    .line 145
    goto :goto_3

    .line 159
    :cond_5
    if-eqz v2, :cond_6

    const-string v4, "adp_token"

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v6

    .line 160
    :goto_4
    if-eqz v2, :cond_7

    new-instance v4, Lcom/amazon/kcp/internal/webservices/RegisterWebservice$2;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/internal/webservices/RegisterWebservice$2;-><init>(Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;)V

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v2, v6

    .line 169
    :goto_5
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    .line 170
    if-nez v0, :cond_8

    move-object v4, v7

    .line 172
    goto :goto_0

    :cond_6
    move v2, v5

    .line 159
    goto :goto_4

    :cond_7
    move v2, v5

    .line 160
    goto :goto_5

    .line 174
    :cond_8
    if-eqz v2, :cond_9

    const-string v4, "store_authentication_cookie"

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v2, v6

    .line 175
    :goto_6
    if-eqz v2, :cond_a

    new-instance v4, Lcom/amazon/kcp/internal/webservices/RegisterWebservice$3;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/internal/webservices/RegisterWebservice$3;-><init>(Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;)V

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v2, v6

    .line 184
    :goto_7
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    .line 185
    if-nez v0, :cond_b

    move-object v4, v7

    .line 187
    goto :goto_0

    :cond_9
    move v2, v5

    .line 174
    goto :goto_6

    :cond_a
    move v2, v5

    .line 175
    goto :goto_7

    .line 189
    :cond_b
    if-eqz v2, :cond_c

    const-string v4, "user_device_name"

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v2, v6

    .line 190
    :goto_8
    if-eqz v2, :cond_d

    new-instance v4, Lcom/amazon/kcp/internal/webservices/RegisterWebservice$4;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/internal/webservices/RegisterWebservice$4;-><init>(Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;)V

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v2, v6

    .line 199
    :goto_9
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    .line 200
    if-nez v0, :cond_e

    move-object v4, v7

    .line 202
    goto/16 :goto_0

    :cond_c
    move v2, v5

    .line 189
    goto :goto_8

    :cond_d
    move v2, v5

    .line 190
    goto :goto_9

    .line 204
    :cond_e
    if-eqz v2, :cond_10

    const-string v4, "name"

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    move v2, v6

    .line 205
    :goto_a
    if-eqz v2, :cond_11

    new-instance v4, Lcom/amazon/kcp/internal/webservices/RegisterWebservice$5;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/internal/webservices/RegisterWebservice$5;-><init>(Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;)V

    invoke-virtual {v0, v4}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v2, v6

    .line 213
    :goto_b
    if-nez v2, :cond_f

    .line 215
    const/4 v1, 0x0

    :cond_f
    move-object v4, v1

    .line 218
    goto/16 :goto_0

    :cond_10
    move v2, v5

    .line 204
    goto :goto_a

    :cond_11
    move v2, v5

    .line 205
    goto :goto_b
.end method


# virtual methods
.method public createRegisterRequest(Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;
    .locals 7
    .parameter "requestModel"
    .parameter "resultsModel"
    .parameter "statusTracker"

    .prologue
    .line 48
    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getRegisterURL()Lcom/amazon/foundation/internal/WebserviceURL;

    move-result-object v3

    .line 49
    .local v3, serviceURL:Lcom/amazon/foundation/internal/WebserviceURL;
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, url:Ljava/lang/String;
    invoke-static {p2}, Lcom/amazon/kcp/internal/webservices/RegisterWebservice;->getNewRegisterDescriber(Lcom/amazon/kcp/application/models/internal/RegisterResultsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    move-result-object v0

    .line 52
    .local v0, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    if-nez v0, :cond_0

    .line 54
    const/4 v5, 0x0

    .line 66
    :goto_0
    return-object v5

    .line 57
    :cond_0
    iget-object v5, p0, Lcom/amazon/kcp/internal/webservices/RegisterWebservice;->wc:Lcom/amazon/foundation/internal/net/LightWebConnector;

    const/4 v6, 0x1

    invoke-static {v5, v4, v0, p3, v6}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;Lcom/amazon/foundation/IStatusTracker;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v2

    .line 59
    .local v2, request:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    if-eqz v2, :cond_1

    .line 61
    invoke-direct {p0, p1}, Lcom/amazon/kcp/internal/webservices/RegisterWebservice;->constructPOSTXML(Lcom/amazon/kcp/application/models/internal/RegisterRequestModel;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, postXML:Ljava/lang/String;
    const-string v5, "text/xml"

    invoke-virtual {v2, v5, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->setPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/WebserviceURL;->getTimeout()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->SetTimeout(J)V

    .end local v1           #postXML:Ljava/lang/String;
    :cond_1
    move-object v5, v2

    .line 66
    goto :goto_0
.end method
