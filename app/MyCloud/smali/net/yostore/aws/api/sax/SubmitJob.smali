.class public Lnet/yostore/aws/api/sax/SubmitJob;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "SubmitJob.java"


# instance fields
.field private response:Lnet/yostore/aws/api/entity/SubmitJobResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 10
    new-instance v0, Lnet/yostore/aws/api/entity/SubmitJobResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/SubmitJobResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/SubmitJob;->response:Lnet/yostore/aws/api/entity/SubmitJobResponse;

    .line 8
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lnet/yostore/aws/api/sax/SubmitJob;->response:Lnet/yostore/aws/api/entity/SubmitJobResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/SubmitJob;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/SubmitJobResponse;->setStatus(I)V

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/api/sax/SubmitJob;->builder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 24
    return-void

    .line 18
    :cond_1
    const-string v0, "jobuuid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lnet/yostore/aws/api/sax/SubmitJob;->response:Lnet/yostore/aws/api/entity/SubmitJobResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/SubmitJob;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/SubmitJobResponse;->setLogmessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/yostore/aws/api/sax/SubmitJob;->response:Lnet/yostore/aws/api/entity/SubmitJobResponse;

    return-object v0
.end method
