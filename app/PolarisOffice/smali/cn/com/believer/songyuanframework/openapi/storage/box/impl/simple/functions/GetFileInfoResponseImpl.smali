.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFileInfoResponseImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;
.source "GetFileInfoResponseImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;


# instance fields
.field private file:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFileInfoResponseImpl;->file:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    return-object v0
.end method

.method public setFile(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 31
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFileInfoResponseImpl;->file:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    .line 32
    return-void
.end method
