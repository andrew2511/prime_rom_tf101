.class public Lorg/jivesoftware/smack/ProtoBufAuthentication;
.super Ljava/lang/Object;
.source "ProtoBufAuthentication.java"


# instance fields
.field private final accountId:J

.field private final adaptiveHeartbeat:Z

.field private final compress:I

.field private final connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private final deviceId:Ljava/lang/String;

.field private heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

.field private final heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

.field private final lastRmqId:J

.field private final loginSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rmq2S2dIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final useRmq:Z

.field private final useRmq2:Z


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;ZJZJLjava/util/List;IZLorg/jivesoftware/smack/packet/HeartbeatStat;Ljava/util/Map;)V
    .locals 0
    .parameter "connection"
    .parameter "deviceId"
    .parameter "useRmq"
    .parameter "lastRmqId"
    .parameter "useRmq2"
    .parameter "accountId"
    .parameter
    .parameter "compress"
    .parameter "adaptiveHeartbeat"
    .parameter "heartbeatStat"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Ljava/lang/String;",
            "ZJZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZ",
            "Lorg/jivesoftware/smack/packet/HeartbeatStat;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p9, rmq2S2dIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p13, loginSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 50
    iput-object p2, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->deviceId:Ljava/lang/String;

    .line 51
    iput-boolean p3, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->useRmq:Z

    .line 52
    iput-boolean p6, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->useRmq2:Z

    .line 53
    iput-wide p4, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->lastRmqId:J

    .line 54
    iput-wide p7, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->accountId:J

    .line 55
    iput-object p9, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->rmq2S2dIds:Ljava/util/List;

    .line 56
    iput-object p13, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->loginSettings:Ljava/util/Map;

    .line 57
    iput p10, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->compress:I

    .line 58
    iput-boolean p11, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->adaptiveHeartbeat:Z

    .line 59
    iput-object p12, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    .line 60
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 26
    .parameter "username"
    .parameter "password"
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, user:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, domain:Ljava/lang/String;
    new-instance v3, Lorg/jivesoftware/smack/packet/LoginRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->deviceId:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->useRmq:Z

    move v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->lastRmqId:J

    move-wide v10, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->useRmq2:Z

    move v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->rmq2S2dIds:Ljava/util/List;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->accountId:J

    move-wide v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->compress:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->adaptiveHeartbeat:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->loginSettings:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v19}, Lorg/jivesoftware/smack/packet/LoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZLjava/util/List;JIZLorg/jivesoftware/smack/packet/HeartbeatStat;Ljava/util/Map;)V

    .line 86
    .local v3, login:Lorg/jivesoftware/smack/packet/LoginRequest;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/LoginRequest;->getPacketID()Ljava/lang/String;

    move-result-object v22

    .line 87
    .local v22, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    move-object v6, v0

    new-instance v7, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v20

    .line 90
    .local v20, collector:Lorg/jivesoftware/smack/PacketCollector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    move-object v6, v0

    iget-object v6, v6, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v6, v3}, Lorg/jivesoftware/smack/PacketWriter;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 94
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, v20

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v24

    .line 95
    .local v24, packet:Lorg/jivesoftware/smack/packet/Packet;
    if-nez v24, :cond_0

    .line 96
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "Authentication timed out."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 97
    :cond_0
    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/jivesoftware/smack/packet/LoginResponse;

    move v6, v0

    if-nez v6, :cond_1

    .line 100
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "Expected LoginResponse!"

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 102
    :cond_1
    move-object/from16 v0, v24

    check-cast v0, Lorg/jivesoftware/smack/packet/LoginResponse;

    move-object/from16 v25, v0

    .line 103
    .local v25, response:Lorg/jivesoftware/smack/packet/LoginResponse;
    invoke-virtual/range {v25 .. v25}, Lorg/jivesoftware/smack/packet/LoginResponse;->getJid()Ljava/lang/String;

    move-result-object v23

    .line 104
    .local v23, jid:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    invoke-virtual/range {v25 .. v25}, Lorg/jivesoftware/smack/packet/LoginResponse;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v21

    .line 106
    .local v21, error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-nez v21, :cond_2

    .line 111
    new-instance v21, Lorg/jivesoftware/smack/packet/XMPPError;

    .end local v21           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    const/16 v6, 0x191

    move-object/from16 v0, v21

    move v1, v6

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    .line 113
    .restart local v21       #error:Lorg/jivesoftware/smack/packet/XMPPError;
    :cond_2
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 115
    .end local v21           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    :cond_3
    invoke-virtual/range {v25 .. v25}, Lorg/jivesoftware/smack/packet/LoginResponse;->getSettings()Ljava/util/Map;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jivesoftware/smack/ProtoBufAuthentication;->settings:Ljava/util/Map;

    .line 116
    invoke-virtual/range {v25 .. v25}, Lorg/jivesoftware/smack/packet/LoginResponse;->getHeartbeatConfig()Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jivesoftware/smack/ProtoBufAuthentication;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    .line 119
    invoke-virtual/range {v20 .. v20}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 121
    return-object v23
.end method

.method public getHeartbeatConfig()Lorg/jivesoftware/smack/packet/HeartbeatConfig;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    return-object v0
.end method

.method public getServerSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->settings:Ljava/util/Map;

    return-object v0
.end method
