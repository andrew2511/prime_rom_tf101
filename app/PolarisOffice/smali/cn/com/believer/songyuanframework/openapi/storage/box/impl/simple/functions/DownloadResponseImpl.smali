.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadResponseImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;
.source "DownloadResponseImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;


# instance fields
.field private asFile:Z

.field private outFile:Ljava/io/File;

.field private rawData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadResponseImpl;->outFile:Ljava/io/File;

    return-object v0
.end method

.method public getRawData()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadResponseImpl;->rawData:[B

    return-object v0
.end method

.method public isAsFile()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadResponseImpl;->asFile:Z

    return v0
.end method

.method public setAsFile(Z)V
    .locals 0
    .parameter "asFile"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadResponseImpl;->asFile:Z

    .line 42
    return-void
.end method

.method public setOutFile(Ljava/io/File;)V
    .locals 0
    .parameter "outFile"

    .prologue
    .line 71
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadResponseImpl;->outFile:Ljava/io/File;

    .line 72
    return-void
.end method

.method public setRawData([B)V
    .locals 0
    .parameter "rawData"

    .prologue
    .line 56
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/DownloadResponseImpl;->rawData:[B

    .line 57
    return-void
.end method
