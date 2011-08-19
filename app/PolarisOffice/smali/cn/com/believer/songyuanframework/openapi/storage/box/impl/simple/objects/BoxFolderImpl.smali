.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;
.super Ljava/lang/Object;
.source "BoxFolderImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;


# instance fields
.field private folderId:Ljava/lang/String;

.field private folderName:Ljava/lang/String;

.field private folderTypeId:Ljava/lang/String;

.field private parentFolderId:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private publicName:Ljava/lang/String;

.field private shared:Ljava/lang/String;

.field private showComments:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->folderTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->parentFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->publicName:Ljava/lang/String;

    return-object v0
.end method

.method public getShared()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->shared:Ljava/lang/String;

    return-object v0
.end method

.method public getShowComments()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->showComments:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .parameter "folderId"

    .prologue
    .line 56
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->folderId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .parameter "folderName"

    .prologue
    .line 71
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->folderName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setFolderTypeId(Ljava/lang/String;)V
    .locals 0
    .parameter "folderTypeId"

    .prologue
    .line 86
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->folderTypeId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setParentFolderId(Ljava/lang/String;)V
    .locals 0
    .parameter "parentFolderId"

    .prologue
    .line 176
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->parentFolderId:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 191
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->password:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 116
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->path:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setPublicName(Ljava/lang/String;)V
    .locals 0
    .parameter "publicName"

    .prologue
    .line 146
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->publicName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setShared(Ljava/lang/String;)V
    .locals 0
    .parameter "shared"

    .prologue
    .line 131
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->shared:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setShowComments(Ljava/lang/String;)V
    .locals 0
    .parameter "showComments"

    .prologue
    .line 161
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->showComments:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 101
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFolderImpl;->userId:Ljava/lang/String;

    .line 102
    return-void
.end method
