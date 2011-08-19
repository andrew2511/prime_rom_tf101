.class public Lorg/jivesoftware/smack/XMPPConnection;
.super Ljava/lang/Object;
.source "XMPPConnection.java"


# static fields
.field public static CURRENT_VERSION:B

.field public static DEBUG_ENABLED:Z

.field private static connectionEstablishedListeners:Ljava/util/List;


# instance fields
.field private anonymous:Z

.field private authenticated:Z

.field chats:Ljava/util/Map;

.field private compressionMethods:Ljava/util/Collection;

.field private configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

.field private connected:Z

.field connectionID:Ljava/lang/String;

.field private heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

.field host:Ljava/lang/String;

.field private localConnectionId:I

.field private loginSettings:Ljava/util/Map;
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

.field private mDefaultAccountId:J

.field mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

.field mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

.field mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field packetReader:Lorg/jivesoftware/smack/PacketReader;

.field packetWriter:Lorg/jivesoftware/smack/PacketWriter;

.field port:I

.field reader:Ljava/io/InputStream;

.field private saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

.field serviceName:Ljava/lang/String;

.field socket:Ljava/net/Socket;

.field useProtoBuf:Z

.field private user:Ljava/lang/String;

.field private usingCompression:Z

.field private usingTLS:Z

.field writer:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x5

    sput-byte v0, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lorg/jivesoftware/smack/XMPPConnection;->DEBUG_ENABLED:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/XMPPConnection;->connectionEstablishedListeners:Ljava/util/List;

    .line 120
    :try_start_0
    const-string v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/jivesoftware/smack/XMPPConnection;->DEBUG_ENABLED:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getVersion()Ljava/lang/String;

    .line 127
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 148
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 149
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 150
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z

    .line 151
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    .line 156
    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    .line 157
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mDefaultAccountId:J

    .line 173
    iput-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    .line 174
    iput-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    .line 175
    iput-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    .line 181
    new-instance v0, Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/SASLAuthentication;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->chats:Ljava/util/Map;

    .line 419
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjavax/net/SocketFactory;)V
    .locals 6
    .parameter "host"
    .parameter "port"
    .parameter "serviceName"
    .parameter "useProtoBuf"
    .parameter "socketFactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 148
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 149
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 150
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z

    .line 151
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    .line 156
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    .line 157
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->mDefaultAccountId:J

    .line 173
    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    .line 174
    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    .line 175
    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    .line 181
    new-instance v1, Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/SASLAuthentication;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    .line 192
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->chats:Ljava/util/Map;

    .line 332
    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    .local v0, config:Lorg/jivesoftware/smack/ConnectionConfiguration;
    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setTLSEnabled(Z)V

    .line 334
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setCompressionEnabled(Z)V

    .line 335
    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSASLAuthenticationEnabled(Z)V

    .line 336
    sget-boolean v1, Lorg/jivesoftware/smack/XMPPConnection;->DEBUG_ENABLED:Z

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setDebuggerEnabled(Z)V

    .line 337
    invoke-virtual {v0, p4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setUseProtoBuf(Z)V

    .line 339
    invoke-direct {p0, v0, p5}, Lorg/jivesoftware/smack/XMPPConnection;->connectUsingConfiguration(Lorg/jivesoftware/smack/ConnectionConfiguration;Ljavax/net/SocketFactory;)V

    .line 340
    return-void
.end method

.method private closeSocket()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 785
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 797
    :goto_0
    return-void

    .line 790
    :cond_0
    :try_start_0
    const-string v1, "close socket"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V

    .line 791
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 792
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 793
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "Smack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSocket: ignore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    throw v1
.end method

.method private connectUsingConfiguration(Lorg/jivesoftware/smack/ConnectionConfiguration;Ljavax/net/SocketFactory;)V
    .locals 7
    .parameter "config"
    .parameter "socketFactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getPort()I

    move-result v3

    iput v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    .line 359
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create socket connection("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V

    .line 361
    if-nez p2, :cond_0

    .line 362
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    iget v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 381
    :goto_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getUseProtoBuf()Z

    move-result v3

    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    .line 382
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getServiceName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    .line 386
    :try_start_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/ConnectionConfiguration;

    iput-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 393
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->init()V

    .line 397
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/XMPPConnection;->setConnected(Z)V

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_2

    .line 411
    return-void

    .line 365
    :cond_0
    :try_start_3
    iget-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    iget v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    invoke-virtual {p2, v3, v4}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 368
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 369
    .local v2, uhe:Ljava/net/UnknownHostException;
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v6, 0x194

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    invoke-direct {v3, v4, v5, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V

    throw v3

    .line 374
    .end local v2           #uhe:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 375
    .local v1, ioe:Ljava/io/IOException;
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XMPPError connecting to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v6, 0x1f6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    invoke-direct {v3, v4, v5, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V

    throw v3

    .line 401
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 404
    .local v0, ex:Lorg/jivesoftware/smack/XMPPException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectUsingConfiguration: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V

    .line 405
    iget-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_1

    .line 406
    const-string v3, "connectUsingConfiguration: socket is opened, close it."

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->closeSocket()V

    .line 409
    :cond_1
    throw v0

    .line 388
    .end local v0           #ex:Lorg/jivesoftware/smack/XMPPException;
    :catch_3
    move-exception v3

    goto/16 :goto_1
.end method

.method private static connectionEstablished(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 4
    .parameter "connection"

    .prologue
    .line 1307
    const/4 v1, 0x0

    .line 1308
    .local v1, listeners:[Lorg/jivesoftware/smack/ConnectionEstablishedListener;
    sget-object v2, Lorg/jivesoftware/smack/XMPPConnection;->connectionEstablishedListeners:Ljava/util/List;

    monitor-enter v2

    .line 1309
    :try_start_0
    sget-object v3, Lorg/jivesoftware/smack/XMPPConnection;->connectionEstablishedListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Lorg/jivesoftware/smack/ConnectionEstablishedListener;

    .line 1310
    sget-object v3, Lorg/jivesoftware/smack/XMPPConnection;->connectionEstablishedListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1311
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1312
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1313
    aget-object v2, v1, v0

    invoke-interface {v2, p0}, Lorg/jivesoftware/smack/ConnectionEstablishedListener;->connectionEstablished(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1311
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1315
    .restart local v0       #i:I
    :cond_0
    return-void
.end method

.method private hasAvailableCompressionMethod(Ljava/lang/String;)Z
    .locals 1
    .parameter "method"

    .prologue
    .line 1417
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->compressionMethods:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->compressionMethods:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1027
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->initReaderAndWriter()V

    .line 1029
    new-instance v0, Lorg/jivesoftware/smack/PacketWriter;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketWriter;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    .line 1030
    new-instance v0, Lorg/jivesoftware/smack/PacketReader;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    .line 1042
    return-void
.end method

.method private initReaderAndWriter()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1163
    :try_start_0
    iget-boolean v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    if-nez v6, :cond_1

    .line 1164
    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v7, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/16 v8, 0x2000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    .line 1165
    new-instance v6, Ljava/io/BufferedOutputStream;

    iget-object v7, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const/16 v8, 0x2000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    const-string v6, "Smack"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1169
    const-string v6, "initReaderAndWriter: use compression"

    invoke-direct {p0, v6}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V

    .line 1173
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->closeReader()V

    .line 1174
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->closeWriter()V

    .line 1177
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    .local v0, def:Ljava/util/zip/Deflater;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "flushParm"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1181
    .local v2, f:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1182
    const/4 v6, 0x2

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1190
    .end local v2           #f:Ljava/lang/reflect/Field;
    :goto_1
    :try_start_2
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 1191
    .local v1, dos:Ljava/io/OutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x2000

    invoke-direct {v6, v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    .line 1193
    new-instance v3, Ljava/util/zip/InflaterInputStream;

    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1194
    .local v3, iis:Ljava/util/zip/InflaterInputStream;
    iput-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    .line 1195
    const-string v6, "Smack"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1196
    const-string v6, "compression started"

    invoke-direct {p0, v6}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1235
    .end local v0           #def:Ljava/util/zip/Deflater;
    .end local v1           #dos:Ljava/io/OutputStream;
    .end local v3           #iis:Ljava/util/zip/InflaterInputStream;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 1236
    .local v4, ioe:Ljava/io/IOException;
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "XMPPError establishing connection with server."

    new-instance v8, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v9, 0x1f6

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    invoke-direct {v6, v7, v8, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V

    throw v6

    .line 1183
    .end local v4           #ioe:Ljava/io/IOException;
    .restart local v0       #def:Ljava/util/zip/Deflater;
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 1188
    .local v5, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v6, "Smack"

    const-string v7, "Compression hack failed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1646
    const-string v0, "Smack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    return-void
.end method

.method private setAuthenticated(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 768
    const-string v0, "Smack"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAuthenticated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V

    .line 772
    :cond_0
    iput-boolean p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 773
    return-void
.end method

.method private setConnected(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 741
    const-string v0, "Smack"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V

    .line 745
    :cond_0
    iput-boolean p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 746
    return-void
.end method

.method private useCompression()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1449
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 1480
    :goto_0
    return v0

    .line 1454
    :cond_0
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 1455
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression should be negotiated before authentication."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1469
    :cond_1
    const-string v0, "zlib"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->hasAvailableCompressionMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1470
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->requestStreamCompression()V

    .line 1472
    monitor-enter p0

    .line 1474
    :try_start_0
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1478
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    goto :goto_0

    .line 1477
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 1480
    goto :goto_0

    .line 1476
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public acquireWakeLock(Ljava/lang/String;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 1582
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1583
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1584
    const-string v0, "GTalkService/wake"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquireWakeLock: token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wakelock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V

    .line 1590
    :cond_0
    :goto_0
    return-void

    .line 1588
    :cond_1
    const-string v0, "GTalkService/wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWakeLock: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWakeLock=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 1
    .parameter "connectionListener"

    .prologue
    .line 984
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketReader;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 985
    return-void
.end method

.method public addDataMessageListener(Lorg/jivesoftware/smack/PacketListener;)V
    .locals 1
    .parameter "packetListener"

    .prologue
    .line 884
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketReader;->addDataMessageListener(Lorg/jivesoftware/smack/PacketListener;)Z

    .line 885
    return-void
.end method

.method public addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 2
    .parameter "packetListener"
    .parameter "packetFilter"

    .prologue
    .line 898
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/PacketReader;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)Z

    .line 902
    return-void
.end method

.method public declared-synchronized bindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1661
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1662
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1663
    new-instance v0, Lorg/jivesoftware/smack/packet/BindAccountRequest;

    move-object v3, p3

    move-object v4, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smack/packet/BindAccountRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1665
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/BindAccountRequest;->getPacketID()Ljava/lang/String;

    move-result-object v1

    .line 1666
    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/XMPPConnection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 1667
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/PacketWriter;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1671
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 1672
    if-nez v0, :cond_0

    .line 1673
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Gtalk authentication timed out."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1661
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1674
    :cond_0
    :try_start_1
    instance-of v2, v0, Lorg/jivesoftware/smack/packet/BindAccountResponse;

    if-nez v2, :cond_1

    .line 1677
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Expected BindAccountResponse!"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1679
    :cond_1
    check-cast v0, Lorg/jivesoftware/smack/packet/BindAccountResponse;

    .line 1680
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->getJid()Ljava/lang/String;

    move-result-object v2

    .line 1681
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1682
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    .line 1683
    if-nez v0, :cond_2

    .line 1688
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v1, 0x191

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    .line 1690
    :cond_2
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 1694
    :cond_3
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1696
    monitor-exit p0

    return-object v2
.end method

.method public close()V
    .locals 1

    .prologue
    .line 800
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->close(Z)V

    .line 801
    return-void
.end method

.method public close(Z)V
    .locals 3
    .parameter "notifyConnectionClosed"

    .prologue
    .line 810
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    monitor-enter v0

    .line 811
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 812
    const-string v1, "close: socket already closed, bail"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V

    .line 813
    monitor-exit v0

    .line 841
    :goto_0
    return-void

    .line 817
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 818
    const-string v1, "Smack"

    const-string v2, "##### close: isConnected=false but socket is open! close it"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->closeSocket()V

    .line 820
    monitor-exit v0

    goto :goto_0

    .line 840
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 823
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close connection, notifyClosed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V

    .line 826
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/PacketReader;->shutdown(Z)V

    .line 827
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketWriter;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    const-wide/16 v1, 0x96

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 837
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->closeSocket()V

    .line 838
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->setAuthenticated(Z)V

    .line 839
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->setConnected(Z)V

    .line 840
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 833
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public closeReader()V
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1140
    :try_start_0
    const-string v0, "[closeReader] close reader stream"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    .line 1147
    :cond_0
    return-void

    .line 1142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public closeWriter()V
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 1152
    :try_start_0
    const-string v0, "[closeWriter] close writer stream"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    .line 1159
    :cond_0
    return-void

    .line 1154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1052
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1055
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    const-string v2, "not connected"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1107
    .local v0, ex:Lorg/jivesoftware/smack/XMPPException;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->close(Z)V

    .line 1133
    throw v0

    .line 1059
    .end local v0           #ex:Lorg/jivesoftware/smack/XMPPException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketWriter;->startup()V

    .line 1062
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketReader;->startup()V

    .line 1070
    invoke-static {p0}, Lorg/jivesoftware/smack/XMPPConnection;->connectionEstablished(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1135
    return-void
.end method

.method public createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;
    .locals 1
    .parameter "packetFilter"

    .prologue
    .line 974
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketReader;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XMPP connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getHostIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    return-void
.end method

.method public dumpVerbose(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter

    .prologue
    .line 1635
    const-string v0, "PacketReader"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    const-string v0, "----------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketReader;->dump(Ljava/io/PrintWriter;)V

    .line 1639
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    const-string v0, "PacketWriter"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    const-string v0, "----------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketWriter;->dump(Ljava/io/PrintWriter;)V

    .line 1643
    return-void
.end method

.method public getConnectionConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    return-object v0
.end method

.method public getConnectionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->connectionID:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultAccountId()J
    .locals 2

    .prologue
    .line 1705
    iget-wide v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mDefaultAccountId:J

    return-wide v0
.end method

.method public getHeartbeatConfig()Lorg/jivesoftware/smack/packet/HeartbeatConfig;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLastActivityFromServerTime()J
    .locals 2

    .prologue
    .line 1526
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketReader;->getLastActive()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastActivityToServerTime()J
    .locals 2

    .prologue
    .line 1530
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->getLastActive()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalConnectionId()I
    .locals 1

    .prologue
    .line 1608
    iget v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->localConnectionId:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    return v0
.end method

.method public getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    .locals 1

    .prologue
    .line 1620
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    return-object v0
.end method

.method public getRmqManager()Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    return-object v0
.end method

.method public getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    const/4 v0, 0x0

    .line 481
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    goto :goto_0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 764
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    return v0
.end method

.method public declared-synchronized login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZLjava/util/List;ZJIZLorg/jivesoftware/smack/packet/HeartbeatStat;Ljava/util/Map;)V
    .locals 20
    .parameter "username"
    .parameter "password"
    .parameter "resource"
    .parameter "deviceId"
    .parameter "useRmq"
    .parameter "lastRmqId"
    .parameter "useRmq2"
    .parameter
    .parameter "sendPresence"
    .parameter "accountId"
    .parameter "compress"
    .parameter "adaptiveHeartbeat"
    .parameter "heartbeatStat"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZJIZ",
            "Lorg/jivesoftware/smack/packet/HeartbeatStat;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 579
    .local p9, rmq2S2dIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p16, loginSettingsRequest:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 580
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Not connected to server."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 582
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    move v5, v0

    if-eqz v5, :cond_1

    .line 583
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Already logged in to server."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 586
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 588
    const/16 v19, 0x0

    .line 589
    .local v19, response:Ljava/lang/String;
    const-string v5, "Smack"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    .line 590
    .local v18, printLog:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 591
    if-eqz v18, :cond_2

    .line 592
    const-string v5, "Smack"

    const-string v6, "[XMPPConn] login: use PB to authenticate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_2
    new-instance v4, Lorg/jivesoftware/smack/ProtoBufAuthentication;

    move-object/from16 v5, p0

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-wide/from16 v11, p11

    move-object/from16 v13, p9

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v4 .. v17}, Lorg/jivesoftware/smack/ProtoBufAuthentication;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;ZJZJLjava/util/List;IZLorg/jivesoftware/smack/packet/HeartbeatStat;Ljava/util/Map;)V

    .line 597
    .local v4, auth:Lorg/jivesoftware/smack/ProtoBufAuthentication;
    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/ProtoBufAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 598
    invoke-virtual {v4}, Lorg/jivesoftware/smack/ProtoBufAuthentication;->getServerSettings()Ljava/util/Map;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->loginSettings:Ljava/util/Map;

    .line 599
    invoke-virtual {v4}, Lorg/jivesoftware/smack/ProtoBufAuthentication;->getHeartbeatConfig()Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    .line 623
    .end local v4           #auth:Lorg/jivesoftware/smack/ProtoBufAuthentication;
    :goto_0
    if-eqz v19, :cond_a

    .line 624
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 626
    invoke-static/range {v19 .. v19}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    .line 628
    if-eqz v18, :cond_3

    .line 629
    const-string v5, "Smack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[XMPPConn] login: got servicename from response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isCompressionEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 657
    invoke-direct/range {p0 .. p0}, Lorg/jivesoftware/smack/XMPPConnection;->useCompression()Z

    .line 675
    :cond_4
    if-eqz v18, :cond_5

    .line 676
    const-string v5, "Smack"

    const-string v6, "[XMPPConn] login: authenticated"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_5
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 681
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    monitor-exit p0

    return-void

    .line 601
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isSASLAuthenticationEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/jivesoftware/smack/SASLAuthentication;->hasNonAnonymousAuthentication()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 604
    if-eqz v18, :cond_7

    .line 605
    const-string v5, "Smack"

    const-string v6, "[XMPPConn] login: use SASL to authenticate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 612
    :cond_8
    if-eqz v18, :cond_9

    .line 613
    const-string v5, "Smack"

    const-string v6, "[XMPPConn] login: use NonSASL to authenticate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_9
    new-instance v5, Lorg/jivesoftware/smack/NonSASLAuthentication;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 638
    :cond_a
    const-string v5, "@"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_c

    .line 639
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 650
    :cond_b
    :goto_2
    if-eqz p3, :cond_3

    .line 651
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    goto/16 :goto_1

    .line 641
    :cond_c
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 642
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    .line 644
    if-eqz v18, :cond_b

    .line 645
    const-string v5, "Smack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[XMPPConn] login: get servicename from username "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public markPacketReception()V
    .locals 1

    .prologue
    .line 1559
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    if-eqz v0, :cond_0

    .line 1560
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->markPacketReception()V

    .line 1562
    :cond_0
    return-void
.end method

.method public markPacketTransmission()V
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->markPacketTransmission()V

    .line 1572
    :cond_0
    return-void
.end method

.method proceedTLSReceived()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1361
    const-string v1, "Smack"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1362
    const-string v1, "Smack"

    const-string v2, "[XMPPConn] proceedTLSReceived: bind TLS to socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    .line 1380
    .local v0, plain:Ljava/net/Socket;
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    .line 1383
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1388
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->initReaderAndWriter()V

    .line 1390
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 1393
    iput-boolean v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    .line 1396
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/PacketWriter;->setOutputStream(Ljava/io/OutputStream;)V

    .line 1398
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 1399
    return-void
.end method

.method public releaseWakeLock(Ljava/lang/String;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 1593
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1594
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1595
    const-string v0, "GTalkService/wake"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseWakeLock: token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wakelock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V

    .line 1601
    :cond_0
    :goto_0
    return-void

    .line 1599
    :cond_1
    const-string v0, "GTalkService/wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWakeLock: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWakeLock=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetConnection(Ljava/lang/Exception;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 1551
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    .line 1552
    return-void
.end method

.method public sendHeartbeat()V
    .locals 2

    .prologue
    .line 877
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->sendHeartbeat()V

    .line 881
    return-void
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 863
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 864
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_0
    if-nez p1, :cond_1

    .line 867
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketWriter;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 870
    return-void
.end method

.method setAvailableCompressionMethods(Ljava/util/Collection;)V
    .locals 0
    .parameter "methods"

    .prologue
    .line 1407
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->compressionMethods:Ljava/util/Collection;

    .line 1408
    return-void
.end method

.method public setDefaultAccountId(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 1701
    iput-wide p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->mDefaultAccountId:J

    .line 1702
    return-void
.end method

.method public setHeartbeatAlarm(Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;)V
    .locals 0
    .parameter "alarm"

    .prologue
    .line 1542
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    .line 1543
    return-void
.end method

.method public setLocalConnectionId(I)V
    .locals 0
    .parameter "ts"

    .prologue
    .line 1604
    iput p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->localConnectionId:I

    .line 1605
    return-void
.end method

.method public setRmq2Manager(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;)V
    .locals 0
    .parameter "rmq2Mgr"

    .prologue
    .line 1612
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    .line 1613
    return-void
.end method

.method public setRmqManager(Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;)V
    .locals 0
    .parameter "rmqMgr"

    .prologue
    .line 1616
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    .line 1617
    return-void
.end method

.method public setWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 2
    .parameter "wakeLock"

    .prologue
    .line 1575
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1576
    const-string v0, "GTalkService/wake"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWakeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->log(Ljava/lang/String;)V

    .line 1579
    :cond_0
    return-void
.end method

.method public startStreamCompression()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1488
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->startStreamCompression(Z)V

    .line 1489
    return-void
.end method

.method public startStreamCompression(Z)V
    .locals 2
    .parameter "notify"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    .line 1500
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->initReaderAndWriter()V

    .line 1503
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/PacketWriter;->setOutputStream(Ljava/io/OutputStream;)V

    .line 1505
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-nez v0, :cond_0

    .line 1508
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 1511
    :cond_0
    if-eqz p1, :cond_1

    .line 1512
    monitor-enter p0

    .line 1513
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1514
    monitor-exit p0

    .line 1516
    :cond_1
    return-void

    .line 1514
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startTLSReceived()V
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isTLSEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    :goto_0
    return-void

    .line 1351
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->sendStartTLS()V

    goto :goto_0
.end method

.method streamCompressionDenied()V
    .locals 1

    .prologue
    .line 1520
    monitor-enter p0

    .line 1521
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1522
    monitor-exit p0

    .line 1523
    return-void

    .line 1522
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 851
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 852
    .local v0, utfBytes:[B
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    monitor-enter v1

    .line 853
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 854
    monitor-exit v1

    .line 855
    return-void

    .line 854
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
