.class public Lnet/yostore/aws/api/sax/DirectUpload;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "DirectUpload.java"


# instance fields
.field private response:Lnet/yostore/aws/api/entity/DirectUploadResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 10
    new-instance v0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/DirectUploadResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/DirectUpload;->response:Lnet/yostore/aws/api/entity/DirectUploadResponse;

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

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lnet/yostore/aws/api/sax/DirectUpload;->response:Lnet/yostore/aws/api/entity/DirectUploadResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/DirectUpload;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->setStatus(I)V

    .line 24
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/api/sax/DirectUpload;->builder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 26
    return-void

    .line 18
    :cond_1
    const-string v0, "fileid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lnet/yostore/aws/api/sax/DirectUpload;->response:Lnet/yostore/aws/api/entity/DirectUploadResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/DirectUpload;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->setFileId(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_2
    const-string v0, "rawfilename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lnet/yostore/aws/api/sax/DirectUpload;->response:Lnet/yostore/aws/api/entity/DirectUploadResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/DirectUpload;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->setRawFileName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/yostore/aws/api/sax/DirectUpload;->response:Lnet/yostore/aws/api/entity/DirectUploadResponse;

    return-object v0
.end method
