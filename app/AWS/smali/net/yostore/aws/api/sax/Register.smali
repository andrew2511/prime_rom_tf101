.class public Lnet/yostore/aws/api/sax/Register;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "Register.java"


# instance fields
.field private response:Lnet/yostore/aws/api/entity/RegisterResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 11
    new-instance v0, Lnet/yostore/aws/api/entity/RegisterResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/RegisterResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/Register;->response:Lnet/yostore/aws/api/entity/RegisterResponse;

    .line 9
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
    .line 16
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lnet/yostore/aws/api/sax/Register;->response:Lnet/yostore/aws/api/entity/RegisterResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/Register;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/RegisterResponse;->setStatus(I)V

    .line 21
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/api/sax/Register;->builder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 23
    return-void
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lnet/yostore/aws/api/sax/Register;->response:Lnet/yostore/aws/api/entity/RegisterResponse;

    return-object v0
.end method
