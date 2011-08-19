.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/RequestFriendsRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "RequestFriendsRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;


# instance fields
.field private authToken:Ljava/lang/String;

.field private emails:[Ljava/lang/String;

.field private message:Ljava/lang/String;

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
    .line 92
    const-string v0, "request_friends"

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/RequestFriendsRequestImpl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/RequestFriendsRequestImpl;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/RequestFriendsRequestImpl;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/RequestFriendsRequestImpl;->params:[Ljava/lang/String;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 40
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/RequestFriendsRequestImpl;->authToken:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 55
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/RequestFriendsRequestImpl;->emails:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 70
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/RequestFriendsRequestImpl;->message:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setParams([Ljava/lang/String;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 85
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/RequestFriendsRequestImpl;->params:[Ljava/lang/String;

    .line 86
    return-void
.end method
