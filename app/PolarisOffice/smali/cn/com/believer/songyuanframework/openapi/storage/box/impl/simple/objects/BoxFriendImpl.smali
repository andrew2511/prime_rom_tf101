.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFriendImpl;
.super Ljava/lang/Object;
.source "BoxFriendImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFriend;


# instance fields
.field private accepted:Ljava/lang/String;

.field private avatarUrl:Ljava/lang/String;

.field private boxes:Ljava/util/List;

.field private email:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private subscriptions:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccepted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFriendImpl;->accepted:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFriendImpl;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxes()Ljava/util/List;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFriendImpl;->boxes:Ljava/util/List;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFriendImpl;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFriendImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptions()Ljava/util/List;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFriendImpl;->subscriptions:Ljava/util/List;

    return-object v0
.end method

.method public setAccepted(Ljava/lang/String;)V
    .locals 0
    .parameter "accepted"

    .prologue
    .line 76
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFriendImpl;->accepted:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "avatarUrl"

    .prologue
    .line 91
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFriendImpl;->avatarUrl:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setBoxes(Ljava/util/List;)V
    .locals 0
    .parameter "boxes"

    .prologue
    .line 106
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFriendImpl;->boxes:Ljava/util/List;

    .line 107
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 61
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFriendImpl;->email:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 46
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFriendImpl;->name:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSubscriptions(Ljava/util/List;)V
    .locals 0
    .parameter "subscriptions"

    .prologue
    .line 121
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxFriendImpl;->subscriptions:Ljava/util/List;

    .line 122
    return-void
.end method
