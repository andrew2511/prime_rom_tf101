.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxTagImpl;
.super Ljava/lang/Object;
.source "BoxTagImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxTag;


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxTagImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxTagImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 32
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxTagImpl;->id:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 47
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxTagImpl;->name:Ljava/lang/String;

    .line 48
    return-void
.end method
