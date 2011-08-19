.class public Lnet/yostore/aws/api/entity/FolderInfo;
.super Ljava/lang/Object;
.source "FolderInfo.java"


# instance fields
.field private _attribute:Ljava/lang/String;

.field private _createdtime:Ljava/lang/String;

.field private _display:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field private _isbackup:Z

.field private _isencrypted:Z

.field private _isorigdeleted:Z

.field private _isowner:Z

.field private _ispublic:Z

.field private _issharing:Z

.field private _markid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_attribute:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_createdtime:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_display:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsbackup()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_isbackup:Z

    return v0
.end method

.method public getIsencrypted()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_isencrypted:Z

    return v0
.end method

.method public getIsorigdeleted()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_isorigdeleted:Z

    return v0
.end method

.method public getIsowner()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_isowner:Z

    return v0
.end method

.method public getIspublic()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_ispublic:Z

    return v0
.end method

.method public getIssharing()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_issharing:Z

    return v0
.end method

.method public getMarkid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_markid:Ljava/lang/String;

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 20
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_attribute:Ljava/lang/String;

    return-void
.end method

.method public setCreatedtime(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 48
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_createdtime:Ljava/lang/String;

    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 16
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_display:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 12
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_id:Ljava/lang/String;

    return-void
.end method

.method public setIsbackup(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 36
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_isbackup:Z

    return-void
.end method

.method public setIsencrypted(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 28
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_isencrypted:Z

    return-void
.end method

.method public setIsorigdeleted(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 40
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_isorigdeleted:Z

    return-void
.end method

.method public setIsowner(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 32
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_isowner:Z

    return-void
.end method

.method public setIspublic(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 44
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_ispublic:Z

    return-void
.end method

.method public setIssharing(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 24
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_issharing:Z

    return-void
.end method

.method public setMarkid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 52
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_markid:Ljava/lang/String;

    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 54
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 55
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 57
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 58
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 59
    const-string v3, ""

    const-string v4, "folder"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    const-string v3, ""

    const-string v4, "id"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_id:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    const-string v3, ""

    const-string v4, "id"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    const-string v3, ""

    const-string v4, "display"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_display:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    const-string v3, ""

    const-string v4, "display"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    const-string v3, ""

    const-string v4, "attribute"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_attribute:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    const-string v3, ""

    const-string v4, "attribute"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    const-string v3, ""

    const-string v4, "issharing"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_issharing:Z

    if-eqz v3, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    const-string v3, ""

    const-string v4, "issharing"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    const-string v3, ""

    const-string v4, "isencrypted"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_isencrypted:Z

    if-eqz v3, :cond_1

    const-string v3, "1"

    :goto_1
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    const-string v3, ""

    const-string v4, "isencrypted"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    const-string v3, ""

    const-string v4, "isowner"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_isowner:Z

    if-eqz v3, :cond_2

    const-string v3, "1"

    :goto_2
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    const-string v3, ""

    const-string v4, "isowner"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    const-string v3, ""

    const-string v4, "isbackup"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_isbackup:Z

    if-eqz v3, :cond_3

    const-string v3, "1"

    :goto_3
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    const-string v3, ""

    const-string v4, "isbackup"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    const-string v3, ""

    const-string v4, "isorigdeleted"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_isorigdeleted:Z

    if-eqz v3, :cond_4

    const-string v3, "1"

    :goto_4
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    const-string v3, ""

    const-string v4, "isorigdeleted"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    const-string v3, ""

    const-string v4, "ispublic"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_ispublic:Z

    if-eqz v3, :cond_5

    const-string v3, "1"

    :goto_5
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    const-string v3, ""

    const-string v4, "ispublic"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    const-string v3, ""

    const-string v4, "createdtime"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_createdtime:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    const-string v3, ""

    const-string v4, "createdtime"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    const-string v3, ""

    const-string v4, "markid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderInfo;->_markid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    const-string v3, ""

    const-string v4, "markid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    const-string v3, ""

    const-string v4, "folder"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 95
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 70
    :cond_0
    const-string v3, "0"

    goto/16 :goto_0

    .line 73
    :cond_1
    const-string v3, "0"

    goto/16 :goto_1

    .line 76
    :cond_2
    const-string v3, "0"

    goto/16 :goto_2

    .line 79
    :cond_3
    const-string v3, "0"

    goto :goto_3

    .line 82
    :cond_4
    const-string v3, "0"

    goto :goto_4

    .line 85
    :cond_5
    const-string v3, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 96
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 97
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
