.class public Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;
.super Ljava/lang/Object;
.source "RequestServiceGatewayRequest.java"


# instance fields
.field private _client_c:Ljava/lang/String;

.field private _client_ver:Ljava/lang/String;

.field private _language:Ljava/lang/String;

.field private _os_name:Ljava/lang/String;

.field private _os_ver:Ljava/lang/String;

.field private _password:Ljava/lang/String;

.field private _service:Ljava/lang/String;

.field private _time:Ljava/lang/String;

.field private _userid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "en_US"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_language:Ljava/lang/String;

    .line 34
    const-string v0, "1"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_service:Ljava/lang/String;

    .line 38
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_client_c:Ljava/lang/String;

    .line 42
    const-string v0, "2.2.0.0"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_client_ver:Ljava/lang/String;

    .line 46
    const-string v0, "Android"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_os_name:Ljava/lang/String;

    .line 50
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_os_ver:Ljava/lang/String;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_time:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uid"
    .parameter "pwd"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "en_US"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_language:Ljava/lang/String;

    .line 34
    const-string v0, "1"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_service:Ljava/lang/String;

    .line 38
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_client_c:Ljava/lang/String;

    .line 42
    const-string v0, "2.2.0.0"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_client_ver:Ljava/lang/String;

    .line 46
    const-string v0, "Android"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_os_name:Ljava/lang/String;

    .line 50
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_os_ver:Ljava/lang/String;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_time:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_userid:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_password:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getClientC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_client_c:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_client_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_language:Ljava/lang/String;

    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_os_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_os_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_password:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_service:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_time:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_userid:Ljava/lang/String;

    return-object v0
.end method

.method public setClient(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 40
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_client_c:Ljava/lang/String;

    return-void
.end method

.method public setClientVer(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 44
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_client_ver:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 32
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_language:Ljava/lang/String;

    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 48
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_os_name:Ljava/lang/String;

    return-void
.end method

.method public setOsVer(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 52
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_os_ver:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 28
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_password:Ljava/lang/String;

    return-void
.end method

.method public setService(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 36
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_service:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 56
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_time:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 24
    iput-object p1, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_userid:Ljava/lang/String;

    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 59
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 60
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 62
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 63
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 64
    const-string v3, ""

    const-string v4, "requestservicegateway"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    iget-object v3, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_userid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    const-string v3, ""

    const-string v4, "password"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    iget-object v3, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_password:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    const-string v3, ""

    const-string v4, "password"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    const-string v3, ""

    const-string v4, "language"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    iget-object v3, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_language:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    const-string v3, ""

    const-string v4, "language"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    const-string v3, ""

    const-string v4, "service"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    iget-object v3, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_service:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    const-string v3, ""

    const-string v4, "service"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    const-string v3, ""

    const-string v4, "client"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const-string v3, ""

    const-string v4, "c"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    iget-object v3, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_client_c:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    const-string v3, ""

    const-string v4, "c"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    const-string v3, ""

    const-string v4, "ver"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    iget-object v3, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_client_ver:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    const-string v3, ""

    const-string v4, "ver"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    const-string v3, ""

    const-string v4, "client"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    const-string v3, ""

    const-string v4, "os"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    const-string v3, ""

    const-string v4, "name"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    iget-object v3, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_os_name:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    const-string v3, ""

    const-string v4, "name"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    const-string v3, ""

    const-string v4, "ver"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    iget-object v3, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_os_ver:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    const-string v3, ""

    const-string v4, "ver"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    const-string v3, ""

    const-string v4, "os"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    const-string v3, ""

    const-string v4, "time"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    iget-object v3, p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->_time:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    const-string v3, ""

    const-string v4, "time"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string v3, ""

    const-string v4, "requestservicegateway"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "?xml="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 104
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 105
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
