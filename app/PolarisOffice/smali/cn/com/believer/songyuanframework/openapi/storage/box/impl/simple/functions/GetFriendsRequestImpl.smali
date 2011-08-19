.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFriendsRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "GetFriendsRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;


# instance fields
.field private authToken:Ljava/lang/String;

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
    .line 56
    const-string v0, "get_friends"

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFriendsRequestImpl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFriendsRequestImpl;->params:[Ljava/lang/String;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 34
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFriendsRequestImpl;->authToken:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setParams([Ljava/lang/String;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 49
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFriendsRequestImpl;->params:[Ljava/lang/String;

    .line 50
    return-void
.end method
