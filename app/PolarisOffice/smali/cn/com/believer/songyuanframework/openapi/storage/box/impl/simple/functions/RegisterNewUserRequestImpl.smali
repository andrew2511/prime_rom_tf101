.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/RegisterNewUserRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "RegisterNewUserRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;


# instance fields
.field private loginName:Ljava/lang/String;

.field private password:Ljava/lang/String;


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
    .line 56
    const-string v0, "register_new_user"

    return-object v0
.end method

.method public getLoginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/RegisterNewUserRequestImpl;->loginName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/RegisterNewUserRequestImpl;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setLoginName(Ljava/lang/String;)V
    .locals 0
    .parameter "loginName"

    .prologue
    .line 34
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/RegisterNewUserRequestImpl;->loginName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 49
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/RegisterNewUserRequestImpl;->password:Ljava/lang/String;

    .line 50
    return-void
.end method
