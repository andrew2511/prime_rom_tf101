.class public Lcom/asus/dmlib/syncml/pack/ServerPackage;
.super Lcom/asus/dmlib/syncml/pack/SyncMLPackage;
.source "ServerPackage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerPackage"


# instance fields
.field private mAuthenticationType:Ljava/lang/String;

.field private mMaxCommandSize:I

.field private mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

.field private mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/syncml/message/container/SyncML;Lcom/asus/dmlib/syncml/dm/DMSession;)V
    .locals 2
    .parameter "pSyncML"
    .parameter "pDMSession"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/pack/SyncMLPackage;-><init>()V

    .line 23
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 24
    :cond_0
    const-string v0, "ServerPackage"

    const-string v1, "IllegalArgumentException"

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 31
    :cond_1
    iput-object p1, p0, Lcom/asus/dmlib/syncml/pack/ServerPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    .line 32
    iput-object p2, p0, Lcom/asus/dmlib/syncml/pack/ServerPackage;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    .line 33
    return-void
.end method


# virtual methods
.method public addStatus(Lcom/asus/dmlib/syncml/message/command/BaseCommand;I)V
    .locals 2
    .parameter "command"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 61
    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CommandElement and statusCode must not be null when adding a Status to ServerPackage."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    instance-of v0, p1, Lcom/asus/dmlib/syncml/message/command/Results;

    if-eqz v0, :cond_2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_2

    .line 72
    :cond_2
    return-void
.end method

.method public getAuthenticationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/ServerPackage;->mAuthenticationType:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandArray()[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/ServerPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getCommandArray()[Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    move-result-object v0

    return-object v0
.end method

.method public getMaxObjectSize()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/ServerPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v0

    return-object v0
.end method

.method public getSyncML()Lcom/asus/dmlib/syncml/message/container/SyncML;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/dmlib/syncml/pack/ServerPackage;->mSyncML:Lcom/asus/dmlib/syncml/message/container/SyncML;

    return-object v0
.end method

.method public setAuthenticationType(Ljava/lang/String;)V
    .locals 2
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set authentication typeto null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/pack/ServerPackage;->mAuthenticationType:Ljava/lang/String;

    .line 53
    return-void
.end method
