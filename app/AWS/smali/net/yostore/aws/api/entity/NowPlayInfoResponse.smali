.class public Lnet/yostore/aws/api/entity/NowPlayInfoResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "NowPlayInfoResponse.java"


# instance fields
.field private _d:J

.field private _i:J

.field private _if:Z

.field private _n:Ljava/lang/String;

.field private _p:J

.field private _pft:J

.field private _pt:I

.field private _r:I

.field private _s:I

.field private _u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/ApiResponse;-><init>()V

    .line 58
    iput v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_s:I

    .line 68
    iput v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_r:I

    .line 78
    iput v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_pt:I

    .line 88
    iput-boolean v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_if:Z

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_pft:J

    .line 14
    return-void
.end method


# virtual methods
.method public getD()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_d:J

    return-wide v0
.end method

.method public getI()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_i:J

    return-wide v0
.end method

.method public getIf()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_if:Z

    return v0
.end method

.method public getN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_n:Ljava/lang/String;

    return-object v0
.end method

.method public getP()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_p:J

    return-wide v0
.end method

.method public getPft()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_pft:J

    return-wide v0
.end method

.method public getPt()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_pt:I

    return v0
.end method

.method public getR()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_r:I

    return v0
.end method

.method public getS()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_s:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_u:Ljava/lang/String;

    return-object v0
.end method

.method public setD(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 106
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_d:J

    return-void
.end method

.method public setI(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 98
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_i:J

    return-void
.end method

.method public setIf(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 90
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_if:Z

    return-void
.end method

.method public setN(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 102
    iput-object p1, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_n:Ljava/lang/String;

    return-void
.end method

.method public setP(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 94
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_p:J

    return-void
.end method

.method public setPft(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 111
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 112
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_pft:J

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_pft:J

    goto :goto_0
.end method

.method public setPt(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 85
    iput p1, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_pt:I

    .line 86
    return-void
.end method

.method public setR(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 75
    iput p1, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_r:I

    .line 76
    return-void
.end method

.method public setS(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 65
    iput p1, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_s:I

    .line 66
    return-void
.end method

.method public setU(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 56
    iput-object p1, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_u:Ljava/lang/String;

    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 118
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 119
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 121
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 122
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 123
    const-string v3, ""

    const-string v4, "np"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    const-string v3, ""

    const-string v4, "if"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    iget-boolean v3, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_if:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const-string v3, ""

    const-string v4, "if"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    const-string v3, ""

    const-string v4, "p"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_p:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    const-string v3, ""

    const-string v4, "p"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    const-string v3, ""

    const-string v4, "i"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_i:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    const-string v3, ""

    const-string v4, "i"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    const-string v3, ""

    const-string v4, "n"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    iget-object v3, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_n:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    const-string v3, ""

    const-string v4, "n"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    const-string v3, ""

    const-string v4, "d"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_d:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const-string v3, ""

    const-string v4, "d"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    const-string v3, ""

    const-string v4, "u"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    iget-object v3, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_u:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    const-string v3, ""

    const-string v4, "u"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    const-string v3, ""

    const-string v4, "s"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    iget v3, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_s:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    const-string v3, ""

    const-string v4, "s"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    const-string v3, ""

    const-string v4, "r"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    iget v3, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_r:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    const-string v3, ""

    const-string v4, "r"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    const-string v3, ""

    const-string v4, "pt"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    iget v3, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_pt:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    const-string v3, ""

    const-string v4, "pt"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    const-string v3, ""

    const-string v4, "pft"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    iget-wide v3, p0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->_pft:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    const-string v3, ""

    const-string v4, "pft"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    const-string v3, ""

    const-string v4, "np"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 168
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 169
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 170
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
