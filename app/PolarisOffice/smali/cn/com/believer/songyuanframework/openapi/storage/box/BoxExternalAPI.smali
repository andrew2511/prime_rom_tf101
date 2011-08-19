.class public interface abstract Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;
.super Ljava/lang/Object;
.source "BoxExternalAPI.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "BoxExternalAPI"


# virtual methods
.method public abstract addToMyBox(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract addToTag(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract createFolder(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract delete(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract download(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract exportTags(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract getAccountTree(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract getAuthToken(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract getFileInfo(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract getFriends(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract getTicket(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract logout(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract move(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract privateShare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract publicShare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract publicUnshare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract registerNewUser(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract rename(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract requestFriends(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract setDescription(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract upload(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method

.method public abstract verifyRegistrationEmail(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation
.end method
