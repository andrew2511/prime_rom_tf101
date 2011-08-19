.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFileInfoRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "GetFileInfoRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;


# instance fields
.field private authToken:Ljava/lang/String;

.field private fileId:Ljava/lang/String;


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
    .line 56
    const-string v0, "get_file_info"

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFileInfoRequestImpl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFileInfoRequestImpl;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 34
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFileInfoRequestImpl;->authToken:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .parameter "fileId"

    .prologue
    .line 49
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFileInfoRequestImpl;->fileId:Ljava/lang/String;

    .line 50
    return-void
.end method
