.class Lorg/jivesoftware/smack/PacketWriter;
.super Ljava/lang/Object;
.source "PacketWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;,
        Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;
    }
.end annotation


# instance fields
.field private final closeBytes:[B

.field private connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private done:Z

.field private final heartbeatAckBytes:[B

.field private final heartbeatPingBytes:[B

.field private interceptorDeleted:Z

.field private final interceptors:Ljava/util/List;

.field private lastActive:J

.field private final listeners:Ljava/util/List;

.field private listenersDeleted:Z

.field private final queue:Ljava/util/LinkedList;

.field private final serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

.field private writer:Ljava/io/OutputStream;

.field private writerThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 6
    .parameter "connection"

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->listeners:Ljava/util/List;

    .line 72
    iput-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->listenersDeleted:Z

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/jivesoftware/smack/PacketWriter;->lastActive:J

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptors:Ljava/util/List;

    .line 90
    iput-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptorDeleted:Z

    .line 98
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 99
    iget-object v3, p1, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    .line 100
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    .line 102
    iget-boolean v3, p1, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v3, :cond_0

    .line 103
    new-instance v3, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;

    new-instance v4, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    invoke-direct {v4}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializerImpl;-><init>(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;)V

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    .line 105
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_PING:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    invoke-interface {v3, v4}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;->serialize(Lcom/google/common/io/protocol/ProtoBuf;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->heartbeatPingBytes:[B
    :try_end_0
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :try_start_1
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    invoke-interface {v3, v4}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;->serialize(Lcom/google/common/io/protocol/ProtoBuf;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->heartbeatAckBytes:[B
    :try_end_1
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 125
    :try_start_2
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->CLOSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    invoke-interface {v3, v4}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;->serialize(Lcom/google/common/io/protocol/ProtoBuf;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->closeBytes:[B
    :try_end_2
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 157
    :goto_0
    new-instance v3, Lorg/jivesoftware/smack/PacketWriter$1;

    invoke-direct {v3, p0}, Lorg/jivesoftware/smack/PacketWriter$1;-><init>(Lorg/jivesoftware/smack/PacketWriter;)V

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writerThread:Ljava/lang/Thread;

    .line 163
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writerThread:Ljava/lang/Thread;

    const-string v4, "Smack Packet Writer"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writerThread:Ljava/lang/Thread;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 165
    return-void

    .line 107
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 108
    .local v1, pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize heartbeat ping -- should not happen!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize heartbeat ping."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 110
    .end local v1           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 111
    .local v0, ioe:Ljava/io/IOException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize heartbeat -- should not happen!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize heartbeat ping."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 117
    .end local v0           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 118
    .restart local v1       #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize heartbeat ack -- should not happen!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize heartbeat ack."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 120
    .end local v1           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 121
    .restart local v0       #ioe:Ljava/io/IOException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize heartbeat -- should not happen!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize heartbeat ack."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 127
    .end local v0           #ioe:Ljava/io/IOException;
    :catch_4
    move-exception v3

    move-object v1, v3

    .line 128
    .restart local v1       #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize close -- should not happen!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize close."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 130
    .end local v1           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :catch_5
    move-exception v3

    move-object v0, v3

    .line 131
    .restart local v0       #ioe:Ljava/io/IOException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize close -- should not happen!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize close."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 136
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    .line 142
    :try_start_3
    const-string v3, "<iq type=\'set\' id=\'ping\'><ping/></iq>"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->heartbeatPingBytes:[B

    .line 143
    const-string v3, "<iq type=\'set\' id=\'ack\'><ack/></iq>"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->heartbeatAckBytes:[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_7

    .line 150
    :try_start_4
    const-string v3, "</stream:stream>"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->closeBytes:[B
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_0

    .line 151
    :catch_6
    move-exception v3

    move-object v2, v3

    .line 152
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize close -- should not happen!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize close."

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 145
    .end local v2           #uee:Ljava/io/UnsupportedEncodingException;
    :catch_7
    move-exception v3

    move-object v2, v3

    .line 146
    .restart local v2       #uee:Ljava/io/UnsupportedEncodingException;
    const-string v3, "Smack/Packet"

    const-string v4, "Cannot serialize heartbeat -- should not happen!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot serialize heartbeat."

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/PacketWriter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketWriter;->writePackets()V

    return-void
.end method

.method static synthetic access$102(Lorg/jivesoftware/smack/PacketWriter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-wide p1, p0, Lorg/jivesoftware/smack/PacketWriter;->lastActive:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/jivesoftware/smack/PacketWriter;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smack/PacketWriter;)Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smack/PacketWriter;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->heartbeatPingBytes:[B

    return-object v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/OutputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    return-object v0
.end method

.method private nextPacket()Lorg/jivesoftware/smack/packet/Packet;
    .locals 4

    .prologue
    .line 376
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 377
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 379
    :try_start_1
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v1

    goto :goto_0

    .line 385
    :cond_0
    :try_start_2
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 386
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/jivesoftware/smack/packet/Packet;

    monitor-exit v0

    move-object v0, p0

    .line 389
    :goto_1
    return-object v0

    .restart local p0
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    goto :goto_1

    .line 391
    .end local p0
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private processInterceptors(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 6
    .parameter "packet"

    .prologue
    .line 497
    if-eqz p1, :cond_4

    .line 501
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptors:Ljava/util/List;

    monitor-enter v3

    .line 502
    :try_start_0
    iget-boolean v4, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptorDeleted:Z

    if-eqz v4, :cond_2

    .line 503
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 504
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptors:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 505
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptors:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 503
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 508
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptorDeleted:Z

    .line 510
    .end local v0           #i:I
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 513
    .local v2, size:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 514
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->interceptors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;

    .line 515
    .local v1, interceptorWrapper:Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;
    if-eqz v1, :cond_3

    .line 516
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;->notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 513
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 510
    .end local v0           #i:I
    .end local v1           #interceptorWrapper:Lorg/jivesoftware/smack/PacketWriter$InterceptorWrapper;
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 520
    :cond_4
    return-void
.end method

.method private processListeners(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 6
    .parameter "packet"

    .prologue
    .line 468
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->listeners:Ljava/util/List;

    monitor-enter v3

    .line 469
    :try_start_0
    iget-boolean v4, p0, Lorg/jivesoftware/smack/PacketWriter;->listenersDeleted:Z

    if-eqz v4, :cond_2

    .line 470
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 471
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->listeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 472
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->listeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 470
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 475
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/jivesoftware/smack/PacketWriter;->listenersDeleted:Z

    .line 477
    .end local v0           #i:I
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 480
    .local v2, size:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 481
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->listeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;

    .line 482
    .local v1, listenerWrapper:Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;
    if-eqz v1, :cond_3

    .line 483
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;->notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 480
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 477
    .end local v0           #i:I
    .end local v1           #listenerWrapper:Lorg/jivesoftware/smack/PacketWriter$ListenerWrapper;
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 486
    .restart local v0       #i:I
    .restart local v2       #size:I
    :cond_4
    return-void
.end method

.method private writePackets()V
    .locals 8

    .prologue
    .line 397
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 399
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    if-nez v5, :cond_7

    .line 400
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketWriter;->nextPacket()Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 401
    .local v2, packet:Lorg/jivesoftware/smack/packet/Packet;
    if-eqz v2, :cond_0

    .line 402
    const/4 v0, 0x0

    .line 404
    .local v0, bytes:[B
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-boolean v5, v5, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v5, :cond_5

    .line 405
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v4

    .line 406
    .local v4, rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    if-eqz v4, :cond_1

    .line 407
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->serializePacketAsProtoBuf(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;Lorg/jivesoftware/smack/packet/Packet;)[B

    move-result-object v0

    .line 414
    :cond_1
    if-nez v0, :cond_2

    .line 415
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/Packet;->serializeAsProtoBuf(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;)[B

    move-result-object v0

    .line 423
    .end local v4           #rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    :cond_2
    :goto_1
    const-string v5, "Smack/Packet"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 424
    const-string v5, "Smack/Packet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WRITE] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->toLogString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_3
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    :try_start_1
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 429
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/jivesoftware/smack/PacketWriter;->lastActive:J

    .line 431
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->markPacketTransmission()V

    .line 432
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    :try_start_2
    array-length v5, v0

    int-to-long v5, v5

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->update(Lorg/jivesoftware/smack/packet/Packet;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 438
    .end local v0           #bytes:[B
    .end local v2           #packet:Lorg/jivesoftware/smack/packet/Packet;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 440
    .local v3, pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :try_start_3
    iget-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    if-nez v5, :cond_4

    .line 441
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    .line 443
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v5, v5, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v5, v3}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 452
    :cond_4
    :try_start_4
    const-string v5, "Smack/Packet"

    const-string v6, "[writePackets] close writer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->closeWriter()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 458
    .end local v3           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :goto_2
    return-void

    .line 418
    .restart local v0       #bytes:[B
    .restart local v2       #packet:Lorg/jivesoftware/smack/packet/Packet;
    :cond_5
    :try_start_5
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->serializeAsXml()[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_1

    .line 432
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 445
    .end local v0           #bytes:[B
    .end local v2           #packet:Lorg/jivesoftware/smack/packet/Packet;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 446
    .local v1, ioe:Ljava/io/IOException;
    :try_start_8
    iget-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    if-nez v5, :cond_6

    .line 447
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    .line 448
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v5, v5, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v5, v1}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 452
    :cond_6
    :try_start_9
    const-string v5, "Smack/Packet"

    const-string v6, "[writePackets] close writer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->closeWriter()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 454
    :catch_2
    move-exception v5

    goto :goto_2

    .line 437
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_7
    :try_start_a
    invoke-virtual {p0}, Lorg/jivesoftware/smack/PacketWriter;->closeStream()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 452
    :try_start_b
    const-string v5, "Smack/Packet"

    const-string v6, "[writePackets] close writer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->closeWriter()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_2

    .line 454
    :catch_3
    move-exception v5

    goto :goto_2

    .line 451
    :catchall_1
    move-exception v5

    .line 452
    :try_start_c
    const-string v6, "Smack/Packet"

    const-string v7, "[writePackets] close writer"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->closeWriter()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 456
    :goto_3
    throw v5

    .line 454
    :catch_4
    move-exception v6

    goto :goto_3

    .restart local v3       #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :catch_5
    move-exception v5

    goto :goto_2
.end method


# virtual methods
.method closeStream()V
    .locals 3

    .prologue
    .line 569
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :try_start_1
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->closeBytes:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 571
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 572
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    :try_start_2
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 584
    :goto_0
    return-void

    .line 572
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 574
    :catch_0
    move-exception v0

    .line 578
    :try_start_5
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 580
    :catch_1
    move-exception v0

    goto :goto_0

    .line 577
    :catchall_1
    move-exception v0

    .line 578
    :try_start_6
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 582
    :goto_1
    throw v0

    .line 580
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 702
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 703
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    monitor-exit v0

    .line 705
    return-void

    .line 704
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastActive()J
    .locals 2

    .prologue
    .line 628
    iget-wide v0, p0, Lorg/jivesoftware/smack/PacketWriter;->lastActive:J

    return-wide v0
.end method

.method openStream()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-boolean v2, v2, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v2, :cond_0

    .line 535
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v2

    .line 536
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    sget-byte v4, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 537
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 538
    monitor-exit v2

    .line 564
    :goto_0
    return-void

    .line 538
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 541
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 542
    .local v1, stream:Ljava/lang/StringBuffer;
    const-string v2, "<stream:stream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    const-string v2, " to=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v3, v3, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    const-string v2, " xmlns=\"jabber:client\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    const-string v2, " xmlns:stream=\"http://etherx.jabber.org/streams\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    instance-of v2, v2, Lorg/jivesoftware/smack/SSLXMPPConnection;

    if-eqz v2, :cond_2

    .line 548
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, openStreamStr:Ljava/lang/String;
    const-string v2, "Smack/Packet"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 557
    const-string v2, "Smack/Packet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WRITE] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_1
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/PacketWriter;->write(Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v2

    .line 562
    :try_start_1
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 563
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 551
    .end local v0           #openStreamStr:Ljava/lang/String;
    :cond_2
    const-string v2, " version=\"1.0\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method requestStreamCompression()V
    .locals 3

    .prologue
    .line 592
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-boolean v1, v1, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v1, :cond_0

    .line 606
    :goto_0
    return-void

    .line 597
    :cond_0
    :try_start_0
    const-string v1, "<compress xmlns=\'http://jabber.org/protocol/compress\'>"

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/PacketWriter;->write(Ljava/lang/String;)V

    .line 598
    const-string v1, "<method>zlib</method></compress>"

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/PacketWriter;->write(Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :try_start_1
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 601
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 603
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 604
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, v1, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendHeartbeat()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jivesoftware/smack/PacketWriter$2;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/PacketWriter$2;-><init>(Lorg/jivesoftware/smack/PacketWriter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 238
    return-void
.end method

.method public sendHeartbeatAck()V
    .locals 7

    .prologue
    .line 247
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v3

    .line 248
    .local v3, rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    if-eqz v3, :cond_0

    .line 249
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    new-instance v5, Lorg/jivesoftware/smack/packet/HeartbeatAck;

    invoke-direct {v5}, Lorg/jivesoftware/smack/packet/HeartbeatAck;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->serializePacketAsProtoBuf(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;Lorg/jivesoftware/smack/packet/Packet;)[B

    move-result-object v0

    .line 253
    .local v0, ackBytes:[B
    :goto_0
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v4
    :try_end_0
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    :try_start_1
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 255
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 256
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :try_start_2
    array-length v4, v0

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateHeartbeat(JZ)V

    .line 265
    .end local v0           #ackBytes:[B
    .end local v3           #rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    :goto_1
    return-void

    .line 251
    .restart local v3       #rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->heartbeatAckBytes:[B
    :try_end_2
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v0       #ackBytes:[B
    goto :goto_0

    .line 256
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 258
    .end local v0           #ackBytes:[B
    .end local v3           #rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 259
    .local v2, pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    const-string v4, "Smack/Packet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write heartbeat ack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v4, v4, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 261
    .end local v2           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 262
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Smack/Packet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write heartbeat ack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v4, v4, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 173
    iget-boolean v0, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketWriter;->processInterceptors(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 178
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 180
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketWriter;->processListeners(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 187
    :cond_0
    return-void

    .line 181
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method sendStartTLS()V
    .locals 3

    .prologue
    .line 609
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-boolean v1, v1, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v1, :cond_0

    .line 622
    :goto_0
    return-void

    .line 614
    :cond_0
    :try_start_0
    const-string v1, "<starttls xmlns=\"urn:ietf:params:xml:ns:xmpp-tls\"/>"

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/PacketWriter;->write(Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :try_start_1
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 617
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 619
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 620
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, v1, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 359
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    .line 360
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/PacketWriter;->done:Z

    .line 368
    return-void
.end method

.method public startup()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 356
    return-void
.end method

.method write(Ljava/lang/String;)V
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 192
    .local v0, utfBytes:[B
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 194
    monitor-exit v1

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
