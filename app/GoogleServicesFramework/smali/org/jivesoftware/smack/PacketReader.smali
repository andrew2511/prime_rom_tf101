.class Lorg/jivesoftware/smack/PacketReader;
.super Ljava/lang/Object;
.source "PacketReader.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/proto/ProtoBufEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/PacketReader$6;,
        Lorg/jivesoftware/smack/PacketReader$DataMessageListenerWrapper;,
        Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    }
.end annotation


# instance fields
.field protected collectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketCollector;",
            ">;"
        }
    .end annotation
.end field

.field private connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private connectionID:Ljava/lang/String;

.field private connectionIDLock:Ljava/lang/Object;

.field protected connectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected dataMessageCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/DataMessageCollector;",
            ">;"
        }
    .end annotation
.end field

.field private dataMessageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private done:Z

.field private lastActive:J

.field private listenerThread:Ljava/lang/Thread;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private notifiedConnectionError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field packetProcessor:Lorg/jivesoftware/smack/PacketProcessor;

.field private parser:Lorg/xmlpull/v1/XmlPullParser;

.field private protoParser:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParser;

.field private readerThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 3
    .parameter "connection"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v1, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->notifiedConnectionError:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageCollectors:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    .line 115
    new-instance v0, Lorg/jivesoftware/smack/PacketProcessor;

    invoke-direct {v0}, Lorg/jivesoftware/smack/PacketProcessor;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->packetProcessor:Lorg/jivesoftware/smack/PacketProcessor;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    .line 126
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 128
    iget-boolean v0, p1, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$1;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    .line 151
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    const-string v1, "Smack Packet Reader"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 154
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$3;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$3;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    .line 168
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    const-string v1, "Smack Packet Handler"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 171
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    .line 172
    return-void

    .line 140
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$2;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/PacketReader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->parsePacketsFromProtoBufs()V

    return-void
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/PacketReader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->parsePackets()V

    return-void
.end method

.method static synthetic access$200(Lorg/jivesoftware/smack/PacketReader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->processListeners()V

    return-void
.end method

.method private dumpListener(Ljava/util/List;Ljava/io/PrintWriter;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2004
    monitor-enter p1

    .line 2005
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2006
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2007
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    .line 2008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2010
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetCollector:Lorg/jivesoftware/smack/PacketCollector;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->getPacketFilter()Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v2

    .line 2011
    if-eqz v2, :cond_0

    .line 2012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2015
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queue_size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetCollector:Lorg/jivesoftware/smack/PacketCollector;

    iget-object v3, v3, Lorg/jivesoftware/smack/PacketCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2016
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2006
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2018
    :cond_1
    monitor-exit p1

    .line 2019
    return-void

    .line 2018
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleUnsupportedIqPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;J)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1321
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v0, p4, :cond_0

    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, p4, :cond_2

    .line 1325
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$4;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$4;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    .line 1330
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v0, p5, p6}, Lorg/jivesoftware/smack/packet/IQ;->setRmqId(J)V

    .line 1332
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 1334
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1335
    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v2, 0x1f5

    const-string v3, "feature-not-implemented"

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 1337
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1339
    const-string v0, "Smack/Packet"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1340
    const-string v0, "handleUnsupportedIqPacket: respond with feature-not-implemented"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 1343
    :cond_1
    const/4 v0, 0x0

    .line 1354
    :goto_0
    return-object v0

    .line 1347
    :cond_2
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$5;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$5;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2022
    const-string v0, "Smack/Packet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PacketReader] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    return-void
.end method

