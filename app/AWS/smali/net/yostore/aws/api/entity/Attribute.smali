.class public Lnet/yostore/aws/api/entity/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# instance fields
.field private _creationtime:Ljava/lang/String;

.field private _lastaccesstime:Ljava/lang/String;

.field private _lastwritetime:Ljava/lang/String;

.field private xMachinename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreationtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lnet/yostore/aws/api/entity/Attribute;->_creationtime:Ljava/lang/String;

    return-object v0
.end method

.method public getLastaccesstime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lnet/yostore/aws/api/entity/Attribute;->_lastaccesstime:Ljava/lang/String;

    return-object v0
.end method

.method public getLastwritetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lnet/yostore/aws/api/entity/Attribute;->_lastwritetime:Ljava/lang/String;

    return-object v0
.end method

.method public getxMachinename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lnet/yostore/aws/api/entity/Attribute;->xMachinename:Ljava/lang/String;

    return-object v0
.end method

.method public setCreationtime(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 25
    iput-object p1, p0, Lnet/yostore/aws/api/entity/Attribute;->_creationtime:Ljava/lang/String;

    return-void
.end method

.method public setLastaccesstime(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 29
    iput-object p1, p0, Lnet/yostore/aws/api/entity/Attribute;->_lastaccesstime:Ljava/lang/String;

    return-void
.end method

.method public setLastwritetime(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 33
    iput-object p1, p0, Lnet/yostore/aws/api/entity/Attribute;->_lastwritetime:Ljava/lang/String;

    return-void
.end method

.method public setxMachinename(Ljava/lang/String;)V
    .locals 0
    .parameter "xMachinename"

    .prologue
    .line 42
    iput-object p1, p0, Lnet/yostore/aws/api/entity/Attribute;->xMachinename:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 45
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 46
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 48
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 51
    const-string v3, ""

    const-string v4, "creationtime"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    iget-object v3, p0, Lnet/yostore/aws/api/entity/Attribute;->_creationtime:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    const-string v3, ""

    const-string v4, "creationtime"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    const-string v3, ""

    const-string v4, "lastaccesstime"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    iget-object v3, p0, Lnet/yostore/aws/api/entity/Attribute;->_lastaccesstime:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    const-string v3, ""

    const-string v4, "lastaccesstime"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    const-string v3, ""

    const-string v4, "lastwritetime"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    iget-object v3, p0, Lnet/yostore/aws/api/entity/Attribute;->_lastwritetime:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    const-string v3, ""

    const-string v4, "lastwritetime"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    const-string v3, ""

    const-string v4, "x-machinename"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    iget-object v3, p0, Lnet/yostore/aws/api/entity/Attribute;->xMachinename:Ljava/lang/String;

    invoke-static {v3}, Lcom/ecareme/utils/codec/Base64;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    const-string v3, ""

    const-string v4, "x-machinename"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 65
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 66
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 67
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
