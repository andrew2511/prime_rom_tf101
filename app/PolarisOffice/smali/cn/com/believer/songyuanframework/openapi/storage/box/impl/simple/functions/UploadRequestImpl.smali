.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/UploadRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "UploadRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;


# instance fields
.field private asFile:Z

.field private authToken:Ljava/lang/String;

.field private dataMap:Ljava/util/Map;

.field private folderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "upload"

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/UploadRequestImpl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDataMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/UploadRequestImpl;->dataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/UploadRequestImpl;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public isAsFile()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/UploadRequestImpl;->asFile:Z

    return v0
.end method

.method public setAsFile(Z)V
    .locals 0
    .parameter "asFile"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/UploadRequestImpl;->asFile:Z

    .line 75
    return-void
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 44
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/UploadRequestImpl;->authToken:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setDataMap(Ljava/util/Map;)V
    .locals 0
    .parameter "dataMap"

    .prologue
    .line 89
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/UploadRequestImpl;->dataMap:Ljava/util/Map;

    .line 90
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .parameter "folderId"

    .prologue
    .line 59
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/UploadRequestImpl;->folderId:Ljava/lang/String;

    .line 60
    return-void
.end method
