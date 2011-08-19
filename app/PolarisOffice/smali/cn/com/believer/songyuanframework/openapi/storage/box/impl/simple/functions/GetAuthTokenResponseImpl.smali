.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAuthTokenResponseImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;
.source "GetAuthTokenResponseImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;


# instance fields
.field private authToken:Ljava/lang/String;

.field private user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAuthTokenResponseImpl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAuthTokenResponseImpl;->user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 34
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAuthTokenResponseImpl;->authToken:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setUser(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 49
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAuthTokenResponseImpl;->user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;

    .line 50
    return-void
.end method
