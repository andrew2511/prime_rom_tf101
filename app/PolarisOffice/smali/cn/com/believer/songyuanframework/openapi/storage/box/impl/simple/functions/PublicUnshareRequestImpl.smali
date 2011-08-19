.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PublicUnshareRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "PublicUnshareRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;


# instance fields
.field private authToken:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private targetId:Ljava/lang/String;


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
    const-string v0, "public_unshare"

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PublicUnshareRequestImpl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PublicUnshareRequestImpl;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PublicUnshareRequestImpl;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 37
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PublicUnshareRequestImpl;->authToken:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 52
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PublicUnshareRequestImpl;->target:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .parameter "targetId"

    .prologue
    .line 67
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PublicUnshareRequestImpl;->targetId:Ljava/lang/String;

    .line 68
    return-void
.end method
