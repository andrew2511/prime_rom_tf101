.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PublicShareResponseImpl;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;
.source "PublicShareResponseImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;


# instance fields
.field private publicName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/BoxResponseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getPublicName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PublicShareResponseImpl;->publicName:Ljava/lang/String;

    return-object v0
.end method

.method public setPublicName(Ljava/lang/String;)V
    .locals 0
    .parameter "publicName"

    .prologue
    .line 30
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/functions/PublicShareResponseImpl;->publicName:Ljava/lang/String;

    .line 31
    return-void
.end method
