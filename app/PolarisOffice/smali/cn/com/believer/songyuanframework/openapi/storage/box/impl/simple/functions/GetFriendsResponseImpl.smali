.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFriendsResponseImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;
.source "GetFriendsResponseImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;


# instance fields
.field private encodedFriends:Ljava/lang/String;

.field private friendList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncodedFriends()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFriendsResponseImpl;->encodedFriends:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendList()Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFriendsResponseImpl;->friendList:Ljava/util/List;

    return-object v0
.end method

.method public setEncodedFriends(Ljava/lang/String;)V
    .locals 0
    .parameter "encodedFriends"

    .prologue
    .line 50
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFriendsResponseImpl;->encodedFriends:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setFriendList(Ljava/util/List;)V
    .locals 0
    .parameter "friendList"

    .prologue
    .line 35
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetFriendsResponseImpl;->friendList:Ljava/util/List;

    .line 36
    return-void
.end method
