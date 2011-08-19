.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DownloadMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "DownloadMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public download(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;
    .locals 9
    .parameter "downloadRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createDownloadResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;

    move-result-object v2

    .line 33
    .local v2, downloadResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;
    invoke-interface {p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, authToken:Ljava/lang/String;
    invoke-interface {p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;->getFileId()Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, fileId:Ljava/lang/String;
    invoke-interface {p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;->isAsFile()Z

    move-result v0

    .line 36
    .local v0, asFile:Z
    invoke-interface {p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;->getInFile()Ljava/io/File;

    move-result-object v4

    .line 38
    .local v4, inFile:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    .local v6, urlBuff:Ljava/lang/StringBuffer;
    iget-object v7, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DownloadMethod;->apiUrlPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    iget-object v7, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DownloadMethod;->apiVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    const-string v7, "download"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-interface {v2, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;->setAsFile(Z)V

    .line 50
    if-eqz v0, :cond_0

    .line 51
    iget-object v7, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DownloadMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGetFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 52
    .local v5, result:Ljava/io/File;
    invoke-interface {v2, v5}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;->setOutFile(Ljava/io/File;)V

    .line 57
    .end local v5           #result:Ljava/io/File;
    :goto_0
    return-object v2

    .line 54
    :cond_0
    iget-object v7, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DownloadMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGetByteArry(Ljava/lang/String;)[B

    move-result-object v5

    .line 55
    .local v5, result:[B
    invoke-interface {v2, v5}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;->setRawData([B)V

    goto :goto_0
.end method
