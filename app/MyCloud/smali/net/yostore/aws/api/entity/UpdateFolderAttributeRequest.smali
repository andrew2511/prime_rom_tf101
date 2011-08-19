.class public Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;
.super Ljava/lang/Object;
.source "UpdateFolderAttributeRequest.java"


# instance fields
.field private _attribute:Ljava/lang/String;

.field private _display:Ljava/lang/String;

.field private _folderId:J

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
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_scrip:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_attribute:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "uid"
    .parameter "token"
    .parameter "parent"
    .parameter "display"
    .parameter "attribute"
    .parameter "folderId"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_scrip:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_attribute:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_userid:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_token:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_parent:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_display:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_attribute:Ljava/lang/String;

    .line 26
    iput-wide p6, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_folderId:J

    .line 27
    return-void
.end method


# virtual methods
.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_attribute:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_display:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderId()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_folderId:J

    return-wide v0
.end method

.method public getIsencrypted()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_isencrypted:Z

    return v0
.end method

.method public getIssharing()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_issharing:Z

    return v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_parent:Ljava/lang/String;

    return-object v0
.end method

.method public getScrip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_scrip:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_userid:Ljava/lang/String;

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 59
    iput-object p1, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_attribute:Ljava/lang/String;

    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 55
    iput-object p1, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_display:Ljava/lang/String;

    return-void
.end method

.method public setFolderId(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 47
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_folderId:J

    return-void
.end method

.method public setIsencrypted(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 51
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_isencrypted:Z

    return-void
.end method

.method public setIssharing(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 63
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_issharing:Z

    return-void
.end method

.method public setParent(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 43
    iput-object p1, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_parent:Ljava/lang/String;

    return-void
.end method

.method public setScrip(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 35
    iput-object p1, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_scrip:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 31
    iput-object p1, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_token:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 39
    iput-object p1, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_userid:Ljava/lang/String;

    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 65
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 66
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 68
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 69
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    const-string v3, ""

    const-string v4, "updateattribute"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    iget-object v3, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_token:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    const-string v3, ""

    const-string v4, "scrip"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    iget-object v3, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_scrip:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    const-string v3, ""

    const-string v4, "scrip"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    iget-object v3, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_userid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    const-string v3, ""

    const-string v4, "parent"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    iget-object v3, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_parent:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    const-string v3, ""

    const-string v4, "parent"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    const-string v3, ""

    const-string v4, "display"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    iget-object v3, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_display:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    const-string v3, ""

    const-string v4, "display"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    const-string v3, ""

    const-string v4, "folder"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_folderId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    const-string v3, ""

    const-string v4, "folder"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    const-string v3, ""

    const-string v4, "issharing"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_issharing:Z

    if-eqz v3, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    const-string v3, ""

    const-string v4, "issharing"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    const-string v3, ""

    const-string v4, "isencrypted"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_isencrypted:Z

    if-eqz v3, :cond_1

    const-string v3, "1"

    :goto_1
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    const-string v3, ""

    const-string v4, "isencrypted"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string v3, ""

    const-string v4, "attribute"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    iget-object v3, p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->_attribute:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    const-string v3, ""

    const-string v4, "attribute"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    const-string v3, ""

    const-string v4, "updateattribute"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 100
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 90
    :cond_0
    const-string v3, "0"

    goto :goto_0

    .line 93
    :cond_1
    const-string v3, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 103
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 104
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
