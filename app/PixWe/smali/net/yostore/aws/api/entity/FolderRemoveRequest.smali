.class public Lnet/yostore/aws/api/entity/FolderRemoveRequest;
.super Ljava/lang/Object;
.source "FolderRemoveRequest.java"


# instance fields
.field private _id:Ljava/lang/String;

.field private _ischildonly:Z

.field private _scrip:Ljava/lang/String;

.field private _token:Ljava/lang/String;

.field private _userid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_scrip:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_ischildonly:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uid"
    .parameter "token"
    .parameter "folderid"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_scrip:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_ischildonly:Z

    .line 14
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_userid:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_token:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_id:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIschildonly()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_ischildonly:Z

    return v0
.end method

.method public getScrip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_scrip:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_userid:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 33
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_id:Ljava/lang/String;

    return-void
.end method

.method public setIschildonly(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 37
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_ischildonly:Z

    return-void
.end method

.method public setScrip(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 25
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_scrip:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 21
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_token:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 29
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_userid:Ljava/lang/String;

    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 39
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 40
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 42
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 43
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 44
    const-string v3, ""

    const-string v4, "remove"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_token:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    const-string v3, ""

    const-string v4, "scrip"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_scrip:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    const-string v3, ""

    const-string v4, "scrip"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_userid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    const-string v3, ""

    const-string v4, "id"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_id:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    const-string v3, ""

    const-string v4, "id"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->_ischildonly:Z

    if-eqz v3, :cond_0

    .line 58
    const-string v3, ""

    const-string v4, "ischildonly"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    const-string v3, "1"

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    const-string v3, ""

    const-string v4, "ischildonly"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    :cond_0
    const-string v3, ""

    const-string v4, "remove"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 65
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

    .line 67
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 68
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
