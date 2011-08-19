.class public Lnet/yostore/aws/api/entity/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field private _attribute:Lnet/yostore/aws/api/entity/Attribute;

.field private _createdtime:Ljava/lang/String;

.field private _display:Ljava/lang/String;

.field private _headversion:I

.field private _id:Ljava/lang/String;

.field private _isbackup:Z

.field private _isencrypted:Z

.field private _isinfected:Z

.field private _isorigdeleted:Z

.field private _isowner:Z

.field private _ispublic:Z

.field private _markid:Ljava/lang/String;

.field private _size:J

.field private _status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttribute()Lnet/yostore/aws/api/entity/Attribute;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FileInfo;->_attribute:Lnet/yostore/aws/api/entity/Attribute;

    return-object v0
.end method

.method public getCreatedtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FileInfo;->_createdtime:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FileInfo;->_display:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadversion()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lnet/yostore/aws/api/entity/FileInfo;->_headversion:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FileInfo;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsbackup()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isbackup:Z

    return v0
.end method

.method public getIsencrypted()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isencrypted:Z

    return v0
.end method

.method public getIsinfected()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isinfected:Z

    return v0
.end method

.method public getIsorigdeleted()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isorigdeleted:Z

    return v0
.end method

.method public getIsowner()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isowner:Z

    return v0
.end method

.method public getIspublic()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FileInfo;->_ispublic:Z

    return v0
.end method

.method public getMarkid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FileInfo;->_markid:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/FileInfo;->_size:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lnet/yostore/aws/api/entity/FileInfo;->_status:I

    return v0
.end method

.method public setAttribute(Lnet/yostore/aws/api/entity/Attribute;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 24
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FileInfo;->_attribute:Lnet/yostore/aws/api/entity/Attribute;

    return-void
.end method

.method public setCreatedtime(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 60
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FileInfo;->_createdtime:Ljava/lang/String;

    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 20
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FileInfo;->_display:Ljava/lang/String;

    return-void
.end method

.method public setHeadversion(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 56
    iput p1, p0, Lnet/yostore/aws/api/entity/FileInfo;->_headversion:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 12
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FileInfo;->_id:Ljava/lang/String;

    return-void
.end method

.method public setIsbackup(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 40
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isbackup:Z

    return-void
.end method

.method public setIsencrypted(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 28
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isencrypted:Z

    return-void
.end method

.method public setIsinfected(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 48
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isinfected:Z

    return-void
.end method

.method public setIsorigdeleted(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 44
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isorigdeleted:Z

    return-void
.end method

.method public setIsowner(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 36
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isowner:Z

    return-void
.end method

.method public setIspublic(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 52
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FileInfo;->_ispublic:Z

    return-void
.end method

.method public setMarkid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 64
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FileInfo;->_markid:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 32
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/FileInfo;->_size:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 16
    iput p1, p0, Lnet/yostore/aws/api/entity/FileInfo;->_status:I

    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 66
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 67
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 69
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 70
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 71
    const-string v3, ""

    const-string v4, "file"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    const-string v3, ""

    const-string v4, "id"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FileInfo;->_id:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    const-string v3, ""

    const-string v4, "id"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    const-string v3, ""

    const-string v4, "status"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    iget v3, p0, Lnet/yostore/aws/api/entity/FileInfo;->_status:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    const-string v3, ""

    const-string v4, "status"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    const-string v3, ""

    const-string v4, "display"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FileInfo;->_display:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    const-string v3, ""

    const-string v4, "display"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    const-string v3, ""

    const-string v4, "attribute"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FileInfo;->_attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/Attribute;->toXml()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    const-string v3, ""

    const-string v4, "attribute"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    const-string v3, ""

    const-string v4, "isencrypted"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isencrypted:Z

    if-eqz v3, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    const-string v3, ""

    const-string v4, "isencrypted"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    const-string v3, ""

    const-string v4, "size"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/FileInfo;->_size:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    const-string v3, ""

    const-string v4, "size"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    const-string v3, ""

    const-string v4, "isowner"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isowner:Z

    if-eqz v3, :cond_1

    const-string v3, "1"

    :goto_1
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    const-string v3, ""

    const-string v4, "isowner"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    const-string v3, ""

    const-string v4, "isbackup"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isbackup:Z

    if-eqz v3, :cond_2

    const-string v3, "1"

    :goto_2
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string v3, ""

    const-string v4, "isbackup"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    const-string v3, ""

    const-string v4, "isorigdeleted"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isorigdeleted:Z

    if-eqz v3, :cond_3

    const-string v3, "1"

    :goto_3
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    const-string v3, ""

    const-string v4, "isorigdeleted"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string v3, ""

    const-string v4, "isinfected"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FileInfo;->_isinfected:Z

    if-eqz v3, :cond_4

    const-string v3, "1"

    :goto_4
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    const-string v3, ""

    const-string v4, "isinfected"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    const-string v3, ""

    const-string v4, "ispublic"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FileInfo;->_ispublic:Z

    if-eqz v3, :cond_5

    const-string v3, "1"

    :goto_5
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    const-string v3, ""

    const-string v4, "ispublic"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    const-string v3, ""

    const-string v4, "headversion"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    iget v3, p0, Lnet/yostore/aws/api/entity/FileInfo;->_headversion:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    const-string v3, ""

    const-string v4, "headversion"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    const-string v3, ""

    const-string v4, "createdtime"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FileInfo;->_createdtime:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    const-string v3, ""

    const-string v4, "createdtime"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    const-string v3, ""

    const-string v4, "markid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FileInfo;->_markid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    const-string v3, ""

    const-string v4, "markid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    const-string v3, ""

    const-string v4, "file"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 116
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 85
    :cond_0
    const-string v3, "0"

    goto/16 :goto_0

    .line 91
    :cond_1
    const-string v3, "0"

    goto/16 :goto_1

    .line 94
    :cond_2
    const-string v3, "0"

    goto/16 :goto_2

    .line 97
    :cond_3
    const-string v3, "0"

    goto/16 :goto_3

    .line 100
    :cond_4
    const-string v3, "0"

    goto :goto_4

    .line 103
    :cond_5
    const-string v3, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 117
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 118
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
