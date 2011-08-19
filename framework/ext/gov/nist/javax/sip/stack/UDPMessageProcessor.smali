.class public Lgov/nist/javax/sip/stack/UDPMessageProcessor;
.super Lgov/nist/javax/sip/stack/MessageProcessor;
.source "UDPMessageProcessor.java"


# static fields
.field private static final HIGHWAT:I = 0x1388

.field private static final LOWAT:I = 0x9c4


# instance fields
.field protected isRunning:Z

.field protected messageChannels:Ljava/util/LinkedList;

.field protected messageQueue:Ljava/util/LinkedList;

.field private port:I

.field protected sock:Ljava/net/DatagramSocket;

.field protected threadPoolSize:I


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V
    .registers 8
    .parameter "ipAddress"
    .parameter "sipStack"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const-string v1, "udp"

    invoke-direct {p0, p1, p3, v1, p2}, Lgov/nist/javax/sip/stack/MessageProcessor;-><init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 101
    iput-object p2, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 103
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    .line 105
    iput p3, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->port:I

    .line 107
    :try_start_10
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v1

    invoke-interface {v1, p3, p1}, Lgov/nist/core/net/NetworkLayer;->createDatagramSocket(ILjava/net/InetAddress;)Ljava/net/DatagramSocket;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    .line 110
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getReceiveUdpBufferSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 111
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getSendUdpBufferSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V

    .line 117
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/ThreadAuditor;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 118
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/ThreadAuditor;->getPingIntervalInMillisecs()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 120
    :cond_44
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0.0.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "::0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 126
    :cond_5c
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-super {p0, v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->setIpAddress(Ljava/net/InetAddress;)V
    :try_end_65
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_65} :catch_66

    .line 132
    :cond_65
    return-void

    .line 129
    :catch_66
    move-exception v1

    move-object v0, v1

    .line 130
    .local v0, ex:Ljava/net/SocketException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;
    .registers 6
    .parameter "targetHostPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/core/HostPort;->getPort()I

    move-result v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v0, v1, v2, v3, p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V

    return-object v0
.end method

.method public createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;
    .registers 5
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v0, p1, p2, v1, p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V

    return-object v0
.end method

.method public getDefaultTargetPort()I
    .registers 2

    .prologue
    .line 324
    const/16 v0, 0x13c4

    return v0
.end method

.method public getMaximumMessageSize()I
    .registers 2

    .prologue
    .line 338
    const/16 v0, 0x2000

    return v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->port:I

    return v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .registers 2

    .prologue
    .line 294
    const-string v0, "udp"

    return-object v0
.end method

