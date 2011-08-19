.class public Lnet/yostore/aws/api/entity/AlbumInfoResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "AlbumInfoResponse.java"


# instance fields
.field private bt:I

.field private in:I

.field private pw:Ljava/lang/String;

.field private ss:I

.field private st:J

.field private sty:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/ApiResponse;-><init>()V

    .line 27
    iput v2, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->ss:I

    .line 28
    iput v2, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->bt:I

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->st:J

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->pw:Ljava/lang/String;

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->in:I

    .line 32
    iput v2, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->sty:I

    .line 9
    return-void
.end method


# virtual methods
.method public getBt()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->bt:I

    return v0
.end method

.method public getIn()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->in:I

    return v0
.end method

.method public getPw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->pw:Ljava/lang/String;

    return-object v0
.end method

.method public getSs()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->ss:I

    return v0
.end method

.method public getSt()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->st:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getSty()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->sty:I

    return v0
.end method

.method public setBt(I)V
    .locals 0
    .parameter "bt"

    .prologue
    .line 76
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->bt:I

    .line 77
    return-void
.end method

.method public setIn(I)V
    .locals 0
    .parameter "in"

    .prologue
    .line 136
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->in:I

    .line 137
    return-void
.end method

.method public setPw(Ljava/lang/String;)V
    .locals 0
    .parameter "pw"

    .prologue
    .line 116
    iput-object p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->pw:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setSs(I)V
    .locals 0
    .parameter "ss"

    .prologue
    .line 56
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->ss:I

    .line 57
    return-void
.end method

.method public setSt(J)V
    .locals 0
    .parameter "st"

    .prologue
    .line 96
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->st:J

    .line 97
    return-void
.end method

.method public setSty(I)V
    .locals 0
    .parameter "sty"

    .prologue
    .line 156
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->sty:I

    .line 157
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 162
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 163
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 165
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 166
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 167
    const-string v3, ""

    const-string v4, "ai"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    const-string v3, ""

    const-string v4, "ss"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->ss:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    const-string v3, ""

    const-string v4, "ss"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    const-string v3, ""

    const-string v4, "bt"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->bt:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    const-string v3, ""

    const-string v4, "bt"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    const-string v3, ""

    const-string v4, "st"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->st:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    const-string v3, ""

    const-string v4, "st"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    const-string v3, ""

    const-string v4, "pw"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    iget-object v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->pw:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    const-string v3, ""

    const-string v4, "pw"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    const-string v3, ""

    const-string v4, "in"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->in:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    const-string v3, ""

    const-string v4, "in"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    const-string v3, ""

    const-string v4, "sty"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->sty:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    const-string v3, ""

    const-string v4, "sty"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    const-string v3, ""

    const-string v4, "ai"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 195
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 196
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 197
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
