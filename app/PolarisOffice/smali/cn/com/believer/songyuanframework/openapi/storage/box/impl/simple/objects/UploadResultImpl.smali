.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/UploadResultImpl;
.super Ljava/lang/Object;
.source "UploadResultImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;


# instance fields
.field private errorInfo:Ljava/lang/String;

.field private file:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

.field private hasError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/UploadResultImpl;->errorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/UploadResultImpl;->file:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    return-object v0
.end method

.method public isHasError()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/UploadResultImpl;->hasError:Z

    return v0
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "errorInfo"

    .prologue
    .line 51
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/UploadResultImpl;->errorInfo:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setFile(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 36
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/UploadResultImpl;->file:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    .line 37
    return-void
.end method

.method public setHasError(Z)V
    .locals 0
    .parameter "hasError"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/UploadResultImpl;->hasError:Z

    .line 67
    return-void
.end method
