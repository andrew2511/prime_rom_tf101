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
    .line 66
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/api/BaseApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
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
    .line 76
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
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
    .line 118
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileRemoveRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v1, "/file/remove/"

    new-instance v2, Lnet/yostore/aws/api/sax/FileRemove;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FileRemove;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FileRemoveResponse;

    return-object p0
.end method

.method public fileRename(Lnet/yostore/aws/api/entity/FileRenameRequest;)Lnet/yostore/aws/api/entity/FileRenameResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileRenameRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v1, "/file/rename/"

    new-instance v2, Lnet/yostore/aws/api/sax/FileRename;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FileRename;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FileRenameResponse;

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
    .line 112
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FindPropfindRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v1, "/find/propfind/"

    new-instance v2, Lnet/yostore/aws/api/sax/FindPropfind;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FindPropfind;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

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
    .line 70
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, params:Ljava/lang/String;
    const-string v1, "/folder/browse/"

    new-instance v2, Lnet/yostore/aws/api/sax/FolderBrowse;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FolderBrowse;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

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
    .line 82
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderCreateRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v1, "/folder/create/"

    new-instance v2, Lnet/yostore/aws/api/sax/FolderCreate;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FolderCreate;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

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
    .line 88
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/GetChangeSeqRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v1, "/folder/getchangeseq/"

    new-instance v2, Lnet/yostore/aws/api/sax/FolderGetChangeSeq;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FolderGetChangeSeq;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

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
    .line 100
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderRemoveRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v1, "/folder/remove/"

    new-instance v2, Lnet/yostore/aws/api/sax/FolderRemove;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FolderRemove;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FolderRemoveResponse;

    return-object p0
.end method

.method public folderRename(Lnet/yostore/aws/api/entity/FolderRenameRequest;)Lnet/yostore/aws/api/entity/FolderRenameResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderRenameRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v1, "/folder/rename/"

    new-instance v2, Lnet/yostore/aws/api/sax/FolderRename;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/FolderRename;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FolderRenameResponse;

    return-object p0
.end method

.method public getLatestChangeFiles(Lnet/yostore/aws/api/entity/GetLatestChangeFilesRequest;)Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/GetLatestChangeFilesRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v1, "/file/getlatestchangefiles/"

    new-instance v2, Lnet/yostore/aws/api/sax/LatestChangeFiles;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/LatestChangeFiles;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;

    return-object p0
.end method

.method public getLatestUploads(Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;)Lnet/yostore/aws/api/entity/GetLatestUploadsResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v1, "/file/getlatestuploads/"

    new-instance v2, Lnet/yostore/aws/api/sax/LatestUploads;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/LatestUploads;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/GetLatestUploadsResponse;

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
    .line 136
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/GetShareCodeRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v1, "/fsentry/getsharecode/"

    new-instance v2, Lnet/yostore/aws/api/sax/GetShareCode;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/GetShareCode;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/GetShareCodeResponse;

    return-object p0
.end method

.method public getSharedEntries(Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;)Lnet/yostore/aws/api/entity/GetSharedEntriesResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v1, "/fsentry/getsharedentries/"

    new-instance v2, Lnet/yostore/aws/api/sax/GetSharedEntries;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/GetSharedEntries;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/GetSharedEntriesResponse;

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
    .line 160
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/GetSharedFolderListRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v1, "/folder/getsharedfolderlist/"

    new-instance v2, Lnet/yostore/aws/api/sax/GetSharedFolderList;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/GetSharedFolderList;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

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
    .line 130
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SetMarkRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v1, "/fsentry/setentrymark/"

    new-instance v2, Lnet/yostore/aws/api/sax/SetMark;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/SetMark;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

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
    .line 94
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, params:Ljava/lang/String;
    const-string v1, "InfoRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v1, "/folder/updateattribute/"

    new-instance v2, Lnet/yostore/aws/api/sax/UpdateFolderAttribute;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/UpdateFolderAttribute;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeResponse;

    return-object p0
.end method
