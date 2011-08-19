.class public Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;
.super Ljava/lang/Object;
.source "GetSharedEntriesRequest.java"


# instance fields
.field private _token:Ljava/lang/String;

.field public firstentrybound:Ljava/lang/String;

.field public kind:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

.field public pagesize:I

.field public sortby:I

.field public sortdirection:I

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/entity/EntryInfo$KIND;IIILjava/lang/String;)V
    .locals 0
    .parameter "userId"
    .parameter "token"
    .parameter "kind"
    .parameter "pagesize"
    .parameter "sortby"
    .parameter "sortdirection"
    .parameter "firstentrybound"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->_token:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->userId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->kind:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    .line 29
    iput p4, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->pagesize:I

    .line 30
    iput p5, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->sortby:I

    .line 31
    iput p6, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->sortdirection:I

    .line 32
    iput-object p7, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->firstentrybound:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getFirstentrybound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->firstentrybound:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Lnet/yostore/aws/api/entity/EntryInfo$KIND;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->kind:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    return-object v0
.end method

.method public getPagesize()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->pagesize:I

    return v0
.end method

.method public getSortby()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->sortby:I

    return v0
.end method

.method public getSortdirection()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->sortdirection:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setFirstentrybound(Ljava/lang/String;)V
    .locals 0
    .parameter "firstentrybound"

    .prologue
    .line 119
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->firstentrybound:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setKind(Lnet/yostore/aws/api/entity/EntryInfo$KIND;)V
    .locals 0
    .parameter "kind"

    .prologue
    .line 87
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->kind:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    .line 88
    return-void
.end method

.method public setPagesize(I)V
    .locals 0
    .parameter "pagesize"

    .prologue
    .line 95
    iput p1, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->pagesize:I

    .line 96
    return-void
.end method

.method public setSortby(I)V
    .locals 0
    .parameter "sortby"

    .prologue
    .line 103
    iput p1, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->sortby:I

    .line 104
    return-void
.end method

.method public setSortdirection(I)V
    .locals 0
    .parameter "sortdirection"

    .prologue
    .line 111
    iput p1, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->sortdirection:I

    .line 112
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 64
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->_token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 79
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->userId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 123
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 125
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 126
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 127
    const-string v3, ""

    const-string v4, "getsharedentries"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    iget-object v3, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->userId:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    iget-object v3, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->_token:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const-string v3, ""

    const-string v4, "kind"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    iget-object v3, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->kind:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    const-string v3, ""

    const-string v4, "kind"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    const-string v3, ""

    const-string v4, "pagesize"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    iget v3, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->pagesize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    const-string v3, ""

    const-string v4, "pagesize"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    const-string v3, ""

    const-string v4, "sortby"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    iget v3, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->sortby:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    const-string v3, ""

    const-string v4, "sortby"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    const-string v3, ""

    const-string v4, "sortdirection"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    iget v3, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->sortdirection:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    const-string v3, ""

    const-string v4, "sortdirection"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    const-string v3, ""

    const-string v4, "firstentrybound"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    iget-object v3, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->firstentrybound:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const-string v3, ""

    const-string v4, "firstentrybound"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    const-string v3, ""

    const-string v4, "getsharedentries"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 153
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 156
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 157
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
