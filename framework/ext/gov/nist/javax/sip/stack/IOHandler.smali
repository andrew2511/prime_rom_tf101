.class Lgov/nist/javax/sip/stack/IOHandler;
.super Ljava/lang/Object;
.source "IOHandler.java"


# static fields
.field private static TCP:Ljava/lang/String;

.field private static TLS:Ljava/lang/String;


# instance fields
.field private ioSemaphore:Ljava/util/concurrent/Semaphore;

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field private socketTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-string v0, "tcp"

    sput-object v0, Lgov/nist/javax/sip/stack/IOHandler;->TCP:Ljava/lang/String;

    .line 69
    const-string v0, "tls"

    sput-object v0, Lgov/nist/javax/sip/stack/IOHandler;->TLS:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .registers 4
    .parameter "sipStack"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    .line 81
    check-cast p1, Lgov/nist/javax/sip/SipStackImpl;

    .end local p1
    iput-object p1, p0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    return-void
.end method

.method protected static makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;
    .registers 4
    .parameter "addr"
    .parameter "port"

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeChunks(Ljava/io/OutputStream;[BI)V
    .registers 8
    .parameter "outputStream"
    .parameter "bytes"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    monitor-enter p1

    .line 110
    const/16 v1, 0x2000

    .line 111
    .local v1, chunksize:I
    const/4 v2, 0x0

    .local v2, p:I
    :goto_4
    if-ge v2, p3, :cond_14

    .line 112
    add-int v3, v2, v1

    if-ge v3, p3, :cond_10

    move v0, v1

    .line 113
    .local v0, chunk:I
    :goto_b
    :try_start_b
    invoke-virtual {p1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    add-int/2addr v2, v1

    goto :goto_4

    .line 112
    .end local v0           #chunk:I
    :cond_10
    sub-int v3, p3, v2

    move v0, v3

    goto :goto_b

    .line 115
    :cond_14
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_19

    .line 116
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 117
    return-void

    .line 115
    :catchall_19
    move-exception v3

    :try_start_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v3
.end method


# virtual methods
.method public closeAll()V
    .registers 4

    .prologue
    .line 330
    iget-object v2, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, values:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/Socket;>;"
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 331
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 333
    .local v0, s:Ljava/net/Socket;
    :try_start_12
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 334
    :catch_16
    move-exception v2

    goto :goto_6

    .line 338
    .end local v0           #s:Ljava/net/Socket;
    :cond_18
    return-void
.end method

.method protected getSocket(Ljava/lang/String;)Ljava/net/Socket;
    .registers 3
    .parameter "key"

    .prologue
    .line 92
    iget-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/Socket;

    return-object p0
.end method

.method public obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;
    .registers 8
    .parameter "dst"
    .parameter "dstPort"
    .parameter "localAddress"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p1, p2}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/IOHandler;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 139
    .local v0, clientSock:Ljava/net/Socket;
    if-nez v0, :cond_17

    .line 140
    iget-object v2, p0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lgov/nist/core/net/NetworkLayer;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v1, v0}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V

    .line 145
    :cond_17
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    return-object v2
.end method

