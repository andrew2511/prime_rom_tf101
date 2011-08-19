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

.field private endtime:J

.field private pageEnable:Z

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

.field private sort:I

.field private sortByDesc:I

.field private starttime:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_scrip:Ljava/lang/String;

    .line 44
    const-string v0, "en_US"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_language:Ljava/lang/String;

    .line 56
    iput-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_computerseq:Ljava/lang/String;

    .line 60
    iput-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_fileext:Ljava/lang/String;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pageno:I

    .line 68
    const/16 v0, 0x1f4

    iput v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pagesize:I

    .line 72
    iput-boolean v2, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->pageEnable:Z

    .line 84
    iput-wide v4, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->starttime:J

    .line 96
    iput-wide v4, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->endtime:J

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->sort:I

    .line 106
    iput v2, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->sortByDesc:I

    .line 15
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->initHashMap()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "uid"
    .parameter "token"
    .parameter "folderid"
    .parameter "sort"
    .parameter "sortByDesc"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_scrip:Ljava/lang/String;

    .line 44
    const-string v0, "en_US"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_language:Ljava/lang/String;

    .line 56
    iput-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_computerseq:Ljava/lang/String;

    .line 60
    iput-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_fileext:Ljava/lang/String;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pageno:I

    .line 68
    const/16 v0, 0x1f4

    iput v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pagesize:I

    .line 72
    iput-boolean v2, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->pageEnable:Z

    .line 84
    iput-wide v4, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->starttime:J

    .line 96
    iput-wide v4, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->endtime:J

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->sort:I

    .line 106
    iput v2, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->sortByDesc:I

    .line 17
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_userid:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_token:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_folderid:Ljava/lang/String;

    .line 20
    iput p4, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->sort:I

    .line 21
    iput p5, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->sortByDesc:I

    .line 22
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->initHashMap()V

    .line 23
    return-void
.end method

.method private initHashMap()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    const-string v1, "-1"

    const-string v2, "system.my.encrypted.root"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    const-string v1, "-3"

    const-string v2, "system.backup.root"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    const-string v1, "-5"

    const-string v2, "system.sync.root"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    const-string v1, "-7"

    const-string v2, "system.oeo.root"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    const-string v1, "-13"

    const-string v2, "system.searchcriteria.root"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->r2v:Ljava/util/HashMap;

    const-string v1, "-15"

    const-string v2, "system.familymemo.root"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private map2virtual()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
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

    .line 201
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
    .line 57
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_computerseq:Ljava/lang/String;

    return-object v0
.end method

.method public getEndtime()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->endtime:J

    return-wide v0
.end method

.method public getFileext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_fileext:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_folderid:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_language:Ljava/lang/String;

    return-object v0
.end method

.method public getPageno()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pageno:I

    return v0
.end method

.method public getPagesize()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pagesize:I

    return v0
.end method

.method public getScrip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_scrip:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->sort:I

    return v0
.end method

.method public getSortByDesc()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->sortByDesc:I

    return v0
.end method

.method public getStarttime()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->starttime:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_userid:Ljava/lang/String;

    return-object v0
.end method

.method public isPageEnable()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->pageEnable:Z

    return v0
.end method

.method public setComputerseq(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 58
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_computerseq:Ljava/lang/String;

    return-void
.end method

.method public setEndtime(J)V
    .locals 0
    .parameter "endtime"

    .prologue
    .line 103
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->endtime:J

    .line 104
    return-void
.end method

.method public setFileext(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 62
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_fileext:Ljava/lang/String;

    return-void
.end method

.method public setFolderid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 54
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_folderid:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 46
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_language:Ljava/lang/String;

    return-void
.end method

.method public setPageEnable(Z)V
    .locals 0
    .parameter "pageEnable"

    .prologue
    .line 81
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->pageEnable:Z

    .line 82
    return-void
.end method

.method public setPageno(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 66
    iput p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pageno:I

    return-void
.end method

.method public setPagesize(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 70
    iput p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pagesize:I

    return-void
.end method

.method public setScrip(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 42
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_scrip:Ljava/lang/String;

    return-void
.end method

.method public setSort(I)V
    .locals 0
    .parameter "sort"

    .prologue
    .line 114
    iput p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->sort:I

    .line 115
    return-void
.end method

.method public setSortByDesc(I)V
    .locals 0
    .parameter "sortByDesc"

    .prologue
    .line 124
    iput p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->sortByDesc:I

    .line 125
    return-void
.end method

.method public setStarttime(J)V
    .locals 0
    .parameter "starttime"

    .prologue
    .line 93
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->starttime:J

    .line 94
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 38
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_token:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 50
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_userid:Ljava/lang/String;

    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 7

    .prologue
    .line 128
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 129
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 131
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 132
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 133
    const-string v3, ""

    const-string v4, "browse"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_token:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    const-string v3, ""

    const-string v4, "scrip"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_scrip:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    const-string v3, ""

    const-string v4, "scrip"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    const-string v3, ""

    const-string v4, "language"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_language:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    const-string v3, ""

    const-string v4, "language"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_userid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    const-string v3, ""

    const-string v4, "folderid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->map2virtual()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    const-string v3, ""

    const-string v4, "folderid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_computerseq:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 150
    const-string v3, ""

    const-string v4, "computerseq"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_computerseq:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    const-string v3, ""

    const-string v4, "computerseq"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    :cond_0
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_fileext:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 155
    const-string v3, ""

    const-string v4, "fileext"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    iget-object v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_fileext:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    const-string v3, ""

    const-string v4, "fileext"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    :cond_1
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->pageEnable:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pageno:I

    if-lez v3, :cond_2

    .line 160
    const-string v3, ""

    const-string v4, "page"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    const-string v3, ""

    const-string v4, "pageno"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    iget v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pageno:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    const-string v3, ""

    const-string v4, "pageno"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    const-string v3, ""

    const-string v4, "pagesize"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    iget v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->_pagesize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    const-string v3, ""

    const-string v4, "pagesize"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    const-string v3, ""

    const-string v4, "enable"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->pageEnable:Z

    if-eqz v3, :cond_4

    const-string v3, "1"

    :goto_0
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    const-string v3, ""

    const-string v4, "enable"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    const-string v3, ""

    const-string v4, "page"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    :cond_2
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->endtime:J

    iget-wide v5, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->starttime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    iget-wide v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->starttime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    iget-wide v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->starttime:J

    const-wide v5, 0x46b4107a6988d8L

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 173
    const-string v3, ""

    const-string v4, "filter"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    const-string v3, ""

    const-string v4, "starttime"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->starttime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    const-string v3, ""

    const-string v4, "starttime"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    const-string v3, ""

    const-string v4, "endtime"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->endtime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    const-string v3, ""

    const-string v4, "endtime"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    const-string v3, ""

    const-string v4, "filter"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    :cond_3
    const-string v3, ""

    const-string v4, "sortby"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    iget v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->sort:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    const-string v3, ""

    const-string v4, "sortby"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    const-string v3, ""

    const-string v4, "sortdirection"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    iget v3, p0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->sortByDesc:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    const-string v3, ""

    const-string v4, "sortdirection"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    const-string v3, ""

    const-string v4, "browse"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 191
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 168
    :cond_4
    const-string v3, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 194
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 195
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
