.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PrivateShareRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "PrivateShareRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;


# instance fields
.field private authToken:Ljava/lang/String;

.field private emails:[Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private nofity:Z

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
    .line 128
    const-string v0, "private_share"

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PrivateShareRequestImpl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PrivateShareRequestImpl;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PrivateShareRequestImpl;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PrivateShareRequestImpl;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PrivateShareRequestImpl;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public isNofity()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PrivateShareRequestImpl;->nofity:Z

    return v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 46
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PrivateShareRequestImpl;->authToken:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 91
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PrivateShareRequestImpl;->emails:[Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 106
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PrivateShareRequestImpl;->message:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setNofity(Z)V
    .locals 0
    .parameter "nofity"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PrivateShareRequestImpl;->nofity:Z

    .line 122
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 61
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PrivateShareRequestImpl;->target:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .parameter "targetId"

    .prologue
    .line 76
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PrivateShareRequestImpl;->targetId:Ljava/lang/String;

    .line 77
    return-void
.end method
