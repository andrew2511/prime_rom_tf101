.class public Lnet/yostore/aws/api/entity/SetMarkRequest;
.super Ljava/lang/Object;
.source "SetMarkRequest.java"


# instance fields
.field private _entryid:Ljava/lang/String;

.field private _isfolder:Z

.field private _markid:Ljava/lang/String;

.field private _scrip:Ljava/lang/String;

.field private _token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_scrip:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "eid"
    .parameter "isfolder"
    .parameter "mark"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_scrip:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_token:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_entryid:Ljava/lang/String;

    .line 15
    iput-boolean p3, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_isfolder:Z

    .line 16
    iput-object p4, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_markid:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getEntryid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_entryid:Ljava/lang/String;

    return-object v0
.end method

.method public getIsfolder()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_isfolder:Z

    return v0
.end method

.method public getMarkid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_markid:Ljava/lang/String;

    return-object v0
.end method

.method public getScrip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_scrip:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public setEntryid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 34
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_entryid:Ljava/lang/String;

    return-void
.end method

.method public setIsfolder(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 30
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_isfolder:Z

    return-void
.end method

.method public setMarkid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 38
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_markid:Ljava/lang/String;

    return-void
.end method

.method public setScrip(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 26
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_scrip:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 22
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_token:Ljava/lang/String;

    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 41
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 43
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 44
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 45
    const-string v3, ""

    const-string v4, "setentrymark"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    iget-object v3, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_token:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    const-string v3, ""

    const-string v4, "scrip"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    iget-object v3, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_scrip:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    const-string v3, ""

    const-string v4, "scrip"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    const-string v3, ""

    const-string v4, "isfolder"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_isfolder:Z

    if-eqz v3, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    const-string v3, ""

    const-string v4, "isfolder"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    const-string v3, ""

    const-string v4, "entryid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    iget-object v3, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_entryid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    const-string v3, ""

    const-string v4, "entryid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    const-string v3, ""

    const-string v4, "markid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    iget-object v3, p0, Lnet/yostore/aws/api/entity/SetMarkRequest;->_markid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    const-string v3, ""

    const-string v4, "markid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    const-string v3, ""

    const-string v4, "setentrymark"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 63
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 53
    :cond_0
    const-string v3, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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
