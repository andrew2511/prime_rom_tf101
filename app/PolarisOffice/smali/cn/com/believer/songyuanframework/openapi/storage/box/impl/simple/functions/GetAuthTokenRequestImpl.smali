.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAuthTokenRequestImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxRequestImpl;
.source "GetAuthTokenRequestImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;


# instance fields
.field private ticket:Ljava/lang/String;


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
    const-string v0, "get_auth_token"

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAuthTokenRequestImpl;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0
    .parameter "ticket"

    .prologue
    .line 31
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/GetAuthTokenRequestImpl;->ticket:Ljava/lang/String;

    .line 32
    return-void
.end method
