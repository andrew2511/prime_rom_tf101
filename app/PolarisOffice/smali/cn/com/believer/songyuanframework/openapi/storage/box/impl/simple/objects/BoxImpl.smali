.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxImpl;
.super Ljava/lang/Object;
.source "BoxImpl.java"

# interfaces
.implements Lcn/com/believer/songyuanframework/openapi/storage/box/objects/Box;


# instance fields
.field private id:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private url:Ljava/lang/String;


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
    .line 27
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxImpl;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 35
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxImpl;->id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 65
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxImpl;->status:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 50
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/objects/BoxImpl;->url:Ljava/lang/String;

    .line 51
    return-void
.end method
