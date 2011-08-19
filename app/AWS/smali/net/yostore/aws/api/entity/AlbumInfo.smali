.class public Lnet/yostore/aws/api/entity/AlbumInfo;
.super Ljava/lang/Object;
.source "AlbumInfo.java"


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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v2, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->ss:I

    .line 29
    iput v2, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->bt:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->st:J

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->pw:Ljava/lang/String;

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->in:I

    .line 33
    iput v2, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->sty:I

    .line 34
    iput v2, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->or:I

    .line 35
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->mfi:J

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->su:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public getBt()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->bt:I

    return v0
.end method

.method public getIn()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->in:I

    return v0
.end method

.method public getMfi()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->mfi:J

    return-wide v0
.end method

.method public getOr()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->or:I

    return v0
.end method

.method public getPw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->pw:Ljava/lang/String;

    return-object v0
.end method

.method public getSs()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->ss:I

    return v0
.end method

.method public getSt()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->st:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getSty()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->sty:I

    return v0
.end method

.method public getSu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->su:Ljava/lang/String;

    return-object v0
.end method

.method public setBt(I)V
    .locals 0
    .parameter "bt"

    .prologue
    .line 80
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->bt:I

    .line 81
    return-void
.end method

.method public setIn(I)V
    .locals 0
    .parameter "in"

    .prologue
    .line 140
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->in:I

    .line 141
    return-void
.end method

.method public setMfi(J)V
    .locals 0
    .parameter "mfi"

    .prologue
    .line 162
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->mfi:J

    .line 163
    return-void
.end method

.method public setOr(I)V
    .locals 0
    .parameter "or"

    .prologue
    .line 174
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->or:I

    .line 175
    return-void
.end method

.method public setPw(Ljava/lang/String;)V
    .locals 0
    .parameter "pw"

    .prologue
    .line 120
    iput-object p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->pw:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setSs(I)V
    .locals 0
    .parameter "ss"

    .prologue
    .line 60
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->ss:I

    .line 61
    return-void
.end method

.method public setSt(J)V
    .locals 0
    .parameter "st"

    .prologue
    .line 100
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->st:J

    .line 101
    return-void
.end method

.method public setSty(I)V
    .locals 0
    .parameter "sty"

    .prologue
    .line 196
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->sty:I

    .line 197
    return-void
.end method

.method public setSu(Ljava/lang/String;)V
    .locals 0
    .parameter "su"

    .prologue
    .line 186
    iput-object p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->su:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 7

    .prologue
    .line 200
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 201
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 203
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 204
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 205
    const-string v3, ""

    const-string v4, "pixwe_ai"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    const-string v3, ""

    const-string v4, "ss"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->ss:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    const-string v3, ""

    const-string v4, "ss"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    const-string v3, ""

    const-string v4, "bt"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->bt:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    const-string v3, ""

    const-string v4, "bt"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    const-string v3, ""

    const-string v4, "st"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->st:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    const-string v3, ""

    const-string v4, "st"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    const-string v3, ""

    const-string v4, "pw"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    iget-object v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->pw:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    const-string v3, ""

    const-string v4, "pw"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    const-string v3, ""

    const-string v4, "in"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->in:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    const-string v3, ""

    const-string v4, "in"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    const-string v3, ""

    const-string v4, "sty"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->sty:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    const-string v3, ""

    const-string v4, "sty"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    const-string v3, ""

    const-string v4, "or"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->or:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    const-string v3, ""

    const-string v4, "or"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->mfi:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 236
    const-string v3, ""

    const-string v4, "mfi"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->mfi:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    const-string v3, ""

    const-string v4, "mfi"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    :cond_0
    const-string v3, ""

    const-string v4, "su"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    iget-object v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->su:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    const-string v3, ""

    const-string v4, "su"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    const-string v3, ""

    const-string v4, "pixwe_ai"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 247
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 248
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 249
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
