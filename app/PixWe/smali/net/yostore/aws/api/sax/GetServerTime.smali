.class public Lnet/yostore/aws/api/sax/GetServerTime;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "GetServerTime.java"


# instance fields
.field private response:Lnet/yostore/aws/api/entity/GetServerTimeResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 11
    new-instance v0, Lnet/yostore/aws/api/entity/GetServerTimeResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/GetServerTimeResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/GetServerTime;->response:Lnet/yostore/aws/api/entity/GetServerTimeResponse;

    .line 9
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetServerTime;->response:Lnet/yostore/aws/api/entity/GetServerTimeResponse;

    invoke-virtual {v0, v2}, Lnet/yostore/aws/api/entity/GetServerTimeResponse;->setStatus(I)V

    .line 18
    const-string v0, "time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetServerTime;->response:Lnet/yostore/aws/api/entity/GetServerTimeResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetServerTime;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/GetServerTimeResponse;->setTime(Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetServerTime;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 24
    return-void
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetServerTime;->response:Lnet/yostore/aws/api/entity/GetServerTimeResponse;

    return-object v0
.end method
