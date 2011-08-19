.class public abstract Lcom/asus/dmlib/syncml/message/command/BaseCommand;
.super Ljava/lang/Object;
.source "BaseCommand.java"


# instance fields
.field protected mAppCommandRef:Ljava/lang/Object;

.field protected mCmdID:Ljava/lang/String;

.field protected mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

.field protected mIsNoResp:Z

.field protected mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

.field protected mMsgID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->mIsNoResp:Z

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
.end method

.method public getAppCommandRef()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->mAppCommandRef:Ljava/lang/Object;

    return-object v0
.end method

.method public getCmdID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->mCmdID:Ljava/lang/String;

    return-object v0
.end method

.method public getCred()Lcom/asus/dmlib/syncml/message/common/Cred;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    return-object v0
.end method

.method public abstract getItems()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/syncml/dm/message/description/Item;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLength(Ljava/lang/String;)I
.end method

.method public getMessageID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->mMsgID:Ljava/lang/String;

    return-object v0
.end method

.method public getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    return-object v0
.end method

.method public getNoResp()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->mIsNoResp:Z

    return v0
.end method

.method public abstract getNumItems()I
.end method

.method public abstract hasNestedCommands()Z
.end method

.method public abstract rollback()V
.end method

.method public setAppCommandRef(Ljava/lang/Object;)V
    .locals 2
    .parameter "pAppCommandRef"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null appCommandRef"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->mAppCommandRef:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public setCmdID(Ljava/lang/String;)V
    .locals 0
    .parameter "cmdID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 27
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->mCmdID:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setCred(Lcom/asus/dmlib/syncml/message/common/Cred;)V
    .locals 0
    .parameter "cred"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->mCred:Lcom/asus/dmlib/syncml/message/common/Cred;

    .line 44
    return-void
.end method

.method public setMessageID(Ljava/lang/String;)V
    .locals 2
    .parameter "pMsgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null messageID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->mMsgID:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setMeta(Lcom/asus/dmlib/syncml/dm/message/description/Meta;)V
    .locals 0
    .parameter "meta"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->mMeta:Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    .line 52
    return-void
.end method

.method public setNoResp(Z)V
    .locals 0
    .parameter "noResp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;
        }
    .end annotation

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->mIsNoResp:Z

    .line 36
    return-void
.end method

.method public abstract toByteArray(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
