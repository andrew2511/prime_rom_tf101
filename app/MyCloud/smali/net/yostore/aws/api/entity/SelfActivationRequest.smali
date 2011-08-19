.class public Lnet/yostore/aws/api/entity/SelfActivationRequest;
.super Ljava/lang/Object;
.source "SelfActivationRequest.java"


# instance fields
.field private _clienttype:Ljava/lang/String;

.field private _clientversion:Ljava/lang/String;

.field private _language:Ljava/lang/String;

.field private _mac:Ljava/lang/String;

.field private _machineid:Ljava/lang/String;

.field private _manufacturer:Ljava/lang/String;

.field private _productname:Ljava/lang/String;

.field private _service:Ljava/lang/String;

.field private _time:Ljava/lang/String;

.field private _uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "en_US"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_language:Ljava/lang/String;

    .line 59
    const-string v0, "1"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_service:Ljava/lang/String;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_time:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "clienttype"
    .parameter "clientversion"
    .parameter "manufacturer"
    .parameter "productname"
    .parameter "machineid"
    .parameter "uuid"
    .parameter "mac"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "en_US"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_language:Ljava/lang/String;

    .line 59
    const-string v0, "1"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_service:Ljava/lang/String;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_time:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_clienttype:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_clientversion:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_manufacturer:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_productname:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_machineid:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_uuid:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_mac:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getClienttype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_clienttype:Ljava/lang/String;

    return-object v0
.end method

.method public getClientversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_clientversion:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_language:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMachineid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_machineid:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getProductname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_productname:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_service:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_time:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setClienttype(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 29
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_clienttype:Ljava/lang/String;

    return-void
.end method

.method public setClientversion(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 33
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_clientversion:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 57
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_language:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 53
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_mac:Ljava/lang/String;

    return-void
.end method

.method public setMachineid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 45
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_machineid:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 37
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setProductname(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 41
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_productname:Ljava/lang/String;

    return-void
.end method

.method public setService(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 61
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_service:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 65
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_time:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 49
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_uuid:Ljava/lang/String;

    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 8

    .prologue
    .line 68
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 69
    .local v4, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 71
    .local v5, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 72
    const-string v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 73
    const-string v6, ""

    const-string v7, "selfactivation"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    const-string v6, ""

    const-string v7, "language"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    iget-object v6, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_language:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    const-string v6, ""

    const-string v7, "language"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    const-string v6, ""

    const-string v7, "service"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    iget-object v6, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_service:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const-string v6, ""

    const-string v7, "service"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    const-string v6, ""

    const-string v7, "time"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    iget-object v6, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_time:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    const-string v6, ""

    const-string v7, "time"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    const-string v6, ""

    const-string v7, "provision"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    const-string v6, ""

    const-string v7, "clienttype"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    iget-object v6, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_clienttype:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    const-string v6, ""

    const-string v7, "clienttype"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    const-string v6, ""

    const-string v7, "clientversion"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    iget-object v6, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_clientversion:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    const-string v6, ""

    const-string v7, "clientversion"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    const-string v6, ""

    const-string v7, "manufacturer"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    iget-object v6, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_manufacturer:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    const-string v6, ""

    const-string v7, "manufacturer"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    const-string v6, ""

    const-string v7, "productname"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    iget-object v6, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_productname:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    const-string v6, ""

    const-string v7, "productname"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    const-string v6, ""

    const-string v7, "machineid"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    iget-object v6, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_machineid:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string v6, ""

    const-string v7, "machineid"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    const-string v6, ""

    const-string v7, "uuid"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    iget-object v6, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_uuid:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    const-string v6, ""

    const-string v7, "uuid"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    const-string v6, ""

    const-string v7, "mac"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    iget-object v6, p0, Lnet/yostore/aws/api/entity/SelfActivationRequest;->_mac:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    const-string v6, ""

    const-string v7, "mac"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    const-string v6, ""

    const-string v7, "provision"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    const-string v6, ""

    const-string v7, "selfactivation"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 110
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, s:Ljava/lang/String;
    const-string v6, "::SA XML::"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v6, "EcaremeFC1AesKey"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/ecareme/utils/crypto/AESCipher;->getInstance([B)Lcom/ecareme/utils/crypto/AESCipher;

    move-result-object v1

    .line 114
    .local v1, cipher:Lcom/ecareme/utils/crypto/AESCipher;
    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/ecareme/utils/crypto/AESCipher;->encrypt([B)[B

    move-result-object v0

    .line 116
    .local v0, bs:[B
    invoke-static {v0}, Lcom/ecareme/utils/codec/Base64;->encodeToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 121
    .end local v0           #bs:[B
    .end local v1           #cipher:Lcom/ecareme/utils/crypto/AESCipher;
    .end local v3           #s:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 122
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
