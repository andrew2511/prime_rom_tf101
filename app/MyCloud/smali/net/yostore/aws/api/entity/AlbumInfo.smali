.class public Lnet/yostore/aws/api/entity/AlbumInfo;
.super Ljava/lang/Object;
.source "AlbumInfo.java"


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v2, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->ss:I

    .line 27
    iput v2, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->bt:I

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->st:J

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->pw:Ljava/lang/String;

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->in:I

    .line 31
    iput v2, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->sty:I

    .line 9
    return-void
.end method


# virtual methods
.method public getBt()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->bt:I

    return v0
.end method

.method public getIn()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->in:I

    return v0
.end method

.method public getPw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->pw:Ljava/lang/String;

    return-object v0
.end method

.method public getSs()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->ss:I

    return v0
.end method

.method public getSt()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->st:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getSty()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->sty:I

    return v0
.end method

.method public setBt(I)V
    .locals 0
    .parameter "bt"

    .prologue
    .line 75
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->bt:I

    .line 76
    return-void
.end method

.method public setIn(I)V
    .locals 0
    .parameter "in"

    .prologue
    .line 135
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->in:I

    .line 136
    return-void
.end method

.method public setPw(Ljava/lang/String;)V
    .locals 0
    .parameter "pw"

    .prologue
    .line 115
    iput-object p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->pw:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setSs(I)V
    .locals 0
    .parameter "ss"

    .prologue
    .line 55
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->ss:I

    .line 56
    return-void
.end method

.method public setSt(J)V
    .locals 0
    .parameter "st"

    .prologue
    .line 95
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->st:J

    .line 96
    return-void
.end method

.method public setSty(I)V
    .locals 0
    .parameter "sty"

    .prologue
    .line 155
    iput p1, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->sty:I

    .line 156
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 159
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 160
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 162
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 163
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 164
    const-string v3, ""

    const-string v4, "ai"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    const-string v3, ""

    const-string v4, "ss"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->ss:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    const-string v3, ""

    const-string v4, "ss"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    const-string v3, ""

    const-string v4, "bt"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->bt:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    const-string v3, ""

    const-string v4, "bt"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    const-string v3, ""

    const-string v4, "st"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->st:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    const-string v3, ""

    const-string v4, "st"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    const-string v3, ""

    const-string v4, "pw"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    iget-object v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->pw:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    const-string v3, ""

    const-string v4, "pw"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    const-string v3, ""

    const-string v4, "in"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->in:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    const-string v3, ""

    const-string v4, "in"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    const-string v3, ""

    const-string v4, "sty"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    iget v3, p0, Lnet/yostore/aws/api/entity/AlbumInfo;->sty:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    const-string v3, ""

    const-string v4, "sty"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    const-string v3, ""

    const-string v4, "ai"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 192
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 193
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 194
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
