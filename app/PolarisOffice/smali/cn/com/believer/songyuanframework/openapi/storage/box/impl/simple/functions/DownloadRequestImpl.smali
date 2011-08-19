.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "DownloadRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;


# instance fields
.field private asFile:Z

.field private authToken:Ljava/lang/String;

.field private fileId:Ljava/lang/String;

.field private inFile:Ljava/io/File;


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
    .line 100
    const-string v0, "download"

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadRequestImpl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadRequestImpl;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getInFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadRequestImpl;->inFile:Ljava/io/File;

    return-object v0
.end method

.method public isAsFile()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadRequestImpl;->asFile:Z

    return v0
.end method

.method public setAsFile(Z)V
    .locals 0
    .parameter "asFile"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadRequestImpl;->asFile:Z

    .line 79
    return-void
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 48
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadRequestImpl;->authToken:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .parameter "fileId"

    .prologue
    .line 63
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadRequestImpl;->fileId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setInFile(Ljava/io/File;)V
    .locals 0
    .parameter "inFile"

    .prologue
    .line 93
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadRequestImpl;->inFile:Ljava/io/File;

    .line 94
    return-void
.end method
