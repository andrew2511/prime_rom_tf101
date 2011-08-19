.class public Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;
.super Ljava/lang/Object;
.source "TcpConnectionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DBG:Z = false

.field private static final KEEP_ALIVE_TIMEOUT:I = 0x1d4c0

.field private static final MAX_PACKET:I = 0xffff

.field private static final STUN_TIMEOUT_MILLIS:I = 0xbb8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/google/android/voicesearch/speechservice/ConnectionCallback;

.field private mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

.field private final mInput:Ljava/io/DataInputStream;

.field private volatile mIsRunning:Z

.field private final mOutput:Ljava/io/DataOutputStream;

.field private final mSocket:Ljava/net/Socket;

.field private final mStunId:Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;

.field private mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

.field private final writableLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/ConnectionException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z

    .line 68
    if-nez p3, :cond_0

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stunId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    :try_start_0
    iput-object p3, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mStunId:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 75
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 76
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 77
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 78
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 80
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1, v0, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 82
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mOutput:Ljava/io/DataOutputStream;

    .line 84
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mInput:Ljava/io/DataInputStream;

    .line 85
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->writableLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->newInstance()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 90
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 92
    new-instance v0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    const v1, 0x1d4c0

    new-instance v2, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl$1;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl$1;-><init>(Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    .line 97
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Lcom/google/android/voicesearch/speechservice/ConnectionException;

    const-string v2, "Failed to establish connection"

    invoke-direct {v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createStunBindingRequest(Ljava/lang/String;)[B
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunPacket;

    sget-object v1, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_BINDING_REQUEST:Lcom/google/android/voicesearch/tcp/StunMessageType;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/tcp/StunPacket;-><init>(Lcom/google/android/voicesearch/tcp/StunMessageType;)V

    .line 305
    new-instance v1, Lcom/google/android/voicesearch/tcp/StunAttribute;

    sget-object v2, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_USERNAME:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    invoke-direct {v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttribute;-><init>(Lcom/google/android/voicesearch/tcp/StunAttributeType;)V

    .line 307
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 308
    new-instance v3, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl$2;

    invoke-direct {v3, v2}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl$2;-><init>([B)V

    invoke-virtual {v1, v3}, Lcom/google/android/voicesearch/tcp/StunAttribute;->setData(Lcom/google/android/voicesearch/tcp/StunAttributeData;)V

    .line 316
    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/tcp/StunPacket;->addAttribute(Lcom/google/android/voicesearch/tcp/StunAttribute;)V

    .line 317
    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/StunPacket;->asByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private handleStun(Lcom/google/android/voicesearch/tcp/StunPacket;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/voicesearch/tcp/StunPacket;->getType()Lcom/google/android/voicesearch/tcp/StunMessageType;

    move-result-object v0

    sget-object v1, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_BINDING_REQUEST:Lcom/google/android/voicesearch/tcp/StunMessageType;

    if-eq v0, v1, :cond_1

    .line 244
    :cond_0
    sget-object v0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected stun packet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_0
    return-void

    .line 249
    :cond_1
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunPacket;

    sget-object v1, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_BINDING_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/tcp/StunPacket;-><init>(Lcom/google/android/voicesearch/tcp/StunMessageType;)V

    .line 250
    sget-object v1, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_USERNAME:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    invoke-virtual {p1, v1}, Lcom/google/android/voicesearch/tcp/StunPacket;->getAttribute(Lcom/google/android/voicesearch/tcp/StunAttributeType;)Lcom/google/android/voicesearch/tcp/StunAttribute;

    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/tcp/StunPacket;->addAttribute(Lcom/google/android/voicesearch/tcp/StunAttribute;)V

    .line 253
    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/tcp/StunPacket;->setTransactionIDForResponse(Lcom/google/android/voicesearch/tcp/StunPacket;)V

    .line 254
    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/StunPacket;->asByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->sendRequest([B)V

    .line 255
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->writableLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 256
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ConnectionCallback;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/ConnectionCallback;->onConnectionAlive()V

    goto :goto_0
.end method

.method private readPacket()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 235
    new-array v0, v0, [B

    .line 236
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 238
    return-object v0
.end method

.method private receiveStunResponsePacket()Lcom/google/android/voicesearch/tcp/StunPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/ConnectionException;
        }
    .end annotation

    .prologue
    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->readPacket()[B

    move-result-object v0

    .line 283
    invoke-static {v0}, Lcom/google/android/voicesearch/tcp/StunPacket;->fromByteArray([B)Lcom/google/android/voicesearch/tcp/StunPacket;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/StunPacket;->getType()Lcom/google/android/voicesearch/tcp/StunMessageType;

    move-result-object v1

    sget-object v2, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_BINDING_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

    if-ne v1, v2, :cond_0

    .line 285
    return-object v0

    .line 287
    :cond_0
    new-instance v1, Lcom/google/android/voicesearch/speechservice/ConnectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad STUN response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 289
    :catch_0
    move-exception v0

    .line 290
    new-instance v1, Lcom/google/android/voicesearch/speechservice/ConnectionException;

    const-string v2, "STUN connection closed"

    invoke-direct {v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 291
    :catch_1
    move-exception v0

    .line 292
    new-instance v1, Lcom/google/android/voicesearch/speechservice/ConnectionException;

    const-string v2, "STUN packet read timed out"

    invoke-direct {v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 293
    :catch_2
    move-exception v0

    .line 294
    new-instance v1, Lcom/google/android/voicesearch/speechservice/ConnectionException;

    const-string v2, "STUN packet read error."

    invoke-direct {v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private sendRequest([B)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    array-length v0, p1

    const v1, 0xffff

    if-lt v0, v1, :cond_0

    .line 226
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packet too big:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mOutput:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 229
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 230
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 231
    return-void
.end method

.method private setupStun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/ConnectionException;
        }
    .end annotation

    .prologue
    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mStunId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->createStunBindingRequest(Ljava/lang/String;)[B

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 267
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->sendRequest([B)V

    .line 268
    invoke-direct {p0}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->receiveStunResponsePacket()Lcom/google/android/voicesearch/tcp/StunPacket;

    .line 269
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    const v1, 0x1d4c0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    new-instance v1, Lcom/google/android/voicesearch/speechservice/ConnectionException;

    const-string v2, "Failed to establish stun connection"

    invoke-direct {v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z

    .line 141
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->stop()V

    .line 146
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 148
    monitor-exit p0

    .line 152
    :goto_0
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    sget-object v1, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to close the socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x1d4c0

    .line 156
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v6

    .line 157
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z

    if-eqz v2, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->readPacket()[B

    move-result-object v2

    .line 161
    invoke-static {v2}, Lcom/google/android/voicesearch/tcp/StunPacket;->headerFromByteArray([B)Lcom/google/android/voicesearch/tcp/StunPacket;

    move-result-object v3

    .line 162
    if-eqz v3, :cond_4

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-wide v4

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    .line 205
    :cond_0
    monitor-enter p0

    .line 206
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 208
    :try_start_2
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 212
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 215
    :goto_2
    return-void

    .line 169
    :cond_1
    :try_start_4
    iget-boolean v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    if-nez v0, :cond_2

    .line 205
    monitor-enter p0

    .line 206
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 208
    :try_start_6
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 212
    :goto_3
    :try_start_7
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    :try_start_8
    sget-object v1, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error closing socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 173
    :cond_2
    :try_start_9
    invoke-virtual {v3, v2}, Lcom/google/android/voicesearch/tcp/StunPacket;->readBody([B)V

    .line 174
    invoke-direct {p0, v3}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->handleStun(Lcom/google/android/voicesearch/tcp/StunPacket;)V

    .line 181
    :cond_3
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v6

    .line 182
    goto :goto_0

    .line 175
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ConnectionCallback;

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v2, v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ConnectionCallback;->onResponseAvailable(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->extend()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_4

    .line 183
    :catch_1
    move-exception v0

    .line 184
    :try_start_a
    iget-boolean v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z

    if-eqz v1, :cond_5

    .line 185
    sget-object v1, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error reading from TCP connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ConnectionCallback;

    invoke-interface {v1, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionCallback;->onException(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 205
    :cond_5
    monitor-enter p0

    .line 206
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 208
    :try_start_c
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 212
    :goto_5
    :try_start_d
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    .line 209
    :catch_2
    move-exception v0

    .line 210
    :try_start_e
    sget-object v1, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error closing socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 212
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v0

    .line 209
    :catch_3
    move-exception v0

    .line 210
    :try_start_f
    sget-object v1, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error closing socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_5

    .line 188
    :catch_4
    move-exception v0

    .line 189
    :try_start_10
    iget-boolean v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z

    if-eqz v1, :cond_6

    .line 190
    sget-object v1, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error reading from TCP connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ConnectionCallback;

    invoke-interface {v1, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionCallback;->onException(Ljava/lang/Exception;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 205
    :cond_6
    monitor-enter p0

    .line 206
    const/4 v0, 0x0

    :try_start_11
    iput-boolean v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 208
    :try_start_12
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    .line 212
    :goto_6
    :try_start_13
    monitor-exit p0

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    throw v0

    .line 209
    :catch_5
    move-exception v0

    .line 210
    :try_start_14
    sget-object v1, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error closing socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_6

    .line 193
    :catch_6
    move-exception v0

    .line 195
    :try_start_15
    iget-boolean v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z

    if-eqz v1, :cond_7

    .line 196
    sget-object v1, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error reading from TCP connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ConnectionCallback;

    invoke-interface {v1, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionCallback;->onException(Ljava/lang/Exception;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 205
    :cond_7
    monitor-enter p0

    .line 206
    const/4 v0, 0x0

    :try_start_16
    iput-boolean v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 208
    :try_start_17
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7

    .line 212
    :goto_7
    :try_start_18
    monitor-exit p0

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    throw v0

    .line 209
    :catch_7
    move-exception v0

    .line 210
    :try_start_19
    sget-object v1, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error closing socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    goto :goto_7

    .line 199
    :catch_8
    move-exception v0

    .line 200
    :try_start_1a
    iget-boolean v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z

    if-eqz v1, :cond_8

    .line 201
    sget-object v1, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error reading from TCP connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ConnectionCallback;

    invoke-interface {v1, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionCallback;->onException(Ljava/lang/Exception;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 205
    :cond_8
    monitor-enter p0

    .line 206
    const/4 v0, 0x0

    :try_start_1b
    iput-boolean v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 208
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_9

    .line 212
    :goto_8
    :try_start_1d
    monitor-exit p0

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    throw v0

    .line 209
    :catch_9
    move-exception v0

    .line 210
    :try_start_1e
    sget-object v1, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error closing socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    goto :goto_8

    .line 205
    :catchall_6
    move-exception v0

    monitor-enter p0

    .line 206
    const/4 v1, 0x0

    :try_start_1f
    iput-boolean v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .line 208
    :try_start_20
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_a

    .line 212
    :goto_9
    :try_start_21
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    throw v0

    .line 209
    :catch_a
    move-exception v1

    .line 210
    :try_start_22
    sget-object v2, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    const-string v3, "Error closing socket"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 212
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    throw v0
.end method

.method public sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/ConnectionException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->extend()V

    .line 132
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->sendRequest([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Lcom/google/android/voicesearch/speechservice/ConnectionException;

    const-string v2, "Failed to send request"

    invoke-direct {v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public start(Lcom/google/android/voicesearch/speechservice/ConnectionCallback;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/ConnectionException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ConnectionCallback;

    .line 109
    invoke-direct {p0}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->setupStun()V

    .line 110
    iput-boolean v1, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z

    .line 111
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mThread:Ljava/lang/Thread;

    .line 112
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 113
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->writableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    sget-object v0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    const-string v1, "Did not receive the expected stun packet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z

    .line 118
    new-instance v0, Lcom/google/android/voicesearch/speechservice/ConnectionException;

    const-string v1, "Timeout"

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/speechservice/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    sget-object v1, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Got interrupted while waiting for the first stun message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    iput-boolean v4, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mIsRunning:Z

    .line 123
    new-instance v0, Lcom/google/android/voicesearch/speechservice/ConnectionException;

    const-string v1, "Interrupted"

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/speechservice/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->start()V

    .line 126
    return-void
.end method
