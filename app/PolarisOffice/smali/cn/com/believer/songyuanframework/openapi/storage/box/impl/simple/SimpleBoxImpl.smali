.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;
.super Ljava/lang/Object;
.source "SimpleBoxImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;


# static fields
.field protected static final logTag:Ljava/lang/String;


# instance fields
.field private addToMyBoxMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;

.field private addToTagMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;

.field private createFolderMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;

.field private deleteMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DeleteMethod;

.field private downloadMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DownloadMethod;

.field private exportTagsMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;

.field private getAccountTreeMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;

.field private getAuthTokenMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAuthTokenMethod;

.field private getFileInfoMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;

.field private getFriendsMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;

.field private getTicketMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;

.field private logoutMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;

.field private moveMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;

.field private privateShareMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;

.field private publicShareMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;

.field private publicUnshareMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;

.field private registerNewUserMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RegisterNewUserMethod;

.field private renameMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RenameMethod;

.field private requestFriendsMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;

.field private setDescriptionMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/SetDescriptionMethod;

.field private uploadMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/UploadMethod;

.field private verifyRegistrationEmailMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->logTag:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->getTicketMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;

    .line 92
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAuthTokenMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAuthTokenMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->getAuthTokenMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAuthTokenMethod;

    .line 95
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->logoutMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;

    .line 98
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RegisterNewUserMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RegisterNewUserMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->registerNewUserMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RegisterNewUserMethod;

    .line 101
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->verifyRegistrationEmailMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;

    .line 104
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->getAccountTreeMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;

    .line 107
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->exportTagsMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;

    .line 110
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->createFolderMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;

    .line 113
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->moveMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;

    .line 116
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RenameMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RenameMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->renameMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RenameMethod;

    .line 119
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DeleteMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DeleteMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->deleteMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DeleteMethod;

    .line 122
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->publicShareMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;

    .line 125
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->publicUnshareMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;

    .line 128
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->privateShareMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;

    .line 131
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->addToMyBoxMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;

    .line 134
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->addToTagMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;

    .line 137
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->getFileInfoMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;

    .line 140
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/SetDescriptionMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/SetDescriptionMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->setDescriptionMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/SetDescriptionMethod;

    .line 143
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->getFriendsMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;

    .line 146
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->requestFriendsMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;

    .line 149
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DownloadMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DownloadMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->downloadMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DownloadMethod;

    .line 152
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/UploadMethod;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/UploadMethod;-><init>()V

    iput-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->uploadMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/UploadMethod;

    .line 81
    return-void
.end method


# virtual methods
.method public addToMyBox(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;
    .locals 1
    .parameter "addToMyBoxRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->addToMyBoxMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;->addToMyBox(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public addToTag(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;
    .locals 1
    .parameter "addToTagRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->addToTagMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;->addToTag(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;

    move-result-object v0

    return-object v0
.end method

.method public createFolder(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    .locals 1
    .parameter "createFolderRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->createFolderMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;->createFolder(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    .locals 1
    .parameter "deleteRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->deleteMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DeleteMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DeleteMethod;->delete(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;

    move-result-object v0

    return-object v0
.end method

.method public download(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;
    .locals 1
    .parameter "downloadRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->downloadMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DownloadMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/DownloadMethod;->download(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public exportTags(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;
    .locals 1
    .parameter "exportTagsRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->exportTagsMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;->exportTags(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTree(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;
    .locals 1
    .parameter "getAccountTreeRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->getAccountTreeMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;->getAccountTree(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    .locals 1
    .parameter "getAuthTokenRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 621
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->getAuthTokenMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAuthTokenMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAuthTokenMethod;->getAuthToken(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFileInfo(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;
    .locals 1
    .parameter "getFileInfoRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->getFileInfoMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;->getFileInfo(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFriends(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;
    .locals 1
    .parameter "getFriendsRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->getFriendsMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;->getFriends(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getTicket(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    .locals 1
    .parameter "getTicketRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 635
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->getTicketMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetTicketMethod;->getTicket(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;

    move-result-object v0

    return-object v0
.end method

.method public logout(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;
    .locals 1
    .parameter "logoutRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->logoutMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;->logout(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;

    move-result-object v0

    return-object v0
.end method

.method public move(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    .locals 1
    .parameter "moveRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->moveMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;->move(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;

    move-result-object v0

    return-object v0
.end method

.method public privateShare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;
    .locals 1
    .parameter "privateShareRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->privateShareMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;->privateShare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;

    move-result-object v0

    return-object v0
.end method

.method public publicShare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;
    .locals 1
    .parameter "publicShareRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->publicShareMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;->publicShare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;

    move-result-object v0

    return-object v0
.end method

.method public publicUnshare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;
    .locals 1
    .parameter "publicUnshareRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->publicUnshareMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;->publicUnshare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;

    move-result-object v0

    return-object v0
.end method

.method public registerNewUser(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;
    .locals 1
    .parameter "registerNewUserRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->registerNewUserMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RegisterNewUserMethod;

    .line 581
    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RegisterNewUserMethod;->registerNewUser(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;

    move-result-object v0

    .line 580
    return-object v0
.end method

.method public rename(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    .locals 1
    .parameter "renameRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->renameMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RenameMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RenameMethod;->rename(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;

    move-result-object v0

    return-object v0
.end method

.method public requestFriends(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;
    .locals 1
    .parameter "requestFriendsRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->requestFriendsMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;->requestFriends(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionResponse;
    .locals 1
    .parameter "setDescriptionRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->setDescriptionMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/SetDescriptionMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/SetDescriptionMethod;->setDescription(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public upload(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    .locals 1
    .parameter "uploadRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->uploadMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/UploadMethod;

    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/UploadMethod;->upload(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyRegistrationEmail(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;
    .locals 1
    .parameter "verifyRegistrationEmailRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;->verifyRegistrationEmailMethod:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;

    .line 560
    invoke-virtual {v0, p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;->verifyRegistrationEmail(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;

    move-result-object v0

    .line 559
    return-object v0
.end method
