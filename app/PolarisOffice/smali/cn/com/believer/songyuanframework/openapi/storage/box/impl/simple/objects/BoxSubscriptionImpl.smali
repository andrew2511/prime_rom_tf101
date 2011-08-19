.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxSubscriptionImpl;
.super Ljava/lang/Object;
.source "BoxSubscriptionImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxSubscription;


# instance fields
.field private boxId:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxSubscriptionImpl;->boxId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxSubscriptionImpl;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxSubscriptionImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxSubscriptionImpl;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setBoxId(Ljava/lang/String;)V
    .locals 0
    .parameter "boxId"

    .prologue
    .line 38
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxSubscriptionImpl;->boxId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 83
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxSubscriptionImpl;->status:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 68
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxSubscriptionImpl;->url:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 53
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxSubscriptionImpl;->userName:Ljava/lang/String;

    .line 54
    return-void
.end method
