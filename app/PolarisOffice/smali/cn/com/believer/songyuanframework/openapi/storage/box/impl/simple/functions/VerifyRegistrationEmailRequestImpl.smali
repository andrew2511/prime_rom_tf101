.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/VerifyRegistrationEmailRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "VerifyRegistrationEmailRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;


# instance fields
.field private loginName:Ljava/lang/String;


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
    .line 38
    const-string v0, "verify_registration_email"

    return-object v0
.end method

.method public getLoginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/VerifyRegistrationEmailRequestImpl;->loginName:Ljava/lang/String;

    return-object v0
.end method

.method public setLoginName(Ljava/lang/String;)V
    .locals 0
    .parameter "loginName"

    .prologue
    .line 31
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/VerifyRegistrationEmailRequestImpl;->loginName:Ljava/lang/String;

    .line 32
    return-void
.end method
