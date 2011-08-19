.class public Lnet/yostore/aws/api/InfoRelayApi;
.super Lnet/yostore/aws/api/BaseApi;
.source "InfoRelayApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InfoRelayApi"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "Url"
    .parameter "proxy"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/api/BaseApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public encryptedFolderBrowse(Lnet/yostore/aws/api/entity/FolderBrowseRequest;Ljava/lang/String;)Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .locals 3
    .parameter "request"
    .parameter "encryptedPwd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/folder/browse/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/FolderBrowse;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FolderBrowse;-><init>()V

    invoke-super {p0, v1, v2, p2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;Ljava/lang/String;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    return-object p0
.end method

.method public fileRemove(Lnet/yostore/aws/api/entity/FileRemoveRequest;)Lnet/yostore/aws/api/entity/FileRemoveResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileRemoveRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/file/remove/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/FileRemove;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FileRemove;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FileRemoveResponse;

    return-object p0
.end method

.method public findPropfind(Lnet/yostore/aws/api/entity/FindPropfindRequest;)Lnet/yostore/aws/api/entity/FindPropfindResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FindPropfindRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/find/propfind/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/FindPropfind;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FindPropfind;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    return-object p0
.end method

.method public folderBrowse(Lnet/yostore/aws/api/entity/FolderBrowseRequest;)Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/folder/browse/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/FolderBrowse;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FolderBrowse;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    return-object p0
.end method

.method public folderCreate(Lnet/yostore/aws/api/entity/FolderCreateRequest;)Lnet/yostore/aws/api/entity/FolderCreateResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderCreateRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/folder/create/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/FolderCreate;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FolderCreate;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    return-object p0
.end method

.method public folderGetChangeSeq(Lnet/yostore/aws/api/entity/GetChangeSeqRequest;)Lnet/yostore/aws/api/entity/GetChangeSeqResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/GetChangeSeqRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/folder/getchangeseq/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/FolderGetChangeSeq;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FolderGetChangeSeq;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/GetChangeSeqResponse;

    return-object p0
.end method

.method public folderRemove(Lnet/yostore/aws/api/entity/FolderRemoveRequest;)Lnet/yostore/aws/api/entity/FolderRemoveResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/folder/remove/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/FolderRemove;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FolderRemove;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FolderRemoveResponse;

    return-object p0
.end method

.method public getShareCode(Lnet/yostore/aws/api/entity/GetShareCodeRequest;)Lnet/yostore/aws/api/entity/GetShareCodeResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/GetShareCodeRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/fsentry/getsharecode/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/GetShareCode;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/GetShareCode;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/GetShareCodeResponse;

    return-object p0
.end method

.method public getSharedFolderList(Lnet/yostore/aws/api/entity/GetSharedFolderListRequest;)Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/GetSharedFolderListRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/folder/getsharedfolderlist/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/GetSharedFolderList;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/GetSharedFolderList;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

    return-object p0
.end method

.method public setMark(Lnet/yostore/aws/api/entity/SetMarkRequest;)Lnet/yostore/aws/api/entity/SetMarkResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SetMarkRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/fsentry/setentrymark/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/SetMark;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/SetMark;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/SetMarkResponse;

    return-object p0
.end method

.method public updateFolderAttribute(Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;)Lnet/yostore/aws/api/entity/UpdateFolderAttributeResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/folder/updateattribute/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/UpdateFolderAttribute;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/UpdateFolderAttribute;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeResponse;

    return-object p0
.end method
