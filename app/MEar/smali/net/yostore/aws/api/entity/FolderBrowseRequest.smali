.class public Lnet/yostore/aws/api/entity/FolderBrowseRequest;
.super Ljava/lang/Object;
.source "FolderBrowseRequest.java"


# instance fields
.field private _computerseq:Ljava/lang/String;

.field private _fileext:Ljava/lang/String;

.field private _folderid:Ljava/lang/String;

.field private _language:Ljava/lang/String;

.field private _pageno:I

.field private _pagesize:I

.field private _scrip:Ljava/lang/String;

.field private _token:Ljava/lang/String;

.field private _userid:Ljava/lang/String;

.field private r2v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_scrip:Ljava/lang/String;

    .line 42
    const-string v0, "en_US"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_language:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_computerseq:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_fileext:Ljava/lang/String;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pageno:I

    .line 66
    const/16 v0, 0x1f4

    iput v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pagesize:I

    .line 15
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->initHashMap()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uid"
    .parameter "token"
    .parameter "folderid"

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_scrip:Ljava/lang/String;

    .line 42
    const-string v0, "en_US"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_language:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_computerseq:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_fileext:Ljava/lang/String;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pageno:I

    .line 66
    const/16 v0, 0x1f4

    iput v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pagesize:I

    .line 17
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_userid:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_token:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_folderid:Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->initHashMap()V

    .line 21
    return-void
.end method

.method private initHashMap()V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    const-string v1, "-1"

    const-string v2, "system.my.encrypted.root"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    const-string v1, "-3"

    const-string v2, "system.backup.root"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    const-string v1, "-5"

    const-string v2, "system.sync.root"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    const-string v1, "-7"

    const-string v2, "system.oeo.root"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    const-string v1, "-13"

    const-string v2, "system.searchcriteria.root"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    const-string v1, "-15"

    const-string v2, "system.familymemo.root"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private map2virtual()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_folderid:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    iget-object v1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_folderid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 124
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_folderid:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getComputerseq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_computerseq:Ljava/lang/String;

    return-object v0
.end method

.method public getFileext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_fileext:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_folderid:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_language:Ljava/lang/String;

    return-object v0
.end method

.method public getPageno()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pageno:I

    return v0
.end method

.method public getPagesize()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pagesize:I

    return v0
.end method

.method public getScrip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_scrip:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_userid:Ljava/lang/String;

    return-object v0
.end method

.method public setComputerseq(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 56
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_computerseq:Ljava/lang/String;

    return-void
.end method

.method public setFileext(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 60
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_fileext:Ljava/lang/String;

    return-void
.end method

.method public setFolderid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 52
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_folderid:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 44
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_language:Ljava/lang/String;

    return-void
.end method

.method public setPageno(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 64
    iput p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pageno:I

    return-void
.end method

.method public setPagesize(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 68
    iput p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pagesize:I

    return-void
.end method

.method public setScrip(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 40
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_scrip:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 36
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_token:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 48
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_userid:Ljava/lang/String;

    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 71
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 72
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 74
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 75
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 76
    const-string v3, ""

    const-string v4, "browse"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_token:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    const-string v3, ""

    const-string v4, "scrip"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_scrip:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    const-string v3, ""

    const-string v4, "scrip"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    const-string v3, ""

    const-string v4, "language"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_language:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    const-string v3, ""

    const-string v4, "language"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_userid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    const-string v3, ""

    const-string v4, "folderid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->map2virtual()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    const-string v3, ""

    const-string v4, "folderid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_computerseq:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 93
    const-string v3, ""

    const-string v4, "computerseq"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_computerseq:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string v3, ""

    const-string v4, "computerseq"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    :cond_0
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_fileext:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 98
    const-string v3, ""

    const-string v4, "fileext"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_fileext:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    const-string v3, ""

    const-string v4, "fileext"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    :cond_1
    iget v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pageno:I

    if-lez v3, :cond_2

    .line 103
    const-string v3, ""

    const-string v4, "page"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    const-string v3, ""

    const-string v4, "pageno"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    iget v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pageno:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    const-string v3, ""

    const-string v4, "pageno"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    const-string v3, ""

    const-string v4, "pagesize"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    iget v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pagesize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    const-string v3, ""

    const-string v4, "pagesize"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    const-string v3, ""

    const-string v4, "page"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    :cond_2
    const-string v3, ""

    const-string v4, "browse"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 115
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
