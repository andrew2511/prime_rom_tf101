.class public Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;
.super Ljava/lang/Object;
.source "RmqManager.java"


# instance fields
.field private mAckingInterval:I

.field private mNumPacketsReceivedSinceLastAck:I

.field private mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

.field private mProtobufSerializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

.field private final mResendQueue:Ljava/util/LinkedList;

.field private mRmq:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

.field private mRmqAckLock:Ljava/lang/Object;

.field private mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStore;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/PacketSender;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "packetSender"
    .parameter "resolver"

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;

    invoke-direct {v0, p2}, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;-><init>(Landroid/content/ContentResolver;)V

    new-instance v1, Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStoreImpl;

    invoke-direct {v1, p2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStoreImpl;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;-><init>(Lcom/google/android/gsf/gtalkservice/PacketSender;Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStore;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/PacketSender;Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStore;)V
    .locals 2
    .parameter "packetSender"
    .parameter "rmq"
    .parameter "s2dRmq"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    invoke-direct {v1}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;-><init>(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mProtobufSerializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mNumPacketsReceivedSinceLastAck:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mRmqAckLock:Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    .line 69
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mRmq:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    .line 70
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStore;

    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mResendQueue:Ljava/util/LinkedList;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->resendPackets()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 279
    const-string v0, "Rmq"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RmqMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method private makeRmqPacket(JLorg/jivesoftware/smack/packet/Packet;)Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    .locals 9
    .parameter "rmqId"
    .parameter "packet"

    .prologue
    .line 131
    const/4 v8, 0x0

    .line 134
    .local v8, retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mProtobufSerializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    invoke-virtual {p3, v1}, Lorg/jivesoftware/smack/packet/Packet;->serializeAsProtoBuf(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;)[B

    move-result-object v5

    .line 135
    .local v5, bytes:[B
    new-instance v0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;

    const/4 v4, 0x0

    move-object v1, p3

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;-><init>(Lorg/jivesoftware/smack/packet/Packet;JB[B)V
    :try_end_0
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    .end local v5           #bytes:[B
    .end local v8           #retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    .local v0, retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    :goto_0
    return-object v0

    .line 136
    .end local v0           #retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    .restart local v8       #retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 137
    .local v7, pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    const-string v1, "Rmq"

    const-string v2, "makeRmqPacket: caught ProtoBufStreamException"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    .line 140
    .end local v8           #retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    .restart local v0       #retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    goto :goto_0

    .line 138
    .end local v0           #retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    .end local v7           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    .restart local v8       #retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    :catch_1
    move-exception v1

    move-object v6, v1

    .line 139
    .local v6, ioe:Ljava/io/IOException;
    const-string v1, "Rmq"

    const-string v2, "makeRmqPacket: caught IOException"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    .end local v8           #retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    .restart local v0       #retVal:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    goto :goto_0
.end method

.method private processRmqAck(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 11
    .parameter "packet"

    .prologue
    const-wide/16 v9, -0x1

    .line 188
    instance-of v8, p1, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;

    if-eqz v8, :cond_2

    .line 189
    move-object v0, p1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;

    move-object v1, v0

    .line 190
    .local v1, ack:Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v7

    .line 192
    .local v7, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v8, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v7, v8, :cond_1

    .line 194
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;->getAckId()J

    move-result-wide v2

    .line 196
    .local v2, ackId:J
    cmp-long v8, v2, v9

    if-eqz v8, :cond_1

    .line 197
    sget-boolean v8, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GOT RmqAck "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mRmq:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v8, v2, v3}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->removeMessagesUntil(J)V

    .line 222
    .end local v1           #ack:Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;
    .end local v2           #ackId:J
    .end local v7           #type:Lorg/jivesoftware/smack/packet/IQ$Type;
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    instance-of v8, p1, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;

    if-eqz v8, :cond_1

    .line 202
    move-object v0, p1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;

    move-object v6, v0

    .line 203
    .local v6, rmqLastReceived:Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;
    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v7

    .line 205
    .restart local v7       #type:Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v8, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v7, v8, :cond_1

    .line 207
    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;->getLastId()J

    move-result-wide v4

    .line 209
    .local v4, lastRmqId:J
    cmp-long v8, v4, v9

    if-eqz v8, :cond_1

    .line 210
    sget-boolean v8, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GOT RmqLastIdReceived "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    .line 212
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    .line 214
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mRmq:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v8, v4, v5}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->removeMessagesUntil(J)V

    .line 217
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->resendRmqPackets()V

    goto :goto_0
.end method

.method private processRmqId(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 6
    .parameter "packet"

    .prologue
    .line 151
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getRmqId()J

    move-result-wide v1

    .line 153
    .local v1, rmqId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    instance-of v3, p1, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 159
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processS2d: skipping error IQ packet with rmqId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processS2dMessage: rmq-id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    .line 165
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->setLastReceivedRmqIdFromServer(J)V

    .line 169
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mRmqAckLock:Ljava/lang/Object;

    monitor-enter v3

    .line 170
    :try_start_0
    iget v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mNumPacketsReceivedSinceLastAck:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mNumPacketsReceivedSinceLastAck:I

    .line 171
    iget v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mNumPacketsReceivedSinceLastAck:I

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->getAckingInterval()I

    move-result v5

    if-lt v4, v5, :cond_5

    .line 172
    const/4 v0, 0x1

    .line 173
    .local v0, needToSendAck:Z
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mNumPacketsReceivedSinceLastAck:I

    .line 177
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rmqIdReceived: mNumPacketsReceivedSinceLastAck="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mNumPacketsReceivedSinceLastAck:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    .line 183
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->sendRmqAck(J)V

    goto :goto_0

    .line 175
    .end local v0           #needToSendAck:Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #needToSendAck:Z
    goto :goto_1

    .line 177
    .end local v0           #needToSendAck:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private resendPackets()V
    .locals 5

    .prologue
    .line 262
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mResendQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 264
    monitor-exit v1

    .line 276
    return-void

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;

    .line 269
    .local v0, packet:Lorg/jivesoftware/smack/packet/Packet;
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v2, :cond_1

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resend packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Packet;->getRmqId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    invoke-interface {v2, v0}, Lcom/google/android/gsf/gtalkservice/PacketSender;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 274
    monitor-exit v1

    goto :goto_0

    .end local v0           #packet:Lorg/jivesoftware/smack/packet/Packet;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private resendRmqPackets()V
    .locals 8

    .prologue
    .line 225
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mRmq:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v4}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->getRmq1Packets()Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;

    move-result-object v2

    .line 226
    .local v2, list:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->size()I

    move-result v0

    .line 229
    .local v0, count:I
    if-nez v0, :cond_1

    .line 230
    :try_start_0
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    const-string v4, "no rmq packets to resend"

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->close()V

    .line 258
    :goto_0
    return-void

    .line 236
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mResendQueue:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 238
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->getPacketAt(I)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    .line 240
    .local v3, packet:Lorg/jivesoftware/smack/packet/Packet;
    sget-boolean v5, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v5, :cond_2

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resendRmqPackets: add packet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Packet;->getRmqId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to queue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    .line 243
    :cond_2
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    .end local v3           #packet:Lorg/jivesoftware/smack/packet/Packet;
    :cond_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :try_start_3
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager$1;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 256
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->close()V

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 256
    .end local v1           #i:I
    :catchall_1
    move-exception v4

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->close()V

    throw v4
.end method

.method private sendRmqAck(J)V
    .locals 2
    .parameter "rmqIdToAck"

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;-><init>()V

    .line 98
    .local v0, ack:Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;->setAckId(J)V

    .line 99
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    invoke-interface {v1, v0}, Lcom/google/android/gsf/gtalkservice/PacketSender;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 100
    return-void
.end method

.method private setLastReceivedRmqIdFromServer(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStore;->setLastReceivedRmqIdFromServer(J)V

    .line 94
    return-void
.end method


# virtual methods
.method public getAckingInterval()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mAckingInterval:I

    return v0
.end method

.method public getLastReceivedRmqIdFromServer()J
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStore;

    invoke-interface {v0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStore;->getLastReceivedRmqIdFromServer()J

    move-result-wide v0

    return-wide v0
.end method

.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 75
    return-void
.end method

.method public processS2dMessage(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter "packet"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->processRmqId(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 147
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->processRmqAck(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 148
    return-void
.end method

.method public send(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 6
    .parameter "packet"

    .prologue
    .line 103
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mRmq:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v3}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->getNextRmqId()J

    move-result-wide v0

    .line 105
    .local v0, rmqId:J
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send: rmqId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Packet;->setRmqId(J)V

    .line 109
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->makeRmqPacket(JLorg/jivesoftware/smack/packet/Packet;)Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;

    move-result-object v2

    .line 110
    .local v2, rmqPacket:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
    if-nez v2, :cond_1

    .line 111
    const-string v3, "Rmq"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send: cannot make RmqPacket from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v3, 0x0

    .line 125
    :goto_0
    return v3

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mRmq:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->enqueueMessage(JLcom/google/android/gsf/gtalkservice/rmq/RmqPacket;)V

    .line 119
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mResendQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 120
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 121
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    invoke-interface {v4, v2}, Lcom/google/android/gsf/gtalkservice/PacketSender;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v4

    monitor-exit v3

    move v3, v4

    goto :goto_0

    .line 123
    :cond_2
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send: add packet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to resend queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    .line 124
    :cond_3
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 125
    const/4 v4, 0x1

    monitor-exit v3

    move v3, v4

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setAckingInterval(I)V
    .locals 1
    .parameter "interval"

    .prologue
    .line 82
    if-gtz p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 85
    :cond_0
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mAckingInterval:I

    .line 86
    return-void
.end method
