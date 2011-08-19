.class public final Lgov/nist/javax/sip/stack/TLSMessageChannel;
.super Lgov/nist/javax/sip/stack/MessageChannel;
.source "TLSMessageChannel.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/SIPMessageListener;
.implements Ljava/lang/Runnable;
.implements Lgov/nist/javax/sip/stack/RawMessageChannel;


# instance fields
.field private handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

.field protected isCached:Z

.field protected isRunning:Z

.field private key:Ljava/lang/String;

.field private myAddress:Ljava/lang/String;

.field private myClientInputStream:Ljava/io/InputStream;

.field private myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

.field private myPort:I

.field private mySock:Ljava/net/Socket;

.field private mythread:Ljava/lang/Thread;

.field private peerAddress:Ljava/net/InetAddress;

.field private peerPort:I

.field private peerProtocol:Ljava/lang/String;

.field private sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V
    .registers 8
    .parameter "inetAddr"
    .parameter "port"
    .parameter "sipStack"
    .parameter "messageProcessor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 171
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 172
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "creating new TLSMessageChannel (outgoing)"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 175
    :cond_19
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 176
    iput p2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    .line 177
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myPort:I

    .line 178
    const-string v0, "TLS"

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 180
    iput-object p4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    .line 181
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myAddress:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    const-string v2, "TLS"

    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    .line 183
    iput-object p4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 185
    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/TLSMessageProcessor;)V
    .registers 9
    .parameter "sock"
    .parameter "sipStack"
    .parameter "msgProcessor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 125
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 126
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 127
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "creating new TLSMessageChannel (incoming)"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 131
    :cond_1a
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v2, v0

    iput-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    .line 132
    instance-of v2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_3a

    .line 134
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v1, v0

    .line 135
    .local v1, sslSock:Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v1, v4}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 136
    new-instance v2, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    invoke-direct {v2, p0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;-><init>(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    iput-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    .line 137
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 138
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 142
    .end local v1           #sslSock:Ljavax/net/ssl/SSLSocket;
    :cond_3a
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 143
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myAddress:Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 146
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    .line 147
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 148
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    const-string v3, "TLSMessageChannelThread"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 150
    iput-object p2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 152
    iput-object p3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    .line 153
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->getPort()I

    move-result v2

    iput v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myPort:I

    .line 154
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2

    iput v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    .line 156
    iput-object p3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 158
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mythread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method private sendMessage([BZ)V
    .registers 13
    .parameter "msg"
    .parameter "retry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    iget-object v4, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    move-object v5, p1

    move v6, p2

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lgov/nist/javax/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;

    move-result-object v8

    .line 261
    .local v8, sock:Ljava/net/Socket;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eq v8, v0, :cond_43

    if-eqz v8, :cond_43

    .line 263
    :try_start_1f
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eqz v0, :cond_28

    .line 264
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_44

    .line 267
    :cond_28
    :goto_28
    iput-object v8, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    .line 268
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 270
    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 271
    .local v9, thread:Ljava/lang/Thread;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 272
    const-string v0, "TLSMessageChannelThread"

    invoke-virtual {v9, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 276
    .end local v9           #thread:Ljava/lang/Thread;
    :cond_43
    return-void

    .line 265
    :catch_44
    move-exception v0

    goto :goto_28
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eqz v1, :cond_9

    .line 200
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 201
    :cond_9
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 202
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing message Channel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 207
    :cond_2d
    :goto_2d
    return-void

    .line 203
    :catch_2e
    move-exception v1

    move-object v0, v1

    .line 204
    .local v0, ex:Ljava/io/IOException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 205
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    .line 661
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move v2, v4

    .line 668
    :goto_10
    return v2

    .line 664
    :cond_11
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    move-object v1, v0

    .line 665
    .local v1, that:Lgov/nist/javax/sip/stack/TLSMessageChannel;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    iget-object v3, v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eq v2, v3, :cond_1d

    move v2, v4

    .line 666
    goto :goto_10

    .line 668
    :cond_1d
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;
    .registers 1

    .prologue
    .line 736
    iget-object p0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 677
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 678
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    .line 681
    :goto_6
    return-object v0

    .line 680
    :cond_7
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    const-string v2, "TLS"

    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->key:Ljava/lang/String;

    goto :goto_6
.end method

.method public getPeerAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_b

    .line 235
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected getPeerInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 717
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerPacketSourcePort()I
    .registers 2

    .prologue
    .line 713
    iget v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    return v0
.end method

.method public getPeerPort()I
    .registers 2

    .prologue
    .line 709
    iget v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    return v0
.end method

.method public getPeerProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    const-string v0, "tls"

    return-object v0
.end method

.method public getViaHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 691
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getViaPort()I
    .registers 2

    .prologue
    .line 700
    iget v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myPort:I

    return v0
.end method

.method public handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "ex"
    .parameter "sipMessage"
    .parameter "hdrClass"
    .parameter "header"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 344
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, p1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 346
    :cond_11
    if-eqz p3, :cond_d6

    const-class v3, Lgov/nist/javax/sip/header/From;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-class v3, Lgov/nist/javax/sip/header/To;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-class v3, Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-class v3, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-class v3, Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-class v3, Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-class v3, Lgov/nist/javax/sip/header/StatusLine;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 351
    :cond_4b
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 352
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered bad message \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 354
    :cond_6f
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPMessage;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, msgString:Ljava/lang/String;
    const-string v3, "SIP/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b5

    const-string v3, "ACK "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b5

    .line 357
    invoke-virtual {p0, v2, p1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, badReqRes:Ljava/lang/String;
    if-eqz v0, :cond_c2

    .line 359
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 360
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Sending automatic 400 Bad Request:"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 361
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 364
    :cond_a5
    :try_start_a5
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getPeerPort()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage([BLjava/net/InetAddress;IZ)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b5} :catch_b6

    .line 376
    .end local v0           #badReqRes:Ljava/lang/String;
    :cond_b5
    :goto_b5
    throw p1

    .line 366
    .restart local v0       #badReqRes:Ljava/lang/String;
    :catch_b6
    move-exception v3

    move-object v1, v3

    .line 367
    .local v1, e:Ljava/io/IOException;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_b5

    .line 370
    .end local v1           #e:Ljava/io/IOException;
    :cond_c2
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 371
    iget-object v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Could not formulate automatic 400 Bad Request"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_b5

    .line 378
    .end local v0           #badReqRes:Ljava/lang/String;
    .end local v2           #msgString:Ljava/lang/String;
    :cond_d6
    invoke-virtual {p2, p4}, Lgov/nist/javax/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public isReliable()Z
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 724
    const/4 v0, 0x1

    return v0
.end method

.method public processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 26
    .parameter "sipMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 393
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v3

    if-nez v3, :cond_5b

    .line 396
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v10

    .line 397
    .local v10, badmsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, ">>> Dropped Bad Msg"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 564
    .end local v10           #badmsg:Ljava/lang/String;
    :cond_5a
    :goto_5a
    return-void

    .line 404
    :cond_5b
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v23

    .line 410
    .local v23, viaList:Lgov/nist/javax/sip/header/ViaList;
    move-object/from16 v0, p1

    instance-of v0, v0, Lgov/nist/javax/sip/message/SIPRequest;

    move v3, v0

    if-eqz v3, :cond_10f

    .line 411
    invoke-virtual/range {v23 .. v23}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v22

    check-cast v22, Lgov/nist/javax/sip/header/Via;

    .line 413
    .local v22, v:Lgov/nist/javax/sip/header/Via;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/header/Via;->getHop()Ljavax/sip/address/Hop;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v12

    .line 414
    .local v12, hop:Ljavax/sip/address/Hop;
    invoke-virtual/range {v22 .. v22}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerProtocol:Ljava/lang/String;
    :try_end_84
    .catchall {:try_start_0 .. :try_end_84} :catchall_1d2

    .line 416
    :try_start_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 423
    const-string v3, "rport"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Via;->hasParameter(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b0

    invoke-interface {v12}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c2

    .line 425
    :cond_b0
    const-string v3, "received"

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_c2
    const-string v3, "rport"

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d4
    .catchall {:try_start_84 .. :try_end_d4} :catchall_1d2
    .catch Ljava/text/ParseException; {:try_start_84 .. :try_end_d4} :catch_1d4

    .line 435
    :goto_d4
    :try_start_d4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    move v3, v0

    if-nez v3, :cond_10f

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    move-object v3, v0

    check-cast v3, Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->cacheMessageChannel(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    .line 437
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    move v4, v0

    invoke-static {v3, v4}, Lgov/nist/javax/sip/stack/IOHandler;->makeKey(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v13

    .line 439
    .local v13, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    move-object v4, v0

    invoke-virtual {v3, v13, v4}, Lgov/nist/javax/sip/stack/IOHandler;->putSocket(Ljava/lang/String;Ljava/net/Socket;)V

    .line 445
    .end local v12           #hop:Ljavax/sip/address/Hop;
    .end local v13           #key:Ljava/lang/String;
    .end local v22           #v:Lgov/nist/javax/sip/header/Via;
    :cond_10f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 448
    .local v8, receptionTime:J
    move-object/from16 v0, p1

    instance-of v0, v0, Lgov/nist/javax/sip/message/SIPRequest;

    move v3, v0

    if-eqz v3, :cond_271

    .line 450
    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object/from16 v17, v0

    .line 454
    .local v17, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_139

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "----Processing Message---"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 457
    :cond_139
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_18c

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getPeerHostPort()Lgov/nist/core/HostPort;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    move-object v6, v0

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    move-object v6, v0

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v9}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 466
    :cond_18c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v3

    if-lez v3, :cond_1e4

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getSize()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v4

    if-nez v4, :cond_1db

    const/4 v4, 0x0

    :goto_1a2
    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v4, v0

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v4

    if-le v3, v4, :cond_1e4

    .line 471
    const/16 v3, 0x201

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v18

    .line 473
    .local v18, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 474
    .local v14, resp:[B
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v3

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage([BZ)V

    .line 475
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Message size exceeded"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1d2
    .catchall {:try_start_d4 .. :try_end_1d2} :catchall_1d2

    .line 562
    .end local v8           #receptionTime:J
    .end local v14           #resp:[B
    .end local v17           #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .end local v18           #sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    .end local v23           #viaList:Lgov/nist/javax/sip/header/ViaList;
    :catchall_1d2
    move-exception v3

    throw v3

    .line 431
    .restart local v12       #hop:Ljavax/sip/address/Hop;
    .restart local v22       #v:Lgov/nist/javax/sip/header/Via;
    .restart local v23       #viaList:Lgov/nist/javax/sip/header/ViaList;
    :catch_1d4
    move-exception v3

    move-object v11, v3

    .line 432
    .local v11, ex:Ljava/text/ParseException;
    :try_start_1d6
    invoke-static {v11}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_d4

    .line 466
    .end local v11           #ex:Ljava/text/ParseException;
    .end local v12           #hop:Ljavax/sip/address/Hop;
    .end local v22           #v:Lgov/nist/javax/sip/header/Via;
    .restart local v8       #receptionTime:J
    .restart local v17       #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    :cond_1db
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v4

    goto :goto_1a2

    .line 480
    :cond_1e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :try_end_1f1
    .catchall {:try_start_1d6 .. :try_end_1f1} :catchall_1d2

    move-result-object v19

    .line 482
    .local v19, sipServerRequest:Lgov/nist/javax/sip/stack/ServerRequestInterface;
    if-eqz v19, :cond_231

    .line 484
    :try_start_1f4
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_1fd
    .catchall {:try_start_1f4 .. :try_end_1fd} :catchall_217

    .line 486
    :try_start_1fd
    move-object/from16 v0, v19

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move v3, v0

    if-eqz v3, :cond_5a

    .line 487
    move-object/from16 v0, v19

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object/from16 v21, v0

    .line 488
    .local v21, sipServerTx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 489
    check-cast v19, Lgov/nist/javax/sip/stack/SIPTransaction;

    .end local v19           #sipServerRequest:Lgov/nist/javax/sip/stack/ServerRequestInterface;
    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    goto/16 :goto_5a

    .line 486
    .end local v21           #sipServerTx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v19       #sipServerRequest:Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :catchall_217
    move-exception v3

    move-object/from16 v0, v19

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move v4, v0

    if-eqz v4, :cond_230

    .line 487
    move-object/from16 v0, v19

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object/from16 v21, v0

    .line 488
    .restart local v21       #sipServerTx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v4

    if-nez v4, :cond_230

    .line 489
    check-cast v19, Lgov/nist/javax/sip/stack/SIPTransaction;

    .end local v19           #sipServerRequest:Lgov/nist/javax/sip/stack/ServerRequestInterface;
    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 486
    .end local v21           #sipServerTx:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_230
    throw v3

    .line 493
    .restart local v19       #sipServerRequest:Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :cond_231
    const/16 v3, 0x1f7

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v15

    .line 496
    .local v15, response:Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v16, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct/range {v16 .. v16}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V
    :try_end_23f
    .catchall {:try_start_1fd .. :try_end_23f} :catchall_1d2

    .line 500
    .local v16, retryAfter:Lgov/nist/javax/sip/header/RetryAfter;
    const-wide/high16 v3, 0x4024

    :try_start_241
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    .line 501
    invoke-virtual/range {v15 .. v16}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 502
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_256
    .catchall {:try_start_241 .. :try_end_256} :catchall_1d2
    .catch Ljava/lang/Exception; {:try_start_241 .. :try_end_256} :catch_3ab

    .line 506
    :goto_256
    :try_start_256
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Dropping message -- could not acquire semaphore"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 511
    .end local v15           #response:Lgov/nist/javax/sip/message/SIPResponse;
    .end local v16           #retryAfter:Lgov/nist/javax/sip/header/RetryAfter;
    .end local v17           #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .end local v19           #sipServerRequest:Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :cond_271
    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object/from16 v18, v0
    :try_end_277
    .catchall {:try_start_256 .. :try_end_277} :catchall_1d2

    .line 513
    .restart local v18       #sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_277
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->checkHeaders()V
    :try_end_27a
    .catchall {:try_start_277 .. :try_end_27a} :catchall_1d2
    .catch Ljava/text/ParseException; {:try_start_277 .. :try_end_27a} :catch_2b7

    .line 524
    :try_start_27a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v3

    if-lez v3, :cond_2f0

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getSize()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v4

    if-nez v4, :cond_2e7

    const/4 v4, 0x0

    :goto_290
    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v4, v0

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v4

    if-le v3, v4, :cond_2f0

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Message size exceeded"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 514
    :catch_2b7
    move-exception v11

    .line 515
    .restart local v11       #ex:Ljava/text/ParseException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping Badly formatted response message >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 524
    .end local v11           #ex:Ljava/text/ParseException;
    :cond_2e7
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/message/SIPResponse;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v4

    goto :goto_290

    .line 534
    :cond_2f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :try_end_2fd
    .catchall {:try_start_27a .. :try_end_2fd} :catchall_1d2

    move-result-object v20

    .line 536
    .local v20, sipServerResponse:Lgov/nist/javax/sip/stack/ServerResponseInterface;
    if-eqz v20, :cond_39b

    .line 538
    :try_start_300
    move-object/from16 v0, v20

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move v3, v0

    if-eqz v3, :cond_35e

    move-object/from16 v0, v20

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->checkFromTag(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v3

    if-nez v3, :cond_35e

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_344

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping response message with invalid tag >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_344
    .catchall {:try_start_300 .. :try_end_344} :catchall_381

    .line 550
    :cond_344
    :try_start_344
    move-object/from16 v0, v20

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move v3, v0

    if-eqz v3, :cond_5a

    move-object/from16 v0, v20

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 555
    check-cast v20, Lgov/nist/javax/sip/stack/SIPTransaction;

    .end local v20           #sipServerResponse:Lgov/nist/javax/sip/stack/ServerResponseInterface;
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V
    :try_end_35c
    .catchall {:try_start_344 .. :try_end_35c} :catchall_1d2

    goto/16 :goto_5a

    .line 548
    .restart local v20       #sipServerResponse:Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_35e
    :try_start_35e
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_367
    .catchall {:try_start_35e .. :try_end_367} :catchall_381

    .line 550
    :try_start_367
    move-object/from16 v0, v20

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move v3, v0

    if-eqz v3, :cond_5a

    move-object/from16 v0, v20

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 555
    check-cast v20, Lgov/nist/javax/sip/stack/SIPTransaction;

    .end local v20           #sipServerResponse:Lgov/nist/javax/sip/stack/ServerResponseInterface;
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    goto/16 :goto_5a

    .line 550
    .restart local v20       #sipServerResponse:Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :catchall_381
    move-exception v3

    move-object/from16 v0, v20

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move v4, v0

    if-eqz v4, :cond_39a

    move-object/from16 v0, v20

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v4

    if-nez v4, :cond_39a

    .line 555
    check-cast v20, Lgov/nist/javax/sip/stack/SIPTransaction;

    .end local v20           #sipServerResponse:Lgov/nist/javax/sip/stack/ServerResponseInterface;
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 550
    :cond_39a
    throw v3

    .line 559
    .restart local v20       #sipServerResponse:Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_39b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Could not get semaphore... dropping response"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V
    :try_end_3a9
    .catchall {:try_start_367 .. :try_end_3a9} :catchall_1d2

    goto/16 :goto_5a

    .line 503
    .end local v18           #sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    .end local v20           #sipServerResponse:Lgov/nist/javax/sip/stack/ServerResponseInterface;
    .restart local v15       #response:Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v16       #retryAfter:Lgov/nist/javax/sip/header/RetryAfter;
    .restart local v17       #sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v19       #sipServerRequest:Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :catch_3ab
    move-exception v3

    goto/16 :goto_256
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 572
    const/4 v2, 0x0

    .line 574
    .local v2, hispipe:Lgov/nist/javax/sip/parser/Pipeline;
    new-instance v2, Lgov/nist/javax/sip/parser/Pipeline;

    .end local v2           #hispipe:Lgov/nist/javax/sip/parser/Pipeline;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v6, v6, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I

    iget-object v7, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7}, Lgov/nist/javax/sip/parser/Pipeline;-><init>(Ljava/io/InputStream;ILjava/util/Timer;)V

    .line 578
    .restart local v2       #hispipe:Lgov/nist/javax/sip/parser/Pipeline;
    new-instance v5, Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMaxMessageSize()I

    move-result v6

    invoke-direct {v5, p0, v2, v6}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;I)V

    iput-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    .line 580
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->processInput()V

    .line 582
    const/16 v0, 0x1000

    .line 583
    .local v0, bufferSize:I
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v6, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    .line 584
    iput-boolean v8, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    .line 588
    :goto_33
    :try_start_33
    new-array v3, v0, [B

    .line 589
    .local v3, msg:[B
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 591
    .local v4, nbytes:I
    if-ne v4, v10, :cond_80

    .line 592
    const-string v5, "\r\n\r\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/parser/Pipeline;->write([B)V
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_f1
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_49} :catch_85
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_49} :catch_ea

    .line 594
    :try_start_49
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    if-eq v5, v10, :cond_5f

    .line 595
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    monitor-enter v5
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_f1
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_52} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_52} :catch_ea

    .line 596
    :try_start_52
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v7, v6, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    sub-int/2addr v7, v8

    iput v7, v6, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    .line 597
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 598
    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_7b

    .line 600
    :cond_5f
    :try_start_5f
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/Pipeline;->close()V

    .line 601
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_f1
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_67} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_67} :catch_ea

    .line 639
    :goto_67
    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    .line 640
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v5, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    .line 641
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v6, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    sub-int/2addr v6, v8

    iput v6, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    .line 642
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    .end local v3           #msg:[B
    .end local v4           #nbytes:I
    :goto_77
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    .line 633
    return-void

    .line 598
    .restart local v3       #msg:[B
    .restart local v4       #nbytes:I
    :catchall_7b
    move-exception v6

    :try_start_7c
    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    :try_start_7d
    throw v6
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_f1
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_7e} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7e} :catch_ea

    .line 602
    :catch_7e
    move-exception v5

    goto :goto_67

    .line 606
    :cond_80
    const/4 v5, 0x0

    :try_start_81
    invoke-virtual {v2, v3, v5, v4}, Lgov/nist/javax/sip/parser/Pipeline;->write([BII)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_f1
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_ea

    goto :goto_33

    .line 608
    .end local v3           #msg:[B
    .end local v4           #nbytes:I
    :catch_85
    move-exception v5

    move-object v1, v5

    .line 611
    .local v1, ex:Ljava/io/IOException;
    :try_start_87
    const-string v5, "\r\n\r\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/parser/Pipeline;->write([B)V
    :try_end_92
    .catchall {:try_start_87 .. :try_end_92} :catchall_f1
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_92} :catch_108

    .line 617
    :goto_92
    :try_start_92
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 618
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException  closing sock "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_92 .. :try_end_b6} :catchall_f1
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_b6} :catch_106

    .line 620
    :cond_b6
    :try_start_b6
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    if-eq v5, v10, :cond_cc

    .line 621
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    monitor-enter v5
    :try_end_bf
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_f1
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_bf} :catch_e8
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bf} :catch_106

    .line 622
    :try_start_bf
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v7, v6, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    sub-int/2addr v7, v8

    iput v7, v6, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->nConnections:I

    .line 623
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 624
    monitor-exit v5
    :try_end_cc
    .catchall {:try_start_bf .. :try_end_cc} :catchall_e5

    .line 626
    :cond_cc
    :try_start_cc
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    .line 627
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_d4
    .catchall {:try_start_cc .. :try_end_d4} :catchall_f1
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d4} :catch_e8
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d4} :catch_106

    .line 639
    :goto_d4
    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    .line 640
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v5, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    .line 641
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v6, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    sub-int/2addr v6, v8

    iput v6, v5, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    .line 642
    iget-object v5, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    goto :goto_77

    .line 624
    :catchall_e5
    move-exception v6

    :try_start_e6
    monitor-exit v5
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    :try_start_e7
    throw v6
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_f1
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_e8} :catch_e8
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_e8} :catch_106

    .line 628
    :catch_e8
    move-exception v5

    goto :goto_d4

    .line 634
    .end local v1           #ex:Ljava/io/IOException;
    :catch_ea
    move-exception v5

    move-object v1, v5

    .line 635
    .local v1, ex:Ljava/lang/Exception;
    :try_start_ec
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_f1

    goto/16 :goto_33

    .line 639
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_f1
    move-exception v5

    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    .line 640
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v6, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    .line 641
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    iget v7, v6, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    sub-int/2addr v7, v8

    iput v7, v6, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->useCount:I

    .line 642
    iget-object v6, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myParser:Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    invoke-virtual {v6}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->close()V

    .line 639
    throw v5

    .line 630
    .local v1, ex:Ljava/io/IOException;
    :catch_106
    move-exception v5

    goto :goto_d4

    .line 612
    :catch_108
    move-exception v5

    goto :goto_92
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 9
    .parameter "sipMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 288
    .local v6, msg:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 290
    .local v4, time:J
    instance-of v0, p1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {p0, v6, v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sendMessage([BZ)V

    .line 292
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 293
    iget-object v2, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v3, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->peerPort:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    .line 294
    :cond_28
    return-void
.end method

.method public sendMessage([BLjava/net/InetAddress;IZ)V
    .registers 15
    .parameter "message"
    .parameter "receiverAddress"
    .parameter "receiverPort"
    .parameter "retry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 307
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_c
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    const-string v4, "TLS"

    move-object v2, p2

    move v3, p3

    move-object v5, p1

    move v6, p4

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lgov/nist/javax/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;

    move-result-object v9

    .line 313
    .local v9, sock:Ljava/net/Socket;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eq v9, v0, :cond_4b

    if-eqz v9, :cond_4b

    .line 315
    :try_start_27
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    if-eqz v0, :cond_30

    .line 316
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_30} :catch_4c

    .line 320
    :cond_30
    :goto_30
    iput-object v9, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    .line 321
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->myClientInputStream:Ljava/io/InputStream;

    .line 324
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 325
    .local v8, mythread:Ljava/lang/Thread;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 326
    const-string v0, "TLSMessageChannelThread"

    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 330
    .end local v8           #mythread:Ljava/lang/Thread;
    :cond_4b
    return-void

    .line 317
    :catch_4c
    move-exception v0

    goto :goto_30
.end method

.method public setHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 2
    .parameter "handshakeCompletedListenerImpl"

    .prologue
    .line 729
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->handshakeCompletedListener:Ljavax/net/ssl/HandshakeCompletedListener;

    .line 730
    return-void
.end method

.method protected uncache()V
    .registers 2

    .prologue
    .line 648
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isCached:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->isRunning:Z

    if-nez v0, :cond_d

    .line 649
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TLSMessageChannel;->tlsMessageProcessor:Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;->remove(Lgov/nist/javax/sip/stack/TLSMessageChannel;)V

    .line 651
    :cond_d
    return-void
.end method
