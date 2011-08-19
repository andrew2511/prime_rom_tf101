.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/CreateFolderResponseImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;
.source "CreateFolderResponseImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;


# instance fields
.field private folder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getFolder()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/CreateFolderResponseImpl;->folder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;

    return-object v0
.end method

.method public setFolder(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 31
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/CreateFolderResponseImpl;->folder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;

    .line 32
    return-void
.end method
