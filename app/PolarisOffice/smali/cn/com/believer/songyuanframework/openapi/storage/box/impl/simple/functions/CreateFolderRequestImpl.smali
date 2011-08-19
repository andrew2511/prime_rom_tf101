.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/CreateFolderRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "CreateFolderRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;


# instance fields
.field private authToken:Ljava/lang/String;

.field private folderName:Ljava/lang/String;

.field private parentFolderId:Ljava/lang/String;

.field private share:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "create_folder"

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/CreateFolderRequestImpl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/CreateFolderRequestImpl;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/CreateFolderRequestImpl;->parentFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public isShare()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/CreateFolderRequestImpl;->share:Z

    return v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 40
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/CreateFolderRequestImpl;->authToken:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .parameter "folderName"

    .prologue
    .line 70
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/CreateFolderRequestImpl;->folderName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setParentFolderId(Ljava/lang/String;)V
    .locals 0
    .parameter "parentFolderId"

    .prologue
    .line 55
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/CreateFolderRequestImpl;->parentFolderId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setShare(Z)V
    .locals 0
    .parameter "share"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/CreateFolderRequestImpl;->share:Z

    .line 86
    return-void
.end method
