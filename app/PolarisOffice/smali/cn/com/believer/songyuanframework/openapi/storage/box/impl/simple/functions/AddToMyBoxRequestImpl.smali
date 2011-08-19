.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/AddToMyBoxRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "AddToMyBoxRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;


# instance fields
.field private authToken:Ljava/lang/String;

.field private fileId:Ljava/lang/String;

.field private folderId:Ljava/lang/String;

.field private publicName:Ljava/lang/String;

.field private tags:[Ljava/lang/String;


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
    .line 110
    const-string v0, "add_to_mybox"

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/AddToMyBoxRequestImpl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/AddToMyBoxRequestImpl;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/AddToMyBoxRequestImpl;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/AddToMyBoxRequestImpl;->publicName:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/AddToMyBoxRequestImpl;->tags:[Ljava/lang/String;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 43
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/AddToMyBoxRequestImpl;->authToken:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .parameter "fileId"

    .prologue
    .line 58
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/AddToMyBoxRequestImpl;->fileId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .parameter "folderId"

    .prologue
    .line 88
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/AddToMyBoxRequestImpl;->folderId:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setPublicName(Ljava/lang/String;)V
    .locals 0
    .parameter "publicName"

    .prologue
    .line 73
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/AddToMyBoxRequestImpl;->publicName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setTags([Ljava/lang/String;)V
    .locals 0
    .parameter "tags"

    .prologue
    .line 103
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/AddToMyBoxRequestImpl;->tags:[Ljava/lang/String;

    .line 104
    return-void
.end method