.method public inUse()Z
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 346
    :try_start_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_c
    monitor-exit v0

    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_c

    .line 347
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .registers 16

    .prologue
    .line 166
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageChannels:Ljava/util/LinkedList;

    .line 169
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v9, v9, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_24

    .line 170
    const/4 v4, 0x0

    .local v4, i:I
    :goto_f
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v9, v9, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    if-ge v4, v9, :cond_24

    .line 171
    new-instance v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v1, v9, p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V

    .line 173
    .local v1, channel:Lgov/nist/javax/sip/stack/UDPMessageChannel;
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageChannels:Ljava/util/LinkedList;

    invoke-virtual {v9, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 179
    .end local v1           #channel:Lgov/nist/javax/sip/stack/UDPMessageChannel;
    .end local v4           #i:I
    :cond_24
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v9

    invoke-virtual {v9}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v7

    .line 182
    .local v7, threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :cond_2e
    :goto_2e
    iget-boolean v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    if-eqz v9, :cond_151

    .line 186
    :try_start_32
    invoke-virtual {v7}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 188
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v9}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v0

    .line 189
    .local v0, bufsize:I
    new-array v5, v0, [B

    .line 190
    .local v5, message:[B
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-direct {v6, v5, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 191
    .local v6, packet:Ljava/net/DatagramPacket;
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v9, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 203
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v9, v9, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    if-eqz v9, :cond_f5

    .line 204
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/16 v10, 0x1388

    if-lt v9, v10, :cond_6d

    .line 205
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 206
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    const-string v10, "Dropping message -- queue length exceeded"

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2e

    .line 246
    .end local v0           #bufsize:I
    .end local v5           #message:[B
    .end local v6           #packet:Ljava/net/DatagramPacket;
    :catch_6b
    move-exception v9

    goto :goto_2e

    .line 211
    .restart local v0       #bufsize:I
    .restart local v5       #message:[B
    .restart local v6       #packet:Ljava/net/DatagramPacket;
    :cond_6d
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/16 v10, 0x9c4

    if-le v9, v10, :cond_f5

    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/16 v10, 0x1388

    if-ge v9, v10, :cond_f5

    .line 213
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/16 v10, 0x9c4

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const v10, 0x451c4000

    div-float v8, v9, v10

    .line 214
    .local v8, threshold:F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x3ff0

    float-to-double v13, v8

    sub-double/2addr v11, v13

    cmpl-double v9, v9, v11

    if-lez v9, :cond_f2

    const/4 v9, 0x1

    move v2, v9

    .line 215
    .local v2, decision:Z
    :goto_9e
    if-eqz v2, :cond_f5

    .line 216
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 217
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dropping message with probability  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/high16 v11, 0x3ff0

    float-to-double v13, v8

    sub-double/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_c8
    .catch Ljava/net/SocketTimeoutException; {:try_start_32 .. :try_end_c8} :catch_6b
    .catch Ljava/net/SocketException; {:try_start_32 .. :try_end_c8} :catch_ca
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_c8} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_c8} :catch_137

    goto/16 :goto_2e

    .line 248
    .end local v0           #bufsize:I
    .end local v2           #decision:Z
    .end local v5           #message:[B
    .end local v6           #packet:Ljava/net/DatagramPacket;
    .end local v8           #threshold:F
    :catch_ca
    move-exception v9

    move-object v3, v9

    .line 249
    .local v3, ex:Ljava/net/SocketException;
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_e1

    .line 250
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v9

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    const-string v10, "UDPMessageProcessor: Stopping"

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_e1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 255
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v9

    .line 256
    :try_start_e7
    iget-object v10, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 257
    monitor-exit v9

    goto/16 :goto_2e

    :catchall_ef
    move-exception v10

    monitor-exit v9
    :try_end_f1
    .catchall {:try_start_e7 .. :try_end_f1} :catchall_ef

    throw v10

    .line 214
    .end local v3           #ex:Ljava/net/SocketException;
    .restart local v0       #bufsize:I
    .restart local v5       #message:[B
    .restart local v6       #packet:Ljava/net/DatagramPacket;
    .restart local v8       #threshold:F
    :cond_f2
    const/4 v9, 0x0

    move v2, v9

    goto :goto_9e

    .line 231
    .end local v8           #threshold:F
    :cond_f5
    :try_start_f5
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v9, v9, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_12e

    .line 238
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v9
    :try_end_ff
    .catch Ljava/net/SocketTimeoutException; {:try_start_f5 .. :try_end_ff} :catch_6b
    .catch Ljava/net/SocketException; {:try_start_f5 .. :try_end_ff} :catch_ca
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_ff} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_ff} :catch_137

    .line 240
    :try_start_ff
    iget-object v10, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v10, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v10, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    .line 242
    monitor-exit v9

    goto/16 :goto_2e

    :catchall_10c
    move-exception v10

    monitor-exit v9
    :try_end_10e
    .catchall {:try_start_ff .. :try_end_10e} :catchall_10c

    :try_start_10e
    throw v10
    :try_end_10f
    .catch Ljava/net/SocketTimeoutException; {:try_start_10e .. :try_end_10f} :catch_6b
    .catch Ljava/net/SocketException; {:try_start_10e .. :try_end_10f} :catch_ca
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_10f} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_10f} :catch_137

    .line 258
    .end local v0           #bufsize:I
    .end local v5           #message:[B
    .end local v6           #packet:Ljava/net/DatagramPacket;
    :catch_10f
    move-exception v9

    move-object v3, v9

    .line 259
    .local v3, ex:Ljava/io/IOException;
    const/4 v9, 0x0

    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 260
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 261
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 262
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v9

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    const-string v10, "UDPMessageProcessor: Got an IO Exception"

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 244
    .end local v3           #ex:Ljava/io/IOException;
    .restart local v0       #bufsize:I
    .restart local v5       #message:[B
    .restart local v6       #packet:Ljava/net/DatagramPacket;
    :cond_12e
    :try_start_12e
    new-instance v9, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    iget-object v10, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {v9, v10, p0, v6}, Lgov/nist/javax/sip/stack/UDPMessageChannel;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;Ljava/net/DatagramPacket;)V
    :try_end_135
    .catch Ljava/net/SocketTimeoutException; {:try_start_12e .. :try_end_135} :catch_6b
    .catch Ljava/net/SocketException; {:try_start_12e .. :try_end_135} :catch_ca
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_135} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_135} :catch_137

    goto/16 :goto_2e

    .line 264
    .end local v0           #bufsize:I
    .end local v5           #message:[B
    .end local v6           #packet:Ljava/net/DatagramPacket;
    :catch_137
    move-exception v9

    move-object v3, v9

    .line 265
    .local v3, ex:Ljava/lang/Exception;
    iget-object v9, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_14e

    .line 266
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v9

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    const-string v10, "UDPMessageProcessor: Unexpected Exception - quitting"

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 268
    :cond_14e
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 272
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_151
    return-void
.end method

.method public start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 151
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 152
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 153
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 155
    const-string v1, "UDPMessageProcessorThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 157
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 280
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    .line 281
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 282
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 285
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1
.end method
