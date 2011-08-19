.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAccountTreeRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "GetAccountTreeRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;


# instance fields
.field private authToken:Ljava/lang/String;

.field private folderId:Ljava/lang/String;

.field private params:[Ljava/lang/String;


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
    .line 74
    const-string v0, "get_account_tree"

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAccountTreeRequestImpl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAccountTreeRequestImpl;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAccountTreeRequestImpl;->params:[Ljava/lang/String;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 37
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAccountTreeRequestImpl;->authToken:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .parameter "folderId"

    .prologue
    .line 52
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAccountTreeRequestImpl;->folderId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setParams([Ljava/lang/String;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 67
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAccountTreeRequestImpl;->params:[Ljava/lang/String;

    .line 68
    return-void
.end method
