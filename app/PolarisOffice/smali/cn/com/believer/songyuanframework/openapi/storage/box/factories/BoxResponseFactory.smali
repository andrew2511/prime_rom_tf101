.class public Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;
.source "BoxResponseFactory.java"


# static fields
.field protected static final logTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->logTag:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;-><init>()V

    return-void
.end method

.method public static createAddToMyBoxResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;
    .locals 2

    .prologue
    .line 46
    const-string v1, "box4j.config.responsefactory.AddToMyBoxResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createAddToTagResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;
    .locals 2

    .prologue
    .line 56
    const-string v1, "box4j.config.responsefactory.AddToTagResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createCreateFolderResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    .locals 2

    .prologue
    .line 66
    const-string v1, "box4j.config.responsefactory.CreateFolderResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createDeleteResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    .locals 2

    .prologue
    .line 76
    const-string v1, "box4j.config.responsefactory.DeleteResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createDownloadResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;
    .locals 2

    .prologue
    .line 86
    const-string v1, "box4j.config.responsefactory.DownloadResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createExportTagsResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;
    .locals 2

    .prologue
    .line 96
    const-string v1, "box4j.config.responsefactory.ExportTagsResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createGetAccountTreeResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;
    .locals 2

    .prologue
    .line 106
    const-string v1, "box4j.config.responsefactory.GetAccountTreeResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createGetAuthTokenResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    .locals 2

    .prologue
    .line 116
    const-string v1, "box4j.config.responsefactory.GetAuthTokenResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createGetFileInfoResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;
    .locals 2

    .prologue
    .line 126
    const-string v1, "box4j.config.responsefactory.GetFileInfoResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createGetFriendsResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;
    .locals 2

    .prologue
    .line 136
    const-string v1, "box4j.config.responsefactory.GetFriendsResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createGetTicketResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    .locals 2

    .prologue
    .line 146
    const-string v1, "box4j.config.responsefactory.GetTicketResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createLogoutResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;
    .locals 2

    .prologue
    .line 156
    const-string v1, "box4j.config.responsefactory.LogoutResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createMoveResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    .locals 2

    .prologue
    .line 166
    const-string v1, "box4j.config.responsefactory.MoveResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createPrivateShareResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;
    .locals 2

    .prologue
    .line 176
    const-string v1, "box4j.config.responsefactory.PrivateShareResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createPublicShareResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;
    .locals 2

    .prologue
    .line 186
    const-string v1, "box4j.config.responsefactory.PublicShareResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createPublicUnshareResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;
    .locals 2

    .prologue
    .line 196
    const-string v1, "box4j.config.responsefactory.PublicUnshareResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 197
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createRegisterNewUserResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;
    .locals 2

    .prologue
    .line 206
    const-string v1, "box4j.config.responsefactory.RegisterNewUserResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createRenameResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    .locals 2

    .prologue
    .line 216
    const-string v1, "box4j.config.responsefactory.RenameResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 217
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createRequestFriendsResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;
    .locals 2

    .prologue
    .line 226
    const-string v1, "box4j.config.responsefactory.RequestFriendsResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createSetDescriptionResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionResponse;
    .locals 2

    .prologue
    .line 236
    const-string v1, "box4j.config.responsefactory.SetDescriptionResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createUploadResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    .locals 2

    .prologue
    .line 246
    const-string v1, "box4j.config.responsefactory.UploadResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 247
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createVerifyRegistrationEmailResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;
    .locals 2

    .prologue
    .line 256
    const-string v1, "box4j.config.responsefactory.VerifyRegistrationEmailResponse"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 257
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method
