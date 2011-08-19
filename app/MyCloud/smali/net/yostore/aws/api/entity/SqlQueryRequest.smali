.class public Lnet/yostore/aws/api/entity/SqlQueryRequest;
.super Ljava/lang/Object;
.source "SqlQueryRequest.java"


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$api$entity$FulltextQueryRequest$Kind:[I


# instance fields
.field private ancestorid:Ljava/lang/String;

.field private ext:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

.field private markid:Ljava/lang/String;

.field private offset:I

.field private pagesize:I

.field private token:Ljava/lang/String;

.field private userid:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$api$entity$FulltextQueryRequest$Kind()[I
    .locals 3

    .prologue
    .line 12
    sget-object v0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->$SWITCH_TABLE$net$yostore$aws$api$entity$FulltextQueryRequest$Kind:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->values()[Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FOLDER:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->$SWITCH_TABLE$net$yostore$aws$api$entity$FulltextQueryRequest$Kind:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "userid"
    .parameter "token"
    .parameter "keyword"
    .parameter "markid"
    .parameter "pagesize"
    .parameter "offset"
    .parameter "kind"
    .parameter "ext"
    .parameter "ancestorid"

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->userid:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->token:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->keyword:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->markid:Ljava/lang/String;

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->pagesize:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->offset:I

    .line 36
    sget-object v0, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    iput-object v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 37
    iput-object v1, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->ext:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->ancestorid:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->userid:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, p2}, Lnet/yostore/aws/api/entity/SqlQueryRequest;->setToken(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "%"

    :goto_0
    iput-object v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->keyword:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p4}, Lnet/yostore/aws/api/entity/SqlQueryRequest;->setMarkid(Ljava/lang/String;)V

    .line 21
    iput p5, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->pagesize:I

    .line 22
    iput p6, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->offset:I

    .line 23
    iput-object p7, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 24
    if-nez p8, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->ext:Ljava/lang/String;

    .line 25
    iput-object p9, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->ancestorid:Ljava/lang/String;

    .line 26
    return-void

    :cond_0
    move-object v0, p3

    .line 19
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getAncestorid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->ancestorid:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    return-object v0
.end method

.method public getMarkid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->markid:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->offset:I

    return v0
.end method

.method public getPagesize()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->pagesize:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public setAncestorid(Ljava/lang/String;)V
    .locals 0
    .parameter "ancestorid"

    .prologue
    .line 50
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->ancestorid:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 1
    .parameter "ext"

    .prologue
    .line 132
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->ext:Ljava/lang/String;

    .line 133
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 2
    .parameter "keyword"

    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "%"

    :goto_0
    iput-object v0, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->keyword:Ljava/lang/String;

    .line 79
    return-void

    :cond_0
    move-object v0, p1

    .line 78
    goto :goto_0
.end method

.method public setKind(Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;)V
    .locals 0
    .parameter "kind"

    .prologue
    .line 118
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 119
    return-void
.end method

.method public setMarkid(Ljava/lang/String;)V
    .locals 0
    .parameter "markid"

    .prologue
    .line 236
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->markid:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 104
    iput p1, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->offset:I

    .line 105
    return-void
.end method

.method public setPagesize(I)V
    .locals 0
    .parameter "pagesize"

    .prologue
    .line 90
    iput p1, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->pagesize:I

    .line 91
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 222
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->token:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .parameter "userid"

    .prologue
    .line 64
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->userid:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 136
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 137
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 139
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 140
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 141
    const-string v3, ""

    const-string v4, "sqlquery"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    iget-object v3, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->userid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    iget-object v3, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->markid:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->markid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 147
    const-string v3, ""

    const-string v4, "markid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    iget-object v3, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->markid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const-string v3, ""

    const-string v4, "markid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    :goto_0
    const-string v3, ""

    const-string v4, "pagesize"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    iget v3, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->pagesize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    const-string v3, ""

    const-string v4, "pagesize"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    const-string v3, ""

    const-string v4, "offset"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    iget v3, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->offset:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    const-string v3, ""

    const-string v4, "offset"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    const-string v3, ""

    const-string v4, "kind"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    invoke-static {}, Lnet/yostore/aws/api/entity/SqlQueryRequest;->$SWITCH_TABLE$net$yostore$aws$api$entity$FulltextQueryRequest$Kind()[I

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 174
    :goto_1
    const-string v3, ""

    const-string v4, "kind"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    iget-object v3, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->ancestorid:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 177
    const-string v3, ""

    const-string v4, "ancestorid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    iget-object v3, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->ancestorid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    const-string v3, ""

    const-string v4, "ancestorid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    :cond_0
    iget-object v3, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->ext:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->ext:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 183
    const-string v3, ""

    const-string v4, "ext"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    iget-object v3, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->ext:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    const-string v3, ""

    const-string v4, "ext"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    :cond_1
    const-string v3, ""

    const-string v4, "sqlquery"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 190
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

    move-result-object v3

    return-object v3

    .line 152
    :cond_2
    const-string v3, ""

    const-string v4, "keyword"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    iget-object v3, p0, Lnet/yostore/aws/api/entity/SqlQueryRequest;->keyword:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    const-string v3, ""

    const-string v4, "keyword"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 192
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 193
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 165
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_0
    :try_start_1
    const-string v3, "0"

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 168
    :pswitch_1
    const-string v3, "1"

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 171
    :pswitch_2
    const-string v3, "2"

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
