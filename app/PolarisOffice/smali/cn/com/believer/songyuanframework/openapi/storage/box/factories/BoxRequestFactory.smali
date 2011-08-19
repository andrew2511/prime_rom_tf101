.class public Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;
.source "BoxRequestFactory.java"


# static fields
.field protected static final logTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->logTag:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;-><init>()V

    return-void
.end method

.method public static createAddToMyBoxRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;
    .locals 2

    .prologue
    .line 49
    const-string v1, "box4j.config.requestfactory.AddToMyBoxRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createAddToMyBoxRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"
    .parameter "fileId"
    .parameter "publicName"
    .parameter "folderId"
    .parameter "tags"

    .prologue
    .line 73
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createAddToMyBoxRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;

    move-result-object v0

    .line 74
    .local v0, addToMyBoxRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->setApiKey(Ljava/lang/String;)V

    .line 75
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->setAuthToken(Ljava/lang/String;)V

    .line 76
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->setFileId(Ljava/lang/String;)V

    .line 77
    invoke-interface {v0, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->setPublicName(Ljava/lang/String;)V

    .line 78
    invoke-interface {v0, p4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->setFolderId(Ljava/lang/String;)V

    .line 79
    invoke-interface {v0, p5}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->setTags([Ljava/lang/String;)V

    .line 80
    return-object v0
.end method

.method public static createAddToTagRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;
    .locals 2

    .prologue
    .line 89
    const-string v1, "box4j.config.requestfactory.AddToTagRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createAddToTagRequest(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"
    .parameter "tags"
    .parameter "target"
    .parameter "targetId"

    .prologue
    .line 111
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createAddToTagRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;

    move-result-object v0

    .line 112
    .local v0, addToTagRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->setApiKey(Ljava/lang/String;)V

    .line 113
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->setAuthToken(Ljava/lang/String;)V

    .line 114
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->setTags([Ljava/lang/String;)V

    .line 115
    invoke-interface {v0, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->setTarget(Ljava/lang/String;)V

    .line 116
    invoke-interface {v0, p4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->setTargetId(Ljava/lang/String;)V

    .line 117
    return-object v0
.end method

.method public static createCreateFolderRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;
    .locals 2

    .prologue
    .line 126
    const-string v1, "box4j.config.requestfactory.CreateFolderRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createCreateFolderRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"
    .parameter "parentFolderId"
    .parameter "folderName"
    .parameter "share"

    .prologue
    .line 149
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createCreateFolderRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;

    move-result-object v0

    .line 150
    .local v0, createFolderRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->setApiKey(Ljava/lang/String;)V

    .line 151
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->setAuthToken(Ljava/lang/String;)V

    .line 152
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->setParentFolderId(Ljava/lang/String;)V

    .line 153
    invoke-interface {v0, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->setFolderName(Ljava/lang/String;)V

    .line 154
    invoke-interface {v0, p4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->setShare(Z)V

    .line 155
    return-object v0
.end method

.method public static createDeleteRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;
    .locals 2

    .prologue
    .line 164
    const-string v1, "box4j.config.requestfactory.DeleteRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createDeleteRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"
    .parameter "target"
    .parameter "targetId"

    .prologue
    .line 183
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createDeleteRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;

    move-result-object v0

    .line 184
    .local v0, deleteRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;->setApiKey(Ljava/lang/String;)V

    .line 185
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;->setAuthToken(Ljava/lang/String;)V

    .line 186
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;->setTarget(Ljava/lang/String;)V

    .line 187
    invoke-interface {v0, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;->setTargetId(Ljava/lang/String;)V

    .line 188
    return-object v0
.end method

.method public static createDownloadRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;
    .locals 2

    .prologue
    .line 197
    const-string v1, "box4j.config.requestfactory.DownloadRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 198
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createDownloadRequest(Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;
    .locals 1
    .parameter "authToken"
    .parameter "fileId"
    .parameter "asFile"
    .parameter "inFile"

    .prologue
    .line 216
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createDownloadRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;

    move-result-object v0

    .line 217
    .local v0, downloadRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;->setAuthToken(Ljava/lang/String;)V

    .line 218
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;->setFileId(Ljava/lang/String;)V

    .line 219
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;->setAsFile(Z)V

    .line 220
    invoke-interface {v0, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;->setInFile(Ljava/io/File;)V

    .line 221
    return-object v0
.end method

.method public static createExportTagsRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;
    .locals 2

    .prologue
    .line 230
    const-string v1, "box4j.config.requestfactory.ExportTagsRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createExportTagsRequest(Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"

    .prologue
    .line 246
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createExportTagsRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;

    move-result-object v0

    .line 247
    .local v0, exportTagsRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;->setApiKey(Ljava/lang/String;)V

    .line 248
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;->setAuthToken(Ljava/lang/String;)V

    .line 249
    return-object v0
.end method

.method public static createGetAccountTreeRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;
    .locals 2

    .prologue
    .line 258
    const-string v1, "box4j.config.requestfactory.GetAccountTreeRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 259
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createGetAccountTreeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"
    .parameter "folderId"
    .parameter "params"

    .prologue
    .line 278
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetAccountTreeRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;

    move-result-object v0

    .line 279
    .local v0, getAccountTreeRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;->setApiKey(Ljava/lang/String;)V

    .line 280
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;->setAuthToken(Ljava/lang/String;)V

    .line 281
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;->setFolderId(Ljava/lang/String;)V

    .line 282
    invoke-interface {v0, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;->setParams([Ljava/lang/String;)V

    .line 283
    return-object v0
.end method

.method public static createGetAuthTokenRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;
    .locals 2

    .prologue
    .line 292
    const-string v1, "box4j.config.requestfactory.GetAuthTokenRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 293
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createGetAuthTokenRequest(Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "ticket"

    .prologue
    .line 308
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetAuthTokenRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;

    move-result-object v0

    .line 309
    .local v0, getAuthTokenRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;->setApiKey(Ljava/lang/String;)V

    .line 310
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;->setTicket(Ljava/lang/String;)V

    .line 311
    return-object v0
.end method

.method public static createGetFileInfoRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;
    .locals 2

    .prologue
    .line 320
    const-string v1, "box4j.config.requestfactory.GetFileInfoRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 321
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createGetFileInfoRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"
    .parameter "fileId"

    .prologue
    .line 338
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetFileInfoRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;

    move-result-object v0

    .line 339
    .local v0, getFileInfoRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;->setApiKey(Ljava/lang/String;)V

    .line 340
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;->setAuthToken(Ljava/lang/String;)V

    .line 341
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;->setFileId(Ljava/lang/String;)V

    .line 342
    return-object v0
.end method

.method public static createGetFriendsRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;
    .locals 2

    .prologue
    .line 351
    const-string v1, "box4j.config.requestfactory.GetFriendsRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 352
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createGetFriendsRequest(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"
    .parameter "params"

    .prologue
    .line 369
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetFriendsRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;

    move-result-object v0

    .line 370
    .local v0, getFriendsRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;->setApiKey(Ljava/lang/String;)V

    .line 371
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;->setAuthToken(Ljava/lang/String;)V

    .line 372
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;->setParams([Ljava/lang/String;)V

    .line 373
    return-object v0
.end method

.method public static createGetTicketRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;
    .locals 2

    .prologue
    .line 382
    const-string v1, "box4j.config.requestfactory.GetTicketRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 383
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createGetTicketRequest(Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;
    .locals 1
    .parameter "apiKey"

    .prologue
    .line 395
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetTicketRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;

    move-result-object v0

    .line 396
    .local v0, getTicketRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;->setApiKey(Ljava/lang/String;)V

    .line 397
    return-object v0
.end method

.method public static createLogoutRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;
    .locals 2

    .prologue
    .line 406
    const-string v1, "box4j.config.requestfactory.LogoutRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 407
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createLogoutRequest(Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"

    .prologue
    .line 422
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createLogoutRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;

    move-result-object v0

    .line 423
    .local v0, logoutRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;->setApiKey(Ljava/lang/String;)V

    .line 424
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;->setAuthToken(Ljava/lang/String;)V

    .line 425
    return-object v0
.end method

.method public static createMoveRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;
    .locals 2

    .prologue
    .line 434
    const-string v1, "box4j.config.requestfactory.MoveRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 435
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createMoveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"
    .parameter "target"
    .parameter "targetId"
    .parameter "destinationId"

    .prologue
    .line 457
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createMoveRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;

    move-result-object v0

    .line 458
    .local v0, moveRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->setApiKey(Ljava/lang/String;)V

    .line 459
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->setAuthToken(Ljava/lang/String;)V

    .line 460
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->setTarget(Ljava/lang/String;)V

    .line 461
    invoke-interface {v0, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->setTargetId(Ljava/lang/String;)V

    .line 462
    invoke-interface {v0, p4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->setDestinationId(Ljava/lang/String;)V

    .line 463
    return-object v0
.end method

.method public static createPrivateShareRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;
    .locals 2

    .prologue
    .line 472
    const-string v1, "box4j.config.requestfactory.PrivateShareRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 473
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createPrivateShareRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"
    .parameter "target"
    .parameter "targetId"
    .parameter "emails"
    .parameter "message"
    .parameter "nofity"

    .prologue
    .line 498
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createPrivateShareRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;

    move-result-object v0

    .line 499
    .local v0, privateShareRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->setApiKey(Ljava/lang/String;)V

    .line 500
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->setAuthToken(Ljava/lang/String;)V

    .line 501
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->setTarget(Ljava/lang/String;)V

    .line 502
    invoke-interface {v0, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->setTargetId(Ljava/lang/String;)V

    .line 503
    invoke-interface {v0, p4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->setEmails([Ljava/lang/String;)V

    .line 504
    invoke-interface {v0, p5}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->setMessage(Ljava/lang/String;)V

    .line 505
    invoke-interface {v0, p6}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->setNofity(Z)V

    .line 506
    return-object v0
.end method

.method public static createPublicShareRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;
    .locals 2

    .prologue
    .line 515
    const-string v1, "box4j.config.requestfactory.PublicShareRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 516
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createPublicShareRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"
    .parameter "target"
    .parameter "targetId"
    .parameter "password"
    .parameter "message"
    .parameter "emails"

    .prologue
    .line 541
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createPublicShareRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;

    move-result-object v0

    .line 542
    .local v0, publicShareRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->setApiKey(Ljava/lang/String;)V

    .line 543
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->setAuthToken(Ljava/lang/String;)V

    .line 544
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->setTarget(Ljava/lang/String;)V

    .line 545
    invoke-interface {v0, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->setTargetId(Ljava/lang/String;)V

    .line 546
    invoke-interface {v0, p4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->setPassword(Ljava/lang/String;)V

    .line 547
    invoke-interface {v0, p5}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->setMessage(Ljava/lang/String;)V

    .line 548
    invoke-interface {v0, p6}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->setEmails([Ljava/lang/String;)V

    .line 549
    return-object v0
.end method

.method public static createPublicUnshareRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;
    .locals 2

    .prologue
    .line 558
    const-string v1, "box4j.config.requestfactory.PublicUnshareRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 559
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createPublicUnshareRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"
    .parameter "target"
    .parameter "targetId"

    .prologue
    .line 577
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createPublicUnshareRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;

    move-result-object v0

    .line 578
    .local v0, publicUnshareRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;->setApiKey(Ljava/lang/String;)V

    .line 579
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;->setAuthToken(Ljava/lang/String;)V

    .line 580
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;->setTarget(Ljava/lang/String;)V

    .line 581
    invoke-interface {v0, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;->setTargetId(Ljava/lang/String;)V

    .line 582
    return-object v0
.end method

.method public static createRegisterNewUserRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;
    .locals 2

    .prologue
    .line 591
    const-string v1, "box4j.config.requestfactory.RegisterNewUserRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 592
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createRegisterNewUserRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "loginName"
    .parameter "password"

    .prologue
    .line 608
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createRegisterNewUserRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;

    move-result-object v0

    .line 609
    .local v0, registerNewUserRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;->setApiKey(Ljava/lang/String;)V

    .line 610
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;->setLoginName(Ljava/lang/String;)V

    .line 611
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;->setPassword(Ljava/lang/String;)V

    .line 612
    return-object v0
.end method

.method public static createRenameRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;
    .locals 2

    .prologue
    .line 621
    const-string v1, "box4j.config.requestfactory.RenameRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 622
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createRenameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"
    .parameter "target"
    .parameter "targetId"
    .parameter "newName"

    .prologue
    .line 642
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createRenameRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;

    move-result-object v0

    .line 643
    .local v0, renameRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;->setApiKey(Ljava/lang/String;)V

    .line 644
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;->setAuthToken(Ljava/lang/String;)V

    .line 645
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;->setTarget(Ljava/lang/String;)V

    .line 646
    invoke-interface {v0, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;->setTargetId(Ljava/lang/String;)V

    .line 647
    invoke-interface {v0, p4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;->setNewName(Ljava/lang/String;)V

    .line 648
    return-object v0
.end method

.method public static createRequestFriendsRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;
    .locals 2

    .prologue
    .line 657
    const-string v1, "box4j.config.requestfactory.RequestFriendsRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 658
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createRequestFriendsRequest(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"
    .parameter "emails"
    .parameter "message"
    .parameter "params"

    .prologue
    .line 679
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createRequestFriendsRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;

    move-result-object v0

    .line 680
    .local v0, requestFriendsRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->setApiKey(Ljava/lang/String;)V

    .line 681
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->setAuthToken(Ljava/lang/String;)V

    .line 682
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->setEmails([Ljava/lang/String;)V

    .line 683
    invoke-interface {v0, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->setMessage(Ljava/lang/String;)V

    .line 684
    invoke-interface {v0, p4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->setParams([Ljava/lang/String;)V

    .line 685
    return-object v0
.end method

.method public static createSetDescriptionRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;
    .locals 2

    .prologue
    .line 694
    const-string v1, "box4j.config.requestfactory.SetDescriptionRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 695
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createSetDescriptionRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "authToken"
    .parameter "target"
    .parameter "targetId"
    .parameter "description"

    .prologue
    .line 716
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createSetDescriptionRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;

    move-result-object v0

    .line 717
    .local v0, setDescriptionRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;->setApiKey(Ljava/lang/String;)V

    .line 718
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;->setAuthToken(Ljava/lang/String;)V

    .line 719
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;->setTarget(Ljava/lang/String;)V

    .line 720
    invoke-interface {v0, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;->setTargetId(Ljava/lang/String;)V

    .line 721
    invoke-interface {v0, p4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;->setDescription(Ljava/lang/String;)V

    .line 722
    return-object v0
.end method

.method public static createUploadRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;
    .locals 2

    .prologue
    .line 731
    const-string v1, "box4j.config.requestfactory.UploadRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 732
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createUploadRequest(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;
    .locals 1
    .parameter "authToken"
    .parameter "asFile"
    .parameter "parentFolderId"
    .parameter "nameValueMap"

    .prologue
    .line 750
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createUploadRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;

    move-result-object v0

    .line 751
    .local v0, uploadRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;->setAuthToken(Ljava/lang/String;)V

    .line 752
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;->setAsFile(Z)V

    .line 753
    invoke-interface {v0, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;->setFolderId(Ljava/lang/String;)V

    .line 754
    invoke-interface {v0, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;->setDataMap(Ljava/util/Map;)V

    .line 755
    return-object v0
.end method

.method public static createVerifyRegistrationEmailRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;
    .locals 2

    .prologue
    .line 764
    const-string v1, "box4j.config.requestfactory.VerifyRegistrationEmailRequest"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 765
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createVerifyRegistrationEmailRequest(Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;
    .locals 1
    .parameter "apiKey"
    .parameter "loginName"

    .prologue
    .line 779
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createVerifyRegistrationEmailRequest()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;

    move-result-object v0

    .line 780
    .local v0, verifyRegistrationEmailRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;
    invoke-interface {v0, p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;->setApiKey(Ljava/lang/String;)V

    .line 781
    invoke-interface {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;->setLoginName(Ljava/lang/String;)V

    .line 782
    return-object v0
.end method
