.class public Lnet/yostore/aws/api/entity/FolderRenameRequest;
.super Ljava/lang/Object;
.source "FolderRenameRequest.java"


# instance fields
.field private _display:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field private _isencrypted:Z

.field private _issharing:Z

.field private _scrip:Ljava/lang/String;

.field private _token:Ljava/lang/String;

.field private _userid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_scrip:Ljava/lang/String;

    .line 40
    iput-boolean v2, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_isencrypted:Z

    .line 44
    iput-boolean v2, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_issharing:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 3
    .parameter "uid"
    .parameter "token"
    .parameter "folderid"
    .parameter "isencrypted"
    .parameter "issharing"
    .parameter "display"

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_scrip:Ljava/lang/String;

    .line 40
    iput-boolean v2, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_isencrypted:Z

    .line 44
    iput-boolean v2, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_issharing:Z

    .line 16
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_userid:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_token:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_id:Ljava/lang/String;

    .line 19
    iput-boolean p4, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_isencrypted:Z

    .line 20
    iput-boolean p5, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_issharing:Z

    .line 21
    iput-object p6, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_display:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_display:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsencrypted()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_isencrypted:Z

    return v0
.end method

.method public getIssharing()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_issharing:Z

    return v0
.end method

.method public getScrip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_scrip:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_userid:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 50
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_display:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 38
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_id:Ljava/lang/String;

    return-void
.end method

.method public setIsencrypted(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 42
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_isencrypted:Z

    return-void
.end method

.method public setIssharing(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 46
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_issharing:Z

    return-void
.end method

.method public setScrip(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 30
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_scrip:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 26
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_token:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 34
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_userid:Ljava/lang/String;

    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 53
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 54
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 56
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 57
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 58
    const-string v3, ""

    const-string v4, "rename"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_token:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    const-string v3, ""

    const-string v4, "scrip"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_scrip:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    const-string v3, ""

    const-string v4, "scrip"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_userid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    const-string v3, ""

    const-string v4, "id"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_id:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    const-string v3, ""

    const-string v4, "id"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    const-string v3, ""

    const-string v4, "isencrypted"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_isencrypted:Z

    if-eqz v3, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    const-string v3, ""

    const-string v4, "isencrypted"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    const-string v3, ""

    const-string v4, "issharing"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_issharing:Z

    if-eqz v3, :cond_1

    const-string v3, "1"

    :goto_1
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    const-string v3, ""

    const-string v4, "issharing"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    const-string v3, ""

    const-string v4, "display"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderRenameRequest;->_display:Ljava/lang/String;

    invoke-static {v3}, Lcom/ecareme/utils/codec/Base64;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const-string v3, ""

    const-string v4, "display"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    const-string v3, ""

    const-string v4, "rename"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 82
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 72
    :cond_0
    const-string v3, "0"

    goto :goto_0

    .line 75
    :cond_1
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 85
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 86
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
