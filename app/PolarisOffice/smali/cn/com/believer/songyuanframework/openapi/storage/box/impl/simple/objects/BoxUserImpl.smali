.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxUserImpl;
.super Ljava/lang/Object;
.source "BoxUserImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;


# instance fields
.field private accessId:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private login:Ljava/lang/String;

.field private spaceAmount:J

.field private spaceUsed:J

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxUserImpl;->accessId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxUserImpl;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxUserImpl;->login:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceAmount()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxUserImpl;->spaceAmount:J

    return-wide v0
.end method

.method public getSpaceUsed()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxUserImpl;->spaceUsed:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxUserImpl;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessId(Ljava/lang/String;)V
    .locals 0
    .parameter "accessId"

    .prologue
    .line 74
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxUserImpl;->accessId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 59
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxUserImpl;->email:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setLogin(Ljava/lang/String;)V
    .locals 0
    .parameter "login"

    .prologue
    .line 44
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxUserImpl;->login:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setSpaceAmount(J)V
    .locals 0
    .parameter "spaceAmount"

    .prologue
    .line 103
    iput-wide p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxUserImpl;->spaceAmount:J

    .line 104
    return-void
.end method

.method public setSpaceUsed(J)V
    .locals 0
    .parameter "spaceUsed"

    .prologue
    .line 117
    iput-wide p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxUserImpl;->spaceUsed:J

    .line 118
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 89
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxUserImpl;->userId:Ljava/lang/String;

    .line 90
    return-void
.end method
