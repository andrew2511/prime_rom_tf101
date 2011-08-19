.class public Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;
.source "BoxObjectFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BaseBoxFactory;-><init>()V

    return-void
.end method

.method public static createBox()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/Box;
    .locals 2

    .prologue
    .line 58
    const-string v1, "box4j.config.objectfactory.Box"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/Box;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createBoxAbstractFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;
    .locals 2

    .prologue
    .line 108
    const-string v1, "box4j.config.objectfactory.BoxAbstractFile"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createBoxFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;
    .locals 2

    .prologue
    .line 28
    const-string v1, "box4j.config.objectfactory.BoxFile"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createBoxFolder()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    .locals 2

    .prologue
    .line 38
    const-string v1, "box4j.config.objectfactory.BoxFolder"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createBoxFriend()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFriend;
    .locals 2

    .prologue
    .line 48
    const-string v1, "box4j.config.objectfactory.BoxFriend"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFriend;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createBoxSubscription()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxSubscription;
    .locals 2

    .prologue
    .line 68
    const-string v1, "box4j.config.objectfactory.BoxSubscription"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxSubscription;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createBoxTag()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxTag;
    .locals 2

    .prologue
    .line 78
    const-string v1, "box4j.config.objectfactory.BoxTag"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxTag;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createBoxUser()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    .locals 2

    .prologue
    .line 88
    const-string v1, "box4j.config.objectfactory.BoxUser"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method

.method public static createUploadResult()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;
    .locals 2

    .prologue
    .line 98
    const-string v1, "box4j.config.objectfactory.UploadResult"

    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, obj:Ljava/lang/Object;
    check-cast v0, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0
.end method
