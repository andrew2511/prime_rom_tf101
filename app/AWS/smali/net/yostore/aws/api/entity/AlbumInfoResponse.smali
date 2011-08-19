.class public Lnet/yostore/aws/api/entity/AlbumInfoResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "AlbumInfoResponse.java"


# instance fields
.field private bt:I

.field private in:I

.field private mfi:J

.field private or:I

.field private pw:Ljava/lang/String;

.field private ss:I

.field private st:J

.field private sty:I

.field private su:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/ApiResponse;-><init>()V

    .line 33
    iput v2, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->ss:I

    .line 34
    iput v2, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->bt:I

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->st:J

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->pw:Ljava/lang/String;

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->in:I

    .line 38
    iput v2, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->sty:I

    .line 39
    iput v2, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->or:I

    .line 40
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->mfi:J

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->su:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getBt()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->bt:I

    return v0
.end method

.method public getIn()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->in:I

    return v0
.end method

.method public getMfi()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->mfi:J

    return-wide v0
.end method

.method public getOr()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->or:I

    return v0
.end method

.method public getPw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->pw:Ljava/lang/String;

    return-object v0
.end method

.method public getSs()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->ss:I

    return v0
.end method

.method public getSt()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->st:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getSty()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->sty:I

    return v0
.end method

.method public getSu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->su:Ljava/lang/String;

    return-object v0
.end method

.method public setBt(I)V
    .locals 0
    .parameter "bt"

    .prologue
    .line 85
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->bt:I

    .line 86
    return-void
.end method

.method public setIn(I)V
    .locals 0
    .parameter "in"

    .prologue
    .line 145
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->in:I

    .line 146
    return-void
.end method

.method public setMfi(J)V
    .locals 0
    .parameter "mfi"

    .prologue
    .line 193
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->mfi:J

    .line 194
    return-void
.end method

.method public setOr(I)V
    .locals 0
    .parameter "or"

    .prologue
    .line 179
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->or:I

    .line 180
    return-void
.end method

.method public setPw(Ljava/lang/String;)V
    .locals 0
    .parameter "pw"

    .prologue
    .line 125
    iput-object p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->pw:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setSs(I)V
    .locals 0
    .parameter "ss"

    .prologue
    .line 65
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->ss:I

    .line 66
    return-void
.end method

.method public setSt(J)V
    .locals 0
    .parameter "st"

    .prologue
    .line 105
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->st:J

    .line 106
    return-void
.end method

.method public setSty(I)V
    .locals 0
    .parameter "sty"

    .prologue
    .line 165
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->sty:I

    .line 166
    return-void
.end method

.method public setSu(Ljava/lang/String;)V
    .locals 0
    .parameter "su"

    .prologue
    .line 207
    iput-object p1, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->su:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 213
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 214
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 216
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 217
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 218
    const-string v3, ""

    const-string v4, "pixwe_ai"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    const-string v3, ""

    const-string v4, "ss"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->ss:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    const-string v3, ""

    const-string v4, "ss"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    const-string v3, ""

    const-string v4, "bt"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->bt:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    const-string v3, ""

    const-string v4, "bt"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    const-string v3, ""

    const-string v4, "st"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->st:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    const-string v3, ""

    const-string v4, "st"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    const-string v3, ""

    const-string v4, "pw"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    iget-object v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->pw:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    const-string v3, ""

    const-string v4, "pw"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    const-string v3, ""

    const-string v4, "in"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->in:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    const-string v3, ""

    const-string v4, "in"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    const-string v3, ""

    const-string v4, "sty"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->sty:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    const-string v3, ""

    const-string v4, "sty"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    const-string v3, ""

    const-string v4, "or"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->or:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    const-string v3, ""

    const-string v4, "or"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    const-string v3, ""

    const-string v4, "mfi"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->mfi:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    const-string v3, ""

    const-string v4, "mfi"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    const-string v3, ""

    const-string v4, "su"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    iget-object v3, p0, Lnet/yostore/aws/api/entity/AlbumInfoResponse;->su:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    const-string v3, ""

    const-string v4, "su"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    const-string v3, ""

    const-string v4, "pixwe_ai"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 258
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 259
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 260
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
