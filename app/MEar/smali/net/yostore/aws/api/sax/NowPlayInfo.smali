.class public Lnet/yostore/aws/api/sax/NowPlayInfo;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "NowPlayInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NowPlayInfo"


# instance fields
.field private response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 34
    new-instance v0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    .line 11
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "if"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 45
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    const-string v3, "1"

    iget-object v4, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->setIf(Z)V

    .line 92
    :cond_0
    :goto_1
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 94
    return-void

    :cond_1
    move v3, v5

    .line 45
    goto :goto_0

    .line 49
    :cond_2
    const-string v2, "p"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 51
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->setP(J)V

    goto :goto_1

    .line 52
    :cond_3
    const-string v2, "i"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "undefined"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 54
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->setI(J)V

    goto/16 :goto_1

    .line 55
    :cond_4
    const-string v2, "n"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 57
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->setN(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 58
    :cond_5
    const-string v2, "d"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 59
    const-wide/16 v0, 0x0

    .line 61
    .local v0, tmp:J
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 62
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 66
    :cond_6
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    invoke-virtual {v2, v0, v1}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->setD(J)V

    goto/16 :goto_1

    .line 63
    :catch_0
    move-exception v2

    .line 66
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    invoke-virtual {v2, v0, v1}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->setD(J)V

    goto/16 :goto_1

    .line 65
    :catchall_0
    move-exception v2

    .line 66
    iget-object v3, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    invoke-virtual {v3, v0, v1}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->setD(J)V

    .line 67
    throw v2

    .line 68
    .end local v0           #tmp:J
    :cond_7
    const-string v2, "u"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 69
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 70
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->setU(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 71
    :cond_8
    const-string v2, "s"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 72
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 73
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->setS(I)V

    goto/16 :goto_1

    .line 74
    :cond_9
    const-string v2, "r"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 75
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 76
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->setR(I)V

    goto/16 :goto_1

    .line 77
    :cond_a
    const-string v2, "pt"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 78
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 79
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->setPt(I)V

    goto/16 :goto_1

    .line 80
    :cond_b
    const-string v2, "pft"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const-wide/16 v0, 0x0

    .line 83
    .restart local v0       #tmp:J
    :try_start_1
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 84
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 88
    :cond_c
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    invoke-virtual {v2, v0, v1}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->setPft(J)V

    goto/16 :goto_1

    .line 85
    :catch_1
    move-exception v2

    .line 88
    iget-object v2, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    invoke-virtual {v2, v0, v1}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->setPft(J)V

    goto/16 :goto_1

    .line 87
    :catchall_1
    move-exception v2

    .line 88
    iget-object v3, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    invoke-virtual {v3, v0, v1}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->setPft(J)V

    .line 89
    throw v2
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lnet/yostore/aws/api/sax/NowPlayInfo;->response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    return-object v0
.end method
