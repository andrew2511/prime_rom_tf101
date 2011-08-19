.class public Lcom/google/android/gsf/gtalkservice/IQPacketManager;
.super Ljava/lang/Object;
.source "IQPacketManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# instance fields
.field private mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

.field private mHandlersMap:Ljava/util/HashMap;

.field private mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

.field private mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mHandlersMap:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 132
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IQPacketMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method


# virtual methods
.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lorg/jivesoftware/smack/packet/IQ;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 49
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/IQPacketManager$1;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/IQPacketManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/IQPacketManager;)V

    invoke-direct {v1, v0, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 56
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 58
    invoke-virtual {p1, p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 59
    return-void
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 6
    .parameter "packet"

    .prologue
    .line 112
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    move-object v3, v0

    .line 113
    .local v3, iq:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, id:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mHandlersMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 118
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mHandlersMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/IQPacketHandler;

    .line 119
    .local v1, handler:Lcom/google/android/gsf/gtalkservice/IQPacketHandler;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    if-eqz v1, :cond_1

    .line 122
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got packet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->log(Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-interface {v1, v3}, Lcom/google/android/gsf/gtalkservice/IQPacketHandler;->handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 125
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mHandlersMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 126
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mHandlersMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    :cond_1
    return-void

    .line 119
    .end local v1           #handler:Lcom/google/android/gsf/gtalkservice/IQPacketHandler;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 127
    .restart local v1       #handler:Lcom/google/android/gsf/gtalkservice/IQPacketHandler;
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;)Z
    .locals 1
    .parameter "packet"
    .parameter "handler"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    move-result v0

    return v0
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z
    .locals 4
    .parameter "packet"
    .parameter "handler"
    .parameter "storeInRmq"

    .prologue
    .line 84
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/jivesoftware/smack/packet/IQ;->setAccountId(J)V

    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mHandlersMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 90
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mHandlersMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->log(Ljava/lang/String;)V

    .line 96
    .end local v0           #id:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    .line 98
    .local v1, retVal:Z
    if-eqz p3, :cond_2

    .line 99
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-virtual {v2, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->send(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 108
    :goto_0
    return v1

    .line 91
    .end local v1           #retVal:Z
    .restart local v0       #id:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 102
    .end local v0           #id:Ljava/lang/String;
    .restart local v1       #retVal:Z
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    invoke-virtual {v2, p1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->send(Lorg/jivesoftware/smack/packet/Packet;)Z

    goto :goto_0

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v2, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v1

    goto :goto_0
.end method

.method public setRmq2Manager(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;)V
    .locals 0
    .parameter "rmq2Mgr"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    .line 75
    return-void
.end method

.method public setRmqManager(Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;)V
    .locals 0
    .parameter "rmqMgr"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    .line 67
    return-void
.end method