.method protected putSocket(Ljava/lang/String;Ljava/net/Socket;)V
    .registers 4
    .parameter "key"
    .parameter "sock"

    .prologue
    .line 87
    iget-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method protected removeSocket(Ljava/lang/String;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 96
    iget-object v0, p0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;
    .registers 28
    .parameter "senderAddress"
    .parameter "receiverAddress"
    .parameter "contactPort"
    .parameter "transport"
    .parameter "bytes"
    .parameter "retry"
    .parameter "messageChannel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/16 v17, 0x0

    .line 163
    .local v17, retry_count:I
    if-eqz p6, :cond_b0

    const/4 v5, 0x2

    move v15, v5

    .line 165
    .local v15, max_retry:I
    :goto_6
    move-object/from16 v0, p5

    array-length v0, v0

    move v7, v0

    .line 166
    .local v7, length:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendBytes "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " inAddr "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " port = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " length = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 171
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_80

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLogStackTraceOnMessageSend()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    const/16 v6, 0x10

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    .line 174
    :cond_80
    sget-object v5, Lgov/nist/javax/sip/stack/IOHandler;->TCP:Ljava/lang/String;

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_215

    .line 175
    invoke-static/range {p2 .. p3}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v13

    .line 180
    .local v13, key:Ljava/lang/String;
    :try_start_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    move-object v5, v0

    const-wide/16 v8, 0x2710

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8, v9, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v18

    .line 181
    .local v18, retval:Z
    if-nez v18, :cond_b4

    .line 182
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Could not acquire IO Semaphore after 10 seconds -- giving up "

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_a6
    .catch Ljava/lang/InterruptedException; {:try_start_8f .. :try_end_a6} :catch_a6

    .line 185
    .end local v18           #retval:Z
    :catch_a6
    move-exception v5

    move-object v12, v5

    .line 186
    .local v12, ex:Ljava/lang/InterruptedException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "exception in acquiring sem"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 163
    .end local v7           #length:I
    .end local v12           #ex:Ljava/lang/InterruptedException;
    .end local v13           #key:Ljava/lang/String;
    .end local v15           #max_retry:I
    :cond_b0
    const/4 v5, 0x1

    move v15, v5

    goto/16 :goto_6

    .line 188
    .restart local v7       #length:I
    .restart local v13       #key:Ljava/lang/String;
    .restart local v15       #max_retry:I
    .restart local v18       #retval:Z
    :cond_b4
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/IOHandler;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v10

    .line 192
    .local v10, clientSock:Ljava/net/Socket;
    :goto_bb
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_13a

    .line 193
    if-nez v10, :cond_1bc

    .line 194
    :try_start_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_111

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inaddr = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "port = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 204
    :cond_111
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lgov/nist/core/net/NetworkLayer;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;)Ljava/net/Socket;

    move-result-object v10

    .line 206
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    .line 207
    .local v16, outputStream:Ljava/io/OutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V

    .line 208
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_13a
    .catchall {:try_start_c2 .. :try_end_13a} :catchall_209

    .line 232
    .end local v16           #outputStream:Ljava/io/OutputStream;
    :cond_13a
    :goto_13a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 235
    if-nez v10, :cond_213

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_193

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->socketTable:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not connect to "

    .end local v7           #length:I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 243
    :cond_193
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 212
    .restart local v7       #length:I
    :cond_1bc
    :try_start_1bc
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    .line 213
    .restart local v16       #outputStream:Ljava/io/OutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V
    :try_end_1ca
    .catchall {:try_start_1bc .. :try_end_1ca} :catchall_209
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1ca} :catch_1cc

    goto/16 :goto_13a

    .line 215
    .end local v16           #outputStream:Ljava/io/OutputStream;
    :catch_1cc
    move-exception v5

    move-object v12, v5

    .line 216
    .local v12, ex:Ljava/io/IOException;
    :try_start_1ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1fb

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException occured retryCount "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 221
    :cond_1fb
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/IOHandler;->removeSocket(Ljava/lang/String;)V
    :try_end_201
    .catchall {:try_start_1ce .. :try_end_201} :catchall_209

    .line 223
    :try_start_201
    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_204
    .catchall {:try_start_201 .. :try_end_204} :catchall_209
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_204} :catch_39a

    .line 226
    :goto_204
    const/4 v10, 0x0

    .line 227
    add-int/lit8 v17, v17, 0x1

    .line 228
    goto/16 :goto_bb

    .line 232
    .end local v12           #ex:Ljava/io/IOException;
    :catchall_209
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    throw v5

    :cond_213
    move-object v5, v10

    .line 321
    .end local v10           #clientSock:Ljava/net/Socket;
    .end local v13           #key:Ljava/lang/String;
    .end local v18           #retval:Z
    .end local p7
    :goto_214
    return-object v5

    .line 250
    .restart local p7
    :cond_215
    sget-object v5, Lgov/nist/javax/sip/stack/IOHandler;->TLS:Ljava/lang/String;

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_370

    .line 251
    invoke-static/range {p2 .. p3}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v13

    .line 253
    .restart local v13       #key:Ljava/lang/String;
    :try_start_224
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    move-object v5, v0

    const-wide/16 v8, 0x2710

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8, v9, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v18

    .line 254
    .restart local v18       #retval:Z
    if-nez v18, :cond_245

    .line 255
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Timeout acquiring IO SEM"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_23b
    .catch Ljava/lang/InterruptedException; {:try_start_224 .. :try_end_23b} :catch_23b

    .line 256
    .end local v18           #retval:Z
    :catch_23b
    move-exception v5

    move-object v12, v5

    .line 257
    .local v12, ex:Ljava/lang/InterruptedException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "exception in acquiring sem"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 259
    .end local v12           #ex:Ljava/lang/InterruptedException;
    .restart local v18       #retval:Z
    :cond_245
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/IOHandler;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v10

    .line 262
    .restart local v10       #clientSock:Ljava/net/Socket;
    :goto_24c
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_2fa

    .line 263
    if-nez v10, :cond_32d

    .line 264
    :try_start_253
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_2a2

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inaddr = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "port = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 269
    :cond_2a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lgov/nist/core/net/NetworkLayer;->createSSLSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;)Ljavax/net/ssl/SSLSocket;

    move-result-object v10

    .line 271
    move-object v0, v10

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v19, v0

    .line 272
    .local v19, sslsock:Ljavax/net/ssl/SSLSocket;
    new-instance v14, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-object/from16 v0, p7

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    move-object v4, v0

    invoke-direct {v14, v4}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;-><init>(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    .line 274
    .local v14, listner:Ljavax/net/ssl/HandshakeCompletedListener;
    check-cast p7, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    .end local p7
    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->setHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 276
    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 280
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    .line 281
    .restart local v16       #outputStream:Ljava/io/OutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V

    .line 282
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_2fa
    .catchall {:try_start_253 .. :try_end_2fa} :catchall_363

    .line 305
    .end local v14           #listner:Ljavax/net/ssl/HandshakeCompletedListener;
    .end local v16           #outputStream:Ljava/io/OutputStream;
    .end local v19           #sslsock:Ljavax/net/ssl/SSLSocket;
    :cond_2fa
    :goto_2fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 307
    if-nez v10, :cond_36d

    .line 308
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not connect to "

    .end local v7           #length:I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 286
    .restart local v7       #length:I
    .restart local p7
    :cond_32d
    :try_start_32d
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    .line 287
    .restart local v16       #outputStream:Ljava/io/OutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/stack/IOHandler;->writeChunks(Ljava/io/OutputStream;[BI)V
    :try_end_33b
    .catchall {:try_start_32d .. :try_end_33b} :catchall_363
    .catch Ljava/io/IOException; {:try_start_32d .. :try_end_33b} :catch_33c

    goto :goto_2fa

    .line 289
    .end local v16           #outputStream:Ljava/io/OutputStream;
    :catch_33c
    move-exception v5

    move-object v12, v5

    .line 290
    .local v12, ex:Ljava/io/IOException;
    :try_start_33e
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_355

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    invoke-interface {v5, v12}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 294
    :cond_355
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/IOHandler;->removeSocket(Ljava/lang/String;)V
    :try_end_35b
    .catchall {:try_start_33e .. :try_end_35b} :catchall_363

    .line 296
    :try_start_35b
    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_35e
    .catchall {:try_start_35b .. :try_end_35e} :catchall_363
    .catch Ljava/lang/Exception; {:try_start_35b .. :try_end_35e} :catch_39d

    .line 299
    :goto_35e
    const/4 v10, 0x0

    .line 300
    add-int/lit8 v17, v17, 0x1

    .line 301
    goto/16 :goto_24c

    .line 305
    .end local v12           #ex:Ljava/io/IOException;
    .end local p7
    :catchall_363
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->ioSemaphore:Ljava/util/concurrent/Semaphore;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    throw v5

    :cond_36d
    move-object v5, v10

    .line 311
    goto/16 :goto_214

    .line 315
    .end local v10           #clientSock:Ljava/net/Socket;
    .end local v13           #key:Ljava/lang/String;
    .end local v18           #retval:Z
    .restart local p7
    :cond_370
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/IOHandler;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v5

    invoke-interface {v5}, Lgov/nist/core/net/NetworkLayer;->createDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v11

    .line 316
    .local v11, datagramSock:Ljava/net/DatagramSocket;
    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 317
    new-instance v4, Ljava/net/DatagramPacket;

    const/4 v6, 0x0

    move-object/from16 v5, p5

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 319
    .local v4, dgPacket:Ljava/net/DatagramPacket;
    invoke-virtual {v11, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 320
    invoke-virtual {v11}, Ljava/net/DatagramSocket;->close()V

    .line 321
    const/4 v5, 0x0

    goto/16 :goto_214

    .line 224
    .end local v4           #dgPacket:Ljava/net/DatagramPacket;
    .end local v11           #datagramSock:Ljava/net/DatagramSocket;
    .restart local v10       #clientSock:Ljava/net/Socket;
    .restart local v12       #ex:Ljava/io/IOException;
    .restart local v13       #key:Ljava/lang/String;
    .restart local v18       #retval:Z
    :catch_39a
    move-exception v5

    goto/16 :goto_204

    .line 297
    :catch_39d
    move-exception v5

    goto :goto_35e
.end method
