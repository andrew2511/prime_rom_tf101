.class public Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;
.super Lcom/asus/dmlib/syncml/dm/DMCommunicator;
.source "DMClientCommunicator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DMClientCommunicator"


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/syncml/dm/IDMSessionHandler;Lcom/asus/dmlib/mo/DMAcc;)V
    .locals 1
    .parameter "pSesHandler"
    .parameter "dmAcc"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/asus/dmlib/syncml/dm/DMCommunicator;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->mSessionHandler:Lcom/asus/dmlib/syncml/dm/IDMSessionHandler;

    .line 26
    invoke-static {}, Lcom/asus/dmlib/mo/DevInfo;->getInstance()Lcom/asus/dmlib/mo/DevInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    .line 27
    iput-object p2, p0, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    .line 28
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmConfig;->getInstance()Lcom/asus/dmlib/vdm/VdmConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    .line 29
    return-void
.end method

.method private execServCommand(Lcom/asus/dmlib/syncml/pack/ServerPackage;Lcom/asus/dmlib/syncml/pack/ClientPackage;)V
    .locals 7
    .parameter "servPack"
    .parameter "clientPack"

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/pack/ServerPackage;->getCommandArray()[Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    move-result-object v2

    .line 102
    .local v2, commands:[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    const-string v5, "DMClientCommunicator"

    const-string v6, "DMClientCommunicator.execServCommand() start"

    invoke-static {v5, v6}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    move-object v0, v2

    .local v0, arr$:[Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 105
    .local v1, cmd:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    invoke-virtual {p2}, Lcom/asus/dmlib/syncml/pack/ClientPackage;->getSyncML()Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/asus/dmlib/syncml/message/command/BaseCommand;->execute(Lcom/asus/dmlib/syncml/message/container/SyncML;)V

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v1           #cmd:Lcom/asus/dmlib/syncml/message/command/BaseCommand;
    :cond_0
    const-string v5, "DMClientCommunicator"

    const-string v6, "DMClientCommunicator.execServCommand() end"

    invoke-static {v5, v6}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method


# virtual methods
.method protected handlePackage(Lcom/asus/dmlib/syncml/message/container/SyncHdr;Z)Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .locals 13
    .parameter "pRcvSyncHdr"
    .parameter "isPackageOne"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/SyncMLException;,
            Lcom/asus/dmlib/syncml/exception/DMException;,
            Lcom/asus/dmlib/syncml/exception/SyncMLElementNotSupportException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 32
    iget-object v10, p0, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getInputMessageBuf()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    .line 33
    .local v2, inputBuffer:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Lcom/asus/dmlib/syncml/message/container/SyncML;>;"
    iget-object v10, p0, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getOutputMessageBuf()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    .line 38
    .local v4, outputBuffer:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Lcom/asus/dmlib/syncml/message/container/SyncML;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 39
    const-string v10, "DMClientCommunicator"

    const-string v11, "Getting the next message to send from output buffer."

    invoke-static {v10, v11}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/asus/dmlib/syncml/message/container/SyncML;

    .line 42
    .local v7, response:Lcom/asus/dmlib/syncml/message/container/SyncML;
    invoke-virtual {v7}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v10

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v9, v10, v11

    .line 43
    .local v9, statusOnSyncHdr:Lcom/asus/dmlib/syncml/message/management/Status;
    const/16 v10, 0xc8

    invoke-virtual {v9, v10}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    .line 44
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getMsgID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/asus/dmlib/syncml/message/management/Status;->setMsgRef(Ljava/lang/String;)V

    .line 81
    .end local v9           #statusOnSyncHdr:Lcom/asus/dmlib/syncml/message/management/Status;
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->setState(I)V

    .line 82
    invoke-virtual {v7}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->setFinal(Z)V

    .line 95
    const-string v10, "DMClientCommunicator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "response syncML: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/asus/dmlib/syncml/message/container/SyncML;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v7}, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->prepareRespMsg(Lcom/asus/dmlib/syncml/message/container/SyncML;)Lcom/asus/dmlib/syncml/pack/BearerPackage;

    move-result-object v10

    return-object v10

    .line 47
    .end local v7           #response:Lcom/asus/dmlib/syncml/message/container/SyncML;
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v10

    new-array v10, v10, [Lcom/asus/dmlib/syncml/message/container/SyncML;

    invoke-virtual {v2, v10}, Ljava/util/concurrent/LinkedBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-object v0, v10

    check-cast v0, [Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-object v3, v0

    .line 49
    .local v3, messages:[Lcom/asus/dmlib/syncml/message/container/SyncML;
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 50
    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 54
    invoke-virtual {p0, v3}, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->combineMessages([Lcom/asus/dmlib/syncml/message/container/SyncML;)Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v5

    .line 56
    .local v5, pack:Lcom/asus/dmlib/syncml/message/container/SyncML;
    new-instance v8, Lcom/asus/dmlib/syncml/pack/ServerPackage;

    iget-object v10, p0, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-direct {v8, v5, v10}, Lcom/asus/dmlib/syncml/pack/ServerPackage;-><init>(Lcom/asus/dmlib/syncml/message/container/SyncML;Lcom/asus/dmlib/syncml/dm/DMSession;)V

    .line 57
    .local v8, servPack:Lcom/asus/dmlib/syncml/pack/ServerPackage;
    new-instance v1, Lcom/asus/dmlib/syncml/pack/ClientPackage;

    iget-object v10, p0, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    iget-object v11, p0, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->mSession:Lcom/asus/dmlib/syncml/dm/DMSession;

    invoke-direct {v1, v8, v10, v11}, Lcom/asus/dmlib/syncml/pack/ClientPackage;-><init>(Lcom/asus/dmlib/syncml/pack/ServerPackage;Lcom/asus/dmlib/mo/DMAcc;Lcom/asus/dmlib/syncml/dm/DMSession;)V

    .line 59
    .local v1, clientPack:Lcom/asus/dmlib/syncml/pack/ClientPackage;
    invoke-direct {p0, v8, v1}, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->execServCommand(Lcom/asus/dmlib/syncml/pack/ServerPackage;Lcom/asus/dmlib/syncml/pack/ClientPackage;)V

    .line 60
    invoke-virtual {v1}, Lcom/asus/dmlib/syncml/pack/ClientPackage;->getSyncML()Lcom/asus/dmlib/syncml/message/container/SyncML;

    move-result-object v7

    .line 62
    .restart local v7       #response:Lcom/asus/dmlib/syncml/message/container/SyncML;
    iget-object v10, p0, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getMaxMessageSize()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    invoke-virtual {v7}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getSyncBody()Lcom/asus/dmlib/syncml/message/container/SyncBody;

    move-result-object v10

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/message/container/SyncBody;->getCommandArray()[Lcom/asus/dmlib/syncml/message/command/BaseCommand;

    move-result-object v10

    array-length v10, v10

    if-le v10, v12, :cond_0

    .line 64
    iget-object v10, p0, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->mContentType:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/asus/dmlib/syncml/message/container/SyncML;->getLength(Ljava/lang/String;)I

    move-result v10

    iget v11, p0, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->mOverhead:I

    add-int v6, v10, v11

    .line 66
    .local v6, packageLength:I
    iget-object v10, p0, Lcom/asus/dmlib/syncml/dm/DMClientCommunicator;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    invoke-virtual {v10}, Lcom/asus/dmlib/syncml/dm/DMSessionState;->getMaxMessageSize()I

    move-result v10

    if-le v6, v10, :cond_0

    .line 67
    const-string v10, "Fragmenting the message to be sent."

    invoke-static {v10}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
