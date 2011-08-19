.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/MoveRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "MoveRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;


# instance fields
.field private authToken:Ljava/lang/String;

.field private destinationId:Ljava/lang/String;

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
    .line 91
    const-string v0, "move"

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/MoveRequestImpl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/MoveRequestImpl;->destinationId:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/MoveRequestImpl;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/MoveRequestImpl;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 39
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/MoveRequestImpl;->authToken:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setDestinationId(Ljava/lang/String;)V
    .locals 0
    .parameter "destinationId"

    .prologue
    .line 84
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/MoveRequestImpl;->destinationId:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 54
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/MoveRequestImpl;->target:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .parameter "targetId"

    .prologue
    .line 69
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/MoveRequestImpl;->targetId:Ljava/lang/String;

    .line 70
    return-void
.end method
