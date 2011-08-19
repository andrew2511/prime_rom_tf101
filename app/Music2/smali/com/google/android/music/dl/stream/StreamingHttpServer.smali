.class public Lcom/google/android/music/dl/stream/StreamingHttpServer;
.super Ljava/lang/Object;
.source "StreamingHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/stream/StreamingHttpServer$1;,
        Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;,
        Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field protected static final LOCAL_LOGV:Z = false

.field private static final SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final SOCKET_TIMEOUT:I = 0x2710

.field protected static final TAG:Ljava/lang/String; = "Streamer"


# instance fields
.field private mAcceptor:Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;

.field private final mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

.field protected mParams:Lorg/apache/http/params/HttpParams;

.field protected mServerSocket:Ljava/net/ServerSocket;

.field private mShutdown:Z

.field private mWorkers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "Streamer"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->LOCAL_LOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/DownloadManager;)V
    .locals 4
    .parameter "downloadManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v3, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mShutdown:Z

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;

    .line 60
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mParams:Lorg/apache/http/params/HttpParams;

    .line 61
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mParams:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.connection.stalecheck"

    invoke-interface {v0, v1, v3}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.tcp.nodelay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    const/16 v2, 0x2710

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.buffer-size"

    const/16 v2, 0x2000

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 66
    invoke-direct {p0, v3}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->bind(I)V

    .line 67
    iput-object p1, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mShutdown:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Lcom/google/android/music/dl/DownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    return-object v0
.end method

.method private bind(I)V
    .locals 2
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->bind(Ljava/net/InetSocketAddress;)V

    .line 72
    return-void
.end method

.method private bind(Ljava/net/InetSocketAddress;)V
    .locals 3
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 76
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 77
    sget-boolean v0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "Streamer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bound to port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mAcceptor:Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should never bind to a socket twice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;-><init>(Lcom/google/android/music/dl/stream/StreamingHttpServer;Lcom/google/android/music/dl/stream/StreamingHttpServer$1;)V

    iput-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mAcceptor:Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;

    .line 83
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mAcceptor:Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;

    invoke-virtual {v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->start()V

    .line 84
    return-void
.end method


# virtual methods
.method public getPort()I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mServerSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Socket not bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getUri(Lcom/google/android/music/dl/DownloadOrder;)Ljava/lang/String;
    .locals 3
    .parameter "order"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mAcceptor:Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;

    iget-wide v1, p1, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->notifyNewAllowedStream(J)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://127.0.0.1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 100
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mShutdown:Z

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;

    monitor-enter v2

    .line 107
    :try_start_1
    iget-object v3, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;

    .line 108
    .local v1, wt:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    invoke-virtual {v1}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->shutdown()V

    goto :goto_1

    .line 110
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #wt:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    return-void

    .line 103
    .end local v0           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