.method private logPacket(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2026
    const-string v0, "Smack/Packet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[READ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    return-void
.end method

.method private parseAuthentication(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Authentication;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1358
    new-instance v0, Lorg/jivesoftware/smack/packet/Authentication;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Authentication;-><init>()V

    .line 1359
    const/4 v1, 0x0

    .line 1360
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 1361
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1362
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1363
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1364
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Authentication;->setUsername(Ljava/lang/String;)V

    goto :goto_0

    .line 1366
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1367
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Authentication;->setPassword(Ljava/lang/String;)V

    goto :goto_0

    .line 1369
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "digest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1370
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Authentication;->setDigest(Ljava/lang/String;)V

    goto :goto_0

    .line 1372
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resource"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1373
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Authentication;->setResource(Ljava/lang/String;)V

    goto :goto_0

    .line 1376
    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1377
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1378
    const/4 v1, 0x1

    goto :goto_0

    .line 1382
    :cond_5
    return-object v0
.end method

.method private parseBindAccountResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 9
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 630
    new-instance v2, Lorg/jivesoftware/smack/packet/BindAccountResponse;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/BindAccountResponse;-><init>()V

    .line 631
    .local v2, response:Lorg/jivesoftware/smack/packet/BindAccountResponse;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, id:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 635
    .local v3, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setPacketID(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 637
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setJid(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p1, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 643
    invoke-virtual {p1, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setLastStreamId(I)V

    .line 649
    :cond_0
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 651
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setStreamId(I)V

    .line 659
    :cond_1
    :goto_0
    return-object v2

    .line 654
    :cond_2
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 655
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 657
    .local v0, errorProtobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_0
.end method

.method private parseCompressionMethods(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 1201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    const/4 v1, 0x0

    .line 1203
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 1204
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1206
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1207
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1208
    const-string v3, "method"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1209
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 1211
    const-string v3, "Smack/Packet"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse compression method - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1216
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1219
    :cond_2
    if-ne v2, v5, :cond_0

    .line 1220
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "compression"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1221
    const/4 v1, 0x1

    goto :goto_0

    .line 1225
    :cond_3
    return-object v0
.end method

.method private parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 1103
    move v1, v0

    .line 1105
    :cond_0
    :goto_0
    if-nez v0, :cond_b

    .line 1106
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1107
    const-string v3, "Smack/Packet"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    .line 1109
    const/4 v4, 0x2

    if-ne v2, v4, :cond_a

    .line 1110
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "starttls"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1112
    if-eqz v3, :cond_1

    .line 1113
    const-string v1, "parse feature - startTLS received"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1116
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->startTLSReceived()V

    move v1, v5

    goto :goto_0

    .line 1118
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mechanisms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1119
    if-eqz v3, :cond_3

    .line 1120
    const-string v2, "parse feature - mechanism"

    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1126
    :cond_3
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseMechanisms(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/SASLAuthentication;->setAvailableSASLMethods(Ljava/util/Collection;)V

    goto :goto_0

    .line 1129
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "bind"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1130
    if-eqz v3, :cond_5

    .line 1131
    const-string v2, "parse feature - bind"

    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1135
    :cond_5
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/SASLAuthentication;->bindingRequired()V

    goto :goto_0

    .line 1137
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "session"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1138
    if-eqz v3, :cond_7

    .line 1139
    const-string v2, "parse feature - session"

    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1143
    :cond_7
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/SASLAuthentication;->sessionsSupported()V

    goto/16 :goto_0

    .line 1145
    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "compression"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1146
    if-eqz v3, :cond_9

    .line 1147
    const-string v2, "parse feature - compression"

    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1151
    :cond_9
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseCompressionMethods(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/XMPPConnection;->setAvailableCompressionMethods(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 1154
    :cond_a
    if-ne v2, v6, :cond_0

    .line 1155
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "features"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v5

    .line 1156
    goto/16 :goto_0

    .line 1160
    :cond_b
    if-nez v1, :cond_c

    .line 1161
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->releaseConnectionIDLock()V

    .line 1163
    :cond_c
    return-void
.end method

.method private parseHttpResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/HttpResponse;
    .locals 8
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 1458
    new-instance v1, Lorg/jivesoftware/smack/packet/HttpResponse;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/HttpResponse;-><init>()V

    .line 1459
    .local v1, response:Lorg/jivesoftware/smack/packet/HttpResponse;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1460
    .local v0, id:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/HttpResponse;->setPacketID(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1463
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/packet/HttpResponse;->setRmqId(J)V

    .line 1467
    :cond_0
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1468
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->setRmq2Id(Ljava/lang/String;)V

    .line 1472
    :cond_1
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1474
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->setLastStreamId(I)V

    .line 1479
    :cond_2
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1480
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->setStreamId(I)V

    .line 1484
    :cond_3
    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1485
    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->setData([B)V

    .line 1489
    :cond_4
    return-object v1
.end method

.method private parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 22
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1768
    const/4 v11, 0x0

    .line 1770
    const/4 v4, 0x3

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 1772
    :goto_0
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v6

    move-wide v9, v6

    .line 1776
    :goto_1
    const/16 v4, 0x8

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    .line 1778
    :goto_2
    const/16 v4, 0xa

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0xa

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    move v13, v4

    .line 1780
    :goto_3
    const/16 v4, 0x9

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x9

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    move v14, v4

    .line 1783
    :goto_4
    const/4 v4, 0x4

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x4

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 1784
    :goto_5
    const/4 v4, 0x5

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x5

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 1787
    :goto_6
    const/16 v4, 0xb

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0xb

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v15

    .line 1790
    :goto_7
    const/4 v4, 0x2

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    .line 1793
    packed-switch v4, :pswitch_data_0

    .line 1805
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    move-object v8, v4

    .line 1809
    :goto_8
    const/4 v4, 0x7

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1810
    const/4 v4, 0x7

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v17

    .line 1811
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v18

    .line 1812
    const-string v4, "ProtoBuf"

    const/16 v19, 0x3

    move-object v0, v4

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1813
    const-string v4, "ProtoBuf"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Handling extension of type: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :cond_0
    packed-switch v18, :pswitch_data_1

    .line 1868
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/provider/ProviderManager;->getIQProvider(I)Ljava/lang/Object;

    move-result-object v4

    .line 1870
    if-eqz v4, :cond_e

    .line 1873
    instance-of v11, v4, Lorg/jivesoftware/smack/provider/IQProvider;

    if-eqz v11, :cond_c

    .line 1874
    check-cast v4, Lorg/jivesoftware/smack/provider/IQProvider;

    .line 1883
    :goto_9
    invoke-interface {v4}, Lorg/jivesoftware/smack/provider/IQProvider;->getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v11

    .line 1884
    new-instance v18, Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 1885
    const/4 v11, 0x2

    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v11

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;

    .line 1886
    move-object v0, v4

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/provider/IQProvider;->parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    .line 1893
    :goto_a
    if-nez v4, :cond_10

    move-object/from16 v4, p0

    .line 1894
    invoke-direct/range {v4 .. v10}, Lorg/jivesoftware/smack/PacketReader;->handleUnsupportedIqPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;J)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    .line 1895
    if-nez v4, :cond_10

    .line 1896
    const/4 v4, 0x0

    .line 1923
    :goto_b
    return-object v4

    .line 1770
    :cond_1
    const-string v4, "ID_NOT_AVAILABLE"

    move-object v5, v4

    goto/16 :goto_0

    .line 1772
    :cond_2
    const-wide/16 v6, -0x1

    move-wide v9, v6

    goto/16 :goto_1

    .line 1776
    :cond_3
    const/4 v4, 0x0

    move-object v12, v4

    goto/16 :goto_2

    .line 1778
    :cond_4
    const/4 v4, -0x1

    move v13, v4

    goto/16 :goto_3

    .line 1780
    :cond_5
    const/4 v4, -0x1

    move v14, v4

    goto/16 :goto_4

    .line 1783
    :cond_6
    const/4 v4, 0x0

    move-object v7, v4

    goto/16 :goto_5

    .line 1784
    :cond_7
    const/4 v4, 0x0

    move-object v6, v4

    goto/16 :goto_6

    .line 1787
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getDefaultAccountId()J

    move-result-wide v15

    goto/16 :goto_7

    .line 1795
    :pswitch_0
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    move-object v8, v4

    .line 1796
    goto/16 :goto_8

    .line 1798
    :pswitch_1
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    move-object v8, v4

    .line 1799
    goto/16 :goto_8

    .line 1801
    :pswitch_2
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    move-object v8, v4

    .line 1802
    goto/16 :goto_8

    .line 1818
    :pswitch_3
    const/4 v4, 0x2

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v17

    .line 1821
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1822
    invoke-static {}, Lorg/jivesoftware/smack/util/PacketParserUtils;->newXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 1823
    const-string v19, "UTF-8"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1826
    :goto_c
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/16 v19, 0x1

    move v0, v4

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    .line 1827
    packed-switch v4, :pswitch_data_2

    :cond_9
    move-object v4, v11

    :goto_d
    move-object v11, v4

    .line 1852
    goto :goto_c

    .line 1829
    :pswitch_4
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1830
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v20

    .line 1834
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v21

    .line 1835
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getIQProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1837
    if-eqz v4, :cond_b

    .line 1838
    move-object v0, v4

    instance-of v0, v0, Lorg/jivesoftware/smack/provider/IQProvider;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 1839
    check-cast v4, Lorg/jivesoftware/smack/provider/IQProvider;

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/provider/IQProvider;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    goto :goto_d

    .line 1840
    :cond_a
    move-object v0, v4

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1841
    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseWithIntrospection(Ljava/lang/String;Ljava/lang/Class;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/packet/IQ;

    goto :goto_d

    .line 1845
    :cond_b
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->getRawXmlIqProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1847
    move-object v0, v4

    instance-of v0, v0, Lorg/jivesoftware/smack/provider/RawXmlIQProvider;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 1848
    check-cast v4, Lorg/jivesoftware/smack/provider/RawXmlIQProvider;

    move-object v0, v4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/RawXmlIQProvider;->parseRawXml(Ljava/lang/String;Ljava/lang/String;[B)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    goto :goto_d

    .line 1857
    :pswitch_5
    const/4 v4, 0x2

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v4

    .line 1858
    new-instance v11, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v17, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->ROSTER_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 1859
    invoke-virtual {v11, v4}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;

    .line 1860
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/PacketReader;->parseRoster(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/RosterPacket;

    move-result-object v4

    goto/16 :goto_a

    .line 1875
    :cond_c
    instance-of v11, v4, Ljava/lang/Class;

    if-eqz v11, :cond_d

    .line 1877
    check-cast v4, Ljava/lang/Class;

    .line 1878
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/provider/IQProvider;

    goto/16 :goto_9

    .line 1880
    :cond_d
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected IQProvider class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1887
    :cond_e
    const-string v4, "Smack/Packet"

    const/16 v17, 0x3

    move-object v0, v4

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1888
    const-string v4, "Smack/Packet"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "parseIQ: cannot find IQProvider for extId="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object v4, v11

    goto/16 :goto_a

    .line 1901
    :cond_10
    const/4 v11, 0x0

    .line 1903
    sget-object v17, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    move-object v0, v8

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 1904
    const/16 v17, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1905
    const/4 v11, 0x6

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v11

    .line 1907
    invoke-static {v11}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v11

    .line 1912
    :cond_11
    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v4, v9, v10}, Lorg/jivesoftware/smack/packet/IQ;->setRmqId(J)V

    .line 1914
    invoke-virtual {v4, v12}, Lorg/jivesoftware/smack/packet/IQ;->setRmq2Id(Ljava/lang/String;)V

    .line 1915
    invoke-virtual {v4, v13}, Lorg/jivesoftware/smack/packet/IQ;->setLastStreamId(I)V

    .line 1916
    invoke-virtual {v4, v14}, Lorg/jivesoftware/smack/packet/IQ;->setStreamId(I)V

    .line 1917
    invoke-virtual {v4, v6}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 1919
    move-object v0, v4

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/packet/IQ;->setAccountId(J)V

    .line 1920
    invoke-virtual {v4, v8}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1921
    invoke-virtual {v4, v11}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto/16 :goto_b

    :cond_12
    move-object v4, v11

    goto/16 :goto_a

    .line 1793
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1815
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 1827
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method

.method private parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1236
    .line 1238
    const-string v0, ""

    const-string v1, "stanza-id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseRmqIdFromString(Ljava/lang/String;)J

    move-result-wide v7

    .line 1240
    const-string v0, ""

    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1241
    const-string v0, ""

    const-string v2, "to"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1242
    const-string v0, ""

    const-string v3, "from"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1243
    const-string v0, ""

    const-string v4, "type"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/packet/IQ$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    .line 1246
    const/4 v0, 0x0

    move v5, v0

    move-object v9, v12

    move-object v6, v12

    .line 1247
    :goto_0
    if-nez v5, :cond_7

    .line 1248
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1250
    const/4 v10, 0x2

    if-ne v0, v10, :cond_6

    .line 1251
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1252
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 1253
    const-string v11, "error"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1254
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    :goto_1
    move v13, v5

    move-object v5, v0

    move v0, v13

    :goto_2
    move-object v9, v5

    move v5, v0

    .line 1296
    goto :goto_0

    .line 1256
    :cond_0
    const-string v11, "query"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "jabber:iq:auth"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1257
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseAuthentication(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Authentication;

    move-result-object v0

    move-object v6, v0

    move-object v0, v9

    goto :goto_1

    .line 1259
    :cond_1
    const-string v11, "query"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "jabber:iq:roster"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1260
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseRoster(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/RosterPacket;

    move-result-object v0

    move-object v6, v0

    move-object v0, v9

    goto :goto_1

    .line 1262
    :cond_2
    const-string v11, "query"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "jabber:iq:register"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1263
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseRegistration(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v0

    move-object v6, v0

    move-object v0, v9

    goto :goto_1

    .line 1265
    :cond_3
    const-string v11, "bind"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "urn:ietf:params:xml:ns:xmpp-bind"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1267
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseResourceBinding(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Bind;

    move-result-object v0

    move-object v6, v0

    move-object v0, v9

    goto :goto_1

    .line 1278
    :cond_4
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v11

    invoke-virtual {v11, v10, v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->getIQProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1280
    if-eqz v0, :cond_b

    .line 1281
    instance-of v11, v0, Lorg/jivesoftware/smack/provider/IQProvider;

    if-eqz v11, :cond_5

    .line 1282
    check-cast v0, Lorg/jivesoftware/smack/provider/IQProvider;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/provider/IQProvider;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    move-object v6, v0

    move-object v0, v9

    goto :goto_1

    .line 1284
    :cond_5
    instance-of v11, v0, Ljava/lang/Class;

    if-eqz v11, :cond_b

    .line 1285
    check-cast v0, Ljava/lang/Class;

    invoke-static {v10, v0, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseWithIntrospection(Ljava/lang/String;Ljava/lang/Class;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    move-object v6, v0

    move-object v0, v9

    goto/16 :goto_1

    .line 1291
    :cond_6
    const/4 v10, 0x3

    if-ne v0, v10, :cond_a

    .line 1292
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "iq"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1293
    const/4 v0, 0x1

    move-object v5, v9

    goto/16 :goto_2

    .line 1298
    :cond_7
    if-nez v6, :cond_8

    .line 1299
    const-wide/16 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smack/PacketReader;->handleUnsupportedIqPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;J)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 1300
    if-nez v0, :cond_9

    move-object v0, v12

    .line 1313
    :goto_3
    return-object v0

    :cond_8
    move-object v0, v6

    .line 1306
    :cond_9
    invoke-virtual {v0, v7, v8}, Lorg/jivesoftware/smack/packet/IQ;->setRmqId(J)V

    .line 1307
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1311
    invoke-virtual {v0, v9}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_3

    :cond_a
    move v0, v5

    move-object v5, v9

    goto/16 :goto_2

    :cond_b
    move-object v0, v9

    goto/16 :goto_1
.end method

.method private parseLoginResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/LoginResponse;
    .locals 21
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1386
    new-instance v13, Lorg/jivesoftware/smack/packet/LoginResponse;

    invoke-direct {v13}, Lorg/jivesoftware/smack/packet/LoginResponse;-><init>()V

    .line 1387
    .local v13, response:Lorg/jivesoftware/smack/packet/LoginResponse;
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1388
    .local v8, id:Ljava/lang/String;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1390
    .local v15, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v13, v8}, Lorg/jivesoftware/smack/packet/LoginResponse;->setPacketID(Ljava/lang/String;)V

    .line 1391
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1392
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/LoginResponse;->setJid(Ljava/lang/String;)V

    .line 1395
    const/16 v19, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1397
    const/16 v19, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 1399
    .local v5, configProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v17, 0x0

    .line 1400
    .local v17, uploadStat:Ljava/lang/Boolean;
    const/16 v19, 0x1

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1401
    const/16 v19, 0x1

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 1403
    :cond_0
    const/4 v11, 0x0

    .line 1404
    .local v11, ip:Ljava/lang/String;
    const/16 v19, 0x2

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1405
    const/16 v19, 0x2

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1407
    :cond_1
    const-wide/16 v9, 0x0

    .line 1408
    .local v9, interval:J
    const/16 v19, 0x3

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1409
    const/16 v19, 0x3

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v9

    .line 1411
    :cond_2
    new-instance v19, Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-wide v2, v9

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jivesoftware/smack/packet/HeartbeatConfig;-><init>(Ljava/lang/Boolean;JLjava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/LoginResponse;->setHeartbeatConfig(Lorg/jivesoftware/smack/packet/HeartbeatConfig;)V

    .line 1416
    .end local v5           #configProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v9           #interval:J
    .end local v11           #ip:Ljava/lang/String;
    .end local v17           #uploadStat:Ljava/lang/Boolean;
    :cond_3
    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v16

    .line 1418
    .local v16, settingsCount:I
    if-lez v16, :cond_5

    .line 1419
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 1420
    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v14

    .line 1423
    .local v14, settingProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v19, 0x1

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1424
    .local v12, key:Ljava/lang/String;
    const/16 v19, 0x2

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1425
    .local v18, value:Ljava/lang/String;
    move-object v0, v15

    move-object v1, v12

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1427
    .end local v12           #key:Ljava/lang/String;
    .end local v14           #settingProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v18           #value:Ljava/lang/String;
    :cond_4
    invoke-virtual {v13, v15}, Lorg/jivesoftware/smack/packet/LoginResponse;->setSettings(Ljava/util/Map;)V

    .line 1431
    .end local v7           #i:I
    :cond_5
    const/16 v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1433
    const/16 v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v19

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/LoginResponse;->setLastStreamId(I)V

    .line 1439
    :cond_6
    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1441
    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v19

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/LoginResponse;->setStreamId(I)V

    .line 1449
    .end local v16           #settingsCount:I
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isCompressionEnabled()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lorg/jivesoftware/smack/XMPPConnection;->startStreamCompression(Z)V

    .line 1454
    :cond_8
    return-object v13

    .line 1444
    :cond_9
    const/16 v19, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1445
    const/16 v19, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 1447
    .local v6, errorProtobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v6}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v19

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/LoginResponse;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_1
.end method

.method private parseMechanisms(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 1173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    const/4 v1, 0x0

    .line 1175
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 1176
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1178
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1179
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1180
    const-string v3, "mechanism"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1181
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 1183
    const-string v3, "Smack/Packet"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse mechanisum - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1187
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1190
    :cond_2
    if-ne v2, v5, :cond_0

    .line 1191
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mechanisms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1192
    const/4 v1, 0x1

    goto :goto_0

    .line 1196
    :cond_3
    return-object v0
.end method

.method private parsePackets()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 761
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 762
    new-instance v1, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v2, "parsePackets"

    invoke-direct {v1, v2}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 765
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v3, "parsePackets"

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 771
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jivesoftware/smack/PacketReader;->lastActive:J

    .line 772
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->markPacketReception()V

    .line 775
    const-string v2, "Smack/Packet"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 777
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1d

    .line 778
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 779
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 780
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 948
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 949
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v2, "parsePackets"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 954
    iget-boolean v2, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v2, :cond_2

    if-ne v0, v10, :cond_0

    .line 963
    :cond_2
    :goto_1
    return-void

    .line 782
    :cond_3
    :try_start_3
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "iq"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 783
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 784
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 948
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 949
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v2, "parsePackets"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 948
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 956
    :catch_0
    move-exception v0

    .line 957
    iget-boolean v1, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v1, :cond_2

    .line 959
    const-string v1, "Smack/Packet"

    const-string v2, "PacketReader.parsePackets: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 960
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 786
    :cond_4
    :try_start_5
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "presence"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 787
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePresence(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v0

    .line 788
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 792
    :cond_5
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "stream"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 794
    if-eqz v2, :cond_6

    .line 795
    const-string v0, "got stream open"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 799
    :cond_6
    const-string v0, "jabber:client"

    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    move v3, v9

    move v4, v9

    move v5, v9

    .line 806
    :goto_2
    if-ge v3, v0, :cond_1

    if-eqz v5, :cond_7

    if-nez v4, :cond_1

    .line 808
    :cond_7
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 810
    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 812
    iget-object v5, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    .line 813
    const-string v5, "1.0"

    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, ""

    const-string v8, "version"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 818
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->releaseConnectionIDLock()V

    :cond_8
    move v5, v10

    .line 807
    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 822
    :cond_a
    const-string v7, "from"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 824
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    .line 826
    if-eqz v2, :cond_b

    .line 827
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set servicename received from server: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v6, v6, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    :cond_b
    move v4, v10

    .line 831
    goto :goto_3

    .line 836
    :cond_c
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "error"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 837
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->parseStreamError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v0

    .line 839
    if-eqz v2, :cond_d

    .line 840
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StreamError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 844
    :cond_d
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/StreamError;)V

    throw v2

    .line 846
    :cond_e
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "features"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 847
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 849
    :cond_f
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "proceed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 850
    if-eqz v2, :cond_10

    .line 851
    const-string v0, "got proceed TLS, reset parser"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 855
    :cond_10
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->proceedTLSReceived()V

    .line 858
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    goto/16 :goto_0

    .line 860
    :cond_11
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "failure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 861
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    const-string v3, "urn:ietf:params:xml:ns:xmpp-tls"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 863
    if-eqz v2, :cond_12

    .line 864
    const-string v0, "TLS negotiation has failed"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 867
    :cond_12
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "TLS negotiation has failed"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :cond_13
    const-string v3, "http://jabber.org/protocol/compress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 870
    if-eqz v2, :cond_14

    .line 871
    const-string v0, "compression denied"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 877
    :cond_14
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->streamCompressionDenied()V

    goto/16 :goto_0

    .line 880
    :cond_15
    if-eqz v2, :cond_16

    .line 881
    const-string v0, "SASL auth failed"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 886
    :cond_16
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationFailed()V

    goto/16 :goto_0

    .line 889
    :cond_17
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "challenge"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 890
    if-eqz v2, :cond_18

    .line 891
    const-string v0, "SASL auth challenge received"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 895
    :cond_18
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v0

    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->challengeReceived(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 897
    :cond_19
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "success"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 898
    if-eqz v2, :cond_1a

    .line 899
    const-string v0, "SASL authenticated, open stream, reset parser"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 904
    :cond_1a
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 908
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    .line 912
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticated()V

    goto/16 :goto_0

    .line 914
    :cond_1b
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "compressed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    if-eqz v2, :cond_1c

    .line 916
    const-string v0, "start stream compression, reset parser"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 921
    :cond_1c
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->startStreamCompression()V

    .line 924
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    goto/16 :goto_0

    .line 926
    :cond_1d
    if-ne v0, v11, :cond_1f

    .line 927
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "stream"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    if-eqz v2, :cond_1e

    .line 929
    const-string v0, "got stream end tag, closing connection"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 932
    :cond_1e
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->close()V

    goto/16 :goto_0

    .line 934
    :cond_1f
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 935
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 936
    if-eqz v0, :cond_1

    .line 940
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v10, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_1

    goto/16 :goto_0
.end method

.method private parsePacketsFromProtoBufs()V
    .locals 11

    .prologue
    .line 667
    const/16 v8, 0x2000

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 668
    .local v0, buf:Ljava/nio/ByteBuffer;
    const/4 v3, -0x1

    .line 669
    .local v3, numBytesRead:I
    const/4 v5, 0x0

    .line 670
    .local v5, readVersion:Z
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, v8, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    .line 672
    .local v1, in:Ljava/io/InputStream;
    new-instance v7, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v8, "ParseProtoBuf"

    invoke-direct {v7, v8}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 675
    .local v7, wakeLockDiag:Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    :goto_0
    :try_start_0
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v8, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {v1, v8, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    .line 678
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_1

    .line 751
    :cond_0
    const-string v8, "Smack/Packet"

    const-string v9, "[parsePacketsFromProtoBufs] close connection\'s reader"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    :goto_1
    invoke-virtual {v8}, Lorg/jivesoftware/smack/XMPPConnection;->closeReader()V

    .line 754
    return-void

    .line 682
    :cond_1
    :try_start_1
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v9, "parsePacketsFromProtoBufs"

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 685
    :try_start_2
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 687
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/jivesoftware/smack/PacketReader;->lastActive:J

    .line 688
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v8}, Lorg/jivesoftware/smack/XMPPConnection;->markPacketReception()V

    .line 689
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 690
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 691
    if-nez v5, :cond_9

    .line 692
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gtz v8, :cond_3

    .line 693
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 732
    :try_start_3
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 733
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v9, "parsePacketsFromProtoBufs"

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 736
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 737
    .local v4, pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :try_start_4
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v8, :cond_2

    .line 738
    const-string v8, "Smack/Packet"

    const-string v9, "PacketReader.parsePacketsFromProtoBufs: caught "

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 739
    invoke-virtual {p0, v4}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 751
    :cond_2
    const-string v8, "Smack/Packet"

    const-string v9, "[parsePacketsFromProtoBufs] close connection\'s reader"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    goto :goto_1

    .line 696
    .end local v4           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :cond_3
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 700
    .local v6, version:B
    sget-byte v8, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    if-ne v6, v8, :cond_8

    .line 701
    const/4 v5, 0x1

    .line 702
    const-string v8, "Smack/Packet"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 703
    const-string v8, "Smack/Packet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server is using version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    .line 706
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->releaseConnectionIDLock()V

    .line 717
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gtz v8, :cond_9

    .line 718
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 732
    :try_start_6
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 733
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v9, "parsePacketsFromProtoBufs"

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 741
    .end local v6           #version:B
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 742
    .local v2, ioe:Ljava/io/IOException;
    :try_start_7
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v8, :cond_7

    .line 744
    const-string v8, "Smack/Packet"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 745
    const-string v8, "Smack/Packet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PacketReader.parsePacketsFromProtoBufs: caught "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_6
    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 751
    :cond_7
    const-string v8, "Smack/Packet"

    const-string v9, "[parsePacketsFromProtoBufs] close connection\'s reader"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    goto/16 :goto_1

    .line 708
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v6       #version:B
    :cond_8
    :try_start_8
    const-string v8, "Smack/Packet"

    const-string v9, "Required version not supported by server."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-boolean v8, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v8, :cond_5

    .line 712
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Required version not supported by server."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 732
    .end local v6           #version:B
    :catchall_0
    move-exception v8

    :try_start_9
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 733
    iget-object v9, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v10, "parsePacketsFromProtoBufs"

    invoke-virtual {v9, v10}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 732
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 751
    :catchall_1
    move-exception v8

    const-string v9, "Smack/Packet"

    const-string v10, "[parsePacketsFromProtoBufs] close connection\'s reader"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v9, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v9}, Lorg/jivesoftware/smack/XMPPConnection;->closeReader()V

    .line 751
    throw v8

    .line 722
    :cond_9
    :try_start_a
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->protoParser:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParser;

    invoke-interface {v8, v0}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParser;->parse(Ljava/nio/ByteBuffer;)V

    .line 723
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 727
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v8, v8, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    if-eq v1, v8, :cond_a

    const-string v8, "Smack/Packet"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 728
    const-string v8, "Smack/Packet"

    const-string v9, "Switching input stream"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_a
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, v8, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 732
    :try_start_b
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 733
    iget-object v8, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v9, "parsePacketsFromProtoBufs"

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0
.end method

.method private parseRegistration(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Registration;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1699
    new-instance v0, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 1700
    const/4 v1, 0x0

    .line 1701
    const/4 v2, 0x0

    move v7, v2

    move-object v2, v1

    move v1, v7

    .line 1702
    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 1703
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 1704
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 1707
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jabber:iq:register"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1708
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1709
    const-string v4, ""

    .line 1710
    if-nez v2, :cond_1

    .line 1711
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1714
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 1715
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 1718
    :cond_2
    const-string v5, "instructions"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1719
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1722
    :cond_3
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/packet/Registration;->setInstructions(Ljava/lang/String;)V

    goto :goto_0

    .line 1727
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Registration;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto :goto_0

    .line 1734
    :cond_5
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1735
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1736
    const/4 v1, 0x1

    goto :goto_0

    .line 1740
    :cond_6
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Registration;->setAttributes(Ljava/util/Map;)V

    .line 1741
    return-object v0
.end method

.method private parseResourceBinding(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Bind;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1746
    new-instance v0, Lorg/jivesoftware/smack/packet/Bind;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Bind;-><init>()V

    .line 1747
    const/4 v1, 0x0

    .line 1748
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 1749
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1750
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1751
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resource"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1752
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Bind;->setResource(Ljava/lang/String;)V

    goto :goto_0

    .line 1754
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1755
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Bind;->setJid(Ljava/lang/String;)V

    goto :goto_0

    .line 1757
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1758
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bind"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1759
    const/4 v1, 0x1

    goto :goto_0

    .line 1764
    :cond_3
    return-object v0
.end method

.method private parseRoster(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/RosterPacket;
    .locals 10
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1602
    new-instance v7, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v7}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 1603
    .local v7, roster:Lorg/jivesoftware/smack/packet/RosterPacket;
    const/4 v2, 0x0

    .line 1605
    .local v2, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1606
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smack/packet/RosterPacket;->setEtag(Ljava/lang/String;)V

    .line 1616
    :cond_0
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    .line 1618
    .local v6, numItems:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_6

    .line 1619
    const/4 v9, 0x3

    invoke-virtual {p1, v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1620
    .local v3, itemPB:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1621
    .local v4, jid:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1624
    .local v5, name:Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .end local v2           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-direct {v2, v4, v5}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    .restart local v2       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1627
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    .line 1629
    .local v8, subscriptionType:I
    packed-switch v8, :pswitch_data_0

    .line 1651
    .end local v8           #subscriptionType:I
    :cond_1
    :goto_1
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1652
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 1654
    .local v0, askType:I
    packed-switch v0, :pswitch_data_1

    .line 1663
    .end local v0           #askType:I
    :cond_2
    :goto_2
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1664
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v9

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetRejected(Z)V

    .line 1667
    :cond_3
    const/4 v9, 0x7

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1668
    const/4 v9, 0x7

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    packed-switch v9, :pswitch_data_2

    .line 1679
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 1686
    :goto_3
    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1687
    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v9

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setQuickContact(Z)V

    .line 1692
    :cond_4
    invoke-virtual {v7, v2}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 1618
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1607
    .end local v1           #i:I
    .end local v3           #itemPB:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v4           #jid:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #numItems:I
    :cond_5
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1609
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1610
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/jivesoftware/smack/packet/RosterPacket;->setNotModified(Ljava/lang/Boolean;)V

    .line 1695
    :cond_6
    return-object v7

    .line 1631
    .restart local v1       #i:I
    .restart local v3       #itemPB:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v4       #jid:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #numItems:I
    .restart local v8       #subscriptionType:I
    :pswitch_0
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->BOTH:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_1

    .line 1634
    :pswitch_1
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->FROM:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_1

    .line 1637
    :pswitch_2
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->TO:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_1

    .line 1640
    :pswitch_3
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->NONE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_1

    .line 1643
    :pswitch_4
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    goto :goto_1

    .line 1656
    .end local v8           #subscriptionType:I
    .restart local v0       #askType:I
    :pswitch_5
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->SUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemStatus(Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V

    goto :goto_2

    .line 1670
    .end local v0           #askType:I
    :pswitch_6
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->BLOCKED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    goto :goto_3

    .line 1673
    :pswitch_7
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->HIDDEN:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    goto :goto_3

    .line 1676
    :pswitch_8
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->PINNED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    goto :goto_3

    .line 1683
    :cond_7
    sget-object v9, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-virtual {v2, v9}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    goto :goto_3

    .line 1629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 1654
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    .line 1668
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private parseRoster(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/RosterPacket;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1493
    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 1495
    const/4 v1, 0x0

    move v2, v6

    .line 1497
    :cond_0
    :goto_0
    if-nez v2, :cond_8

    .line 1498
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 1499
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 1500
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1501
    const-string v1, ""

    const-string v3, "jid"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1502
    const-string v3, ""

    const-string v4, "name"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1504
    new-instance v4, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    invoke-direct {v4, v1, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    const-string v1, ""

    const-string v3, "ask"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1523
    invoke-static {v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v1

    .line 1525
    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemStatus(Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V

    .line 1527
    const-string v1, ""

    const-string v3, "subscription"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1529
    invoke-static {v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v1

    .line 1531
    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    .line 1533
    invoke-static {}, Lorg/jivesoftware/smack/GoogleExtensions;->getSupportExtendedContactAttribute()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1538
    const-string v1, "google:roster"

    const-string v3, "mc"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1540
    if-eqz v1, :cond_9

    .line 1543
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1549
    :goto_1
    const-string v3, "google:roster"

    const-string v5, "t"

    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1551
    if-eqz v3, :cond_1

    .line 1553
    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatusString(Ljava/lang/String;)V

    .line 1556
    :cond_1
    const-string v3, "google:roster"

    const-string v5, "rejected"

    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1558
    if-eqz v3, :cond_2

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1560
    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetRejected(Z)V

    .line 1568
    :cond_2
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionGetStatus()Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    move-result-object v3

    .line 1569
    sget-object v5, Lorg/jivesoftware/smack/PacketReader$6;->$SwitchMap$org$jivesoftware$smack$packet$RosterPacket$Item$G_STATUS:[I

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_0

    move v1, v6

    .line 1582
    :goto_2
    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setQuickContact(Z)V

    :cond_3
    move-object v1, v4

    .line 1585
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "group"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1586
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->addGroupName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1545
    :catch_0
    move-exception v1

    move v1, v6

    goto :goto_1

    :pswitch_0
    move v1, v7

    .line 1572
    goto :goto_2

    .line 1576
    :pswitch_1
    const/4 v3, 0x5

    if-lt v1, v3, :cond_5

    move v1, v7

    goto :goto_2

    :cond_5
    move v1, v6

    goto :goto_2

    .line 1589
    :cond_6
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1590
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1591
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 1593
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v7

    .line 1594
    goto/16 :goto_0

    .line 1598
    :cond_8
    return-object v0

    :cond_9
    move v1, v6

    goto :goto_1

    .line 1569
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseStreamError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/StreamError;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1084
    const/4 v0, 0x0

    .line 1085
    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1086
    new-instance v0, Lorg/jivesoftware/smack/packet/StreamError;

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/StreamError;-><init>(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1089
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/StreamError;->setText(Ljava/lang/String;)V

    .line 1093
    :cond_0
    if-eqz v0, :cond_1

    .line 1094
    const-string v1, "Smack/Packet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PacketReader] got stream error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StreamError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_1
    return-object v0
.end method

.method private parseStreamError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1043
    const/4 v0, 0x0

    .line 1044
    const/4 v1, 0x0

    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 1046
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 1047
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1048
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1050
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1052
    :pswitch_0
    const-string v2, "Smack/Packet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string v2, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1054
    new-instance v1, Lorg/jivesoftware/smack/packet/StreamError;

    invoke-direct {v1, v3}, Lorg/jivesoftware/smack/packet/StreamError;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1059
    :pswitch_1
    const-string v2, "error"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1060
    const-string v0, "Smack/Packet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v0, 0x1

    goto :goto_0

    .line 1063
    :cond_1
    const-string v2, "Smack/Packet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    </"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1068
    :pswitch_2
    if-eqz v1, :cond_0

    .line 1069
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/StreamError;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1075
    :cond_2
    if-eqz v1, :cond_3

    .line 1076
    const-string v0, "Smack/Packet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PacketReader] got stream error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StreamError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_3
    return-object v1

    .line 1050
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processListeners()V
    .locals 9

    .prologue
    .line 474
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v7, "PacketReader.processListeners.1"

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V

    .line 477
    :try_start_0
    new-instance v5, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v6, "PacketReader.processListeners"

    invoke-direct {v5, v6}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 479
    .local v5, wakeLockDiag:Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    const/4 v3, 0x0

    .line 480
    .local v3, loop:I
    const/4 v2, 0x0

    .line 482
    .local v2, lastLoop:I
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v6, :cond_4

    .line 483
    const/4 v4, 0x0

    .line 485
    .local v4, processedPacket:Z
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    invoke-direct {p0, v6}, Lorg/jivesoftware/smack/PacketReader;->processListeners(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 487
    const/4 v4, 0x1

    .line 490
    :cond_1
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    invoke-direct {p0, v6}, Lorg/jivesoftware/smack/PacketReader;->processListeners(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 492
    const/4 v4, 0x1

    .line 495
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 497
    if-nez v4, :cond_0

    .line 498
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    move-result-wide v0

    .line 499
    .local v0, diff:J
    const-wide/16 v6, 0x1f4

    cmp-long v6, v0, v6

    if-lez v6, :cond_3

    .line 500
    const-string v6, "Smack"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PacketReader] processListeners: Num of loop processed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_3
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v7, "PacketReader.processListeners"

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 509
    :try_start_1
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    :try_start_2
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V

    .line 511
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 517
    :goto_1
    :try_start_3
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v7, "PacketReader.processListeners"

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 519
    move v2, v3

    goto :goto_0

    .line 511
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 512
    :catch_0
    move-exception v6

    goto :goto_1

    .line 523
    .end local v0           #diff:J
    .end local v2           #lastLoop:I
    .end local v3           #loop:I
    .end local v4           #processedPacket:Z
    .end local v5           #wakeLockDiag:Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v8, "PacketReader.processListeners.1"

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    throw v6

    .restart local v2       #lastLoop:I
    .restart local v3       #loop:I
    .restart local v5       #wakeLockDiag:Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    :cond_4
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v7, "PacketReader.processListeners.1"

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method private processListeners(Ljava/util/List;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, listeners:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;>;"
    const/4 v1, 0x0

    .line 450
    .local v1, retVal:Z
    monitor-enter p1

    .line 451
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 452
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 453
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    .line 454
    .local v3, wrapper:Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    if-eqz v3, :cond_0

    .line 460
    invoke-virtual {v3}, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->notifyListener()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 461
    const/4 v1, 0x1

    .line 452
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    .end local v3           #wrapper:Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    :cond_1
    monitor-exit p1

    .line 467
    return v1

    .line 465
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 988
    if-nez p1, :cond_0

    .line 1039
    :goto_0
    return-void

    .line 994
    :cond_0
    const-string v0, "Smack/Packet"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 995
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toLogString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    .line 1003
    :cond_1
    :goto_1
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/DataMessage;

    if-eqz v0, :cond_4

    .line 1005
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageCollectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    .line 1007
    :goto_2
    if-ge v2, v1, :cond_8

    .line 1008
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageCollectors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/DataMessageCollector;

    .line 1009
    if-eqz v0, :cond_2

    .line 1011
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/DataMessageCollector;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1007
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 996
    :cond_3
    const-string v0, "Sync"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/DataMessage;

    if-eqz v0, :cond_1

    .line 999
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toLogString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->logPacket(Ljava/lang/String;)V

    goto :goto_1

    .line 1016
    :cond_4
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    monitor-enter v0

    .line 1017
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_3
    if-ltz v1, :cond_6

    .line 1018
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1019
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1017
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1022
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    .line 1026
    :goto_4
    if-ge v2, v1, :cond_8

    .line 1027
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->collectors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketCollector;

    .line 1028
    if-eqz v0, :cond_7

    .line 1030
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketCollector;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1026
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 1022
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1036
    :cond_8
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 1037
    :try_start_2
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1038
    monitor-exit v0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private releaseConnectionIDLock()V
    .locals 2

    .prologue
    .line 975
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    monitor-enter v0

    .line 976
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 977
    monitor-exit v0

    .line 978
    return-void

    .line 977
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetParser()V
    .locals 4

    .prologue
    .line 434
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-boolean v1, v1, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v1, :cond_0

    .line 435
    new-instance v1, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;-><init>()V

    invoke-direct {v1, v2, p0}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;-><init>(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;Lcom/google/android/gsf/gtalkservice/proto/ProtoBufEventHandler;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->protoParser:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParser;

    .line 445
    :goto_0
    return-void

    .line 439
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/jivesoftware/smack/util/PacketParserUtils;->newXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 440
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v2, v2, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 442
    .local v0, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 2
    .parameter "connectionListener"

    .prologue
    .line 321
    if-nez p1, :cond_0

    .line 330
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addDataMessageListener(Lorg/jivesoftware/smack/PacketListener;)Z
    .locals 6
    .parameter "packetListener"

    .prologue
    .line 190
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    monitor-enter v2

    .line 191
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    .line 192
    .local v1, wrapper:Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    iget-object v3, v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    const-string v3, "Smack/Packet"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDataMessageListener: duplicate listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 196
    :cond_1
    const/4 v3, 0x0

    monitor-exit v2

    move v2, v3

    .line 204
    .end local v1           #wrapper:Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    :goto_0
    return v2

    .line 202
    :cond_2
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    new-instance v4, Lorg/jivesoftware/smack/PacketReader$DataMessageListenerWrapper;

    new-instance v5, Lorg/jivesoftware/smack/DataMessageCollector;

    invoke-direct {v5, p0}, Lorg/jivesoftware/smack/DataMessageCollector;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    invoke-direct {v4, p0, p1, v5}, Lorg/jivesoftware/smack/PacketReader$DataMessageListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/PacketCollector;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const/4 v3, 0x1

    monitor-exit v2

    move v2, v3

    goto :goto_0

    .line 205
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)Z
    .locals 6
    .parameter "packetListener"
    .parameter "packetFilter"

    .prologue
    .line 232
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    monitor-enter v2

    .line 233
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    .line 234
    .local v1, wrapper:Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    iget-object v3, v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;->packetCollector:Lorg/jivesoftware/smack/PacketCollector;

    iget-object v3, v3, Lorg/jivesoftware/smack/PacketCollector;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    const-string v3, "Smack/Packet"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPacketListener: duplicate listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and filter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 240
    :cond_1
    const/4 v3, 0x0

    monitor-exit v2

    move v2, v3

    .line 246
    .end local v1           #wrapper:Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;
    :goto_0
    return v2

    .line 244
    :cond_2
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    new-instance v4, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;

    new-instance v5, Lorg/jivesoftware/smack/PacketCollector;

    invoke-direct {v5, p0, p2}, Lorg/jivesoftware/smack/PacketCollector;-><init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-direct {v4, p0, p1, v5}, Lorg/jivesoftware/smack/PacketReader$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/PacketCollector;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    const/4 v3, 0x1

    monitor-exit v2

    move v2, v3

    goto :goto_0

    .line 247
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;
    .locals 1
    .parameter "packetFilter"

    .prologue
    .line 182
    new-instance v0, Lorg/jivesoftware/smack/PacketCollector;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/PacketCollector;-><init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter

    .prologue
    .line 1996
    const-string v0, "Packet dataMessage listeners:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1997
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->dataMessageListeners:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smack/PacketReader;->dumpListener(Ljava/util/List;Ljava/io/PrintWriter;)V

    .line 1999
    const-string v0, "Packet listeners:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listeners:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smack/PacketReader;->dumpListener(Ljava/util/List;Ljava/io/PrintWriter;)V

    .line 2001
    return-void
.end method

.method public getLastActive()J
    .locals 2

    .prologue
    .line 1930
    iget-wide v0, p0, Lorg/jivesoftware/smack/PacketReader;->lastActive:J

    return-wide v0
.end method

.method public handleProtoBuf(Lcom/google/common/io/protocol/ProtoBuf;J)V
    .locals 12
    .parameter "protobuf"
    .parameter "size"

    .prologue
    .line 533
    iget-boolean v7, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-eqz v7, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    const/4 v2, 0x0

    .line 537
    .local v2, packet:Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v6

    .line 540
    .local v6, type:Lcom/google/common/io/protocol/ProtoBufType;
    :try_start_0
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_PING:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_7

    .line 541
    const-string v7, "Smack/Packet"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 542
    const-string v7, "Received HeartbeatPing from server."

    invoke-direct {p0, v7}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 547
    :cond_2
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 548
    new-instance v3, Lorg/jivesoftware/smack/packet/HeartbeatPing;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/HeartbeatPing;-><init>()V

    .end local v2           #packet:Lorg/jivesoftware/smack/packet/Packet;
    .local v3, packet:Lorg/jivesoftware/smack/packet/Packet;
    move-object v2, v3

    .line 551
    .end local v3           #packet:Lorg/jivesoftware/smack/packet/Packet;
    .restart local v2       #packet:Lorg/jivesoftware/smack/packet/Packet;
    :cond_3
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v7, v7, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/PacketWriter;->sendHeartbeatAck()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :cond_4
    :goto_1
    if-eqz v2, :cond_14

    .line 605
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v4

    .line 606
    .local v4, rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    if-eqz v4, :cond_5

    .line 607
    invoke-virtual {v4, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processS2dMessage(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 609
    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v7

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->getRmq2Id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getLastStreamIdReceived()I

    move-result v9

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Packet;->getLastStreamId()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Lcom/google/android/gsf/gtalkservice/LogTag;->logRmq2(Lcom/google/common/io/protocol/ProtoBufType;Ljava/lang/String;IIZ)V

    .line 614
    :cond_5
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getRmqManager()Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    move-result-object v5

    .line 615
    .local v5, rmqMgr:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;
    if-eqz v5, :cond_6

    .line 616
    invoke-virtual {v5, v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->processS2dMessage(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 619
    :cond_6
    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 620
    const/4 v7, 0x1

    invoke-static {v2, p2, p3, v7}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->update(Lorg/jivesoftware/smack/packet/Packet;JZ)V

    goto :goto_0

    .line 552
    .end local v4           #rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    .end local v5           #rmqMgr:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;
    :cond_7
    :try_start_1
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_9

    .line 553
    const-string v7, "Smack/Packet"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 554
    const-string v7, "Received HeartbeatAck from server."

    invoke-direct {p0, v7}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 558
    :cond_8
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 559
    new-instance v3, Lorg/jivesoftware/smack/packet/HeartbeatAck;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/HeartbeatAck;-><init>()V

    .end local v2           #packet:Lorg/jivesoftware/smack/packet/Packet;
    .restart local v3       #packet:Lorg/jivesoftware/smack/packet/Packet;
    move-object v2, v3

    .end local v3           #packet:Lorg/jivesoftware/smack/packet/Packet;
    .restart local v2       #packet:Lorg/jivesoftware/smack/packet/Packet;
    goto :goto_1

    .line 561
    :cond_9
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->LOGIN_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_a

    .line 562
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseLoginResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/LoginResponse;

    move-result-object v2

    goto :goto_1

    .line 563
    :cond_a
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BIND_ACCOUNT_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_b

    .line 565
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseBindAccountResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    goto :goto_1

    .line 566
    :cond_b
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HTTP_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_c

    .line 567
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseHttpResponse(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/HttpResponse;

    move-result-object v2

    goto :goto_1

    .line 568
    :cond_c
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_d

    .line 569
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getDefaultAccountId()J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMessage(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    goto :goto_1

    .line 571
    :cond_d
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_e

    .line 572
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getDefaultAccountId()J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePresence(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    goto/16 :goto_1

    .line 574
    :cond_e
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BATCH_PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_f

    .line 575
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getDefaultAccountId()J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseBatchPresence(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    goto/16 :goto_1

    .line 577
    :cond_f
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->IQ_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_10

    .line 578
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    goto/16 :goto_1

    .line 579
    :cond_10
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->DATA_MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_11

    .line 580
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseDataMessage(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/DataMessage;

    move-result-object v2

    goto/16 :goto_1

    .line 581
    :cond_11
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->CLOSE:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_13

    .line 582
    const-string v7, "Smack/Packet"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 583
    const-string v7, "Received Close from server."

    invoke-direct {p0, v7}, Lorg/jivesoftware/smack/PacketReader;->log(Ljava/lang/String;)V

    .line 585
    :cond_12
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 591
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 592
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "Smack/Packet"

    const-string v8, "handleProtoBuf: caught "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 586
    .end local v0           #e:Ljava/lang/Exception;
    :cond_13
    :try_start_2
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->STREAM_ERROR_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_4

    .line 587
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 588
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parseStreamError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v1

    .line 589
    .local v1, error:Lorg/jivesoftware/smack/packet/StreamError;
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v7, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/StreamError;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 622
    .end local v1           #error:Lorg/jivesoftware/smack/packet/StreamError;
    :cond_14
    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_PING:Lcom/google/common/io/protocol/ProtoBufType;

    if-eq v6, v7, :cond_15

    sget-object v7, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->HEARTBEAT_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    if-ne v6, v7, :cond_0

    .line 624
    :cond_15
    const/4 v7, 0x1

    invoke-static {p2, p3, v7}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateHeartbeat(JZ)V

    goto/16 :goto_0
.end method

.method notifyConnectionError(Ljava/lang/Exception;)V
    .locals 6
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 370
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->notifiedConnectionError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    :goto_0
    return-void

    .line 375
    :cond_0
    new-instance v2, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v3, "notifyConnectionError"

    invoke-direct {v2, v3}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 382
    .local v2, wakeLockDiag:Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v4, "notifyConnectionError"

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->acquireWakeLock(Ljava/lang/String;)V

    .line 385
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 387
    instance-of v3, p1, Ljava/io/IOException;

    if-eqz v3, :cond_1

    .line 391
    const-string v3, "Smack/Packet"

    const-string v4, "notify conn break (IOEx), close connection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 398
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->close(Z)V

    .line 399
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->releaseConnectionIDLock()V

    .line 402
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 412
    :try_start_1
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 413
    .local v1, listener:Lorg/jivesoftware/smack/ConnectionListener;
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I

    move-result v4

    invoke-interface {v1, v4, p1}, Lorg/jivesoftware/smack/ConnectionListener;->connectionClosedOnError(ILjava/lang/Exception;)V

    goto :goto_2

    .line 416
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lorg/jivesoftware/smack/ConnectionListener;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 423
    :catchall_1
    move-exception v3

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 424
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v5, "notifyConnectionError"

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    .line 423
    throw v3

    .line 394
    :cond_1
    :try_start_3
    const-string v3, "Smack/Packet"

    const-string v4, "notify conn error. close connection!"

    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 416
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 419
    :try_start_5
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 420
    :try_start_6
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 421
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 423
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 424
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v4, "notifyConnectionError"

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->releaseWakeLock(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public shutdown(Z)V
    .locals 4
    .parameter "notifyConnectionClosed"

    .prologue
    .line 344
    iget-boolean v2, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 345
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    monitor-enter v2

    .line 346
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connectionListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 347
    .local v1, listener:Lorg/jivesoftware/smack/ConnectionListener;
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I

    move-result v3

    invoke-interface {v1, v3}, Lorg/jivesoftware/smack/ConnectionListener;->connectionClosed(I)V

    goto :goto_0

    .line 349
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lorg/jivesoftware/smack/ConnectionListener;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 355
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 356
    :try_start_2
    iget-object v3, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 357
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 360
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->packetProcessor:Lorg/jivesoftware/smack/PacketProcessor;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketProcessor;->shutdown()V

    .line 361
    return-void

    .line 357
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public startup()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 277
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 278
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->packetProcessor:Lorg/jivesoftware/smack/PacketProcessor;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/PacketProcessor;->start()V

    .line 284
    :try_start_0
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :try_start_1
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 290
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v7

    int-to-long v4, v7

    .line 292
    .local v4, waitTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 293
    .local v2, start:J
    :goto_0
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v7, :cond_0

    .line 294
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-gtz v7, :cond_1

    .line 305
    .end local v2           #start:J
    .end local v4           #waitTime:J
    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :goto_1
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 311
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "Connection failed. No response from server."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 298
    .restart local v2       #start:J
    .restart local v4       #waitTime:J
    :cond_1
    :try_start_2
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connectionIDLock:Ljava/lang/Object;

    const-wide/16 v8, 0x3

    mul-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 301
    .local v0, now:J
    sub-long v7, v0, v2

    sub-long/2addr v4, v7

    .line 302
    move-wide v2, v0

    .line 303
    goto :goto_0

    .line 305
    .end local v0           #now:J
    .end local v2           #start:J
    .end local v4           #waitTime:J
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 307
    :catch_0
    move-exception v6

    goto :goto_1

    .line 314
    :cond_2
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    iput-object v7, v6, Lorg/jivesoftware/smack/XMPPConnection;->connectionID:Ljava/lang/String;

    .line 316
    return-void
.end method
