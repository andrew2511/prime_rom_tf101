.class public Lnet/yostore/aws/api/entity/FolderCreateRequest;
.super Ljava/lang/Object;
.source "FolderCreateRequest.java"


# instance fields
.field private _attribute:Ljava/lang/String;

.field private _display:Ljava/lang/String;

.field private _isencrypted:Z

.field private _issharing:Z

.field private _parent:Ljava/lang/String;

.field private _scrip:Ljava/lang/String;

.field private _token:Ljava/lang/String;

.field private _userid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_scrip:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_attribute:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uid"
    .parameter "token"
    .parameter "parent"
    .parameter "display"
    .parameter "attribute"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_scrip:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_attribute:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_userid:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_token:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_parent:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_display:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_attribute:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_attribute:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_display:Ljava/lang/String;

    return-object v0
.end method

.method public getIsencrypted()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_isencrypted:Z

    return v0
.end method

.method public getIssharing()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_issharing:Z

    return v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_parent:Ljava/lang/String;

    return-object v0
.end method

.method public getScrip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_scrip:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_userid:Ljava/lang/String;

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 57
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_attribute:Ljava/lang/String;

    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 53
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_display:Ljava/lang/String;

    return-void
.end method

.method public setIsencrypted(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 49
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_isencrypted:Z

    return-void
.end method

.method public setIssharing(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 61
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_issharing:Z

    return-void
.end method

.method public setParent(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 45
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_parent:Ljava/lang/String;

    return-void
.end method

.method public setScrip(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 37
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_scrip:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 33
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_token:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 41
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_userid:Ljava/lang/String;

    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 64
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 66
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 67
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 68
    const-string v3, ""

    const-string v4, "create"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_token:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    const-string v3, ""

    const-string v4, "scrip"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_scrip:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    const-string v3, ""

    const-string v4, "scrip"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_userid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    const-string v3, ""

    const-string v4, "parent"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_parent:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    const-string v3, ""

    const-string v4, "parent"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    const-string v3, ""

    const-string v4, "isencrypted"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_isencrypted:Z

    if-eqz v3, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    const-string v3, ""

    const-string v4, "isencrypted"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    const-string v3, ""

    const-string v4, "display"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_display:Ljava/lang/String;

    invoke-static {v3}, Lcom/ecareme/utils/codec/Base64;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    const-string v3, ""

    const-string v4, "display"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    const-string v3, ""

    const-string v4, "attribute"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_attribute:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    const-string v3, ""

    const-string v4, "attribute"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    const-string v3, ""

    const-string v4, "issharing"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FolderCreateRequest;->_issharing:Z

    if-eqz v3, :cond_1

    const-string v3, "1"

    :goto_1
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    const-string v3, ""

    const-string v4, "issharing"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    const-string v3, ""

    const-string v4, "create"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 95
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 82
    :cond_0
    const-string v3, "0"

    goto :goto_0

    .line 91
    :cond_1
    const-string v3, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 99
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
