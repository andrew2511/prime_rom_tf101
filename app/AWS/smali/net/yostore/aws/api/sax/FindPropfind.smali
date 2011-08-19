.class public Lnet/yostore/aws/api/sax/FindPropfind;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "FindPropfind.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FindPropfind"


# instance fields
.field private response:Lnet/yostore/aws/api/entity/FindPropfindResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 12
    new-instance v0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FindPropfindResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FindPropfind;->response:Lnet/yostore/aws/api/entity/FindPropfindResponse;

    .line 10
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 18
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FindPropfind;->response:Lnet/yostore/aws/api/entity/FindPropfindResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FindPropfind;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->setStatus(I)V

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FindPropfind;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 41
    return-void

    .line 23
    :cond_1
    const-string v0, "logmessage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FindPropfind;->response:Lnet/yostore/aws/api/entity/FindPropfindResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FindPropfind;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->setLogmessage(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_2
    const-string v0, "isencrypted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FindPropfind;->response:Lnet/yostore/aws/api/entity/FindPropfindResponse;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FindPropfind;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->setIsencrypted(Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    .line 27
    :cond_4
    const-string v0, "size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FindPropfind;->response:Lnet/yostore/aws/api/entity/FindPropfindResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FindPropfind;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->setSize(J)V

    goto :goto_0

    .line 29
    :cond_5
    const-string v0, "scrip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FindPropfind;->response:Lnet/yostore/aws/api/entity/FindPropfindResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FindPropfind;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->setScrip(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_6
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FindPropfind;->response:Lnet/yostore/aws/api/entity/FindPropfindResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FindPropfind;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 33
    :cond_7
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 34
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FindPropfind;->response:Lnet/yostore/aws/api/entity/FindPropfindResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FindPropfind;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :cond_8
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FindPropfind;->response:Lnet/yostore/aws/api/entity/FindPropfindResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FindPropfind;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->setAttribute(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FindPropfind;->response:Lnet/yostore/aws/api/entity/FindPropfindResponse;

    return-object v0
.end method
