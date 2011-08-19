.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.super Ljava/lang/Object;
.source "BaseBoxMethod.java"


# instance fields
.field protected apiRequestFormat:Ljava/lang/String;

.field protected apiUploadUrlPrefix:Ljava/lang/String;

.field protected apiUrlPrefix:Ljava/lang/String;

.field protected apiVersion:Ljava/lang/String;

.field protected config:Ljava/util/Properties;

.field protected httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

.field protected soapApiUrl:Ljava/lang/String;

.field protected xmlApiUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->getBoxHTTPManager()Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-result-object v0

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    .line 25
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    invoke-virtual {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->getConfig()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->config:Ljava/util/Properties;

    .line 49
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->config:Ljava/util/Properties;

    .line 50
    const-string v1, "box4j.config.api.url_prefix"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->apiUrlPrefix:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->config:Ljava/util/Properties;

    .line 52
    const-string v1, "box4j.config.api.upload_url_prefix"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->apiUploadUrlPrefix:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->config:Ljava/util/Properties;

    const-string v1, "box4j.config.api.version"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->apiVersion:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->config:Ljava/util/Properties;

    .line 55
    const-string v1, "box4j.config.api.requestformat"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->apiRequestFormat:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getXMLUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->xmlApiUrl:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getSOAPUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->soapApiUrl:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private getSOAPUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .local v0, urlBuf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->apiUrlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-object v1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->apiVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, "soap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getXMLUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v0, urlBuf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->apiUrlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget-object v1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->apiVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getBaseSoapDocument()Lorg/dom4j/Document;
    .locals 5

    .prologue
    .line 119
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 121
    .local v1, doc:Lorg/dom4j/Document;
    const-string v3, "soap:Envelope"

    invoke-static {v3}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 122
    .local v2, envelopeElm:Lorg/dom4j/Element;
    const-string v3, "xmlns:soap"

    .line 123
    const-string v4, "http://schemas.xmlsoap.org/soap/envelope/"

    .line 122
    invoke-interface {v2, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 124
    const-string v3, "xmlns:soapenc"

    .line 125
    const-string v4, "http://schemas.xmlsoap.org/soap/encoding/"

    .line 124
    invoke-interface {v2, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 126
    const-string v3, "xmlns:tns"

    const-string v4, "urn:boxnet"

    invoke-interface {v2, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 127
    const-string v3, "xmlns:types"

    const-string v4, "urn:boxnet/encodedTypes"

    invoke-interface {v2, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 128
    const-string v3, "xmlns:xsi"

    .line 129
    const-string v4, "http://www.w3.org/2001/XMLSchema-instance"

    .line 128
    invoke-interface {v2, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 130
    const-string v3, "xmlns:xsd"

    .line 131
    const-string v4, "http://www.w3.org/2001/XMLSchema"

    .line 130
    invoke-interface {v2, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 132
    invoke-interface {v1, v2}, Lorg/dom4j/Document;->setRootElement(Lorg/dom4j/Element;)V

    .line 134
    const-string v3, "soap:Body"

    invoke-static {v3}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 135
    .local v0, bodyElm:Lorg/dom4j/Element;
    const-string v3, "soap:encodingStyle"

    .line 136
    const-string v4, "http://schemas.xmlsoap.org/soap/encoding/"

    .line 135
    invoke-interface {v0, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 137
    invoke-interface {v2, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 138
    return-object v1
.end method

.method protected getElementByActionName(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 3
    .parameter "actionName"

    .prologue
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tns:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 149
    .local v0, elm:Lorg/dom4j/Element;
    return-object v0
.end method

.method public getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 2
    .parameter "actionName"

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v0, urlBuf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->apiUrlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    iget-object v1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->apiVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "rest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    return-object v0
.end method

.method protected getSoapElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2
    .parameter "elmName"
    .parameter "elmType"

    .prologue
    .line 161
    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 162
    .local v0, elm:Lorg/dom4j/Element;
    const-string v1, "xsi:type"

    invoke-interface {v0, v1, p2}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 163
    return-object v0
.end method
