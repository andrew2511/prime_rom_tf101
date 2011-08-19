.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/SetDescriptionRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "SetDescriptionRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/SetDescriptionRequest;


# instance fields
.field private authToken:Ljava/lang/String;

.field private description:Ljava/lang/String;

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
    .line 92
    const-string v0, "set_description"

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/SetDescriptionRequestImpl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/SetDescriptionRequestImpl;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/SetDescriptionRequestImpl;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/SetDescriptionRequestImpl;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 40
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/SetDescriptionRequestImpl;->authToken:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 85
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/SetDescriptionRequestImpl;->description:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 55
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/SetDescriptionRequestImpl;->target:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .parameter "targetId"

    .prologue
    .line 70
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/SetDescriptionRequestImpl;->targetId:Ljava/lang/String;

    .line 71
    return-void
.end method
