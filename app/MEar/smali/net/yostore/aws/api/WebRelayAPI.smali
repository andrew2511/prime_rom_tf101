.class public Lnet/yostore/aws/api/WebRelayAPI;
.super Lnet/yostore/aws/api/BaseApi;
.source "WebRelayAPI.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ServerDomain"
    .parameter "proxy"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/api/BaseApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public directDataUpload(Lnet/yostore/aws/api/entity/DirectUploadRequest;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/DirectUploadResponse;
    .locals 9
    .parameter "request"
    .parameter "apicfg"

    .prologue
    .line 20
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->getFileid()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/webrelay/directupload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->getData()[B

    move-result-object v3

    .line 25
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->getParentid()Ljava/lang/String;

    move-result-object v4

    .line 26
    new-instance v5, Lnet/yostore/aws/api/sax/DirectUpload;

    invoke-direct {v5}, Lnet/yostore/aws/api/sax/DirectUpload;-><init>()V

    .line 27
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->getFileid()J

    move-result-wide v6

    .line 28
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->getAttribute()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    .line 21
    invoke-super/range {v0 .. v8}, Lnet/yostore/aws/api/BaseApi;->dataUpload(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;JLjava/lang/String;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-object v0, p0

    .line 31
    :goto_0
    return-object v0

    .line 32
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/webrelay/directupload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->getData()[B

    move-result-object v3

    .line 35
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->getParentid()Ljava/lang/String;

    move-result-object v4

    .line 36
    new-instance v5, Lnet/yostore/aws/api/sax/DirectUpload;

    invoke-direct {v5}, Lnet/yostore/aws/api/sax/DirectUpload;-><init>()V

    move-object v0, p0

    .line 31
    invoke-super/range {v0 .. v5}, Lnet/yostore/aws/api/BaseApi;->dataUpload(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-object v0, p0

    goto :goto_0
.end method

.method public directFileUpload(Lnet/yostore/aws/api/entity/DirectUploadRequest;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/DirectUploadResponse;
    .locals 4
    .parameter "request"
    .parameter "apicfg"

    .prologue
    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/webrelay/directupload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->getFile()Ljava/io/File;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->getParentid()Ljava/lang/String;

    move-result-object v2

    .line 45
    new-instance v3, Lnet/yostore/aws/api/sax/DirectUpload;

    invoke-direct {v3}, Lnet/yostore/aws/api/sax/DirectUpload;-><init>()V

    .line 41
    invoke-super {p0, v0, v1, v2, v3}, Lnet/yostore/aws/api/BaseApi;->fileUpload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    return-object p0
.end method
